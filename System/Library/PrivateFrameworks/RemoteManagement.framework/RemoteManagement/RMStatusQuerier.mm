@interface RMStatusQuerier
- (RMStatusQuerier)init;
- (RMStatusQuerier)initWithStatusPublishers:(id)a3;
- (id)_findStatusPublishersForKeyPaths:(id)a3;
- (id)_queryForFilteredStatusWithKeyPaths:(id)a3 lastAcknowledgedDateByKeyPath:(id)a4 onBehalfOfManagementChannel:(id)a5;
@end

@implementation RMStatusQuerier

- (RMStatusQuerier)init
{
  v3 = +[RMClientCapabilitiesController sharedController];
  v10[0] = v3;
  v4 = +[RMInternalStatusPublisher sharedPublisher];
  v10[1] = v4;
  v5 = [NSArray arrayWithObjects:v10 count:2];

  if (+[RMFeatureFlags isHTTPConduitEnabled])
  {
    v6 = +[RMPushController sharedController];
    v7 = [v5 arrayByAddingObject:v6];

    v5 = v7;
  }

  v8 = [(RMStatusQuerier *)self initWithStatusPublishers:v5];

  return v8;
}

- (RMStatusQuerier)initWithStatusPublishers:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RMStatusQuerier;
  v5 = [(RMStatusQuerier *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    statusPublishers = v5->_statusPublishers;
    v5->_statusPublishers = v6;
  }

  return v5;
}

- (id)_findStatusPublishersForKeyPaths:(id)a3
{
  v4 = a3;
  v5 = +[RMExternalStatusPublisher sharedPublisher];
  v6 = [NSMutableArray arrayWithObject:v5];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(RMStatusQuerier *)self statusPublishers];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v12 supportedKeyPaths];
        v14 = RMFilterSupportedKeyPathsByRequestedKeyPaths(v13, v4);

        if ([v14 count])
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)_queryForFilteredStatusWithKeyPaths:(id)a3 lastAcknowledgedDateByKeyPath:(id)a4 onBehalfOfManagementChannel:(id)a5
{
  v73 = a3;
  v74 = a4;
  v71 = a5;
  v8 = +[RMLog statusQuerier];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100068D34(v73, v8);
  }

  if (![v73 count])
  {
    v63 = objc_opt_new();
    goto LABEL_78;
  }

  v68 = objc_opt_new();
  v66 = objc_opt_new();
  v9 = [(RMStatusQuerier *)self _findStatusPublishersForKeyPaths:v73];
  v70 = [NSMutableSet setWithSet:v73];
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = v9;
  v72 = [obj countByEnumeratingWithState:&v82 objects:v90 count:16];
  if (!v72)
  {
    goto LABEL_63;
  }

  v69 = *v83;
  *&v10 = 138543362;
  v65 = v10;
  do
  {
    v11 = 0;
    do
    {
      if (*v83 != v69)
      {
        v12 = v11;
        objc_enumerationMutation(obj);
        v11 = v12;
      }

      v75 = v11;
      v13 = *(*(&v82 + 1) + 8 * v11);
      v14 = [v13 supportedKeyPaths];
      v15 = RMFilterSupportedKeyPathsByRequestedKeyPaths(v14, v73);

      [v70 minusSet:v15];
      v16 = v15;
      v17 = objc_opt_new();
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v79 = v16;
      v18 = [v79 countByEnumeratingWithState:&v86 objects:buf count:16];
      if (v18)
      {
        v19 = *v87;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v87 != v19)
            {
              objc_enumerationMutation(v79);
            }

            v21 = *(*(&v86 + 1) + 8 * i);
            v22 = [v21 rangeOfString:@"/"];
            if (v23)
            {
              v24 = [v21 substringToIndex:v22];

              if (v24)
              {
                [v17 addObject:v24];

                continue;
              }
            }

            else
            {
            }

            [v17 addObject:v21];
          }

          v18 = [v79 countByEnumeratingWithState:&v86 objects:buf count:16];
        }

        while (v18);
      }

      if (v74)
      {
        v80 = 0;
        v77 = [v13 queryForUnacknowledgedStatusWithKeyPaths:v17 lastAcknowledgedDateByKeyPath:v74 onBehalfOfManagementChannel:v71 error:&v80];
        v25 = &v80;
      }

      else
      {
        v81 = 0;
        v77 = [v13 queryForStatusWithKeyPaths:v17 onBehalfOfManagementChannel:v71 error:&v81];
        v25 = &v81;
      }

      v76 = *v25;
      if (v77)
      {
        v26 = v68;
        v27 = v77;
        v28 = v79;
        v86 = 0u;
        v87 = 0u;
        v88 = 0u;
        v89 = 0u;
        v78 = v28;
        v29 = [v78 countByEnumeratingWithState:&v86 objects:buf count:16];
        if (!v29)
        {
          goto LABEL_48;
        }

        v30 = *v87;
        while (1)
        {
          for (j = 0; j != v29; j = j + 1)
          {
            if (*v87 != v30)
            {
              objc_enumerationMutation(v78);
            }

            v32 = *(*(&v86 + 1) + 8 * j);
            v33 = [v32 rangeOfString:@"/"];
            if (v34)
            {
              v35 = [v32 substringToIndex:v33];

              if (v35)
              {
                sub_1000326D0(v26, v35);
                v36 = [v27 valueForKeyPath:v35];
                v37 = [v26 valueForKeyPath:v35];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v38 = sub_100068AC8(v37, v36);

                    v36 = v38;
                    goto LABEL_44;
                  }
                }

                if (!v37)
                {
LABEL_44:
                  [v26 setValue:v36 forKeyPath:v35];
                  v37 = 0;
                }

                goto LABEL_46;
              }
            }

            else
            {
            }

            v39 = [v32 pathExtension];
            v40 = [v39 length] == 0;

            if (!v40)
            {
              v41 = [v32 stringByDeletingPathExtension];
              sub_1000326D0(v26, v41);
            }

            v35 = [v27 valueForKeyPath:v32];
            v36 = [v26 valueForKeyPath:v32];
            objc_opt_class();
            if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
            {
              v42 = sub_100068AC8(v36, v35);

              v35 = v42;
            }

            else if (v36)
            {
              goto LABEL_46;
            }

            [v26 setValue:v35 forKeyPath:v32];
            v36 = 0;
LABEL_46:
          }

          v29 = [v78 countByEnumeratingWithState:&v86 objects:buf count:16];
          if (!v29)
          {
LABEL_48:

            goto LABEL_61;
          }
        }
      }

      v43 = +[RMLog statusQuerier];
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = v65;
        v92 = v76;
        _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Failed to query status: %{public}@", buf, 0xCu);
      }

      v44 = v66;
      v45 = v76;
      v46 = v79;
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v47 = [v46 countByEnumeratingWithState:&v86 objects:buf count:16];
      if (v47)
      {
        v48 = *v87;
        do
        {
          for (k = 0; k != v47; k = k + 1)
          {
            if (*v87 != v48)
            {
              objc_enumerationMutation(v46);
            }

            v50 = *(*(&v86 + 1) + 8 * k);
            v51 = [v44 objectForKeyedSubscript:v50];
            v52 = v51 == 0;

            if (v52)
            {
              [v44 setObject:v45 forKeyedSubscript:v50];
            }
          }

          v47 = [v46 countByEnumeratingWithState:&v86 objects:buf count:16];
        }

        while (v47);
      }

LABEL_61:
      v11 = v75 + 1;
    }

    while ((v75 + 1) != v72);
    v72 = [obj countByEnumeratingWithState:&v82 objects:v90 count:16];
  }

  while (v72);
LABEL_63:

  if ([v70 count])
  {
    v53 = +[RMLog statusQuerier];
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
    {
      sub_100068DAC(v70, v53);
    }

    v54 = v66;
    v55 = v70;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v56 = [v55 countByEnumeratingWithState:&v86 objects:buf count:16];
    if (v56)
    {
      v57 = *v87;
      do
      {
        for (m = 0; m != v56; m = m + 1)
        {
          if (*v87 != v57)
          {
            objc_enumerationMutation(v55);
          }

          v59 = *(*(&v86 + 1) + 8 * m);
          v60 = [v54 objectForKeyedSubscript:v59];
          v61 = v60 == 0;

          if (v61)
          {
            v62 = [RMErrorUtilities createUnsupportedStatusValueErrorWithKeyPath:v59];
            [v54 setObject:v62 forKeyedSubscript:v59];
          }
        }

        v56 = [v55 countByEnumeratingWithState:&v86 objects:buf count:16];
      }

      while (v56);
    }
  }

  v63 = [[RMStatusQueryResult alloc] initWithStatusKeyPaths:v73 statusByKeyPath:v68 errorByKeyPath:v66];

LABEL_78:

  return v63;
}

@end
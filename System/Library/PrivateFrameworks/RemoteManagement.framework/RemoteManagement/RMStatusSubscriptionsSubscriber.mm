@interface RMStatusSubscriptionsSubscriber
- (BOOL)_updateStatusSubscriptionUIsForManagementSource:(id)a3;
- (BOOL)_updateStatusSubscriptionsForManagementSource:(id)a3;
- (RMStatusSubscriptionsSubscriber)init;
- (id)_getActiveStatusSubscriptionConfigurationsFromManagementSource:(id)a3 onlyMissingUI:(BOOL)a4;
- (id)_getStatusSubscriptionsFromManagementSource:(id)a3;
- (id)_makeStatusSubscriptionWithManagementSource:(id)a3 declaration:(id)a4 context:(id)a5;
- (id)reportDetails;
- (void)applyChangedConfigurationsTypes:(id)a3;
- (void)fetchMissingConfigurationUIs;
@end

@implementation RMStatusSubscriptionsSubscriber

- (RMStatusSubscriptionsSubscriber)init
{
  v9.receiver = self;
  v9.super_class = RMStatusSubscriptionsSubscriber;
  v2 = [(RMStatusSubscriptionsSubscriber *)&v9 init];
  if (v2)
  {
    v3 = +[RMPersistentController sharedController];
    v4 = [v3 persistentContainer];

    v5 = [v4 newBackgroundContext];
    [(NSManagedObjectContext *)v5 setAutomaticallyMergesChangesFromParent:1];
    [(NSManagedObjectContext *)v5 setMergePolicy:NSMergeByPropertyStoreTrumpMergePolicy];
    v6 = [NSString stringWithFormat:@"RMStatusSubscriptionsSubscriber"];
    [(NSManagedObjectContext *)v5 setTransactionAuthor:v6];

    context = v2->_context;
    v2->_context = v5;
  }

  return v2;
}

- (void)applyChangedConfigurationsTypes:(id)a3
{
  v4 = +[RMLog statusSubscriptionsSubscriber];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Updating status subscriptions", buf, 2u);
  }

  [(RMStatusSubscriptionsSubscriber *)self context];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006A764;
  v6[3] = &unk_1000D1270;
  v7 = v6[4] = self;
  v5 = v7;
  [v5 performBlockAndWait:v6];
}

- (void)fetchMissingConfigurationUIs
{
  v3 = +[RMLog statusSubscriptionsSubscriber];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Updating status subscription UIs", buf, 2u);
  }

  [(RMStatusSubscriptionsSubscriber *)self context];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006AB50;
  v5[3] = &unk_1000D1270;
  v6 = v5[4] = self;
  v4 = v6;
  [v4 performBlockAndWait:v5];
}

- (id)reportDetails
{
  v10[0] = @"Internal";
  v9[0] = @"Location";
  v9[1] = @"Identifier";
  v3 = [(RMStatusSubscriptionsSubscriber *)self identifier];
  v10[1] = v3;
  v9[2] = @"ConfigurationTypes";
  v4 = [(RMStatusSubscriptionsSubscriber *)self configurationTypes];
  v5 = [v4 allObjects];
  v6 = [v5 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
  v10[2] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];

  return v7;
}

- (BOOL)_updateStatusSubscriptionsForManagementSource:(id)a3
{
  v4 = a3;
  v5 = [(RMStatusSubscriptionsSubscriber *)self _getStatusSubscriptionsFromManagementSource:v4];
  if (v5)
  {
    v99 = self;
    v6 = [(RMStatusSubscriptionsSubscriber *)self _getActiveStatusSubscriptionConfigurationsFromManagementSource:v4];
    v7 = [v5 allKeys];
    v8 = [NSSet setWithArray:v7];

    v100 = v6;
    v9 = [v6 allKeys];
    v10 = [NSSet setWithArray:v9];

    v139 = 0;
    v138 = 0;
    v137 = 0;
    v91 = v10;
    v92 = v8;
    [RMStoreDeclarationKey synchronizeOldKeys:v8 newKeys:v10 returningUnchangedKeys:&v139 returningApplyKeys:&v138 returningRemoveKeys:&v137];
    v90 = v139;
    v11 = v138;
    v12 = v137;
    +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v11 count]);
    v135[0] = _NSConcreteStackBlock;
    v135[1] = 3221225472;
    v135[2] = sub_10006BBE8;
    v13 = v135[3] = &unk_1000D2B20;
    v136 = v13;
    v93 = v11;
    [v11 enumerateObjectsUsingBlock:v135];
    v88 = v13;
    v89 = v12;
    v14 = [v13 setByAddingObjectsFromSet:v12];
    v94 = [v14 count] != 0;
    v104 = [v4 managedObjectContext];
    v15 = +[RMLog statusSubscriptionsSubscriber];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_10006CAE4(v14);
    }

    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    obj = v14;
    v109 = v4;
    v101 = v5;
    v102 = [obj countByEnumeratingWithState:&v131 objects:v150 count:16];
    if (v102)
    {
      v97 = *v132;
      do
      {
        for (i = 0; i != v102; i = i + 1)
        {
          if (*v132 != v97)
          {
            objc_enumerationMutation(obj);
          }

          v105 = *(*(&v131 + 1) + 8 * i);
          v17 = [v5 objectForKeyedSubscript:?];
          v127 = 0u;
          v128 = 0u;
          v129 = 0u;
          v130 = 0u;
          v107 = v17;
          v18 = [v17 items];
          v19 = [v18 countByEnumeratingWithState:&v127 objects:v149 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v128;
            do
            {
              for (j = 0; j != v20; j = j + 1)
              {
                if (*v128 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = *(*(&v127 + 1) + 8 * j);
                v123 = 0u;
                v124 = 0u;
                v125 = 0u;
                v126 = 0u;
                v24 = [v23 subscribedStatusKeyPaths];
                v25 = [v24 copy];

                v26 = [v25 countByEnumeratingWithState:&v123 objects:v148 count:16];
                if (v26)
                {
                  v27 = v26;
                  v28 = *v124;
                  do
                  {
                    for (k = 0; k != v27; k = k + 1)
                    {
                      if (*v124 != v28)
                      {
                        objc_enumerationMutation(v25);
                      }

                      [*(*(&v123 + 1) + 8 * k) removeStatusSubscriptionItemsObject:v23];
                    }

                    v27 = [v25 countByEnumeratingWithState:&v123 objects:v148 count:16];
                  }

                  while (v27);
                }
              }

              v20 = [v18 countByEnumeratingWithState:&v127 objects:v149 count:16];
            }

            while (v20);
          }

          [v104 deleteObject:v107];
          v4 = v109;
          v30 = [v109 identifier];
          v31 = [v105 declarationIdentifier];
          v32 = [v105 declarationServerToken];
          v122 = 0;
          v33 = [RMConfigurationStatusArchiver removeStatusForStoreIdentifier:v30 declarationIdentifier:v31 declarationServerToken:v32 error:&v122];
          v34 = v122;

          v5 = v101;
          if ((v33 & 1) == 0)
          {
            v35 = +[RMLog statusSubscriptionsSubscriber];
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v144 = v34;
              _os_log_debug_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "Status subscription status removal failed: %{public}@", buf, 0xCu);
            }
          }
        }

        v102 = [obj countByEnumeratingWithState:&v131 objects:v150 count:16];
      }

      while (v102);
    }

    v36 = +[RMLog statusSubscriptionsSubscriber];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      sub_10006CB5C(v93);
    }

    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v95 = v93;
    v37 = [v95 countByEnumeratingWithState:&v118 objects:v147 count:16];
    if (v37)
    {
      v38 = v37;
      v103 = *v119;
      do
      {
        v39 = 0;
        v106 = v38;
        do
        {
          if (*v119 != v103)
          {
            objc_enumerationMutation(v95);
          }

          v40 = [*(*(&v118 + 1) + 8 * v39) applyKey];
          v41 = [v100 objectForKeyedSubscript:v40];
          v42 = [v41 payload];

          v108 = v41;
          if (v42)
          {
            v43 = [v41 payload];
            v117 = 0;
            v44 = [RMModelManagementStatusSubscriptionsDeclaration loadData:v43 serializationType:0 error:&v117];
            v45 = v117;

            if (v44)
            {
              v98 = v40;
              if ([v44 isSupportedForPlatform:+[RMModelSharedDefinitions currentPlatform](RMModelSharedDefinitions scope:"currentPlatform") enrollmentType:{+[RMBundle managementScope](RMBundle, "managementScope"), objc_msgSend(v4, "enrollmentType")}])
              {
                v46 = [(RMStatusSubscriptionsSubscriber *)v99 _makeStatusSubscriptionWithManagementSource:v4 declaration:v44 context:v104];
                v47 = +[RMExternalStatusPublisher sharedPublisher];
                v48 = [v4 identifier];
                [v47 publishStatusKeys:v46 storeIdentifier:v48];

                v49 = [v4 identifier];
                v50 = [v40 declarationIdentifier];
                v51 = v40;
                v52 = v50;
                v53 = [v51 declarationServerToken];
                v54 = [(RMStatusSubscriptionsSubscriber *)v99 identifier];
                v114 = v45;
                v94 = 1;
                LOBYTE(v47) = [RMConfigurationStatusArchiver persistStatusForStoreIdentifier:v49 declarationIdentifier:v52 declarationServerToken:v53 sourceIdentifier:v54 validity:1 reasons:0 error:&v114];
                v55 = v114;

                if ((v47 & 1) == 0)
                {
                  v56 = +[RMLog statusSubscriptionsSubscriber];
                  v57 = v106;
                  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138543362;
                    v144 = v55;
                    _os_log_debug_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEBUG, "Status subscription status persist for success failed: %{public}@", buf, 0xCu);
                  }

                  v94 = 1;
                  goto LABEL_58;
                }

LABEL_54:
                v4 = v109;
                v57 = v106;
              }

              else
              {
                v67 = +[RMLog statusSubscriptionsSubscriber];
                if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v144 = v44;
                  _os_log_error_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "Declaration not supported: %{public}@", buf, 0xCu);
                }

                v68 = [RMModelStatusReason reasonWithCode:@"Error.ConfigurationNotSupported" description:@"Configuration not supported" underlyingError:v45];
                v141 = v68;
                v46 = [NSArray arrayWithObjects:&v141 count:1];

                v69 = [v4 identifier];
                v70 = [v40 declarationIdentifier];
                v71 = v40;
                v72 = v70;
                v73 = [v71 declarationServerToken];
                v74 = [(RMStatusSubscriptionsSubscriber *)v99 identifier];
                v115 = v45;
                LOBYTE(v68) = [RMConfigurationStatusArchiver persistStatusForStoreIdentifier:v69 declarationIdentifier:v72 declarationServerToken:v73 sourceIdentifier:v74 validity:0 reasons:v46 error:&v115];
                v55 = v115;

                if (v68)
                {
                  goto LABEL_54;
                }

                v75 = +[RMLog statusSubscriptionsSubscriber];
                v57 = v106;
                if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138543362;
                  v144 = v55;
                  _os_log_debug_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEBUG, "Status subscription status persist for error failed: %{public}@", buf, 0xCu);
                }

LABEL_58:
                v4 = v109;
              }

              v62 = v98;
              goto LABEL_60;
            }
          }

          else
          {
            v45 = +[RMErrorUtilities createInternalError];
          }

          v58 = +[RMLog statusSubscriptionsSubscriber];
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v144 = v41;
            v145 = 2114;
            v146 = v45;
            _os_log_error_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "Unable to de-serialize declaration %{public}@: %{public}@", buf, 0x16u);
          }

          v59 = [RMModelStatusReason reasonWithCode:@"Error.ConfigurationIsInvalid" description:@"Configuration is invalid" underlyingError:v45];
          v142 = v59;
          v44 = [NSArray arrayWithObjects:&v142 count:1];

          v60 = [v4 identifier];
          v61 = [v40 declarationIdentifier];
          v62 = v40;
          v63 = [v40 declarationServerToken];
          v64 = [(RMStatusSubscriptionsSubscriber *)v99 identifier];
          v116 = v45;
          v65 = [RMConfigurationStatusArchiver persistStatusForStoreIdentifier:v60 declarationIdentifier:v61 declarationServerToken:v63 sourceIdentifier:v64 validity:0 reasons:v44 error:&v116];
          v55 = v116;

          if (v65)
          {
            v66 = v108;
            v4 = v109;
            v57 = v106;
            goto LABEL_61;
          }

          v46 = +[RMLog statusSubscriptionsSubscriber];
          v57 = v106;
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v144 = v55;
            _os_log_debug_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEBUG, "Status subscription status persist for error failed: %{public}@", buf, 0xCu);
          }

          v4 = v109;
LABEL_60:
          v66 = v108;

LABEL_61:
          v39 = v39 + 1;
        }

        while (v57 != v39);
        v38 = [v95 countByEnumeratingWithState:&v118 objects:v147 count:16];
      }

      while (v38);
    }

    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v76 = [v4 subscribedStatusKeyPaths];
    v77 = [v76 countByEnumeratingWithState:&v110 objects:v140 count:16];
    if (v77)
    {
      v78 = v77;
      v79 = 0;
      v80 = *v111;
      do
      {
        for (m = 0; m != v78; m = m + 1)
        {
          if (*v111 != v80)
          {
            objc_enumerationMutation(v76);
          }

          v82 = *(*(&v110 + 1) + 8 * m);
          v83 = [v82 statusSubscriptionItems];
          v84 = [v83 count];

          if (!v84)
          {
            [v104 deleteObject:v82];
            ++v79;
          }
        }

        v78 = [v76 countByEnumeratingWithState:&v110 objects:v140 count:16];
      }

      while (v78);
    }

    v86 = +[RMLog statusSubscriptionsSubscriber];
    if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
    {
      sub_10006CBD4();
    }

    v5 = v101;
    v85 = v94;
  }

  else
  {
    v85 = 0;
  }

  return v85;
}

- (id)_getStatusSubscriptionsFromManagementSource:(id)a3
{
  v3 = a3;
  v4 = +[RMStatusSubscription fetchRequest];
  v25 = v3;
  v5 = [NSPredicate predicateWithFormat:@"(%K == %@) AND (%K == %d)", @"managementSource", v3, @"sourceType", 1];
  [v4 setPredicate:v5];

  v30 = 0;
  v6 = [v4 execute:&v30];
  v7 = v30;
  if (v6)
  {
    v8 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v6 count]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v6;
    v9 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v20 = v7;
      v21 = v6;
      v22 = v4;
      v11 = *v27;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          v14 = [(RMStatusSubscriptionsSubscriber *)self identifier];
          v15 = [v25 identifier];
          v16 = [v13 sourceIdentifier];
          v17 = [v13 sourceServerToken];
          v18 = [RMStoreDeclarationKey newDeclarationKeyWithSubscriberIdentifier:v14 storeIdentifier:v15 declarationIdentifier:v16 declarationServerToken:v17];

          [v8 setObject:v13 forKeyedSubscript:v18];
        }

        v10 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v10);
      v6 = v21;
      v4 = v22;
      v7 = v20;
    }
  }

  else
  {
    obj = +[RMLog statusSubscriptionsSubscriber];
    if (os_log_type_enabled(obj, OS_LOG_TYPE_FAULT))
    {
      sub_10006CC48();
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)_updateStatusSubscriptionUIsForManagementSource:(id)a3
{
  v4 = a3;
  v5 = [(RMStatusSubscriptionsSubscriber *)self _getActiveStatusSubscriptionConfigurationsFromManagementSource:v4 onlyMissingUI:1];
  v6 = [v5 count];
  if (v6)
  {
    v17 = v6;
    v7 = [v4 managedObjectContext];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = [v5 allValues];
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = [[RMConfigurationPayloadUI alloc] initWithContext:v7];
          [(RMConfigurationPayloadUI *)v14 setVisible:0];
          [v13 setUi:v14];
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    v6 = v17;
  }

  v15 = v6 != 0;

  return v15;
}

- (id)_getActiveStatusSubscriptionConfigurationsFromManagementSource:(id)a3 onlyMissingUI:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = +[RMConfigurationPayload fetchRequest];
  if (v4)
  {
    [NSPredicate predicateWithFormat:@"(%K == %@) AND (%K == %@) AND (%K == YES) AND (%K == NULL)", @"managementSource", v5, @"declarationType", RMConfigurationTypeManagementStatusSubscription, @"state.active", @"ui"];
  }

  else
  {
    [NSPredicate predicateWithFormat:@"(%K == %@) AND (%K == %@) AND (%K == YES)", @"managementSource", v5, @"declarationType", RMConfigurationTypeManagementStatusSubscription, @"state.active", v22];
  }
  v7 = ;
  [v6 setPredicate:v7];

  v33 = 0;
  v8 = [v6 execute:&v33];
  v9 = v33;
  if (v8)
  {
    v28 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v8 count]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v8;
    v10 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v10)
    {
      v11 = v10;
      v23 = v9;
      v24 = v8;
      v25 = v6;
      v12 = *v30;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v29 + 1) + 8 * i);
          v15 = [(RMStatusSubscriptionsSubscriber *)self identifier];
          [v5 identifier];
          v17 = v16 = v5;
          v18 = [v14 identifier];
          v19 = [v14 serverToken];
          v20 = [RMStoreDeclarationKey newDeclarationKeyWithSubscriberIdentifier:v15 storeIdentifier:v17 declarationIdentifier:v18 declarationServerToken:v19];

          v5 = v16;
          [v28 setObject:v14 forKeyedSubscript:v20];
        }

        v11 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v11);
      v8 = v24;
      v6 = v25;
      v9 = v23;
    }
  }

  else
  {
    obj = +[RMLog statusSubscriptionsSubscriber];
    if (os_log_type_enabled(obj, OS_LOG_TYPE_FAULT))
    {
      sub_10006CCB0();
    }

    v28 = 0;
  }

  return v28;
}

- (id)_makeStatusSubscriptionWithManagementSource:(id)a3 declaration:(id)a4 context:(id)a5
{
  v6 = a3;
  v7 = a4;
  v8 = [RMStatusSubscription alloc];
  v9 = [v6 managedObjectContext];
  v10 = [(RMStatusSubscription *)v8 initWithContext:v9];

  [(RMStatusSubscription *)v10 setSourceType:1];
  v11 = [v7 declarationIdentifier];
  [(RMStatusSubscription *)v10 setSourceIdentifier:v11];

  v12 = [v7 declarationServerToken];
  [(RMStatusSubscription *)v10 setSourceServerToken:v12];

  v57 = v10;
  v53 = v6;
  [(RMStatusSubscription *)v10 setManagementSource:v6];
  v52 = v7;
  v13 = [v7 payloadStatusItems];
  v56 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v13 count]);
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = v13;
  v58 = [obj countByEnumeratingWithState:&v66 objects:v78 count:16];
  if (v58)
  {
    v55 = *v67;
    do
    {
      v14 = 0;
      do
      {
        if (*v67 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v65 = v14;
        v15 = *(*(&v66 + 1) + 8 * v14);
        v16 = v57;
        v17 = v15;
        v18 = [RMStatusSubscriptionItem alloc];
        v19 = [(RMStatusSubscription *)v16 managedObjectContext];
        v20 = [(RMStatusSubscriptionItem *)v18 initWithContext:v19];

        v64 = v16;
        [(RMStatusSubscriptionItem *)v20 setSubscription:v16];
        v21 = [v17 payloadName];
        [(RMStatusSubscriptionItem *)v20 setKeyPath:v21];

        [(RMStatusSubscriptionItem *)v20 setProperties:0];
        [(RMStatusSubscriptionItem *)v20 setPredicate:0];
        v22 = v17;
        v23 = [v22 payloadName];
        if ([&__NSArray0__struct count])
        {
          v24 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [&__NSArray0__struct count]);
          v79 = 0u;
          v80 = 0u;
          v81 = 0u;
          v82 = 0u;
          v25 = [&__NSArray0__struct countByEnumeratingWithState:&v79 objects:v83 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v80;
            do
            {
              for (i = 0; i != v26; i = i + 1)
              {
                if (*v80 != v27)
                {
                  objc_enumerationMutation(&__NSArray0__struct);
                }

                v29 = [v23 stringByAppendingFormat:@".%@", *(*(&v79 + 1) + 8 * i)];
                [v24 addObject:v29];
              }

              v26 = [&__NSArray0__struct countByEnumeratingWithState:&v79 objects:v83 count:16];
            }

            while (v26);
          }
        }

        else
        {
          v24 = [NSSet setWithObject:v23];
        }

        v30 = v20;
        v31 = v24;
        v32 = [(RMStatusSubscriptionItem *)v30 subscription];
        v33 = [v32 managementSource];

        v34 = [v33 subscribedStatusKeyPaths];
        v60 = [NSPredicate predicateWithFormat:@"%K IN %@", @"keyPath", v31];
        v35 = [v34 filteredSetUsingPredicate:?];
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v36 = [v35 countByEnumeratingWithState:&v74 objects:v83 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v75;
          do
          {
            for (j = 0; j != v37; j = j + 1)
            {
              if (*v75 != v38)
              {
                objc_enumerationMutation(v35);
              }

              [*(*(&v74 + 1) + 8 * j) addStatusSubscriptionItemsObject:v30];
            }

            v37 = [v35 countByEnumeratingWithState:&v74 objects:v83 count:16];
          }

          while (v37);
        }

        v63 = v22;
        v61 = v34;
        v40 = [v34 valueForKey:@"keyPath"];
        v62 = v31;
        v41 = [v31 mutableCopy];
        v59 = v40;
        [v41 minusSet:v40];
        v42 = [(RMStatusSubscriptionItem *)v30 managedObjectContext];
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v43 = v41;
        v44 = [v43 countByEnumeratingWithState:&v70 objects:&v79 count:16];
        if (v44)
        {
          v45 = v44;
          v46 = *v71;
          do
          {
            for (k = 0; k != v45; k = k + 1)
            {
              if (*v71 != v46)
              {
                objc_enumerationMutation(v43);
              }

              v48 = *(*(&v70 + 1) + 8 * k);
              v49 = [[RMSubscribedStatusKeyPath alloc] initWithContext:v42];
              [(RMSubscribedStatusKeyPath *)v49 setKeyPath:v48];
              [(RMSubscribedStatusKeyPath *)v49 setManagementSource:v33];
              [(RMSubscribedStatusKeyPath *)v49 addStatusSubscriptionItemsObject:v30];
            }

            v45 = [v43 countByEnumeratingWithState:&v70 objects:&v79 count:16];
          }

          while (v45);
        }

        v50 = [v63 payloadName];
        [v56 addObject:v50];

        v14 = v65 + 1;
      }

      while ((v65 + 1) != v58);
      v58 = [obj countByEnumeratingWithState:&v66 objects:v78 count:16];
    }

    while (v58);
  }

  return v56;
}

@end
@interface RMReport
+ (id)internalStateArchiveWithContext:(id)a3;
+ (id)managementSources;
+ (id)orphanedEntities;
+ (id)reportWithContext:(id)a3 allInformation:(BOOL)a4;
@end

@implementation RMReport

+ (id)reportWithContext:(id)a3 allInformation:(BOOL)a4
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100060E28;
  v15 = sub_100060E38;
  v16 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100060E40;
  v7[3] = &unk_1000D2978;
  v9 = &v11;
  v10 = a4;
  v4 = a3;
  v8 = v4;
  [v4 performBlockAndWait:v7];
  v5 = [v12[5] copy];

  _Block_object_dispose(&v11, 8);

  return v5;
}

+ (id)managementSources
{
  v2 = +[RMManagementSource fetchRequest];
  v20 = 0;
  v3 = [v2 execute:&v20];
  v4 = v20;
  v5 = v4;
  if (v3)
  {
    v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
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

          v12 = [*(*(&v16 + 1) + 8 * i) reportDetails];
          [v6 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v9);
    }

    v13 = [v6 copy];
  }

  else
  {
    v22 = @"Error";
    v6 = [v4 description];
    v23 = v6;
    v14 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v24 = v14;
    v13 = [NSArray arrayWithObjects:&v24 count:1];
  }

  return v13;
}

+ (id)orphanedEntities
{
  v112 = [NSMutableDictionary dictionaryWithCapacity:4];
  v113 = [NSPredicate predicateWithFormat:@"%K == nil", @"managementSource"];
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v121[0] = objc_opt_class();
  v121[1] = objc_opt_class();
  v121[2] = objc_opt_class();
  v121[3] = objc_opt_class();
  v121[4] = objc_opt_class();
  obj = [NSArray arrayWithObjects:v121 count:5];
  v114 = [obj countByEnumeratingWithState:&v116 objects:v122 count:16];
  if (v114)
  {
    v111 = *v117;
    do
    {
      for (i = 0; i != v114; i = i + 1)
      {
        if (*v117 != v111)
        {
          objc_enumerationMutation(obj);
        }

        v3 = [*(*(&v116 + 1) + 8 * i) fetchRequest];
        [v3 setPredicate:v113];
        v4 = v112;
        v5 = v3;
        v120 = 0;
        v6 = [v5 execute:&v120];
        v7 = v120;
        v8 = v7;
        if (v6)
        {
          v115 = v4;
          v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
          v124 = 0u;
          v125 = 0u;
          v126 = 0u;
          v127 = 0u;
          v10 = v6;
          v11 = [v10 countByEnumeratingWithState:&v124 objects:v123 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v125;
            do
            {
              for (j = 0; j != v12; j = j + 1)
              {
                if (*v125 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = [*(*(&v124 + 1) + 8 * j) reportDetails];
                [v9 addObject:v15];
              }

              v12 = [v10 countByEnumeratingWithState:&v124 objects:v123 count:16];
            }

            while (v12);
          }

          v16 = [v9 copy];
          v4 = v115;
        }

        else
        {
          *&v124 = @"Error";
          v9 = [v7 description];
          v123[0] = v9;
          v16 = [NSDictionary dictionaryWithObjects:v123 forKeys:&v124 count:1];
        }

        if ([v16 count])
        {
          v17 = [v5 entity];
          v18 = [v17 managedObjectClassName];
          [v4 setObject:v16 forKeyedSubscript:v18];
        }
      }

      v114 = [obj countByEnumeratingWithState:&v116 objects:v122 count:16];
    }

    while (v114);
  }

  v19 = +[RMConfigurationPayloadReference fetchRequest];
  v20 = [NSPredicate predicateWithFormat:@"(%K == nil) && (%K == nil)", @"configuration", @"activation"];
  [v19 setPredicate:v20];

  v21 = v112;
  v22 = v19;
  v120 = 0;
  v23 = [v22 execute:&v120];
  v24 = v120;
  v25 = v24;
  if (v23)
  {
    v26 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v23 count]);
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    v27 = v23;
    v28 = [v27 countByEnumeratingWithState:&v124 objects:v123 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v125;
      do
      {
        for (k = 0; k != v29; k = k + 1)
        {
          if (*v125 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = [*(*(&v124 + 1) + 8 * k) reportDetails];
          [v26 addObject:v32];
        }

        v29 = [v27 countByEnumeratingWithState:&v124 objects:v123 count:16];
      }

      while (v29);
    }

    v33 = [v26 copy];
  }

  else
  {
    *&v124 = @"Error";
    v26 = [v24 description];
    v123[0] = v26;
    v33 = [NSDictionary dictionaryWithObjects:v123 forKeys:&v124 count:1];
  }

  if ([v33 count])
  {
    v34 = [v22 entity];
    v35 = [v34 managedObjectClassName];
    [v21 setObject:v33 forKeyedSubscript:v35];
  }

  v36 = +[RMAssetPayloadReference fetchRequest];
  v37 = [NSPredicate predicateWithFormat:@"(%K == nil) && (%K == nil)", @"configuration", @"asset"];
  [v36 setPredicate:v37];

  v38 = v21;
  v39 = v36;
  v120 = 0;
  v40 = [v39 execute:&v120];
  v41 = v120;
  v42 = v41;
  if (v40)
  {
    v43 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v40 count]);
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    v44 = v40;
    v45 = [v44 countByEnumeratingWithState:&v124 objects:v123 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v125;
      do
      {
        for (m = 0; m != v46; m = m + 1)
        {
          if (*v125 != v47)
          {
            objc_enumerationMutation(v44);
          }

          v49 = [*(*(&v124 + 1) + 8 * m) reportDetails];
          [v43 addObject:v49];
        }

        v46 = [v44 countByEnumeratingWithState:&v124 objects:v123 count:16];
      }

      while (v46);
    }

    v50 = [v43 copy];
  }

  else
  {
    *&v124 = @"Error";
    v43 = [v41 description];
    v123[0] = v43;
    v50 = [NSDictionary dictionaryWithObjects:v123 forKeys:&v124 count:1];
  }

  v51 = v50;

  if ([v51 count])
  {
    v52 = [v39 entity];
    v53 = [v52 managedObjectClassName];
    [v38 setObject:v51 forKeyedSubscript:v53];
  }

  v54 = +[RMStatusSubscription fetchRequest];
  v55 = [NSPredicate predicateWithFormat:@"(%K == nil)", @"managementSource"];
  [v54 setPredicate:v55];

  v56 = v38;
  v57 = v54;
  v120 = 0;
  v58 = [v57 execute:&v120];
  v59 = v120;
  v60 = v59;
  if (v58)
  {
    v61 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v58 count]);
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    v62 = v58;
    v63 = [v62 countByEnumeratingWithState:&v124 objects:v123 count:16];
    if (v63)
    {
      v64 = v63;
      v65 = *v125;
      do
      {
        for (n = 0; n != v64; n = n + 1)
        {
          if (*v125 != v65)
          {
            objc_enumerationMutation(v62);
          }

          v67 = [*(*(&v124 + 1) + 8 * n) reportDetails];
          [v61 addObject:v67];
        }

        v64 = [v62 countByEnumeratingWithState:&v124 objects:v123 count:16];
      }

      while (v64);
    }

    v68 = [v61 copy];
  }

  else
  {
    *&v124 = @"Error";
    v61 = [v59 description];
    v123[0] = v61;
    v68 = [NSDictionary dictionaryWithObjects:v123 forKeys:&v124 count:1];
  }

  v69 = v68;

  if ([v69 count])
  {
    v70 = [v57 entity];
    v71 = [v70 managedObjectClassName];
    [v56 setObject:v69 forKeyedSubscript:v71];
  }

  v72 = +[RMStatusSubscriptionItem fetchRequest];
  v73 = [NSPredicate predicateWithFormat:@"(%K == nil)", @"subscription"];
  [v72 setPredicate:v73];

  v74 = v56;
  v75 = v72;
  v120 = 0;
  v76 = [v75 execute:&v120];
  v77 = v120;
  v78 = v77;
  if (v76)
  {
    v79 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v76 count]);
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    v80 = v76;
    v81 = [v80 countByEnumeratingWithState:&v124 objects:v123 count:16];
    if (v81)
    {
      v82 = v81;
      v83 = *v125;
      do
      {
        for (ii = 0; ii != v82; ii = ii + 1)
        {
          if (*v125 != v83)
          {
            objc_enumerationMutation(v80);
          }

          v85 = [*(*(&v124 + 1) + 8 * ii) reportDetails];
          [v79 addObject:v85];
        }

        v82 = [v80 countByEnumeratingWithState:&v124 objects:v123 count:16];
      }

      while (v82);
    }

    v86 = [v79 copy];
  }

  else
  {
    *&v124 = @"Error";
    v79 = [v77 description];
    v123[0] = v79;
    v86 = [NSDictionary dictionaryWithObjects:v123 forKeys:&v124 count:1];
  }

  v87 = v86;

  if ([v87 count])
  {
    v88 = [v75 entity];
    v89 = [v88 managedObjectClassName];
    [v74 setObject:v87 forKeyedSubscript:v89];
  }

  v90 = +[RMSubscribedStatusKeyPath fetchRequest];
  v91 = [NSPredicate predicateWithFormat:@"(%K == nil)", @"managementSource"];
  [v90 setPredicate:v91];

  v92 = v74;
  v93 = v90;
  v120 = 0;
  v94 = [v93 execute:&v120];
  v95 = v120;
  v96 = v95;
  if (v94)
  {
    v97 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v94 count]);
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    v98 = v94;
    v99 = [v98 countByEnumeratingWithState:&v124 objects:v123 count:16];
    if (v99)
    {
      v100 = v99;
      v101 = *v125;
      do
      {
        for (jj = 0; jj != v100; jj = jj + 1)
        {
          if (*v125 != v101)
          {
            objc_enumerationMutation(v98);
          }

          v103 = [*(*(&v124 + 1) + 8 * jj) reportDetails];
          [v97 addObject:v103];
        }

        v100 = [v98 countByEnumeratingWithState:&v124 objects:v123 count:16];
      }

      while (v100);
    }

    v104 = [v97 copy];
  }

  else
  {
    *&v124 = @"Error";
    v97 = [v95 description];
    v123[0] = v97;
    v104 = [NSDictionary dictionaryWithObjects:v123 forKeys:&v124 count:1];
  }

  v105 = v104;

  if ([v105 count])
  {
    v106 = [v93 entity];
    v107 = [v106 managedObjectClassName];
    [v92 setObject:v105 forKeyedSubscript:v107];
  }

  v108 = [v92 copy];

  return v108;
}

+ (id)internalStateArchiveWithContext:(id)a3
{
  v3 = [a3 persistentStoreCoordinator];
  v4 = [v3 persistentStores];
  v5 = [v4 firstObject];

  v6 = [v3 metadataForPersistentStore:v5];
  v7 = [v6 objectForKeyedSubscript:@"InternalStateArchiver.DeviceStatusByKeyPath"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [NSSet setWithObjects:v17, v8, v9, v10, v11, v12, v13, objc_opt_class(), 0];
    v18 = 0;
    v15 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v14 fromData:v7 error:&v18];

    if (!v15)
    {
      v15 = &off_1000D6F70;
    }
  }

  else if (v7)
  {
    v15 = &off_1000D6F98;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end
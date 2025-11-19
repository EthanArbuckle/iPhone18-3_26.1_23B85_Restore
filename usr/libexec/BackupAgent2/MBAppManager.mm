@interface MBAppManager
+ (MBAppManager)appManagerWithSettingsContext:(id)a3;
+ (id)_allPersistedDisabledDomainNamesForPersona:(id)a3;
+ (id)_volumesToBackUpForPersona:(id)a3;
+ (id)appManager;
+ (void)_persistDisabledDomainNames:(id)a3 forPersona:(id)a4;
- (BOOL)_isContainerizedAppDomain:(id)a3;
- (BOOL)isDomainNameEnabled:(id)a3 forPersona:(id)a4;
- (BOOL)loadAppsWithPersona:(id)a3 safeHarbors:(BOOL)a4 error:(id *)a5;
- (MBAppManager)initWithMobileInstallation:(id)a3;
- (id)_allDisabledDomainNamesForPersona:(id)a3;
- (id)_copyAppsWithPlists:(id)a3 volumeMountPoints:(id)a4 safeHarbor:(BOOL)a5 error:(id *)a6;
- (id)_copySafeHarborsWithVolumeMountPoints:(id)a3 error:(id *)a4;
- (id)_copySystemContainersWithPlists:(id)a3 volumeMountPoints:(id)a4 error:(id *)a5;
- (id)_copySystemContainersWithVolumeMountPoints:(id)a3 error:(id *)a4;
- (id)_copySystemPluginsForPersona:(id)a3 volumeMountPoints:(id)a4 error:(id *)a5;
- (id)_copySystemPluginsWithPlists:(id)a3 volumeMountPoints:(id)a4 error:(id *)a5;
- (id)_copyUserAppsForPersona:(id)a3 volumeMountPoints:(id)a4 error:(id *)a5;
- (id)_placeholderFilesForBundleID:(id)a3;
- (id)_subdomainNamesForAppDomainNames:(id)a3;
- (id)allContainers;
- (id)allDisabledDomainNamesForPersona:(id)a3;
- (id)allRestrictedDomainNamesForPersona:(id)a3;
- (id)allSystemContainers;
- (id)containerWithIdentifier:(id)a3 containerType:(int)a4;
- (id)createSafeHarborForContainer:(id)a3 withPersona:(id)a4 usingIntermediateRestoreDir:(BOOL)a5 error:(id *)a6;
- (id)dependentDomainNamesForAppDomainName:(id)a3;
- (id)fetchAppWithIdentifier:(id)a3 persona:(id)a4 error:(id *)a5;
- (void)_addContainer:(id)a3;
- (void)_reconcileBooksAndHealthInDisabledDomainsList:(id)a3;
- (void)_removeContainer:(id)a3;
- (void)_setEnabled:(BOOL)a3 forDomainNames:(id)a4 persona:(id)a5;
- (void)_syncDisabledDomainsWithAllInstalledAppDomains:(id)a3 persona:(id)a4;
- (void)removeOldSafeHarborsWithExpiration:(double)a3;
- (void)removeStaleStateForUninstalledAppsForPersona:(id)a3;
@end

@implementation MBAppManager

+ (id)appManager
{
  v2 = [[MBAppManager alloc] initWithMobileInstallation:0];

  return v2;
}

+ (MBAppManager)appManagerWithSettingsContext:(id)a3
{
  v3 = a3;
  v4 = [MBAppManager alloc];
  v5 = [v3 mobileInstallation];

  v6 = [(MBAppManager *)v4 initWithMobileInstallation:v5];

  return v6;
}

- (MBAppManager)initWithMobileInstallation:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MBAppManager;
  v6 = [(MBAppManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mobileInstallation, a3);
  }

  return v7;
}

- (id)_subdomainNamesForAppDomainNames:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableSet set];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v46 = self;
  obj = [(MBAppManager *)self allApps];
  v6 = [obj countByEnumeratingWithState:&v70 objects:v77 count:16];
  v55 = v4;
  if (v6)
  {
    v7 = v6;
    v8 = *v71;
    v47 = *v71;
    do
    {
      v9 = 0;
      v49 = v7;
      do
      {
        if (*v71 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v70 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v12 = [v10 domain];
        v13 = [v12 name];
        v14 = [v4 containsObject:v13];

        if (v14)
        {
          v53 = v11;
          context = v9;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v15 = [v10 containers];
          v16 = [v15 countByEnumeratingWithState:&v66 objects:v76 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v67;
            do
            {
              for (i = 0; i != v17; i = i + 1)
              {
                if (*v67 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v66 + 1) + 8 * i);
                v21 = [v20 identifier];
                v22 = [v10 identifier];
                v23 = [v21 isEqualToString:v22];

                if ((v23 & 1) == 0)
                {
                  v24 = [v20 domain];
                  v25 = [v24 name];
                  [v5 addObject:v25];
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v66 objects:v76 count:16];
            }

            while (v17);
          }

          v4 = v55;
          v9 = context;
          v8 = v47;
          v7 = v49;
          v11 = v53;
        }

        objc_autoreleasePoolPop(v11);
        v9 = v9 + 1;
      }

      while (v9 != v7);
      v7 = [obj countByEnumeratingWithState:&v70 objects:v77 count:16];
    }

    while (v7);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obja = [(MBAppManager *)v46 allApps];
  v26 = [obja countByEnumeratingWithState:&v62 objects:v75 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v63;
    v48 = *v63;
    do
    {
      v29 = 0;
      v50 = v27;
      do
      {
        if (*v63 != v28)
        {
          objc_enumerationMutation(obja);
        }

        v30 = *(*(&v62 + 1) + 8 * v29);
        contexta = objc_autoreleasePoolPush();
        v31 = [v30 domain];
        v32 = [v31 name];
        v33 = [v4 containsObject:v32];

        if ((v33 & 1) == 0)
        {
          v54 = v29;
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v34 = [v30 containers];
          v35 = [v34 countByEnumeratingWithState:&v58 objects:v74 count:16];
          if (v35)
          {
            v36 = v35;
            v37 = *v59;
            do
            {
              for (j = 0; j != v36; j = j + 1)
              {
                if (*v59 != v37)
                {
                  objc_enumerationMutation(v34);
                }

                v39 = *(*(&v58 + 1) + 8 * j);
                v40 = [v39 identifier];
                v41 = [v30 identifier];
                v42 = [v40 isEqualToString:v41];

                if ((v42 & 1) == 0)
                {
                  v43 = [v39 domain];
                  v44 = [v43 name];
                  [v5 removeObject:v44];
                }
              }

              v36 = [v34 countByEnumeratingWithState:&v58 objects:v74 count:16];
            }

            while (v36);
          }

          v29 = v54;
          v4 = v55;
          v28 = v48;
          v27 = v50;
        }

        objc_autoreleasePoolPop(contexta);
        v29 = v29 + 1;
      }

      while (v29 != v27);
      v27 = [obja countByEnumeratingWithState:&v62 objects:v75 count:16];
    }

    while (v27);
  }

  return v5;
}

+ (id)_allPersistedDisabledDomainNamesForPersona:(id)a3
{
  v3 = a3;
  v4 = sub_100061CEC();
  dispatch_assert_queue_V2(v4);

  v5 = [v3 copyPreferencesValueForKey:@"DisabledDomains" class:objc_opt_class()];
  if (v5)
  {
    v6 = [NSMutableSet setWithArray:v5];
  }

  else
  {
    v6 = objc_opt_new();
  }

  v7 = v6;

  return v7;
}

+ (void)_persistDisabledDomainNames:(id)a3 forPersona:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = sub_100061CEC();
  dispatch_assert_queue_V2(v6);

  if (!v9)
  {
    sub_10009F084();
  }

  v7 = [v9 allObjects];
  v8 = [v7 sortedArrayUsingSelector:"compare:"];

  [v5 setPreferencesValue:v8 forKey:@"DisabledDomains"];
}

- (id)_allDisabledDomainNamesForPersona:(id)a3
{
  v4 = a3;
  v5 = sub_100061CEC();
  dispatch_assert_queue_V2(v5);

  v6 = [objc_opt_class() _allPersistedDisabledDomainNamesForPersona:v4];

  v7 = [(MBAppManager *)self _subdomainNamesForAppDomainNames:v6];
  [v6 unionSet:v7];

  return v6;
}

- (id)allDisabledDomainNamesForPersona:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100061FB0;
  v16 = sub_100061FC0;
  v17 = 0;
  v5 = sub_100061CEC();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100061FC8;
  block[3] = &unk_1000FE140;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)_syncDisabledDomainsWithAllInstalledAppDomains:(id)a3 persona:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100061CEC();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000620EC;
  block[3] = &unk_1000FE168;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_sync(v8, block);
}

- (void)_reconcileBooksAndHealthInDisabledDomainsList:(id)a3
{
  v3 = a3;
  if (([v3 containsObject:@"AppDomain-com.apple.iBooks"] & 1) == 0)
  {
    [v3 removeObject:@"BooksDomain"];
  }

  if (([v3 containsObject:@"AppDomain-com.apple.Health"] & 1) == 0)
  {
    [v3 removeObject:@"HealthDomain"];
  }

  if (([v3 containsObject:@"HealthDomain"] & 1) == 0)
  {
    [v3 removeObject:@"AppDomain-com.apple.Health"];
  }
}

- (BOOL)_isContainerizedAppDomain:(id)a3
{
  v3 = a3;
  if (([MBDomain isAppName:v3]& 1) != 0 || ([MBDomain isAppPluginName:v3]& 1) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = [MBDomain isAppGroupName:v3];
  }

  return v4;
}

- (BOOL)isDomainNameEnabled:(id)a3 forPersona:(id)a4
{
  v6 = a3;
  v7 = [(MBAppManager *)self allDisabledDomainNamesForPersona:a4];
  LOBYTE(self) = [v7 containsObject:v6];

  return self ^ 1;
}

- (void)_setEnabled:(BOOL)a3 forDomainNames:(id)a4 persona:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = sub_100061CEC();
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000625A8;
  v13[3] = &unk_1000FE190;
  v13[4] = self;
  v14 = v9;
  v16 = a3;
  v15 = v8;
  v11 = v8;
  v12 = v9;
  dispatch_sync(v10, v13);
}

- (id)allRestrictedDomainNamesForPersona:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v3 = [MBPersona personalPersonaWithError:0];
  }

  v4 = [v3 copyPreferencesValueForKey:@"RestrictedDomains" class:objc_opt_class()];
  if ([v4 count])
  {
    v5 = [NSMutableSet setWithArray:v4];
  }

  else
  {
    v5 = objc_opt_new();
  }

  v6 = v5;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = +[MCProfileConnection sharedConnection];
  v8 = [v7 doNotBackupAppIDs];

  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [MBDomain nameWithAppID:v13];
        [v6 addObject:v14];

        v15 = [MBDomain placeholderNameWithAppID:v13];
        [v6 addObject:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v16 = [(MBAppManager *)self _subdomainNamesForAppDomainNames:v6];
  [v6 unionSet:v16];

  return v6;
}

+ (id)_volumesToBackUpForPersona:(id)a3
{
  v3 = [a3 volumesToBackUp];
  v4 = [v3 allObjects];
  v5 = [v4 sortedArrayUsingComparator:&stru_1000FE1D0];

  return v5;
}

- (BOOL)loadAppsWithPersona:(id)a3 safeHarbors:(BOOL)a4 error:(id *)a5
{
  v5 = a4;
  v79 = a3;
  v6 = [v79 user];
  if ([v6 isPrimaryUser])
  {
    v73 = [v79 isPersonalPersona];
  }

  else
  {
    v73 = 0;
  }

  v7 = +[UMUserManager sharedManager];
  v8 = [v7 currentPersona];
  v71 = [v8 userPersonaUniqueString];

  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v117 = v79;
    v118 = 2112;
    v119 = v71;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Enumerating apps for persona %@ with current persona %@", buf, 0x16u);
    v63 = v79;
    v64 = v71;
    _MBLog();
  }

  v68 = objc_autoreleasePoolPush();
  v76 = [objc_opt_class() _volumesToBackUpForPersona:v79];
  v75 = [[NSMutableArray alloc] initWithCapacity:0];
  v112 = 0;
  v70 = [(MBAppManager *)self _copyUserAppsForPersona:v79 volumeMountPoints:v76 error:&v112];
  v77 = v112;
  v10 = v70;
  if (!v70)
  {
    v69 = 0;
    goto LABEL_72;
  }

  [v75 addObjectsFromArray:?];
  if ((v73 & v5) == 1)
  {
    v111 = v77;
    v11 = [(MBAppManager *)self _copySafeHarborsWithVolumeMountPoints:v76 error:&v111];
    v12 = v111;

    if (!v11)
    {
      v69 = 0;
LABEL_70:
      v77 = v12;
      goto LABEL_71;
    }

    [v75 addObjectsFromArray:v11];

    v77 = v12;
  }

  v13 = objc_opt_new();
  systemDataContainersByID = self->_systemDataContainersByID;
  self->_systemDataContainersByID = v13;

  v15 = objc_opt_new();
  systemSharedContainersByID = self->_systemSharedContainersByID;
  self->_systemSharedContainersByID = v15;

  v17 = objc_opt_new();
  appContainersByID = self->_appContainersByID;
  self->_appContainersByID = v17;

  v19 = objc_opt_new();
  appGroupContainersByID = self->_appGroupContainersByID;
  self->_appGroupContainersByID = v19;

  v21 = objc_opt_new();
  appPluginContainersByID = self->_appPluginContainersByID;
  self->_appPluginContainersByID = v21;

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  obj = v75;
  context = [obj countByEnumeratingWithState:&v107 objects:v123 count:16];
  if (context)
  {
    v82 = *v108;
    do
    {
      for (i = 0; i != context; i = i + 1)
      {
        if (*v108 != v82)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v107 + 1) + 8 * i);
        v103 = 0u;
        v104 = 0u;
        v105 = 0u;
        v106 = 0u;
        v24 = [v23 containers];
        v25 = [v24 countByEnumeratingWithState:&v103 objects:v122 count:16];
        if (v25)
        {
          v26 = *v104;
          do
          {
            for (j = 0; j != v25; j = j + 1)
            {
              if (*v104 != v26)
              {
                objc_enumerationMutation(v24);
              }

              v28 = *(*(&v103 + 1) + 8 * j);
              v29 = objc_autoreleasePoolPush();
              v30 = [v28 containerType];
              v31 = [v28 identifier];
              v32 = [v28 containerDir];
              v33 = sub_10003884C(v30);
              v34 = MBGetDefaultLog();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
              {
                *buf = 138412802;
                v117 = v31;
                v118 = 2112;
                v119 = v33;
                v120 = 2112;
                v121 = v32;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "App: Found container %@ (%@) at %@", buf, 0x20u);
                v64 = v33;
                v65 = v32;
                v63 = v31;
                _MBLog();
              }

              [(MBAppManager *)self _addContainer:v28];
              objc_autoreleasePoolPop(v29);
            }

            v25 = [v24 countByEnumeratingWithState:&v103 objects:v122 count:16];
          }

          while (v25);
        }
      }

      context = [obj countByEnumeratingWithState:&v107 objects:v123 count:16];
    }

    while (context);
  }

  if (v73)
  {
    v102 = v77;
    v67 = [(MBAppManager *)self _copySystemContainersWithVolumeMountPoints:v76 error:&v102];
    v12 = v102;

    if (v67)
    {
      v101 = v12;
      v66 = [(MBAppManager *)self _copySystemPluginsForPersona:v79 volumeMountPoints:v76 error:&v101];
      v78 = v101;

      v35 = v66;
      v69 = v66 != 0;
      if (v66)
      {
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v74 = v66;
        v36 = [v74 countByEnumeratingWithState:&v97 objects:v115 count:16];
        if (v36)
        {
          obja = *v98;
          do
          {
            v37 = 0;
            v83 = v36;
            do
            {
              if (*v98 != obja)
              {
                objc_enumerationMutation(v74);
              }

              v87 = v37;
              v38 = *(*(&v97 + 1) + 8 * v37);
              contexta = objc_autoreleasePoolPush();
              v39 = [v38 identifier];
              v40 = MBGetDefaultLog();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
              {
                v41 = v40;
                if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
                {
                  v42 = [v38 containerDir];
                  *buf = 138412546;
                  v117 = v39;
                  v118 = 2112;
                  v119 = v42;
                  _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "System Plugin: Found container %@ %@", buf, 0x16u);
                }

                [v38 containerDir];
                v64 = v63 = v39;
                _MBLog();
              }

              [(NSMutableDictionary *)self->_appPluginContainersByID setObject:v38 forKeyedSubscript:v39];
              v95 = 0u;
              v96 = 0u;
              v93 = 0u;
              v94 = 0u;
              v43 = [v38 allAppGroupContainers];
              v44 = [v43 countByEnumeratingWithState:&v93 objects:v114 count:16];
              if (v44)
              {
                v45 = *v94;
                do
                {
                  for (k = 0; k != v44; k = k + 1)
                  {
                    if (*v94 != v45)
                    {
                      objc_enumerationMutation(v43);
                    }

                    v47 = *(*(&v93 + 1) + 8 * k);
                    v48 = [v47 identifier];
                    v49 = [(NSMutableDictionary *)self->_appGroupContainersByID objectForKeyedSubscript:v48];
                    v50 = v49 == 0;

                    if (v50)
                    {
                      v51 = MBGetDefaultLog();
                      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
                      {
                        v52 = v51;
                        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
                        {
                          v53 = [v47 containerDir];
                          *buf = 138412802;
                          v117 = v48;
                          v118 = 2112;
                          v119 = v53;
                          v120 = 2112;
                          v121 = v39;
                          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "System Plugin: Found app group container %@ at %@ for %@", buf, 0x20u);
                        }

                        v64 = [v47 containerDir];
                        v65 = v39;
                        v63 = v48;
                        _MBLog();
                      }

                      [(NSMutableDictionary *)self->_appGroupContainersByID setObject:v47 forKeyedSubscript:v48];
                    }
                  }

                  v44 = [v43 countByEnumeratingWithState:&v93 objects:v114 count:16];
                }

                while (v44);
              }

              objc_autoreleasePoolPop(contexta);
              v37 = v87 + 1;
            }

            while ((v87 + 1) != v83);
            v36 = [v74 countByEnumeratingWithState:&v97 objects:v115 count:16];
          }

          while (v36);
        }

        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v54 = v67;
        v55 = [v54 countByEnumeratingWithState:&v89 objects:v113 count:16];
        if (v55)
        {
          v56 = *v90;
          do
          {
            for (m = 0; m != v55; m = m + 1)
            {
              if (*v90 != v56)
              {
                objc_enumerationMutation(v54);
              }

              v58 = *(*(&v89 + 1) + 8 * m);
              if ([v58 isSystemSharedContainer])
              {
                v59 = self->_systemSharedContainersByID;
              }

              else
              {
                v59 = self->_systemDataContainersByID;
              }

              v60 = [v58 identifier];
              [(NSMutableDictionary *)v59 setObject:v58 forKeyedSubscript:v60];
            }

            v55 = [v54 countByEnumeratingWithState:&v89 objects:v113 count:16];
          }

          while (v55);
        }

        v35 = v66;
      }

      v12 = v78;
    }

    else
    {
      v69 = 0;
    }

    goto LABEL_70;
  }

  v69 = 1;
LABEL_71:
  v10 = v70;
LABEL_72:

  objc_autoreleasePoolPop(v68);
  if (a5)
  {
    v61 = v77;
    *a5 = v77;
  }

  return v69;
}

- (id)_copyUserAppsForPersona:(id)a3 volumeMountPoints:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Looking up user apps", buf, 2u);
    _MBLog();
  }

  v11 = objc_autoreleasePoolPush();
  mobileInstallation = self->_mobileInstallation;
  v20 = 0;
  v13 = [(MBMobileInstallation *)mobileInstallation userAppsForPersona:v8 error:&v20];
  v14 = v20;
  v15 = [v13 allValues];

  if (v15)
  {

    v19 = 0;
    v16 = [(MBAppManager *)self _copyAppsWithPlists:v15 volumeMountPoints:v9 safeHarbor:0 error:&v19];
    v14 = v19;
  }

  else
  {
    v16 = 0;
  }

  objc_autoreleasePoolPop(v11);
  if (a5)
  {
    v17 = v14;
    *a5 = v14;
  }

  return v16;
}

- (id)_copySystemPluginsForPersona:(id)a3 volumeMountPoints:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Looking up system plugins", buf, 2u);
    _MBLog();
  }

  v11 = objc_autoreleasePoolPush();
  mobileInstallation = self->_mobileInstallation;
  v20 = 0;
  v13 = [(MBMobileInstallation *)mobileInstallation systemPluginsForPersona:v8 error:&v20];
  v14 = v20;
  v15 = [v13 allValues];

  if (v15)
  {

    v19 = 0;
    v16 = [(MBAppManager *)self _copySystemPluginsWithPlists:v15 volumeMountPoints:v9 error:&v19];
    v14 = v19;
  }

  else
  {
    v16 = 0;
  }

  objc_autoreleasePoolPop(v11);
  if (a5)
  {
    v17 = v14;
    *a5 = v14;
  }

  return v16;
}

- (id)_copySafeHarborsWithVolumeMountPoints:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Copying safe harbors", buf, 2u);
    _MBLog();
  }

  v8 = objc_autoreleasePoolPush();
  mobileInstallation = self->_mobileInstallation;
  v17 = 0;
  v10 = [(MBMobileInstallation *)mobileInstallation safeHarborsWithError:&v17];
  v11 = v17;
  v12 = [v10 allValues];

  if (v12)
  {

    v16 = 0;
    v13 = [(MBAppManager *)self _copyAppsWithPlists:v12 volumeMountPoints:v6 safeHarbor:1 error:&v16];
    v11 = v16;
  }

  else
  {
    v13 = 0;
  }

  objc_autoreleasePoolPop(v8);
  if (a4)
  {
    v14 = v11;
    *a4 = v11;
  }

  return v13;
}

- (id)_copyAppsWithPlists:(id)a3 volumeMountPoints:(id)a4 safeHarbor:(BOOL)a5 error:(id *)a6
{
  v7 = a3;
  v32 = a4;
  v29 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v34;
    do
    {
      v11 = 0;
      do
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v33 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        v14 = sub_100063F94(v12, v32);
        if (v14)
        {
          v15 = [(MBContainer *)[MBApp alloc] initWithPropertyList:v12 volumeMountPoint:v14];
          if (!v15)
          {
            sub_10009F0D8();
          }

          v16 = v15;
          v17 = [(MBApp *)v15 bundleID];
          v18 = [v16 bundleDir];
          v19 = v18;
          if (a5)
          {
LABEL_11:
            v20 = [v16 containerDir];
            v21 = MBGetDefaultLog();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              v22 = [v16 isPlaceholder];
              *buf = 138413058;
              v38 = v17;
              v39 = 1024;
              *v40 = v22;
              *&v40[4] = 2112;
              *&v40[6] = v19;
              v41 = 2112;
              v42 = v20;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Found installed app, bundleID:%@, isPlaceholder:%d, bundleDir:%@, containerDir:%@", buf, 0x26u);
              v27 = v19;
              v28 = v20;
              v25 = v17;
              v26 = [v16 isPlaceholder];
              _MBLog();
            }

            [v29 addObject:v16];
          }

          else if (v17)
          {
            if (v18)
            {
              goto LABEL_11;
            }

            v20 = MBGetDefaultLog();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v38 = v17;
              v39 = 2112;
              *v40 = v12;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Found nil bundleDir for %@: %@", buf, 0x16u);
              v25 = v17;
              v26 = v12;
LABEL_23:
              _MBLog();
            }
          }

          else
          {
            v20 = MBGetDefaultLog();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v38 = v12;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Found nil bundleID: %@", buf, 0xCu);
              v25 = v12;
              goto LABEL_23;
            }
          }

          goto LABEL_17;
        }

        v16 = [v12 objectForKeyedSubscript:kCFBundleIdentifierKey];
        v17 = [v12 objectForKeyedSubscript:@"Container"];
        v19 = MBGetDefaultLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412546;
          v38 = v16;
          v39 = 2112;
          *v40 = v17;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_FAULT, "Skipping app %@, because it's container path %@ is on the wrong volume", buf, 0x16u);
          v25 = v16;
          v26 = v17;
          _MBLog();
        }

LABEL_17:

        objc_autoreleasePoolPop(v13);
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v23 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
      v9 = v23;
    }

    while (v23);
  }

  return v29;
}

- (id)_copySystemPluginsWithPlists:(id)a3 volumeMountPoints:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  v8 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v32;
    v13 = &OBJC_IVAR___MBDriveBackupEngine__fullBackup;
    while (2)
    {
      v14 = 0;
      v30 = v11;
      do
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v31 + 1) + 8 * v14);
        v16 = sub_100063F94(v15, v7);
        if (v16)
        {
          v17 = v16;
          v18 = [objc_alloc((v13 + 946)) initWithPropertyList:v15 volumeMountPoint:v16];
          if (!v18)
          {

            v27 = 0;
            goto LABEL_17;
          }

          v19 = v18;
          v20 = MBGetDefaultLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            [v19 identifier];
            v21 = v12;
            v22 = v7;
            v23 = v8;
            v24 = v9;
            v26 = v25 = v13;
            *buf = 138412290;
            v36 = v26;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Installed system plugin: %@", buf, 0xCu);

            v29 = [v19 identifier];
            _MBLog();

            v13 = v25;
            v9 = v24;
            v8 = v23;
            v7 = v22;
            v12 = v21;
            v11 = v30;
          }

          [v8 addObject:v19];
        }

        else
        {
          v17 = [v15 objectForKeyedSubscript:kCFBundleIdentifierKey];
          v19 = MBGetDefaultLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v36 = v17;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Skipping system plugin %@, because it's container path is on the wrong volume", buf, 0xCu);
            _MBLog();
          }
        }

        v14 = v14 + 1;
      }

      while (v11 != v14);
      v11 = [v9 countByEnumeratingWithState:&v31 objects:v37 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v27 = v8;
LABEL_17:

  return v27;
}

- (id)_copySystemContainersWithVolumeMountPoints:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Looking up system containers", buf, 2u);
    _MBLog();
  }

  v8 = objc_alloc_init(NSMutableArray);
  v9 = objc_autoreleasePoolPush();
  v10 = [(MBMobileInstallation *)self->_mobileInstallation systemContainersWithError:0];
  v11 = [v10 allValues];

  if (v11)
  {
    v22 = 0;
    v12 = [(MBAppManager *)self _copySystemContainersWithPlists:v11 volumeMountPoints:v6 error:&v22];
    v13 = v22;
    if (!v12)
    {
      v17 = MBGetDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v24 = v13;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to copy system containers from generated plists, error:%@", buf, 0xCu);
        _MBLog();
      }

      v16 = v8;
      goto LABEL_16;
    }

    [v8 addObjectsFromArray:v12];

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = [(MBMobileInstallation *)self->_mobileInstallation systemSharedContainersWithError:0];
  v16 = [v15 allValues];

  if (v16)
  {
    v21 = v14;
    v17 = [(MBAppManager *)self _copySystemContainersWithPlists:v16 volumeMountPoints:v6 error:&v21];
    v13 = v21;

    if (v17)
    {
      [v8 addObjectsFromArray:v17];
LABEL_17:

      v14 = v13;
      goto LABEL_18;
    }

    v18 = MBGetDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v13;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to copy system shared containers from generated plists, error:%@", buf, 0xCu);
      _MBLog();
    }

LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

LABEL_18:

  objc_autoreleasePoolPop(v9);
  if (a4 && v14)
  {
    v19 = v14;
    *a4 = v14;
  }

  return v8;
}

- (id)_copySystemContainersWithPlists:(id)a3 volumeMountPoints:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  v8 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        v15 = sub_100063F94(v14, v7);
        if (v15)
        {
          v16 = v15;
          v17 = [(MBContainer *)[MBSystemContainer alloc] initWithPropertyList:v14 volumeMountPoint:v15];
          v18 = MBGetDefaultLog();
          v19 = v18;
          if (!v17)
          {
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v30 = v14;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to parse system container plist: %@", buf, 0xCu);
              _MBLog();
            }

            if (a5)
            {
              *a5 = [MBError errorWithCode:1 format:@"Failed to parse system container plist"];
            }

            v21 = 0;
            goto LABEL_21;
          }

          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            v20 = [(MBContainer *)v17 identifier];
            *buf = 138412290;
            v30 = v20;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "System container: %@", buf, 0xCu);

            v23 = [(MBContainer *)v17 identifier];
            _MBLog();
          }

          [v8 addObject:v17];
        }

        else
        {
          v16 = [v14 objectForKeyedSubscript:kCFBundleIdentifierKey];
          v17 = MBGetDefaultLog();
          if (os_log_type_enabled(&v17->super.super, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v30 = v16;
            _os_log_impl(&_mh_execute_header, &v17->super.super, OS_LOG_TYPE_ERROR, "Skipping system container %@, because it's path is on the wrong volume", buf, 0xCu);
            _MBLog();
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v25 objects:v31 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v21 = v8;
LABEL_21:

  return v21;
}

- (id)allContainers
{
  v3 = [(NSMutableDictionary *)self->_appContainersByID allValues];
  v4 = [v3 mutableCopy];

  v5 = [(NSMutableDictionary *)self->_appGroupContainersByID allValues];
  [v4 addObjectsFromArray:v5];

  v6 = [(NSMutableDictionary *)self->_appPluginContainersByID allValues];
  [v4 addObjectsFromArray:v6];

  v7 = [(NSMutableDictionary *)self->_systemDataContainersByID allValues];
  [v4 addObjectsFromArray:v7];

  v8 = [(NSMutableDictionary *)self->_systemSharedContainersByID allValues];
  [v4 addObjectsFromArray:v8];

  return v4;
}

- (id)allSystemContainers
{
  v3 = [(NSMutableDictionary *)self->_systemDataContainersByID allValues];
  v4 = [v3 mutableCopy];

  v5 = [(NSMutableDictionary *)self->_systemSharedContainersByID allValues];
  [v4 addObjectsFromArray:v5];

  return v4;
}

- (id)containerWithIdentifier:(id)a3 containerType:(int)a4
{
  v6 = a3;
  if ((a4 - 1) > 4)
  {
    v7 = 0;
  }

  else
  {
    v7 = [*(&self->super.isa + qword_1000B7378[a4 - 1]) objectForKeyedSubscript:v6];
  }

  return v7;
}

- (id)dependentDomainNamesForAppDomainName:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [MBDomain containerIDWithName:v4];
  v7 = [(MBAppManager *)self appWithIdentifier:v6];
  v8 = v7;
  if (v7)
  {
    v19 = v6;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = [v7 containers];
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v20 + 1) + 8 * i) domain];
          v15 = [v14 name];
          v16 = [v15 isEqualToString:v4];

          if ((v16 & 1) == 0)
          {
            v17 = [v14 name];
            [v5 addObject:v17];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    v6 = v19;
  }

  return v5;
}

- (id)fetchAppWithIdentifier:(id)a3 persona:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  mobileInstallation = self->_mobileInstallation;
  v43 = 0;
  v38 = v8;
  v11 = [(MBMobileInstallation *)mobileInstallation userAppWithBundleID:v8 placeholder:1 persona:v9 error:&v43];
  v12 = v43;
  if (v11)
  {
    v13 = [v11 objectForKeyedSubscript:@"Container"];
    if (v13)
    {
      v14 = [objc_opt_class() _volumesToBackUpForPersona:v9];
      v15 = sub_100063F94(v11, v14);
      if (v15)
      {
        v16 = [(MBContainer *)[MBApp alloc] initWithPropertyList:v11 volumeMountPoint:v15];
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v17 = [(MBApp *)v16 containers];
        v18 = [v17 countByEnumeratingWithState:&v39 objects:v52 count:16];
        if (v18)
        {
          v19 = v18;
          v32 = v15;
          v33 = v16;
          v34 = v14;
          v35 = v13;
          v36 = v12;
          v37 = v9;
          v20 = *v40;
          do
          {
            for (i = 0; i != v19; i = i + 1)
            {
              if (*v40 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v39 + 1) + 8 * i);
              v23 = objc_autoreleasePoolPush();
              v24 = [v22 containerType];
              v25 = [v22 identifier];
              v26 = [v22 containerDir];
              v27 = sub_10003884C(v24);
              v28 = MBGetDefaultLog();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
              {
                *buf = 138413058;
                v45 = v25;
                v46 = 2112;
                v47 = v27;
                v48 = 2112;
                v49 = v26;
                v50 = 2112;
                v51 = v38;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Loaded container %@ (%@) at %@ for parent app %@", buf, 0x2Au);
                _MBLog();
              }

              objc_autoreleasePoolPop(v23);
            }

            v19 = [v17 countByEnumeratingWithState:&v39 objects:v52 count:16];
          }

          while (v19);
          v9 = v37;
          v13 = v35;
          v12 = v36;
          v16 = v33;
          v14 = v34;
          v15 = v32;
        }
      }

      else
      {
        v17 = [v14 componentsJoinedByString:{@", "}];
        if (a5)
        {
          [MBError errorWithCode:3 format:@"%@ does not exist on expected volume(s) [%@]", v38, v17];
          *a5 = v16 = 0;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else if (a5)
    {
      [MBError errorWithCode:245 format:@"App not installed: %@", v38];
      *a5 = v16 = 0;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v29 = MBGetDefaultLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v45 = v8;
      v46 = 2112;
      v47 = v12;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to load app with identifier %@: %@", buf, 0x16u);
      _MBLog();
    }

    if (a5)
    {
      v30 = v12;
      v16 = 0;
      *a5 = v12;
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (void)removeOldSafeHarborsWithExpiration:(double)a3
{
  v4 = [NSDate dateWithTimeIntervalSinceNow:-a3];
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing safe harbors created before %@", buf, 0xCu);
    v26 = v4;
    _MBLog();
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [(MBAppManager *)self allContainers];
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    do
    {
      v10 = 0;
      v29 = v8;
      do
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v30 + 1) + 8 * v10);
        if ([v11 isSafeHarbor])
        {
          v12 = [v11 datePlacedInSafeHarbor];
          if (!v12)
          {
            sub_10009F130(v11, a2, self);
          }

          if ([v12 compare:v4] == -1)
          {
            v20 = MBGetDefaultLog();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = [v11 identifier];
              *buf = 138412546;
              v35 = v21;
              v36 = 2112;
              v37 = v12;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Removing safe harbor %@ created at %@", buf, 0x16u);

              v26 = [v11 identifier];
              v27 = v12;
              _MBLog();
            }

            mobileInstallation = self->_mobileInstallation;
            v23 = [v11 identifier];
            LODWORD(mobileInstallation) = -[MBMobileInstallation removeSafeHarborWithIdentifier:type:error:](mobileInstallation, "removeSafeHarborWithIdentifier:type:error:", v23, [v11 containerType], 0);

            if (mobileInstallation)
            {
              [(MBAppManager *)self _removeContainer:v11];
            }

            else
            {
              v24 = MBGetDefaultLog();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                v25 = [v11 identifier];
                *buf = 138412290;
                v35 = v25;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Error removing safe harbor: %@", buf, 0xCu);

                v26 = [v11 identifier];
                _MBLog();
              }
            }
          }

          else
          {
            v13 = [v11 datePlacedInSafeHarbor];
            v14 = MBGetDefaultLog();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              [v11 identifier];
              v15 = v9;
              v16 = v6;
              v17 = v4;
              v19 = v18 = self;
              *buf = 138412546;
              v35 = v19;
              v36 = 2112;
              v37 = v13;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Not removing safe harbor %@ created at %@", buf, 0x16u);

              v26 = [v11 identifier];
              v27 = v13;
              _MBLog();

              self = v18;
              v4 = v17;
              v6 = v16;
              v9 = v15;
              v8 = v29;
            }
          }
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v8);
  }
}

- (id)_placeholderFilesForBundleID:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [v3 stringByAppendingPathExtension:@"zip"];
    v8[0] = v4;
    v5 = [v3 stringByAppendingPathExtension:@"ipa"];

    v8[1] = v5;
    v6 = [NSArray arrayWithObjects:v8 count:2];
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  return v6;
}

- (void)removeStaleStateForUninstalledAppsForPersona:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = +[NSFileManager defaultManager];
  [v3 appPlaceholderArchiveDirectory];
  v72 = 0;
  v53 = v52 = v5;
  v6 = [v5 contentsOfDirectoryAtPath:? error:?];
  v54 = 0;
  v45 = v6;
  context = v4;
  if (v6)
  {
    v7 = [NSMutableSet setWithArray:v6];
  }

  else
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v78 = v53;
      v79 = 2112;
      v80 = v54;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to fetch the contents of %@: %@", buf, 0x16u);
      v43 = v53;
      v44 = v54;
      _MBLog();
    }

    v7 = objc_opt_new();
  }

  v9 = v7;
  v51 = objc_opt_new();
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v47 = v3;
  v10 = [(MBAppManager *)self allRestrictedDomainNamesForPersona:v3];
  v11 = [v10 countByEnumeratingWithState:&v68 objects:v76 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v69;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v69 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v68 + 1) + 8 * i);
        if ([MBDomain isLegacyPerAppPlaceholderName:v15, v43, v44])
        {
          v16 = [MBDomain containerIDWithName:v15];
          [v51 addObject:v16];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v68 objects:v76 count:16];
    }

    while (v12);
  }

  v17 = +[NSMutableSet set];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v18 = [(MBAppManager *)self allApps];
  v19 = [v18 countByEnumeratingWithState:&v64 objects:v75 count:16];
  v48 = v17;
  if (v19)
  {
    v20 = v19;
    v21 = *v65;
    v50 = v18;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v65 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v64 + 1) + 8 * j);
        v24 = [v23 domain];
        v25 = [v24 name];

        if (v25)
        {
          [v17 addObject:v25];
        }

        if (([v23 isSystemApp] & 1) == 0)
        {
          v26 = [v23 bundleID];
          if (([v51 containsObject:v26] & 1) == 0)
          {
            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            v27 = [v23 bundleID];
            v28 = [(MBAppManager *)self _placeholderFilesForBundleID:v27];

            v29 = [v28 countByEnumeratingWithState:&v60 objects:v74 count:16];
            if (v29)
            {
              v30 = v29;
              v31 = *v61;
              do
              {
                for (k = 0; k != v30; k = k + 1)
                {
                  if (*v61 != v31)
                  {
                    objc_enumerationMutation(v28);
                  }

                  [v9 removeObject:*(*(&v60 + 1) + 8 * k)];
                }

                v30 = [v28 countByEnumeratingWithState:&v60 objects:v74 count:16];
              }

              while (v30);
            }

            v17 = v48;
            v18 = v50;
          }
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v64 objects:v75 count:16];
    }

    while (v20);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v33 = v9;
  v34 = [v33 countByEnumeratingWithState:&v56 objects:v73 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v57;
    do
    {
      v37 = 0;
      v38 = v54;
      do
      {
        if (*v57 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v39 = [v53 stringByAppendingPathComponent:{*(*(&v56 + 1) + 8 * v37), v43, v44}];
        v40 = MBGetDefaultLog();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v78 = v39;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Removing old placeholder archive at %@", buf, 0xCu);
          v43 = v39;
          _MBLog();
        }

        v55 = v38;
        v41 = [v52 removeItemAtPath:v39 error:&v55];
        v54 = v55;

        if ((v41 & 1) == 0)
        {
          v42 = MBGetDefaultLog();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v78 = v39;
            v79 = 2112;
            v80 = v54;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "Failed to remove the placeholder archive at %@: %@", buf, 0x16u);
            v43 = v39;
            v44 = v54;
            _MBLog();
          }
        }

        v37 = v37 + 1;
        v38 = v54;
      }

      while (v35 != v37);
      v35 = [v33 countByEnumeratingWithState:&v56 objects:v73 count:16];
    }

    while (v35);
  }

  [(MBAppManager *)self _syncDisabledDomainsWithAllInstalledAppDomains:v48 persona:v47];
  objc_autoreleasePoolPop(context);
}

- (void)_addContainer:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v4 containerType];
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        appGroupContainersByID = self->_appGroupContainersByID;
        goto LABEL_15;
      case 4:
        appGroupContainersByID = self->_systemDataContainersByID;
        break;
      case 5:
        appGroupContainersByID = self->_systemSharedContainersByID;
        break;
      default:
        goto LABEL_19;
    }

    v9 = v4;
    v10 = v4;
    goto LABEL_18;
  }

  if (v6)
  {
    if (v6 == 1)
    {
      appGroupContainersByID = self->_appContainersByID;
      goto LABEL_15;
    }

    if (v6 == 2)
    {
      appGroupContainersByID = self->_appPluginContainersByID;
LABEL_15:
      v9 = v4;
      v10 = v5;
LABEL_18:
      [(NSMutableDictionary *)appGroupContainersByID setObject:v9 forKeyedSubscript:v10];
    }
  }

  else
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "Invalid container type to add for %@", buf, 0xCu);
      _MBLog();
    }
  }

LABEL_19:
}

- (void)_removeContainer:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v4 containerType];
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        appGroupContainersByID = self->_appGroupContainersByID;
        goto LABEL_16;
      case 4:
        appGroupContainersByID = self->_systemDataContainersByID;
        goto LABEL_16;
      case 5:
        appGroupContainersByID = self->_systemSharedContainersByID;
        goto LABEL_16;
    }
  }

  else if (v6)
  {
    if (v6 == 1)
    {
      appGroupContainersByID = self->_appContainersByID;
      goto LABEL_16;
    }

    if (v6 == 2)
    {
      appGroupContainersByID = self->_appPluginContainersByID;
LABEL_16:
      [(NSMutableDictionary *)appGroupContainersByID setObject:0 forKeyedSubscript:v5];
    }
  }

  else
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "Invalid container type to remove for %@", buf, 0xCu);
      _MBLog();
    }
  }
}

- (id)createSafeHarborForContainer:(id)a3 withPersona:(id)a4 usingIntermediateRestoreDir:(BOOL)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  if (qword_10011E440 != -1)
  {
    sub_10009F1BC();
  }

  v10 = +[NSFileManager defaultManager];
  v11 = MBMobileFileAttributes();
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = sub_100061FB0;
  v71 = sub_100061FC0;
  v72 = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = sub_100061FB0;
  v65 = sub_100061FC0;
  v66 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = sub_100061FB0;
  v55 = sub_100061FC0;
  v56 = 0;
  v12 = qword_10011E438;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100066784;
  block[3] = &unk_1000FE218;
  v13 = v9;
  v41 = v13;
  v42 = self;
  v50 = a5;
  v46 = &v67;
  v47 = &v61;
  v14 = v8;
  v43 = v14;
  v48 = &v57;
  v15 = v10;
  v44 = v15;
  v16 = v11;
  v45 = v16;
  v49 = &v51;
  dispatch_sync(v12, block);
  if (v58[3])
  {
    v17 = kMBSafeHarborDataDirName;
    v18 = [v62[5] stringByAppendingPathComponent:kMBSafeHarborDataDirName];
    v19 = a6;
    v20 = [v62[5] stringByAppendingPathComponent:kMBSafeHarborInfoDirName];
    v38 = [v20 stringByAppendingPathComponent:kMBSafeHarborInfoPlistFilename];
    v21 = [v13 volumeMountPoint];
    v22 = [v14 copyWithVolumeMountPoint:v21];

    v23 = [v68[5] stringByAppendingPathComponent:v17];
    [v22 setContainerDir:v23];

    v24 = +[NSDate date];
    [v22 setDatePlacedInSafeHarbor:v24];

    v25 = MBGetDefaultLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v74 = v18;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Creating directory %@", buf, 0xCu);
      _MBLog();
    }

    if ([v15 createDirectoryAtPath:v18 withIntermediateDirectories:1 attributes:v16 error:v19])
    {
      v26 = MBGetDefaultLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v74 = v20;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "Creating directory %@", buf, 0xCu);
        _MBLog();
      }

      if ([v15 createDirectoryAtPath:v20 withIntermediateDirectories:1 attributes:v16 error:v19])
      {
        v27 = MBGetDefaultLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v74 = v38;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "Writing %@", buf, 0xCu);
          _MBLog();
        }

        v28 = [v22 propertyListForSafeHarborInfo];
        v29 = [v28 writeToFile:v38 atomically:1];

        if (v29)
        {
          v30 = v38;
          v31 = [v38 fileSystemRepresentation];
          v32 = MBMobileUID();
          v33 = MBMobileUID();
          if (!lchown(v31, v32, v33))
          {
            [(MBAppManager *)self _addContainer:v14];
            v35 = v22;
            goto LABEL_23;
          }

          if (v19)
          {
            v34 = [MBError posixErrorWithCode:100 path:v38 format:@"Error changing ownership of Safe Harbor Info.plist"];
LABEL_21:
            v35 = 0;
            *v19 = v34;
LABEL_23:

            goto LABEL_24;
          }
        }

        else if (v19)
        {
          v34 = [MBError errorWithCode:100 path:v38 format:@"Error writing Safe Harbor Info.plist"];
          goto LABEL_21;
        }
      }
    }

    v35 = 0;
    goto LABEL_23;
  }

  v35 = 0;
  if (a6)
  {
    *a6 = v52[5];
  }

LABEL_24:

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v61, 8);

  _Block_object_dispose(&v67, 8);

  return v35;
}

@end
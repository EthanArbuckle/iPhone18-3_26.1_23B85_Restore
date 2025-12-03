@interface MBRestorePolicy
- (BOOL)_isUnencryptedLocal;
- (BOOL)_pluginsAllowForegroundRestoreFile:(id)file;
- (BOOL)shouldAlwaysRestoreSystemSharedContainerDomain:(id)domain;
- (BOOL)shouldForegroundRestoreDomain:(id)domain;
- (BOOL)shouldRemoveAndRetryPlacingAssetsForRestorable:(id)restorable;
- (BOOL)shouldRestoreFile:(id)file markFileAsSkipped:(BOOL *)skipped error:(id *)error;
- (BOOL)shouldRestoreSystemFile:(id)file;
- (MBRestorePolicy)initWithPersona:(id)persona enginePolicyProvider:(id)provider appManager:(id)manager plugins:(id)plugins serviceRestoreMode:(id)mode osBuildVersionOfBackup:(id)backup shouldRestoreSystemFiles:(BOOL)files isRestoringPrimaryAccount:(BOOL)self0 shouldCreateMissingIntermediateDirectories:(BOOL)self1;
- (id)_localRootPathForDomain:(id)domain;
- (id)deprecated_destinationPathForiCloudRestorable:(id)restorable safeHarborDir:(id)dir;
- (id)deprecated_validateFile:(id)file debugContext:(id)context;
- (id)deriveATCPolicy;
- (id)notifyPluginsEndedRestoreWithEngine:(id)engine error:(id)error;
- (id)notifyPluginsEndingRestoreWithEngine:(id)engine;
- (id)notifyPluginsPreparingRestoreWithEngine:(id)engine;
- (id)notifyPluginsStartingRestoreWithEngine:(id)engine;
- (id)restorePathForDriveRestorable:(id)restorable;
- (id)restoreRootForDomain:(id)domain;
- (id)validateRestoreDomain:(id)domain relativePath:(id)path;
- (int)restoreType;
- (int64_t)restoreBehaviorForDomain:(id)domain error:(id *)error;
- (int64_t)restoreBehaviorForFile:(id)file withValidation:(BOOL)validation debugContext:(id)context error:(id *)error;
- (unint64_t)_enginePolicy;
- (unint64_t)foregroundStateForRestorable:(id)restorable;
@end

@implementation MBRestorePolicy

- (MBRestorePolicy)initWithPersona:(id)persona enginePolicyProvider:(id)provider appManager:(id)manager plugins:(id)plugins serviceRestoreMode:(id)mode osBuildVersionOfBackup:(id)backup shouldRestoreSystemFiles:(BOOL)files isRestoringPrimaryAccount:(BOOL)self0 shouldCreateMissingIntermediateDirectories:(BOOL)self1
{
  personaCopy = persona;
  providerCopy = provider;
  managerCopy = manager;
  pluginsCopy = plugins;
  modeCopy = mode;
  backupCopy = backup;
  if (!personaCopy)
  {
    sub_10009E8E0();
  }

  if (!managerCopy)
  {
    sub_10009E8B4();
  }

  v23 = backupCopy;
  v29.receiver = self;
  v29.super_class = MBRestorePolicy;
  v24 = [(MBRestorePolicy *)&v29 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_persona, persona);
    objc_storeWeak(&v25->_enginePolicyProvider, providerCopy);
    v25->_enginePolicy = 0;
    objc_storeStrong(&v25->_appManager, manager);
    if (pluginsCopy)
    {
      v26 = pluginsCopy;
    }

    else
    {
      v26 = &__NSArray0__struct;
    }

    objc_storeStrong(&v25->_plugins, v26);
    objc_storeStrong(&v25->_serviceRestoreMode, mode);
    objc_storeStrong(&v25->_osBuildVersionOfBackup, backup);
    v25->_shouldRestoreSystemFiles = files;
    v25->_isRestoringPrimaryAccount = account;
    v25->_shouldCreateMissingIntermediateDirectories = directories;
  }

  return v25;
}

- (id)deriveATCPolicy
{
  v3 = [MBRestorePolicy alloc];
  persona = self->_persona;
  WeakRetained = objc_loadWeakRetained(&self->_enginePolicyProvider);
  BYTE2(v8) = 1;
  BYTE1(v8) = self->_isRestoringPrimaryAccount;
  LOBYTE(v8) = self->_shouldRestoreSystemFiles;
  v6 = [MBRestorePolicy initWithPersona:v3 enginePolicyProvider:"initWithPersona:enginePolicyProvider:appManager:plugins:serviceRestoreMode:osBuildVersionOfBackup:shouldRestoreSystemFiles:isRestoringPrimaryAccount:shouldCreateMissingIntermediateDirectories:" appManager:persona plugins:WeakRetained serviceRestoreMode:self->_appManager osBuildVersionOfBackup:self->_plugins shouldRestoreSystemFiles:self->_serviceRestoreMode isRestoringPrimaryAccount:self->_osBuildVersionOfBackup shouldCreateMissingIntermediateDirectories:v8];

  return v6;
}

- (unint64_t)_enginePolicy
{
  result = self->_enginePolicy;
  if (!result)
  {
    WeakRetained = objc_loadWeakRetained(&self->_enginePolicyProvider);
    self->_enginePolicy = [WeakRetained enginePolicy];

    result = self->_enginePolicy;
    if (!result)
    {
      sub_10009E90C();
    }
  }

  return result;
}

- (BOOL)_isUnencryptedLocal
{
  _isDriveEngine = [(MBRestorePolicy *)self _isDriveEngine];
  if (_isDriveEngine)
  {
    if ([(MBRestorePolicy *)self _isEncrypted])
    {
      LOBYTE(_isDriveEngine) = 0;
    }

    else
    {
      LOBYTE(_isDriveEngine) = ![(MBRestorePolicy *)self _isDeviceTransferEngine];
    }
  }

  return _isDriveEngine;
}

- (int)restoreType
{
  serviceRestoreMode = self->_serviceRestoreMode;
  if (serviceRestoreMode && (v3 = [(MBServiceRestoreMode *)serviceRestoreMode type]- 1, v3 <= 6))
  {
    return dword_1000B7328[v3];
  }

  else
  {
    return 1;
  }
}

- (BOOL)shouldForegroundRestoreDomain:(id)domain
{
  domainCopy = domain;
  if ([(NSSet *)self->_domainNamesToForegroundInstall containsObject:domainCopy]|| ![MBDomain isContainerizedName:domainCopy])
  {
    v5 = 1;
  }

  else
  {
    v5 = [domainCopy isEqualToString:@"AppDomainGroup-group.com.apple.FileProvider.LocalStorage"];
  }

  return v5;
}

- (unint64_t)foregroundStateForRestorable:(id)restorable
{
  v8 = 0;
  v7 = 0;
  v3 = [(MBRestorePolicy *)self shouldRestoreFile:restorable markFileAsSkipped:&v8 error:&v7];
  v4 = v7;
  v5 = 0;
  if ((v3 & 1) == 0)
  {
    if (([MBError isError:v4 withCode:213]& 1) != 0)
    {
      v5 = 3;
    }

    else if (v8)
    {
      v5 = 2;
    }

    else
    {
      v5 = 6;
    }
  }

  return v5;
}

- (id)restoreRootForDomain:(id)domain
{
  domainCopy = domain;
  persona = [(MBRestorePolicy *)self persona];
  rootPath = [domainCopy rootPath];
  if ([(MBServiceRestoreMode *)self->_serviceRestoreMode type]== 6)
  {
    if ([domainCopy isBackupDomain])
    {
      v7 = MBGetDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v13 = rootPath;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "=restore-policy= Restoring BackupDomain for EDS persona in-place at %@", buf, 0xCu);
LABEL_11:
        _MBLog();
        goto LABEL_12;
      }

      goto LABEL_12;
    }

    if ([domainCopy isLegacyPerAppPlaceholderDomain])
    {
      v7 = MBGetDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v13 = rootPath;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "=restore-policy= Restoring legacy placeholder for EDS persona in-place at %@", buf, 0xCu);
        goto LABEL_11;
      }

LABEL_12:

      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if ([(MBServiceRestoreMode *)self->_serviceRestoreMode type])
  {
LABEL_13:
    v9 = rootPath;
    goto LABEL_16;
  }

  if (![domainCopy shouldRestoreToSharedVolume])
  {
LABEL_14:
    userIncompleteRestoreDirectory = [persona userIncompleteRestoreDirectory];
    goto LABEL_15;
  }

  userIncompleteRestoreDirectory = [persona sharedIncompleteRestoreDirectory];
LABEL_15:
  v10 = userIncompleteRestoreDirectory;
  v9 = [userIncompleteRestoreDirectory stringByAppendingPathComponent:rootPath];

LABEL_16:

  return v9;
}

- (id)restorePathForDriveRestorable:(id)restorable
{
  restorableCopy = restorable;
  if (!restorableCopy)
  {
    sub_10009E938();
  }

  v5 = restorableCopy;
  persona = [(MBRestorePolicy *)self persona];
  domain = [v5 domain];
  if ([domain shouldRestoreToSharedVolume])
  {
    [persona sharedIncompleteRestoreDirectory];
  }

  else
  {
    [persona userIncompleteRestoreDirectory];
  }
  v8 = ;
  absolutePath = [v5 absolutePath];
  v10 = [v8 stringByAppendingPathComponent:absolutePath];

  return v10;
}

- (id)deprecated_destinationPathForiCloudRestorable:(id)restorable safeHarborDir:(id)dir
{
  restorableCopy = restorable;
  dirCopy = dir;
  if ([(MBServiceRestoreMode *)self->_serviceRestoreMode type]== 6)
  {
    domain = [restorableCopy domain];
    if (([domain isBackupDomain] & 1) != 0 || objc_msgSend(domain, "isLegacyPerAppPlaceholderDomain"))
    {
      absolutePath = [restorableCopy absolutePath];
LABEL_15:

      goto LABEL_16;
    }

    persona = [(MBRestorePolicy *)self persona];
    domain2 = persona;
    goto LABEL_12;
  }

  if ([(MBRestorePolicy *)self _isForegroundRestore])
  {
    domain = [(MBRestorePolicy *)self persona];
    domain2 = [restorableCopy domain];
    if ([domain2 shouldRestoreToSharedVolume])
    {
      sharedIncompleteRestoreDirectory = [domain sharedIncompleteRestoreDirectory];
LABEL_13:
      v13 = sharedIncompleteRestoreDirectory;
      absolutePath2 = [restorableCopy absolutePath];
      absolutePath = [v13 stringByAppendingPathComponent:absolutePath2];

      goto LABEL_14;
    }

    persona = domain;
LABEL_12:
    sharedIncompleteRestoreDirectory = [persona userIncompleteRestoreDirectory];
    goto LABEL_13;
  }

  if ([dirCopy length])
  {
    domain = [dirCopy stringByAppendingPathComponent:kMBSafeHarborDataDirName];
    domain2 = [restorableCopy relativePath];
    absolutePath = [domain stringByAppendingPathComponent:domain2];
LABEL_14:

    goto LABEL_15;
  }

  absolutePath = [restorableCopy absolutePath];
LABEL_16:

  return absolutePath;
}

- (BOOL)shouldRestoreSystemFile:(id)file
{
  fileCopy = file;
  domain = [fileCopy domain];
  if (([domain isPlaceholderDomain] & 1) == 0 && (-[MBServiceRestoreMode type](self->_serviceRestoreMode, "type") != 6 || (objc_msgSend(domain, "isBackupDomain") & 1) == 0) && (!objc_msgSend(domain, "isSystemSharedContainerDomain") || !-[MBRestorePolicy shouldAlwaysRestoreSystemSharedContainerDomain:](self, "shouldAlwaysRestoreSystemSharedContainerDomain:", domain)))
  {
    relativePathsOfSystemFilesToAlwaysRestore = [domain relativePathsOfSystemFilesToAlwaysRestore];
    if ([relativePathsOfSystemFilesToAlwaysRestore count])
    {
      v32 = relativePathsOfSystemFilesToAlwaysRestore;
      relativePath = [fileCopy relativePath];
      pathComponents = [relativePath pathComponents];

      v33 = pathComponents;
      v10 = [pathComponents count];
      v11 = 0;
      do
      {
        v12 = objc_autoreleasePoolPush();
        v13 = [v33 subarrayWithRange:{0, v11}];
        v14 = [NSString pathWithComponents:v13];

        relativePathsOfSystemFilesToAlwaysRestore2 = [domain relativePathsOfSystemFilesToAlwaysRestore];
        v16 = [relativePathsOfSystemFilesToAlwaysRestore2 containsObject:v14];

        objc_autoreleasePoolPop(v12);
        if (v16)
        {

          v6 = 1;
          relativePathsOfSystemFilesToAlwaysRestore = v32;
          goto LABEL_30;
        }

        ++v11;
      }

      while (v11 <= v10);
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      relativePathsOfSystemFilesToAlwaysRestore = v32;
      v17 = v32;
      v36 = [v17 countByEnumeratingWithState:&v38 objects:v44 count:16];
      if (v36)
      {
        selfCopy = self;
        v31 = domain;
        v18 = 0;
        obj = v17;
        v35 = *v39;
        do
        {
          for (i = 0; i != v36; i = i + 1)
          {
            if (*v39 != v35)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v38 + 1) + 8 * i);
            context = objc_autoreleasePoolPush();
            pathComponents2 = [v20 pathComponents];
            v22 = [pathComponents2 count];
            v23 = 0;
            do
            {
              v24 = [pathComponents2 subarrayWithRange:{0, v23}];
              v25 = [NSString pathWithComponents:v24];

              relativePath2 = [fileCopy relativePath];
              v27 = [relativePath2 isEqualToString:v25];

              v18 |= v27;
              ++v23;
            }

            while (v23 <= v22);

            objc_autoreleasePoolPop(context);
          }

          v36 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
        }

        while (v36);

        domain = v31;
        relativePathsOfSystemFilesToAlwaysRestore = v32;
        self = selfCopy;
        if (v18)
        {
          goto LABEL_26;
        }
      }

      else
      {
      }
    }

    if (([domain isAppDomain] & 1) == 0 && !self->_shouldRestoreSystemFiles)
    {
      v28 = MBGetDefaultLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v43 = fileCopy;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "=restore-policy= Not restoring system file: %@", buf, 0xCu);
        _MBLog();
      }

      v6 = 0;
      goto LABEL_30;
    }

LABEL_26:
    v6 = 1;
LABEL_30:

    goto LABEL_31;
  }

  v6 = 1;
LABEL_31:

  return v6;
}

- (BOOL)shouldRestoreFile:(id)file markFileAsSkipped:(BOOL *)skipped error:(id *)error
{
  fileCopy = file;
  if (skipped)
  {
    *skipped = 0;
  }

  v9 = objc_autoreleasePoolPush();
  domain = [fileCopy domain];
  if (!domain)
  {
    sub_10009E964();
  }

  v11 = domain;
  rootPath = [domain rootPath];
  if ([rootPath hasPrefix:@"/private"])
  {
    rootPath2 = [v11 rootPath];
    v14 = [rootPath2 hasPrefix:@"/private/var/PersonaVolumes"];

    if ((v14 & 1) == 0)
    {
      v15 = MBGetDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v74 = fileCopy;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "=restore-policy= Not restoring (invalid path prefix): %@", buf, 0xCu);
        _MBLog();
      }

      rootPath3 = [v11 rootPath];
      rootPath4 = [v11 rootPath];
      v18 = [MBError errorWithCode:205 path:rootPath3 format:@"Domain %@ has an invalid root path: %@", v11, rootPath4];
LABEL_9:

      goto LABEL_21;
    }
  }

  else
  {
  }

  rootPath5 = [v11 rootPath];
  relativePath = [fileCopy relativePath];
  rootPath3 = [rootPath5 stringByAppendingPathComponent:relativePath];

  if (strlen([rootPath3 fileSystemRepresentation]) >= 0x3E6)
  {
    v21 = MBGetDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      name = [v11 name];
      *buf = 138412546;
      v74 = name;
      v75 = 2112;
      v76 = rootPath3;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "=restore-policy= Not restoring (file name too long): %@:%@", buf, 0x16u);

      name2 = [v11 name];
      v65 = rootPath3;
      _MBLog();
    }

    if (skipped)
    {
      *skipped = 1;
    }

    v18 = [MBError errorWithCode:107 path:rootPath3 format:@"Cannot restore file with path name that is too long", name2, v65];
    goto LABEL_21;
  }

  v72 = 0;
  v23 = [(MBRestorePolicy *)self restoreBehaviorForFile:fileCopy debugContext:0 error:&v72];
  v24 = v72;
  v18 = v24;
  if (v23 == -1)
  {
LABEL_21:

    objc_autoreleasePoolPop(v9);
LABEL_22:
    if (error)
    {
      v25 = v18;
      v26 = 0;
      *error = v18;
    }

    else
    {
      v26 = 0;
    }

    goto LABEL_25;
  }

  if (v23 == 1)
  {
    if (skipped)
    {
      *skipped = 1;
    }

    goto LABEL_21;
  }

  v69 = v24;
  if (_os_feature_enabled_impl())
  {
    if ([(MBRestorePolicy *)self _isForegroundRestore])
    {
      domain2 = [fileCopy domain];
      name3 = [domain2 name];
      v30 = [name3 isEqualToString:@"AppDomainGroup-group.com.apple.FileProvider.LocalStorage"];

      if (v30)
      {
        v31 = MBGetDefaultLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v74 = fileCopy;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "=restore-policy= Not restoring in foreground because file is in LocalStorage domain: %@", buf, 0xCu);
          _MBLog();
        }

        rootPath4 = [fileCopy relativePath];
        v18 = [MBError errorWithCode:213 path:rootPath4 format:@"Not restoring in foreground because file is in LocalStorage domain"];

        goto LABEL_9;
      }
    }
  }

  v66 = rootPath3;
  v67 = v9;
  errorCopy = error;
  v70 = fileCopy;
  relativePath2 = [fileCopy relativePath];
  pathComponents = [relativePath2 pathComponents];

  v71 = pathComponents;
  v34 = [pathComponents count];
  v35 = 0;
  do
  {
    v36 = objc_autoreleasePoolPush();
    v37 = [pathComponents subarrayWithRange:{0, v35}];
    v38 = [NSString pathWithComponents:v37];

    relativePathsNotToRestore = [v11 relativePathsNotToRestore];
    v40 = [relativePathsNotToRestore containsObject:v38];

    if (v40)
    {
      error = errorCopy;
      if (skipped)
      {
        *skipped = 1;
      }

      v53 = MBGetDefaultLog();
      fileCopy = v70;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v74 = v70;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "=restore-policy= Not restoring: %@", buf, 0xCu);
        _MBLog();
      }

      v52 = 1;
LABEL_67:

      objc_autoreleasePoolPop(v36);
      v26 = 0;
      v45 = v67;
      goto LABEL_68;
    }

    if (-[MBRestorePolicy _isForegroundRestore](self, "_isForegroundRestore") && ([v70 type] & 0xF000) == 0x8000)
    {
      relativePathsToBackgroundRestore = [v11 relativePathsToBackgroundRestore];
      if ([relativePathsToBackgroundRestore containsObject:v38])
      {
        shouldRestoreSystemFiles = self->_shouldRestoreSystemFiles;

        if (shouldRestoreSystemFiles)
        {
          v55 = MBGetDefaultLog();
          v56 = os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG);
          fileCopy = v70;
          if (v56)
          {
            *buf = 138412290;
            v74 = v70;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEBUG, "=restore-policy= Ignoring file since it needs to be restored in the background: %@", buf, 0xCu);
            _MBLog();
          }

          v57 = [MBError errorWithCode:213 format:@"Domain policy requires file must be restored in the background"];

          v52 = 6;
          v69 = v57;
          error = errorCopy;
          goto LABEL_67;
        }
      }

      else
      {
      }
    }

    if (![(MBRestorePolicy *)self isRestoringToSameDevice])
    {
      relativePathsNotToMigrate = [v11 relativePathsNotToMigrate];
      v44 = [relativePathsNotToMigrate containsObject:v38];

      if (v44)
      {
        v54 = MBGetDefaultLog();
        fileCopy = v70;
        error = errorCopy;
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v74 = v70;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "=restore-policy= Not restoring because this is a migrate: %@", buf, 0xCu);
          _MBLog();
        }

        v52 = 1;
        if (skipped)
        {
          *skipped = 1;
        }

        goto LABEL_67;
      }
    }

    objc_autoreleasePoolPop(v36);
    ++v35;
  }

  while (v35 <= v34);
  fileCopy = v70;
  error = errorCopy;
  if ([(MBRestorePolicy *)self shouldRestoreSystemFile:v70])
  {
    v45 = v67;
    if (![(MBRestorePolicy *)self _isForegroundRestore])
    {
      goto LABEL_71;
    }

    if ([v11 isAppDomain])
    {
      appManager = self->_appManager;
      containerID = [v11 containerID];
      v48 = [(MBAppManager *)appManager appWithIdentifier:containerID];

      if (([v48 isSystemApp] & 1) != 0 || (objc_msgSend(v11, "name"), v49 = objc_claimAutoreleasedReturnValue(), v50 = -[MBRestorePolicy shouldForegroundRestoreDomain:](self, "shouldForegroundRestoreDomain:", v49), v49, v50))
      {
        v51 = MBGetDefaultLog();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v74 = v70;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEBUG, "=restore-policy= Restoring system app in the foreground: %@", buf, 0xCu);
          goto LABEL_50;
        }

        goto LABEL_51;
      }

      if ([v11 isLegacyPerAppPlaceholderDomain])
      {
        v51 = MBGetDefaultLog();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v74 = v70;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEBUG, "=restore-policy= Restoring app placeholder file in the foreground: %@", buf, 0xCu);
LABEL_50:
          _MBLog();
        }

LABEL_51:
        v52 = 1;
        v26 = 1;
      }

      else
      {
        if ([v11 isPluginAppDomain])
        {
          v59 = MBGetDefaultLog();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v74 = v70;
            _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "=restore-policy= Restoring app plugin file in the background: %@", buf, 0xCu);
            name2 = v70;
            _MBLog();
          }

          v60 = @"App plug-in file must be restored in the background";
        }

        else
        {
          isGroupAppDomain = [v11 isGroupAppDomain];
          v62 = MBGetDefaultLog();
          v63 = os_log_type_enabled(v62, OS_LOG_TYPE_INFO);
          if (isGroupAppDomain)
          {
            if (v63)
            {
              *buf = 138412290;
              v74 = v70;
              _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_INFO, "=restore-policy= Restoring group container file in the background: %@", buf, 0xCu);
              name2 = v70;
              _MBLog();
            }

            v60 = @"Group container file must be restored in the background";
          }

          else
          {
            if (v63)
            {
              *buf = 138412290;
              v74 = v70;
              _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_INFO, "=restore-policy= Restoring app file in the background: %@", buf, 0xCu);
              name2 = v70;
              _MBLog();
            }

            v60 = @"App file must be restored in the background";
          }
        }

        [MBError errorWithCode:213 format:v60, name2];
        v26 = 0;
        v51 = v69;
        v69 = v52 = 6;
      }

      goto LABEL_68;
    }

    if (![(MBRestorePolicy *)self _pluginsAllowForegroundRestoreFile:v70])
    {
      v58 = [MBError errorWithCode:213 format:@"Plug-in requested file must be restored in the background"];

      v26 = 0;
      v52 = 6;
      v69 = v58;
    }

    else
    {
LABEL_71:
      v52 = 1;
      v26 = 1;
    }
  }

  else
  {
    v52 = 1;
    v45 = v67;
    v26 = 0;
    if (skipped)
    {
      *skipped = 1;
    }
  }

LABEL_68:

  objc_autoreleasePoolPop(v45);
  v18 = v69;
  if (v52 == 6)
  {
    goto LABEL_22;
  }

LABEL_25:

  return v26;
}

- (BOOL)_pluginsAllowForegroundRestoreFile:(id)file
{
  fileCopy = file;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = self->_plugins;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (!v5)
  {
    v19 = 1;
    goto LABEL_33;
  }

  v6 = v5;
  v32 = fileCopy;
  v7 = *v34;
  v8 = &selRef_progress;
  v9 = &selRef_progress;
  v10 = &selRef_progress;
  while (2)
  {
    v11 = 0;
    v12 = v8[358];
    v13 = v9[348];
    v14 = v10[359];
    do
    {
      if (*v34 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v33 + 1) + 8 * v11);
      if (objc_opt_respondsToSelector())
      {
        absolutePath = [v32 absolutePath];
        v17 = [v15 shouldRestoreContentWithPolicy:self atPath:absolutePath];

        if ((v17 & 1) == 0)
        {
          v18 = MBGetDefaultLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v20 = objc_opt_class();
            Name = class_getName(v20);
            *buf = 136446466;
            v38 = Name;
            v39 = 2112;
            fileCopy = v32;
            v40 = v32;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "=restore-policy= Not restoring because it was refused by plugin %{public}s: %@", buf, 0x16u);
            v22 = objc_opt_class();
            class_getName(v22);
            _MBLog();
          }

          else
          {
            fileCopy = v32;
          }

          goto LABEL_32;
        }
      }

      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          v18 = 0;
          goto LABEL_18;
        }

LABEL_14:
        v18 = [MBFileInfo fileInfoWithRestorable:v32];
LABEL_15:
        if (([v15 shouldRestoreContentWithPolicy:self fileInfo:v18] & 1) == 0)
        {
          v25 = MBGetDefaultLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v27 = objc_opt_class();
            v28 = class_getName(v27);
            *buf = 136446466;
            v38 = v28;
            v39 = 2112;
            fileCopy = v32;
            v40 = v32;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "=restore-policy= Not restoring because it was refused by plugin %{public}s: %@", buf, 0x16u);
            goto LABEL_28;
          }

          goto LABEL_29;
        }

        goto LABEL_18;
      }

      v18 = [MBFileInfo fileInfoWithRestorable:v32];
      if ([v15 shouldBackgroundRestoreContentWithPolicy:self fileInfo:v18])
      {
        v25 = MBGetDefaultLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v23 = objc_opt_class();
          v24 = class_getName(v23);
          *buf = 136446466;
          v38 = v24;
          v39 = 2112;
          fileCopy = v32;
          v40 = v32;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "=restore-policy= Restoring system file in the background (requested by plugin %{public}s: %@", buf, 0x16u);
LABEL_28:
          v29 = objc_opt_class();
          class_getName(v29);
          _MBLog();
LABEL_30:

LABEL_32:
          v19 = 0;
          goto LABEL_33;
        }

LABEL_29:
        fileCopy = v32;
        goto LABEL_30;
      }

      if (objc_opt_respondsToSelector())
      {
        if (!v18)
        {
          goto LABEL_14;
        }

        goto LABEL_15;
      }

LABEL_18:

      v11 = v11 + 1;
    }

    while (v6 != v11);
    v6 = [(NSArray *)obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    v8 = &selRef_progress;
    v9 = &selRef_progress;
    v10 = &selRef_progress;
    if (v6)
    {
      continue;
    }

    break;
  }

  v19 = 1;
  fileCopy = v32;
LABEL_33:

  return v19;
}

- (int64_t)restoreBehaviorForDomain:(id)domain error:(id *)error
{
  domainCopy = domain;
  if ([domainCopy isPlaceholderDomain] & 1) != 0 || -[MBServiceRestoreMode type](self->_serviceRestoreMode, "type") == 6 && (objc_msgSend(domainCopy, "isBackupDomain"))
  {
LABEL_2:
    integerValue = 0;
    goto LABEL_54;
  }

  if (!self->_shouldRestoreSystemFiles && ([domainCopy isAppDomain] & 1) == 0)
  {
    relativePathsOfSystemFilesToAlwaysRestore = [domainCopy relativePathsOfSystemFilesToAlwaysRestore];

    if (!relativePathsOfSystemFilesToAlwaysRestore)
    {
      if (![(MBRestorePolicy *)self shouldAlwaysRestoreSystemSharedContainerDomain:domainCopy])
      {
        v11 = MBGetDefaultLog();
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_13;
        }

        name = [domainCopy name];
        *buf = 138412290;
        v47 = name;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "=restore-policy= Not restoring system domain: %@", buf, 0xCu);

        name2 = [domainCopy name];
        goto LABEL_12;
      }

      goto LABEL_2;
    }
  }

  if ([(MBRestorePolicy *)self _isDriveEngine])
  {
    containerID = [domainCopy containerID];
    v10 = [containerID isEqualToString:@"systemgroup.com.apple.mobilegestaltcache"];

    if (v10)
    {
      v11 = MBGetDefaultLog();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
LABEL_13:

        integerValue = 1;
        goto LABEL_54;
      }

      name3 = [domainCopy name];
      *buf = 138543362;
      v47 = name3;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "=restore-policy= Not restoring mobile gestalt cache: %{public}@", buf, 0xCu);

      name2 = [domainCopy name];
LABEL_12:
      _MBLog();

      goto LABEL_13;
    }
  }

  rootPath = [domainCopy rootPath];
  if (([rootPath hasPrefix:@"/private"] & 1) == 0)
  {

LABEL_20:
    cachedDomainRestoreBehaviors = self->_cachedDomainRestoreBehaviors;
    name4 = [domainCopy name];
    v21 = [(NSMutableDictionary *)cachedDomainRestoreBehaviors objectForKeyedSubscript:name4];

    if (v21)
    {
      integerValue = [v21 integerValue];
LABEL_53:

      goto LABEL_54;
    }

    v22 = [(MBRestorePolicy *)self _localRootPathForDomain:domainCopy];
    v23 = [NSURL fileURLWithPath:v22];

    v45 = 0;
    v44 = 0;
    v24 = [v23 getResourceValue:&v45 forKey:NSURLIsExcludedFromBackupKey error:&v44];
    v25 = v45;
    v26 = v44;
    if (v24 && [v25 BOOLValue])
    {
      v27 = MBGetDefaultLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v47 = domainCopy;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "=restore-policy= Not restoring domain (attribute set locally): %@", buf, 0xCu);
        _MBLog();
      }

      v28 = self->_cachedDomainRestoreBehaviors;
      name5 = [domainCopy name];
      [(NSMutableDictionary *)v28 setObject:&off_100109410 forKeyedSubscript:name5];

      goto LABEL_44;
    }

    _isMegaBackup = [(MBRestorePolicy *)self _isMegaBackup];
    if ([(MBRestorePolicy *)self _isUnencryptedLocal])
    {
      error = 0;
      propertyValueTypeRefPtr = 0;
      v31 = _kCFURLIsExcludedFromUnencryptedBackupKey;
      if (CFURLCopyResourcePropertyForKey(v23, _kCFURLIsExcludedFromUnencryptedBackupKey, &propertyValueTypeRefPtr, &error))
      {
        v32 = propertyValueTypeRefPtr;
        if (propertyValueTypeRefPtr)
        {
          CFRelease(propertyValueTypeRefPtr);
          if (v32 == kCFBooleanTrue)
          {
            v33 = MBGetDefaultLog();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v47 = domainCopy;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "=restore-policy= Not restoring domain from unencrypted iTunes backup (attribute set locally): %@", buf, 0xCu);
LABEL_42:
              _MBLog();
              goto LABEL_43;
            }

            goto LABEL_43;
          }
        }

        goto LABEL_51;
      }

      v36 = MBGetDefaultLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
LABEL_48:
        *buf = 138543618;
        v47 = v31;
        v48 = 2112;
        errorCopy = error;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "=restore-policy= Error fetching value for property %{public}@: %@", buf, 0x16u);
        v40 = v31;
        errorCopy2 = error;
        _MBLog();
      }
    }

    else
    {
      if (_isMegaBackup & 1 | ![(MBRestorePolicy *)self _isCloudKitEngine])
      {
        goto LABEL_51;
      }

      error = 0;
      propertyValueTypeRefPtr = 0;
      v31 = _kCFURLIsExcludedFromCloudBackupKey;
      if (CFURLCopyResourcePropertyForKey(v23, _kCFURLIsExcludedFromCloudBackupKey, &propertyValueTypeRefPtr, &error))
      {
        v35 = propertyValueTypeRefPtr;
        if (propertyValueTypeRefPtr)
        {
          CFRelease(propertyValueTypeRefPtr);
          if (v35 == kCFBooleanTrue)
          {
            v33 = MBGetDefaultLog();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v47 = domainCopy;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "=restore-policy= Not restoring domain from iCloud (attribute set locally): %@", buf, 0xCu);
              goto LABEL_42;
            }

LABEL_43:

LABEL_44:
            integerValue = 1;
LABEL_52:

            goto LABEL_53;
          }
        }

LABEL_51:
        v37 = self->_cachedDomainRestoreBehaviors;
        name6 = [domainCopy name];
        [(NSMutableDictionary *)v37 setObject:&off_100109428 forKeyedSubscript:name6];

        integerValue = 0;
        goto LABEL_52;
      }

      v36 = MBGetDefaultLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }
    }

    if (error)
    {
      CFRelease(error);
    }

    goto LABEL_51;
  }

  rootPath2 = [domainCopy rootPath];
  v16 = [rootPath2 hasPrefix:@"/private/var/PersonaVolumes"];

  if (v16)
  {
    goto LABEL_20;
  }

  if (error)
  {
    rootPath3 = [domainCopy rootPath];
    rootPath4 = [domainCopy rootPath];
    *error = [MBError errorWithCode:205 path:rootPath3 format:@"Domain %@ has an invalid root path: %@", domainCopy, rootPath4];
  }

  integerValue = -1;
LABEL_54:

  return integerValue;
}

- (int64_t)restoreBehaviorForFile:(id)file withValidation:(BOOL)validation debugContext:(id)context error:(id *)error
{
  validationCopy = validation;
  fileCopy = file;
  contextCopy = context;
  domain = [(NSString *)fileCopy domain];
  relativePathsNotToBackupToService = [(MBRestorePolicy *)self restoreBehaviorForDomain:domain error:error];

  if (relativePathsNotToBackupToService)
  {
    goto LABEL_79;
  }

  domain2 = [(NSString *)fileCopy domain];
  relativePath = [(NSString *)fileCopy relativePath];
  v15 = [relativePath length];
  if (v15 - [@".plist.1234567" length] >= 1)
  {
    v16 = [relativePath substringFromIndex:?];
    v17 = [v16 hasPrefix:@".plist."];

    if (v17)
    {
      v18 = MBGetDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        p_isa = &relativePath->isa;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "=restore-policy= Not restoring up failed plist safe save: %@", buf, 0xCu);
LABEL_10:
        _MBLog();
        goto LABEL_11;
      }

      goto LABEL_11;
    }
  }

  pathExtension = [relativePath pathExtension];
  if ([pathExtension isEqualToString:@"dat"])
  {
    v20 = [relativePath containsString:@"binarycookies_tmp"];

    if (v20)
    {
      v18 = MBGetDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        p_isa = &relativePath->isa;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "=restore-policy= Not restoring up temporary cookie: %@", buf, 0xCu);
        goto LABEL_10;
      }

LABEL_11:

      relativePathsNotToBackupToService = 1;
      goto LABEL_12;
    }
  }

  else
  {
  }

  if (validationCopy)
  {
    if ((MBIsValidRelativePath() & 1) == 0)
    {
      if (error)
      {
        name = [domain2 name];
        v21 = domain2;
        *error = [MBError errorWithCode:205 format:@"File path is invalid: %@:%@", name, relativePath];

        relativePathsNotToBackupToService = -1;
        goto LABEL_78;
      }

      relativePathsNotToBackupToService = -1;
LABEL_12:
      v21 = domain2;
      goto LABEL_78;
    }

    if ([relativePath length])
    {
      rootPath = [domain2 rootPath];
      v23 = strlen([rootPath fileSystemRepresentation]);
      v24 = strlen([relativePath fileSystemRepresentation]) + v23;

      if (v24 >= 0x3E6)
      {
        v18 = MBGetDefaultLog();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_11;
        }

        *buf = 138412546;
        p_isa = domain2;
        v112 = 2112;
        v113 = relativePath;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "=restore-policy= File path is too long and will be skipped: %@:%@", buf, 0x16u);
        goto LABEL_10;
      }
    }
  }

  _isMegaBackup = [(MBRestorePolicy *)self _isMegaBackup];
  _isDriveEngine = [(MBRestorePolicy *)self _isDriveEngine];
  v98 = _isMegaBackup;
  v27 = _isDriveEngine | _isMegaBackup;
  _isServiceEngine = [(MBRestorePolicy *)self _isServiceEngine];
  v101 = v27;
  v29 = v27 ^ 1;
  v90 = contextCopy;
  v91 = fileCopy;
  v97 = validationCopy;
  if (_isDriveEngine)
  {
    v99 = ![(MBRestorePolicy *)self _isDeviceTransferEngine];
  }

  else
  {
    v99 = 0;
  }

  v100 = _isServiceEngine & v29;
  _isDeviceTransferEngine = [(MBRestorePolicy *)self _isDeviceTransferEngine];
  v108[0] = _NSConcreteStackBlock;
  v108[1] = 3221225472;
  v108[2] = sub_10005B690;
  v108[3] = &unk_1000FE028;
  v108[4] = self;
  v109 = v98;
  v95 = objc_retainBlock(v108);
  v107[0] = _NSConcreteStackBlock;
  v107[1] = 3221225472;
  v107[2] = sub_10005BA6C;
  v107[3] = &unk_1000FE050;
  selfCopy = self;
  v107[4] = self;
  v92 = objc_retainBlock(v107);
  pathComponents = [relativePath pathComponents];
  [pathComponents count];
  v31 = -1;
  v93 = relativePath;
  while (1)
  {
    v32 = pathComponents;
    v33 = [pathComponents subarrayWithRange:{0, v31 + 1}];
    v34 = [NSString pathWithComponents:v33];

    relativePathsNotToBackup = [domain2 relativePathsNotToBackup];
    if ([relativePathsNotToBackup containsObject:v34])
    {
      break;
    }

    if (v101)
    {
      contextCopy = [domain2 relativePathsNotToBackupToDrive];
      if ([contextCopy containsObject:v34])
      {

        break;
      }
    }

    if (v100)
    {
      relativePathsNotToBackupToService = [domain2 relativePathsNotToBackupToService];
      if ([relativePathsNotToBackupToService containsObject:v34])
      {
        v36 = 1;
        goto LABEL_45;
      }
    }

    if (v99)
    {
      _isDriveEngine = [domain2 relativePathsNotToBackupToLocal];
      if ([_isDriveEngine containsObject:v34])
      {
        v36 = 1;
LABEL_44:

        if ((v100 & 1) == 0)
        {
          goto LABEL_46;
        }

LABEL_45:

        goto LABEL_46;
      }
    }

    if ((v98 & 1) == 0)
    {
      if ((_isDeviceTransferEngine & 1) == 0)
      {
        v36 = 0;
LABEL_38:
        if (v99)
        {
          goto LABEL_44;
        }

        goto LABEL_39;
      }

LABEL_37:
      relativePathsNotToTransferDeviceToDevice = [domain2 relativePathsNotToTransferDeviceToDevice];
      v36 = [relativePathsNotToTransferDeviceToDevice containsObject:v34];

      relativePath = v93;
      if ((v98 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_42;
    }

    self = [domain2 relativePathsNotToBackupInMegaBackup];
    if ([(MBRestorePolicy *)self containsObject:v34])
    {

      v36 = 1;
      goto LABEL_43;
    }

    if (_isDeviceTransferEngine)
    {
      goto LABEL_37;
    }

    v36 = 0;
LABEL_42:

LABEL_43:
    if (v99)
    {
      goto LABEL_44;
    }

LABEL_39:
    if (v100)
    {
      goto LABEL_45;
    }

LABEL_46:
    if (v101)
    {
    }

    if (v36)
    {
      goto LABEL_73;
    }

    pathComponents = v32;
    if ([v32 count] <= ++v31)
    {
      v38 = "T:MobileBackup-2899.42.1\n";
      v96 = 1;
      v39 = selfCopy;
      if ((v101 & 1) == 0)
      {
        goto LABEL_91;
      }

      [domain2 relativePathsToIgnoreExclusionsForDrive];
      v103 = 0u;
      v104 = 0u;
      v105 = 0u;
      v40 = v106 = 0u;
      v41 = [v40 countByEnumeratingWithState:&v103 objects:v116 count:16];
      if (!v41)
      {
        v96 = 1;
        v50 = v40;
        goto LABEL_90;
      }

      v42 = v41;
      v31 = *v104;
      while (1)
      {
        for (i = 0; i != v42; i = i + 1)
        {
          if (*v104 != v31)
          {
            objc_enumerationMutation(v40);
          }

          v44 = *(*(&v103 + 1) + 8 * i);
          if ([v44 hasSuffix:@"/", name3, v83])
          {
            v45 = MBGetDefaultLog();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              v46 = v45;
              if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
              {
                name2 = [domain2 name];
                *buf = 138412546;
                p_isa = name2;
                v112 = 2112;
                v113 = v44;
                _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "=restore-policy= Found an invalid path in relativePathsToIgnoreExclusionsForDrive for %@: %@", buf, 0x16u);
              }

              name3 = [domain2 name];
              v83 = v44;
              _MBLog();

              relativePath = v93;
            }
          }

          else if ([relativePath hasPrefix:v44])
          {
            v48 = [relativePath length];
            v49 = [v44 length];
            if (v48 == v49 || v49 < v48 && [relativePath characterAtIndex:v49]== 47)
            {

              v50 = MBGetDefaultLog();
              if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
              {
                v50 = v50;
                v39 = selfCopy;
                v38 = "@(#)PROGRAM:BackupAgent2  PROJECT:MobileBackup-2899.42.1\n" + 32;
                if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  p_isa = v91;
                  _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEBUG, "=restore-policy= Skipping exclusion check for %@", buf, 0xCu);
                }

                name3 = v91;
                _MBLog();
                v96 = 0;
                pathComponents = v32;
LABEL_90:

LABEL_91:
                [pathComponents count];
                v54 = -1;
                v88 = *(v38 + 8);
                relativePathsNotToBackupToService = 1;
                while (2)
                {
                  v55 = objc_autoreleasePoolPush();
                  v56 = [pathComponents subarrayWithRange:{0, v54 + 1}];
                  v57 = [NSString pathWithComponents:v56];

                  if (v96)
                  {
                    v58 = [(MBRestorePolicy *)v39 _localRootPathForDomain:domain2];
                    v59 = [v58 stringByAppendingPathComponent:v57];

                    if ((v95[2])(v95, v59))
                    {
                      if (![v59 isEqualToString:@"/var/mobile/Library/Preferences"])
                      {
                        name7 = MBGetDefaultLog();
                        if (os_log_type_enabled(name7, OS_LOG_TYPE_DEFAULT))
                        {
                          name4 = [domain2 name];
                          *buf = 138412802;
                          p_isa = name4;
                          v112 = 2112;
                          relativePath = v93;
                          v113 = v93;
                          v114 = 2112;
                          v115 = v57;
                          _os_log_impl(&_mh_execute_header, name7, OS_LOG_TYPE_DEFAULT, "=restore-policy= Not restoring file (attribute set locally): %@:%@ (%@)", buf, 0x20u);

                          name5 = [domain2 name];
                          _MBLog();
                        }

                        else
                        {
                          relativePath = v93;
                        }

                        pathComponents = v32;
LABEL_172:

                        v21 = domain2;
                        goto LABEL_174;
                      }

                      if ((byte_10011E430 & 1) == 0)
                      {
                        byte_10011E430 = 1;
                        v60 = MBGetDefaultLog();
                        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                        {
                          v61 = v60;
                          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = v88;
                            p_isa = NSURLIsExcludedFromBackupKey;
                            v112 = 2112;
                            v113 = v59;
                            _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "=restore-policy= Found %@ at %@ - ignoring", buf, 0x16u);
                          }

                          v80 = NSURLIsExcludedFromBackupKey;
                          v83 = v59;
                          _MBLog();
                          v39 = selfCopy;
                        }
                      }
                    }
                  }

                  if (!v97)
                  {
                    goto LABEL_154;
                  }

                  pathComponents = v32;
                  v21 = domain2;
                  if ([v32 count] > v54 + 1 && (v92[2])(v92, domain2, v57))
                  {
                    v59 = MBGetDefaultLog();
                    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                    {
                      name6 = [domain2 name];
                      *buf = v88;
                      p_isa = name6;
                      v112 = 2112;
                      relativePath = v93;
                      v113 = v93;
                      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "=restore-policy= Not restoring file (path contains a symlink): %@:%@", buf, 0x16u);

                      name7 = [domain2 name];
                      _MBLog();
                      goto LABEL_172;
                    }

                    relativePath = v93;
LABEL_174:

                    objc_autoreleasePoolPop(v55);
                    relativePathsNotToBackupToService = 1;
                    contextCopy = v90;
                    fileCopy = v91;
                    goto LABEL_77;
                  }

                  relativePathsToRestore = [domain2 relativePathsToRestore];
                  if ([relativePathsToRestore containsObject:v57])
                  {
LABEL_106:

                    relativePathsNotToBackupToService = 0;
                    goto LABEL_155;
                  }

                  if (v100)
                  {
                    relativePathsToRestoreOnlyFromService = [domain2 relativePathsToRestoreOnlyFromService];
                    if ([relativePathsToRestoreOnlyFromService containsObject:v57])
                    {
                      v31 = relativePathsToRestoreOnlyFromService;

                      goto LABEL_106;
                    }

                    v31 = relativePathsToRestoreOnlyFromService;
                  }

                  relativePathsToBackupToDriveAndStandardAccount = [domain2 relativePathsToBackupToDriveAndStandardAccount];
                  if ([relativePathsToBackupToDriveAndStandardAccount containsObject:v57])
                  {
                    v65 = 1;
                    goto LABEL_115;
                  }

                  if ([domain2 isExternalConfig])
                  {
                    v65 = [domain2 hasExternalConfig] ^ 1;
LABEL_115:

                    if (v100)
                    {
                    }

                    if (v65)
                    {
                      relativePathsNotToBackupToService = 0;
LABEL_154:
                      pathComponents = v32;
LABEL_155:

                      objc_autoreleasePoolPop(v55);
                      if ([pathComponents count] <= ++v54)
                      {
                        if (!v97)
                        {
                          relativePathsNotToBackupToService = 0;
                          contextCopy = v90;
                          fileCopy = v91;
                          relativePath = v93;
                          goto LABEL_76;
                        }

                        fileCopy = v91;
                        contextCopy = v90;
                        relativePath = v93;
                        v21 = domain2;
                        if (([(NSString *)v91 type]& 0xF000) == 0x4000)
                        {
                          relativePathsNotToBackupToService = 0;
                          goto LABEL_77;
                        }

                        if (relativePathsNotToBackupToService == 1)
                        {
                          [v90 setFlag:@"RestorePathNotInSetOfPathsToBackup"];
                          v76 = MBGetDefaultLog();
                          if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
                          {
                            v77 = v76;
                            if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
                            {
                              name8 = [domain2 name];
                              *buf = v88;
                              p_isa = name8;
                              v112 = 2112;
                              v113 = v93;
                              _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "=restore-policy= Not restoring file (skipped): %@:%@", buf, 0x16u);

                              pathComponents = v32;
                            }

                            name9 = [domain2 name];
                            _MBLog();
                          }

                          relativePathsNotToBackupToService = 1;
                          goto LABEL_76;
                        }

                        goto LABEL_77;
                      }

                      continue;
                    }
                  }

                  else
                  {

                    if (v100)
                    {
                    }
                  }

                  break;
                }

                relativePathsNotToBackup2 = [domain2 relativePathsNotToBackup];
                if ([relativePathsNotToBackup2 containsObject:v57])
                {
LABEL_123:

LABEL_153:
                  relativePathsNotToBackupToService = 1;
                  goto LABEL_154;
                }

                if (v101)
                {
                  relativePathsNotToBackupToDrive = [domain2 relativePathsNotToBackupToDrive];
                  v86 = relativePathsNotToBackupToDrive;
                  if ([relativePathsNotToBackupToDrive containsObject:v57])
                  {

                    goto LABEL_123;
                  }
                }

                if (v100)
                {
                  relativePathsNotToBackupToService2 = [domain2 relativePathsNotToBackupToService];
                  if ([relativePathsNotToBackupToService2 containsObject:v57])
                  {
                    v68 = 1;
                    v70 = v86;
                    v69 = relativePathsNotToBackupToService2;
                    goto LABEL_149;
                  }
                }

                if (v99)
                {
                  relativePathsNotToBackupToLocal = [domain2 relativePathsNotToBackupToLocal];
                  if ([relativePathsNotToBackupToLocal containsObject:v57])
                  {
                    v68 = 1;
                    goto LABEL_136;
                  }
                }

                if (v98)
                {
                  relativePathsNotToBackupInMegaBackup = [domain2 relativePathsNotToBackupInMegaBackup];
                  v84 = relativePathsNotToBackupInMegaBackup;
                  if ([relativePathsNotToBackupInMegaBackup containsObject:v57])
                  {

                    v68 = 1;
                    if (v99)
                    {
LABEL_136:
                      v70 = v86;
                      goto LABEL_142;
                    }

                    v70 = v86;
                    v69 = relativePathsNotToBackupToService2;
LABEL_148:
                    if (v100)
                    {
LABEL_149:
                      relativePathsNotToBackupToService2 = v69;
                    }

                    goto LABEL_150;
                  }

                  if (_isDeviceTransferEngine)
                  {
LABEL_140:
                    relativePathsNotToTransferDeviceToDevice2 = [domain2 relativePathsNotToTransferDeviceToDevice];
                    v68 = [relativePathsNotToTransferDeviceToDevice2 containsObject:v57];

                    if ((v98 & 1) == 0)
                    {
                      goto LABEL_141;
                    }
                  }

                  else
                  {
                    v68 = 0;
                  }

                  v70 = v86;
                  if ((v99 & 1) == 0)
                  {
LABEL_147:
                    v69 = relativePathsNotToBackupToService2;
                    goto LABEL_148;
                  }
                }

                else
                {
                  if (_isDeviceTransferEngine)
                  {
                    goto LABEL_140;
                  }

                  v68 = 0;
LABEL_141:
                  v70 = v86;
                  if (!v99)
                  {
                    goto LABEL_147;
                  }
                }

LABEL_142:

                if (v100)
                {
                  v69 = relativePathsNotToBackupToService2;
                  goto LABEL_149;
                }

LABEL_150:
                if (v101)
                {
                }

                if ((v68 & 1) == 0)
                {
                  goto LABEL_154;
                }

                goto LABEL_153;
              }

              v96 = 0;
LABEL_89:
              pathComponents = v32;
              v39 = selfCopy;
              v38 = "T:MobileBackup-2899.42.1\n";
              goto LABEL_90;
            }
          }
        }

        v42 = [v40 countByEnumeratingWithState:&v103 objects:v116 count:16];
        if (!v42)
        {
          v96 = 1;
          v50 = v40;
          goto LABEL_89;
        }
      }
    }
  }

LABEL_73:
  v52 = MBGetDefaultLog();
  pathComponents = v32;
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    p_isa = v34;
    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEBUG, "=restore-policy= Skipping file %@", buf, 0xCu);
    _MBLog();
  }

  relativePathsNotToBackupToService = 1;
  contextCopy = v90;
  fileCopy = v91;
LABEL_76:
  v21 = domain2;
LABEL_77:

LABEL_78:
LABEL_79:

  return relativePathsNotToBackupToService;
}

- (id)_localRootPathForDomain:(id)domain
{
  domainCopy = domain;
  v5 = domainCopy;
  if (!self->_appManager)
  {
    goto LABEL_9;
  }

  if ([domainCopy isSystemContainerDomain])
  {
    appManager = self->_appManager;
    name = [v5 name];
    v8 = [MBDomain containerIDWithName:name];
    v9 = [(MBAppManager *)appManager systemDataContainerWithIdentifier:v8];
    goto LABEL_6;
  }

  if (![v5 isSystemSharedContainerDomain])
  {
LABEL_9:
    rootPath = [v5 rootPath];
    goto LABEL_12;
  }

  v10 = self->_appManager;
  name = [v5 name];
  v8 = [MBDomain containerIDWithName:name];
  v9 = [(MBAppManager *)v10 systemSharedContainerWithIdentifier:v8];
LABEL_6:
  v11 = v9;

  if (v11 && ([v11 domain], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "hasRootPath"), v12, (v13 & 1) != 0))
  {
    domain = [v11 domain];
    rootPath = [domain rootPath];
  }

  else
  {
    rootPath = [v5 rootPath];
  }

LABEL_12:

  return rootPath;
}

- (id)deprecated_validateFile:(id)file debugContext:(id)context
{
  fileCopy = file;
  contextCopy = context;
  relativePath = [fileCopy relativePath];
  valid = MBIsValidRelativePath();

  if ((valid & 1) == 0)
  {
    domain = [fileCopy domain];
    name = [domain name];
    relativePath2 = [fileCopy relativePath];
    v15 = [MBError errorWithCode:205 format:@"File path is invalid: %@:%@", name, relativePath2];
LABEL_61:

    goto LABEL_62;
  }

  LODWORD(relativePathsNotToTransferDeviceToDevice) = [(MBRestorePolicy *)self _isMegaBackup];
  _isDriveEngine = [(MBRestorePolicy *)self _isDriveEngine];
  if ([(MBRestorePolicy *)self _isDriveEngine])
  {
    v48 = ![(MBRestorePolicy *)self _isDeviceTransferEngine];
  }

  else
  {
    v48 = 0;
  }

  _isServiceEngine = [(MBRestorePolicy *)self _isServiceEngine];
  _isDeviceTransferEngine = [(MBRestorePolicy *)self _isDeviceTransferEngine];
  domain = [fileCopy relativePath];
  name = [fileCopy domain];
  relativePath2 = [name relativePathsToRestore];
  if ([relativePath2 containsObject:domain])
  {
    v15 = 0;
    goto LABEL_61;
  }

  v34 = contextCopy;
  v17 = _isDriveEngine | relativePathsNotToTransferDeviceToDevice;
  v18 = _isServiceEngine & ((_isDriveEngine | relativePathsNotToTransferDeviceToDevice) ^ 1);
  v40 = relativePathsNotToTransferDeviceToDevice;
  while (1)
  {
    if (v18)
    {
      domain2 = [fileCopy domain];
      _isDriveEngine = [domain2 relativePathsToRestoreOnlyFromService];
      if ([_isDriveEngine containsObject:domain])
      {
        v19 = 1;
        goto LABEL_20;
      }

      domain3 = [fileCopy domain];
      relativePathsToBackupToDriveAndStandardAccount = [domain3 relativePathsToBackupToDriveAndStandardAccount];
      if ([relativePathsToBackupToDriveAndStandardAccount containsObject:domain])
      {
        v19 = 1;
LABEL_19:

LABEL_20:
        if (v19)
        {
          goto LABEL_65;
        }

        goto LABEL_21;
      }
    }

    domain4 = [fileCopy domain];
    if (![domain4 isExternalConfig])
    {

      if (!v18)
      {

        goto LABEL_21;
      }

      v19 = 0;
      goto LABEL_19;
    }

    domain5 = [fileCopy domain];
    hasExternalConfig = [domain5 hasExternalConfig];

    if (v18)
    {
      v19 = hasExternalConfig ^ 1;
      LOBYTE(relativePathsNotToTransferDeviceToDevice) = v40;
      goto LABEL_19;
    }

    LOBYTE(relativePathsNotToTransferDeviceToDevice) = v40;
    if ((hasExternalConfig & 1) == 0)
    {
LABEL_65:
      v15 = 0;
      contextCopy = v34;
      goto LABEL_62;
    }

LABEL_21:
    domain6 = [fileCopy domain];
    relativePathsNotToBackup = [domain6 relativePathsNotToBackup];
    if ([relativePathsNotToBackup containsObject:domain])
    {

      v30 = @"File path in set of paths not to back up: %@:%@";
      v31 = @"RestorePathInSetOfPathsNotToBackup";
      contextCopy = v34;
LABEL_60:
      [contextCopy setFlag:v31];
      name = [fileCopy domain];
      relativePath2 = [name name];
      relativePath3 = [fileCopy relativePath];
      v15 = [MBError errorWithCode:205 format:v30, relativePath2, relativePath3];

      goto LABEL_61;
    }

    if ((v17 & 1) == 0 || ([fileCopy domain], v46 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v46, "relativePathsNotToBackupToDrive"), v45 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v45, "containsObject:", domain) & 1) == 0))
    {
      if (v18)
      {
        domain7 = [fileCopy domain];
        relativePathsNotToBackupToService = [domain7 relativePathsNotToBackupToService];
        if ([relativePathsNotToBackupToService containsObject:domain])
        {
          v25 = 1;
          goto LABEL_48;
        }
      }

      if (v48)
      {
        domain8 = [fileCopy domain];
        relativePathsNotToBackupToLocal = [domain8 relativePathsNotToBackupToLocal];
        if ([relativePathsNotToBackupToLocal containsObject:domain])
        {
          v25 = 1;
          goto LABEL_47;
        }
      }

      if (relativePathsNotToTransferDeviceToDevice)
      {
        domain9 = [fileCopy domain];
        relativePathsNotToBackupInMegaBackup = [domain9 relativePathsNotToBackupInMegaBackup];
        v35 = relativePathsNotToBackupInMegaBackup;
        v36 = domain9;
        if ([relativePathsNotToBackupInMegaBackup containsObject:domain])
        {

          v25 = 1;
          goto LABEL_46;
        }

        if ((_isDeviceTransferEngine & 1) == 0)
        {
          v25 = 0;
          goto LABEL_45;
        }
      }

      else if ((_isDeviceTransferEngine & 1) == 0)
      {
        v25 = 0;
        goto LABEL_41;
      }

      domain10 = [fileCopy domain];
      relativePathsNotToTransferDeviceToDevice = [domain10 relativePathsNotToTransferDeviceToDevice];
      v25 = [relativePathsNotToTransferDeviceToDevice containsObject:domain];

      LOBYTE(relativePathsNotToTransferDeviceToDevice) = v40;
      if ((v40 & 1) == 0)
      {
LABEL_41:
        if (v48)
        {
          goto LABEL_47;
        }

        goto LABEL_42;
      }

LABEL_45:

LABEL_46:
      if (v48)
      {
LABEL_47:

        if ((v18 & 1) == 0)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      }

LABEL_42:
      if (!v18)
      {
LABEL_49:
        if ((v17 & 1) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      }

LABEL_48:

      goto LABEL_49;
    }

    v25 = 1;
LABEL_50:

LABEL_51:
    if (v25)
    {
      contextCopy = v34;
      v30 = @"File path in set of paths not to back up: %@:%@";
      v31 = @"RestorePathInSetOfPathsNotToBackup";
      goto LABEL_60;
    }

    if (![domain length])
    {
      break;
    }

    stringByDeletingLastPathComponent = [domain stringByDeletingLastPathComponent];

    name = [fileCopy domain];
    relativePath2 = [name relativePathsToRestore];
    domain = stringByDeletingLastPathComponent;
    if ([relativePath2 containsObject:stringByDeletingLastPathComponent])
    {
      v15 = 0;
      domain = stringByDeletingLastPathComponent;
      contextCopy = v34;
      goto LABEL_61;
    }
  }

  contextCopy = v34;
  if (([fileCopy type] & 0xF000) != 0x4000 || objc_msgSend(domain, "length"))
  {
    v30 = @"File path not in set of paths to back up: %@:%@";
    v31 = @"RestorePathNotInSetOfPathsToBackup";
    goto LABEL_60;
  }

  v15 = 0;
LABEL_62:

  return v15;
}

- (id)validateRestoreDomain:(id)domain relativePath:(id)path
{
  domainCopy = domain;
  pathCopy = path;
  rootPath = [domainCopy rootPath];
  if ([rootPath hasPrefix:@"/private"])
  {
    rootPath2 = [domainCopy rootPath];
    v10 = [rootPath2 hasPrefix:@"/private/var/PersonaVolumes"];

    if ((v10 & 1) == 0)
    {
      rootPath3 = [domainCopy rootPath];
      rootPath4 = [domainCopy rootPath];
      v13 = [MBError errorWithCode:205 path:rootPath3 format:@"Domain %@ has an invalid root path: %@", domainCopy, rootPath4];

      goto LABEL_24;
    }
  }

  else
  {
  }

  rootPath5 = [domainCopy rootPath];
  v15 = [rootPath5 stringByAppendingPathComponent:pathCopy];

  if (strlen([v15 fileSystemRepresentation]) >= 0x3E6)
  {
    v13 = [MBError errorWithCode:205 path:v15 format:@"Cannot restore file with path name that is too long"];
    goto LABEL_23;
  }

  stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];

  if (![stringByDeletingLastPathComponent length])
  {
    v13 = 0;
    pathCopy = stringByDeletingLastPathComponent;
    goto LABEL_23;
  }

  pathCopy = stringByDeletingLastPathComponent;
  while (1)
  {
    persona = [(MBRestorePolicy *)self persona];
    v18 = sub_10005BB44(domainCopy, persona);
    v19 = [v18 stringByAppendingPathComponent:pathCopy];

    v30 = 0;
    v29 = 0;
    [v19 mb_splitIntoBase:&v30 andRelativePath:&v29];
    memset(&v28, 0, sizeof(v28));
    v20 = fstatat(v30, v29, &v28, 32);
    v21 = *__error();
    if ((v30 & 0x80000000) == 0)
    {
      close(v30);
    }

    if (v20)
    {
      break;
    }

    if ((~v28.st_mode & 0xA000) == 0)
    {
      v13 = [MBError errorWithErrno:v21 code:205 path:v19 format:@"Restore path parent directory is a symlink"];
      goto LABEL_22;
    }

LABEL_15:
    stringByDeletingLastPathComponent2 = [pathCopy stringByDeletingLastPathComponent];

    pathCopy = stringByDeletingLastPathComponent2;
    if (![stringByDeletingLastPathComponent2 length])
    {
      v13 = 0;
      pathCopy = stringByDeletingLastPathComponent2;
      goto LABEL_23;
    }
  }

  if (v21 == 2)
  {
    goto LABEL_15;
  }

  v13 = [MBError posixErrorWithPath:v19 format:@"lstat error"];
  v23 = MBGetDefaultLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v25 = *__error();
    *buf = 138412546;
    v32 = v19;
    v33 = 1024;
    v34 = v25;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "=restore-policy= lstat failed at %@: %{errno}d", buf, 0x12u);
    v27 = *__error();
    _MBLog();
  }

LABEL_22:
LABEL_23:

LABEL_24:

  return v13;
}

- (BOOL)shouldAlwaysRestoreSystemSharedContainerDomain:(id)domain
{
  domainCopy = domain;
  if ([domainCopy isSystemSharedContainerDomain])
  {
    name = [domainCopy name];
    v5 = [name isEqualToString:@"SysSharedContainerDomain-systemgroup.com.apple.configurationprofiles"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldRemoveAndRetryPlacingAssetsForRestorable:(id)restorable
{
  restorableCopy = restorable;
  serviceRestoreMode = [(MBRestorePolicy *)self serviceRestoreMode];
  v9 = 1;
  if (([serviceRestoreMode isBackgroundFiles] & 1) != 0 || objc_msgSend(serviceRestoreMode, "isBackgroundFile"))
  {
    domain = [restorableCopy domain];
    name = [domain name];
    v8 = [name isEqualToString:@"AppDomainGroup-group.com.apple.FileProvider.LocalStorage"];

    if (v8)
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)notifyPluginsStartingRestoreWithEngine:(id)engine
{
  engineCopy = engine;
  objectEnumerator = [(NSArray *)self->_plugins objectEnumerator];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005C890;
  v9[3] = &unk_1000FE078;
  v9[4] = self;
  v10 = engineCopy;
  v6 = engineCopy;
  v7 = sub_100037110(v6, objectEnumerator, "startingRestoreWithPolicy:engine:", v9);

  return v7;
}

- (id)notifyPluginsPreparingRestoreWithEngine:(id)engine
{
  engineCopy = engine;
  objectEnumerator = [(NSArray *)self->_plugins objectEnumerator];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005C978;
  v9[3] = &unk_1000FE078;
  v9[4] = self;
  v10 = engineCopy;
  v6 = engineCopy;
  v7 = sub_100037110(v6, objectEnumerator, "preparingRestoreWithPolicy:engine:", v9);

  return v7;
}

- (id)notifyPluginsEndingRestoreWithEngine:(id)engine
{
  engineCopy = engine;
  reverseObjectEnumerator = [(NSArray *)self->_plugins reverseObjectEnumerator];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005CA60;
  v9[3] = &unk_1000FE078;
  v9[4] = self;
  v10 = engineCopy;
  v6 = engineCopy;
  v7 = sub_100037110(v6, reverseObjectEnumerator, "endingRestoreWithPolicy:engine:", v9);

  return v7;
}

- (id)notifyPluginsEndedRestoreWithEngine:(id)engine error:(id)error
{
  engineCopy = engine;
  errorCopy = error;
  reverseObjectEnumerator = [(NSArray *)self->_plugins reverseObjectEnumerator];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10005CB74;
  v13[3] = &unk_1000FE0A0;
  v13[4] = self;
  v14 = engineCopy;
  v15 = errorCopy;
  v9 = errorCopy;
  v10 = engineCopy;
  v11 = sub_100037110(v10, reverseObjectEnumerator, "endedRestoreWithPolicy:engine:error:", v13);

  return v11;
}

@end
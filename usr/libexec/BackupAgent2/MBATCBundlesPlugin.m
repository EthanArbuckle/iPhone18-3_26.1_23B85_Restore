@interface MBATCBundlesPlugin
- (id)endingBackupWithEngine:(id)a3;
- (id)startingBackupWithEngine:(id)a3;
- (void)_populateAccountsAndAssetsForEngine:(id)a3 accountsTracker:(id)a4;
- (void)_populateAccountsForEngine:(id)a3 dataClasses:(id)a4 accountsTracker:(id)a5;
- (void)_populateBuddyStashForEngine:(id)a3;
- (void)_populatePathsForEngine:(id)a3 domain:(id)a4 dataclass:(id)a5 allBackupPaths:(id)a6;
@end

@implementation MBATCBundlesPlugin

- (void)_populatePathsForEngine:(id)a3 domain:(id)a4 dataclass:(id)a5 allBackupPaths:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = +[ATClientController sharedInstance];
  v14 = [v13 clientForDataclass:v11];
  v15 = [v9 domainManager];
  v16 = [v15 domainForName:v10];

  v17 = objc_alloc_init(NSMutableSet);
  v18 = objc_alloc_init(NSMutableSet);
  if (objc_opt_respondsToSelector())
  {
    context = objc_autoreleasePoolPush();
    v60 = v17;
    if ([v9 isDeviceTransferEngine])
    {
      v19 = 3;
    }

    else if ([v9 isDriveEngine])
    {
      v19 = 2;
    }

    else
    {
      if (([v9 isServiceEngine] & 1) == 0)
      {
        sub_10009DC60();
      }

      v19 = 1;
    }

    v73[0] = _NSConcreteStackBlock;
    v73[1] = 3221225472;
    v73[2] = sub_10003B058;
    v73[3] = &unk_1000FDAD8;
    v74 = v14;
    v79 = v19;
    v75 = v16;
    v76 = v12;
    v77 = v17;
    v78 = v18;
    v46 = [v74 enumeratePathsForBackupType:v19 usingBlock:v73];

    v45 = v74;
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_37;
    }

    v60 = v17;
    v62 = v18;
    v55 = v13;
    v56 = v11;
    v57 = v10;
    v58 = v9;
    context = objc_autoreleasePoolPush();
    v71 = 0;
    v72 = 0;
    [v14 pathsToBackup:&v72 pathsNotToBackup:&v71];
    v20 = v72;
    v21 = v71;
    v22 = MBGetDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v20 count];
      v24 = [v21 count];
      *buf = 138412802;
      v83 = v14;
      v84 = 2048;
      v85 = v23;
      v86 = 2048;
      v87 = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "=atc-bundles= %@: pathsToBackup.count:%lu, pathsNotToBackup.count:%lu", buf, 0x20u);
      v52 = [v20 count];
      v53 = [v21 count];
      v51 = v14;
      _MBLog();
    }

    v54 = v21;

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v25 = v20;
    v26 = [v25 countByEnumeratingWithState:&v67 objects:v81 count:16];
    v27 = v12;
    obj = v25;
    if (v26)
    {
      v28 = v26;
      v29 = *v68;
      do
      {
        for (i = 0; i != v28; i = i + 1)
        {
          if (*v68 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v67 + 1) + 8 * i);
          v32 = objc_autoreleasePoolPush();
          v33 = MBGetDefaultLog();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v83 = v14;
            v84 = 2112;
            v85 = v31;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "=atc-bundles= %@: pathToBackup:%@", buf, 0x16u);
            v51 = v14;
            v52 = v31;
            _MBLog();
          }

          v34 = [v16 standardizedRelativePathFor:v31];
          if ([v27 containsObject:v34])
          {
            v35 = MBGetDefaultLog();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v83 = v14;
              v84 = 2112;
              v85 = v31;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "=atc-bundles= %@: Skipping duplicate path: %@", buf, 0x16u);
              v51 = v14;
              v52 = v31;
              _MBLog();
            }
          }

          else
          {
            [v27 addObject:v34];
            [v60 addObject:v34];
          }

          objc_autoreleasePoolPop(v32);
        }

        v25 = obj;
        v28 = [obj countByEnumeratingWithState:&v67 objects:v81 count:16];
      }

      while (v28);
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v36 = v54;
    v37 = [v36 countByEnumeratingWithState:&v63 objects:v80 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v64;
      do
      {
        for (j = 0; j != v38; j = j + 1)
        {
          if (*v64 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = *(*(&v63 + 1) + 8 * j);
          v42 = objc_autoreleasePoolPush();
          v43 = MBGetDefaultLog();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v83 = v14;
            v84 = 2112;
            v85 = v41;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "=atc-bundles= %@: pathNotToBackup:%@", buf, 0x16u);
            v51 = v14;
            v52 = v41;
            _MBLog();
          }

          v44 = [v16 standardizedRelativePathFor:v41];
          [v62 addObject:v44];

          objc_autoreleasePoolPop(v42);
        }

        v38 = [v36 countByEnumeratingWithState:&v63 objects:v80 count:16];
      }

      while (v38);
    }

    v10 = v57;
    v9 = v58;
    v12 = v27;
    v13 = v55;
    v11 = v56;
    v18 = v62;
    v45 = obj;
  }

  objc_autoreleasePoolPop(context);
  v17 = v60;
LABEL_37:
  if ([v17 count])
  {
    v47 = [v16 relativePathsToBackupAndRestore];

    if (v47)
    {
      v48 = [v16 relativePathsToBackupAndRestore];
      [v17 unionSet:v48];
    }

    [v16 setRelativePathsToBackupAndRestore:v17];
  }

  if ([v18 count])
  {
    v49 = [v16 relativePathsNotToBackup];

    if (v49)
    {
      v50 = [v16 relativePathsNotToBackup];
      [v18 unionSet:v50];
    }

    [v16 setRelativePathsNotToBackup:v18];
  }
}

- (void)_populateAccountsForEngine:(id)a3 dataClasses:(id)a4 accountsTracker:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v9)
  {
    sub_10009DCB8();
  }

  v10 = v9;
  if ([v7 isDeviceTransferEngine])
  {
    [v7 preflightProperties];
  }

  else
  {
    [v7 properties];
  }
  v60 = ;
  v52 = v7;
  v55 = +[ATClientController sharedInstance];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = v8;
  v56 = [obj countByEnumeratingWithState:&v70 objects:v82 count:16];
  if (v56)
  {
    v54 = *v71;
    do
    {
      v11 = 0;
      do
      {
        if (*v71 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v70 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        v61 = v12;
        v14 = [v55 clientForDataclass:v12];
        v58 = v13;
        v59 = v11;
        v57 = v14;
        if (objc_opt_respondsToSelector())
        {
          v15 = [v14 accountsForAssets];
          v16 = MBGetDefaultLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            v77 = v14;
            v78 = 2112;
            v79 = v61;
            v80 = 2112;
            v81 = v15;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "=atc-bundles= %@: dataClass:%@, -accountsForAssets returned: %@", buf, 0x20u);
            v50 = v61;
            v51 = v15;
            v46 = v14;
            _MBLog();
          }

LABEL_17:

          goto LABEL_18;
        }

        if (v14)
        {
          v16 = MBGetDefaultLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v77 = v14;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "=atc-bundles= %@ doesn't implement -accountsForAssets", buf, 0xCu);
            v46 = v14;
            _MBLog();
          }

          v15 = 0;
          goto LABEL_17;
        }

        v15 = 0;
LABEL_18:
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v17 = v15;
        v18 = [v17 countByEnumeratingWithState:&v66 objects:v75 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v67;
          do
          {
            for (i = 0; i != v19; i = i + 1)
            {
              if (*v67 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v66 + 1) + 8 * i);
              v23 = [v22 appleID];
              if (!v23)
              {
                v24 = MBGetDefaultLog();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v77 = v22;
                  _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "=atc-bundles= Found nil appleID for %@", buf, 0xCu);
                  v47 = v22;
                  _MBLog();
                }
              }

              v25 = [v22 DSID];
              if (!v25)
              {
                v26 = MBGetDefaultLog();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v77 = v22;
                  _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "=atc-bundles= Found nil DSID for %@", buf, 0xCu);
                  v48 = v22;
                  _MBLog();
                }
              }

              v27 = [v22 altDSID];
              if (!v27)
              {
                v28 = MBGetDefaultLog();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v77 = v22;
                  _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "=atc-bundles= Found nil altDSID for %@", buf, 0xCu);
                  v49 = v22;
                  _MBLog();
                }
              }

              if ([v10 addAccountWithDSID:{v25, v49}])
              {
                v29 = [v25 stringValue];
                [v60 addAppleID:v23 DSID:v29 altDSID:v27 dataClass:v61];
              }

              else
              {
                v29 = MBGetDefaultLog();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  v77 = v23;
                  v78 = 2112;
                  v79 = v25;
                  _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "=atc-bundles= Skipping account: %@/%@", buf, 0x16u);
                  v46 = v23;
                  v50 = v25;
                  _MBLog();
                }
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v66 objects:v75 count:16];
          }

          while (v19);
        }

        v30 = [v57 appleIDsForAssets];
        v31 = MBGetDefaultLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v77 = v57;
          v78 = 2112;
          v79 = v61;
          v80 = 2112;
          v81 = v30;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "=atc-bundles= %@: dataClass:%@, -appleIDsForAssets returned: %@", buf, 0x20u);
          v50 = v61;
          v51 = v30;
          v46 = v57;
          _MBLog();
        }

        v32 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v30, "count")}];
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v33 = v30;
        v34 = [v33 countByEnumeratingWithState:&v62 objects:v74 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v63;
          do
          {
            for (j = 0; j != v35; j = j + 1)
            {
              if (*v63 != v36)
              {
                objc_enumerationMutation(v33);
              }

              v38 = *(*(&v62 + 1) + 8 * j);
              if (([v10 isIgnoredAppleID:{v38, v46}] & 1) == 0)
              {
                [v32 addObject:v38];
              }
            }

            v35 = [v33 countByEnumeratingWithState:&v62 objects:v74 count:16];
          }

          while (v35);
        }

        if ([v32 count])
        {
          v39 = [v32 count];
          if (v39 != [v33 count])
          {
            v40 = MBGetDefaultLog();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
              *buf = 138412802;
              v77 = v57;
              v78 = 2112;
              v79 = v61;
              v80 = 2112;
              v81 = v33;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "=atc-bundles= %@: dataClass:%@, Filtered appleIDs: %@", buf, 0x20u);
              v50 = v61;
              v51 = v33;
              v46 = v57;
              _MBLog();
            }
          }

          [v60 addAppleIDsFromSet:v32 dataClass:{v61, v46}];
        }

        objc_autoreleasePoolPop(v58);
        v11 = v59 + 1;
      }

      while ((v59 + 1) != v56);
      v41 = [obj countByEnumeratingWithState:&v70 objects:v82 count:16];
      v56 = v41;
    }

    while (v41);
  }

  v42 = +[SSAccountStore defaultStore];
  v43 = [v42 activeAccount];

  if (v43)
  {
    v44 = [v43 accountName];
    if (([v10 isIgnoredAppleID:v44] & 1) == 0)
    {
      v45 = MBGetDefaultLog();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v77 = v44;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "=atc-bundles= Found active store account: %@", buf, 0xCu);
        _MBLog();
      }

      [v60 setActiveAppleID:v44];
    }
  }
}

- (void)_populateAccountsAndAssetsForEngine:(id)a3 accountsTracker:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    sub_10009DD10();
  }

  v7 = v6;
  v8 = [v5 isDeviceTransferEngine];
  v9 = v8;
  if (v8)
  {
    [v5 preflightProperties];
  }

  else
  {
    [v5 properties];
  }
  v10 = ;
  v11 = +[ACAccountStore defaultStore];
  if (!v11)
  {
    sub_10009DCE4();
  }

  v12 = v11;
  v13 = +[SSAccountStore defaultStore];
  v14 = objc_alloc_init(NSMutableSet);
  v15 = +[LSApplicationWorkspace defaultWorkspace];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10003BE58;
  v22[3] = &unk_1000FDB00;
  v16 = v14;
  v23 = v16;
  v24 = v7;
  v25 = v13;
  v26 = v10;
  v28 = v9;
  v27 = v12;
  v17 = v12;
  v18 = v10;
  v19 = v13;
  v20 = v7;
  [v15 enumerateBundlesOfType:0 block:v22];

  v21 = MBGetDefaultLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v16;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "=atc-bundles= Found accounts: %@", buf, 0xCu);
    _MBLog();
  }
}

- (void)_populateBuddyStashForEngine:(id)a3
{
  v3 = [a3 properties];
  v4 = BYDataStashCreate();
  v5 = v4;
  if (v4)
  {
    if ([v4 length] > 0x8000)
    {
      v6 = MBGetDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *buf = 134217984;
        v9 = [v5 length];
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "=atc-bundles= buddyStash exceeds 32k (%ld)", buf, 0xCu);
        v7 = [v5 length];
        _MBLog();
      }
    }

    [v3 setBuddyStashData:{v5, v7}];
  }
}

- (id)startingBackupWithEngine:(id)a3
{
  v4 = a3;
  if ([v4 backsUpPrimaryAccount])
  {
    if (!MBIsInternalInstall() || (+[MBBehaviorOptions sharedOptions](MBBehaviorOptions, "sharedOptions"), v5 = objc_claimAutoreleasedReturnValue(), [v5 domainsToBackUpRegex], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, !v6))
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v7 = +[ATClientController sharedInstance];
      v8 = [v7 allClients];

      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v16;
        do
        {
          v12 = 0;
          do
          {
            if (*v16 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v15 + 1) + 8 * v12);
            if (objc_opt_respondsToSelector())
            {
              [v13 prepareForBackup];
            }

            v12 = v12 + 1;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v10);
      }

      if ([v4 isDriveEngine])
      {
        [(MBATCBundlesPlugin *)self _populatePathsForEngine:v4 domain:@"TonesDomain" dataclass:@"Ringtone"];
      }
    }
  }

  return 0;
}

- (id)endingBackupWithEngine:(id)a3
{
  if ([a3 backsUpPrimaryAccount])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = +[ATClientController sharedInstance];
    v4 = [v3 allClients];

    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v11 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 backupEnded];
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }

  return 0;
}

@end
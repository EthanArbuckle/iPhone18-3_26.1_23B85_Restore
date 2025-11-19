@interface PLPersonInfoManager
- (PLPersonInfoManager)initWithPathManager:(id)a3 lazyAssetsdClient:(id)a4;
- (id)emailForPersonID:(id)a3;
- (id)emailsForInvitationRecordGUID:(id)a3;
- (id)firstNameForPersonID:(id)a3;
- (id)fullNameForPersonID:(id)a3;
- (id)lastNameForPersonID:(id)a3;
- (id)personInfoForPersonID:(id)a3;
- (id)phonesForInvitationRecordGUID:(id)a3;
- (void)_loadDictionariesIfNeeded;
- (void)clearCacheForPersonID:(id)a3;
- (void)dealloc;
- (void)deleteEmailsAndPhonesForInvitationRecordGUID:(id)a3;
- (void)removePersistedInfo;
- (void)setEmails:(id)a3 phones:(id)a4 forInvitationRecordGUID:(id)a5;
- (void)setFirstName:(id)a3 lastName:(id)a4 fullName:(id)a5 email:(id)a6 forPersonID:(id)a7;
- (void)setPersonInfo:(id)a3 forPersonID:(id)a4;
@end

@implementation PLPersonInfoManager

- (void)setPersonInfo:(id)a3 forPersonID:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v39 = objc_opt_class();
    v40 = 2112;
    v41 = v7;
    v42 = 2112;
    v43 = v6;
    v9 = v39;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "%@ setPersonInfo %@ %@", buf, 0x20u);
  }

  if (v7)
  {
    v10 = self;
    objc_sync_enter(v10);
    [(PLPersonInfoManager *)v10 _loadDictionariesIfNeeded];
    v11 = [(NSMutableDictionary *)v10->_personDictsForPersonID objectForKey:v7];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 isEqualToDictionary:v6] ^ 1;
      if (v6)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v13 = 1;
      if (v6)
      {
LABEL_6:
        v14 = [v6 count];
        personDictsForPersonID = v10->_personDictsForPersonID;
        if (v14)
        {
          [(NSMutableDictionary *)personDictsForPersonID setObject:v6 forKey:v7];
          goto LABEL_11;
        }

LABEL_10:
        [(NSMutableDictionary *)personDictsForPersonID removeObjectForKey:v7];
LABEL_11:

        objc_sync_exit(v10);
        if ((PLIsAssetsd() & 1) == 0)
        {
          v16 = [(PLPersonInfoManager *)v10 assetsdClient];
          v24 = [(PLPersonInfoManager *)v16 cloudInternalClient];
          v25 = v24;
          if (v6)
          {
            v26 = v6;
          }

          else
          {
            v26 = MEMORY[0x1E695E0F8];
          }

          [v24 setPersonInfoDictionary:v26 forPersonID:v7];

          goto LABEL_29;
        }

        v16 = v10;
        objc_sync_enter(v16);
        if (v13)
        {
          v17 = [MEMORY[0x1E696AE40] dataWithPropertyList:v10->_personDictsForPersonID format:100 options:0 error:0];
          v18 = [(PLPersonInfoManager *)v16 plistPath];
          v19 = [v17 writeToFile:v18 options:1073741825 error:0];

          if (v19)
          {
LABEL_14:

            v20 = PLPhotoSharingGetLog();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = objc_opt_class();
              *buf = 138412290;
              v39 = v21;
              v22 = v21;
              _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, "%@ posting photosPersonInfoChanged", buf, 0xCu);
            }

            DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
            CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mobileslideshow.PersonInfoChanged", 0, 0, 0);
            goto LABEL_28;
          }

          v29 = objc_opt_new();
          v30 = [(PLPersonInfoManager *)v16 plistPath];
          v31 = [v30 stringByDeletingLastPathComponent];
          v37 = 0;
          v32 = [v29 createDirectoryAtPath:v31 withIntermediateDirectories:1 attributes:0 error:&v37];
          v33 = v37;

          if (v32)
          {
            v34 = [(PLPersonInfoManager *)v16 plistPath];
            v35 = [v17 writeToFile:v34 options:1073741825 error:0];

            if (v35)
            {

              goto LABEL_14;
            }
          }

          v36 = [(PLPersonInfoManager *)v16 plistPath];
          NSLog(&cfstr_FailedToWriteP.isa, v36, v33);
        }

        else
        {
          v17 = PLPhotoSharingGetLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v27 = objc_opt_class();
            *buf = 138412290;
            v39 = v27;
            v28 = v27;
            _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "%@ skipping posting photosPersonInfoChanged", buf, 0xCu);
          }
        }

LABEL_28:
        objc_sync_exit(v16);
LABEL_29:

        goto LABEL_30;
      }
    }

    personDictsForPersonID = v10->_personDictsForPersonID;
    goto LABEL_10;
  }

LABEL_30:
}

- (id)personInfoForPersonID:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v6 = 0;
    goto LABEL_13;
  }

  v5 = self;
  objc_sync_enter(v5);
  [(PLPersonInfoManager *)v5 _loadDictionariesIfNeeded];
  v6 = [(NSMutableDictionary *)v5->_personDictsForPersonID objectForKey:v4];
  objc_sync_exit(v5);

  if (v6)
  {
    goto LABEL_13;
  }

  if ([MEMORY[0x1E69BF2F0] isEntitledForPhotoKit])
  {
    v7 = v5;
    objc_sync_enter(v7);
    personDictsForPersonID = v5->_personDictsForPersonID;
    v5->_personDictsForPersonID = 0;

    [(PLPersonInfoManager *)v7 _loadDictionariesIfNeeded];
    v6 = [(NSMutableDictionary *)v5->_personDictsForPersonID objectForKey:v4];
    objc_sync_exit(v7);

    if (v6)
    {
      goto LABEL_13;
    }

    v9 = 0;
    goto LABEL_9;
  }

  v10 = [(PLPersonInfoManager *)v5 assetsdClient];
  v11 = [v10 cloudInternalClient];
  v14 = 0;
  v6 = [v11 personInfoDictionaryForPersonID:v4 error:&v14];
  v9 = v14;

  if (!v6)
  {
LABEL_9:
    v12 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v16 = v4;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Error getting person info with personID: %@, error: %@", buf, 0x16u);
    }

    v6 = 0;
    goto LABEL_12;
  }

  v12 = v5;
  objc_sync_enter(v12);
  [(NSMutableDictionary *)v5->_personDictsForPersonID setObject:v6 forKey:v4];
  objc_sync_exit(v12);
LABEL_12:

LABEL_13:

  return v6;
}

- (void)removePersistedInfo
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = objc_opt_class();
    v4 = v8;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "%@ removing persisted person info", &v7, 0xCu);
  }

  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [(PLPersonInfoManager *)self plistPath];
  [v5 removeItemAtPath:v6 error:0];
}

- (void)_loadDictionariesIfNeeded
{
  if (!self->_personDictsForPersonID)
  {
    v14 = v2;
    v15 = v3;
    if ([MEMORY[0x1E69BF2F0] isEntitledForPhotoKit])
    {
      v5 = MEMORY[0x1E695DF20];
      v6 = [(PLPersonInfoManager *)self plistPath];
      v7 = [v5 dictionaryWithContentsOfFile:v6];
      v8 = [v7 mutableCopy];
      personDictsForPersonID = self->_personDictsForPersonID;
      self->_personDictsForPersonID = v8;
    }

    else
    {
      v10 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Could not read dictionary; missing required entitlement", v13, 2u);
      }
    }

    if (!self->_personDictsForPersonID)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v12 = self->_personDictsForPersonID;
      self->_personDictsForPersonID = v11;
    }
  }
}

- (void)clearCacheForPersonID:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = objc_opt_class();
    v11 = 2112;
    v12 = v4;
    v7 = v10;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "%@ clearing cache due to photosPersonInfoChanged %@", &v9, 0x16u);
  }

  personDictsForPersonID = v5->_personDictsForPersonID;
  if (v4)
  {
    [(NSMutableDictionary *)personDictsForPersonID removeObjectForKey:v4];
  }

  else
  {
    v5->_personDictsForPersonID = 0;
  }

  objc_sync_exit(v5);
}

- (id)phonesForInvitationRecordGUID:(id)a3
{
  v3 = [(PLPersonInfoManager *)self personInfoForPersonID:a3];
  v4 = [v3 objectForKey:PLKInvitationRecordInfoAllPhonesKey];

  return v4;
}

- (id)emailsForInvitationRecordGUID:(id)a3
{
  v3 = [(PLPersonInfoManager *)self personInfoForPersonID:a3];
  v4 = [v3 objectForKey:PLKInvitationRecordInfoAllEmailsKey];

  return v4;
}

- (void)deleteEmailsAndPhonesForInvitationRecordGUID:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E695DF90];
    v5 = a3;
    v6 = objc_alloc_init(v4);
    [(PLPersonInfoManager *)self setPersonInfo:v6 forPersonID:v5];
  }
}

- (void)setEmails:(id)a3 phones:(id)a4 forInvitationRecordGUID:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  if (v9 && ([v8 count] || objc_msgSend(v12, "count")))
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = v10;
    if (v12)
    {
      [v10 setObject:v12 forKey:PLKInvitationRecordInfoAllEmailsKey];
    }

    if (v8)
    {
      [v11 setObject:v8 forKey:PLKInvitationRecordInfoAllPhonesKey];
    }

    [(PLPersonInfoManager *)self setPersonInfo:v11 forPersonID:v9];
  }
}

- (id)emailForPersonID:(id)a3
{
  v3 = [(PLPersonInfoManager *)self personInfoForPersonID:a3];
  v4 = [v3 objectForKey:PLKPersonInfoEmailNameKey];

  return v4;
}

- (id)fullNameForPersonID:(id)a3
{
  v3 = [(PLPersonInfoManager *)self personInfoForPersonID:a3];
  v4 = [v3 objectForKey:PLKPersonInfoFullNameKey];

  return v4;
}

- (id)lastNameForPersonID:(id)a3
{
  v3 = [(PLPersonInfoManager *)self personInfoForPersonID:a3];
  v4 = [v3 objectForKey:PLKPersonInfoLastNameKey];

  return v4;
}

- (id)firstNameForPersonID:(id)a3
{
  v3 = [(PLPersonInfoManager *)self personInfoForPersonID:a3];
  v4 = [v3 objectForKey:PLKPersonInfoFirstNameKey];

  return v4;
}

- (void)setFirstName:(id)a3 lastName:(id)a4 fullName:(id)a5 email:(id)a6 forPersonID:(id)a7
{
  v22 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v16)
  {
    if (v12 || v13 || v14 || v15)
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v17 = v19;
      if (v12)
      {
        [v19 setObject:v12 forKey:PLKPersonInfoFirstNameKey];
      }

      if (v13)
      {
        [v17 setObject:v13 forKey:PLKPersonInfoLastNameKey];
      }

      if (v14)
      {
        [v17 setObject:v14 forKey:PLKPersonInfoFullNameKey];
      }

      if (v15)
      {
        [v17 setObject:v15 forKey:PLKPersonInfoEmailNameKey];
      }

      [(PLPersonInfoManager *)self setPersonInfo:v17 forPersonID:v16];
    }

    else
    {
      v17 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412290;
        v21 = objc_opt_class();
        v18 = v21;
        _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "%@ not updating person info, all fields are nil", &v20, 0xCu);
      }
    }
  }
}

- (void)dealloc
{
  if ((PLIsAssetsd() & 1) == 0)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.mobileslideshow.PersonInfoChanged", 0);
  }

  v4.receiver = self;
  v4.super_class = PLPersonInfoManager;
  [(PLPersonInfoManager *)&v4 dealloc];
}

- (PLPersonInfoManager)initWithPathManager:(id)a3 lazyAssetsdClient:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PLPersonInfoManager.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];

    if (v10)
    {
      goto LABEL_3;
    }

LABEL_8:
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PLPersonInfoManager.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"lazyAssetsdClient"}];

    goto LABEL_3;
  }

  if (!v9)
  {
    goto LABEL_8;
  }

LABEL_3:
  v17.receiver = self;
  v17.super_class = PLPersonInfoManager;
  v11 = [(PLPersonInfoManager *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_pathManager, a3);
    objc_storeStrong(&v12->_lazyAssetsdClient, a4);
    if ((PLIsAssetsd() & 1) == 0)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v12, photosPersonInfoChanged, @"com.apple.mobileslideshow.PersonInfoChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }
  }

  return v12;
}

@end
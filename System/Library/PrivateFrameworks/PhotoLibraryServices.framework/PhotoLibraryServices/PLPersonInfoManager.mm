@interface PLPersonInfoManager
- (PLPersonInfoManager)initWithPathManager:(id)manager lazyAssetsdClient:(id)client;
- (id)emailForPersonID:(id)d;
- (id)emailsForInvitationRecordGUID:(id)d;
- (id)firstNameForPersonID:(id)d;
- (id)fullNameForPersonID:(id)d;
- (id)lastNameForPersonID:(id)d;
- (id)personInfoForPersonID:(id)d;
- (id)phonesForInvitationRecordGUID:(id)d;
- (void)_loadDictionariesIfNeeded;
- (void)clearCacheForPersonID:(id)d;
- (void)dealloc;
- (void)deleteEmailsAndPhonesForInvitationRecordGUID:(id)d;
- (void)removePersistedInfo;
- (void)setEmails:(id)emails phones:(id)phones forInvitationRecordGUID:(id)d;
- (void)setFirstName:(id)name lastName:(id)lastName fullName:(id)fullName email:(id)email forPersonID:(id)d;
- (void)setPersonInfo:(id)info forPersonID:(id)d;
@end

@implementation PLPersonInfoManager

- (void)setPersonInfo:(id)info forPersonID:(id)d
{
  v44 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  dCopy = d;
  v8 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v39 = objc_opt_class();
    v40 = 2112;
    v41 = dCopy;
    v42 = 2112;
    v43 = infoCopy;
    v9 = v39;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "%@ setPersonInfo %@ %@", buf, 0x20u);
  }

  if (dCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(PLPersonInfoManager *)selfCopy _loadDictionariesIfNeeded];
    v11 = [(NSMutableDictionary *)selfCopy->_personDictsForPersonID objectForKey:dCopy];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 isEqualToDictionary:infoCopy] ^ 1;
      if (infoCopy)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v13 = 1;
      if (infoCopy)
      {
LABEL_6:
        v14 = [infoCopy count];
        personDictsForPersonID = selfCopy->_personDictsForPersonID;
        if (v14)
        {
          [(NSMutableDictionary *)personDictsForPersonID setObject:infoCopy forKey:dCopy];
          goto LABEL_11;
        }

LABEL_10:
        [(NSMutableDictionary *)personDictsForPersonID removeObjectForKey:dCopy];
LABEL_11:

        objc_sync_exit(selfCopy);
        if ((PLIsAssetsd() & 1) == 0)
        {
          assetsdClient = [(PLPersonInfoManager *)selfCopy assetsdClient];
          cloudInternalClient = [(PLPersonInfoManager *)assetsdClient cloudInternalClient];
          v25 = cloudInternalClient;
          if (infoCopy)
          {
            v26 = infoCopy;
          }

          else
          {
            v26 = MEMORY[0x1E695E0F8];
          }

          [cloudInternalClient setPersonInfoDictionary:v26 forPersonID:dCopy];

          goto LABEL_29;
        }

        assetsdClient = selfCopy;
        objc_sync_enter(assetsdClient);
        if (v13)
        {
          v17 = [MEMORY[0x1E696AE40] dataWithPropertyList:selfCopy->_personDictsForPersonID format:100 options:0 error:0];
          plistPath = [(PLPersonInfoManager *)assetsdClient plistPath];
          v19 = [v17 writeToFile:plistPath options:1073741825 error:0];

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
          plistPath2 = [(PLPersonInfoManager *)assetsdClient plistPath];
          stringByDeletingLastPathComponent = [plistPath2 stringByDeletingLastPathComponent];
          v37 = 0;
          v32 = [v29 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v37];
          v33 = v37;

          if (v32)
          {
            plistPath3 = [(PLPersonInfoManager *)assetsdClient plistPath];
            v35 = [v17 writeToFile:plistPath3 options:1073741825 error:0];

            if (v35)
            {

              goto LABEL_14;
            }
          }

          plistPath4 = [(PLPersonInfoManager *)assetsdClient plistPath];
          NSLog(&cfstr_FailedToWriteP.isa, plistPath4, v33);
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
        objc_sync_exit(assetsdClient);
LABEL_29:

        goto LABEL_30;
      }
    }

    personDictsForPersonID = selfCopy->_personDictsForPersonID;
    goto LABEL_10;
  }

LABEL_30:
}

- (id)personInfoForPersonID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (!dCopy)
  {
    v6 = 0;
    goto LABEL_13;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(PLPersonInfoManager *)selfCopy _loadDictionariesIfNeeded];
  v6 = [(NSMutableDictionary *)selfCopy->_personDictsForPersonID objectForKey:dCopy];
  objc_sync_exit(selfCopy);

  if (v6)
  {
    goto LABEL_13;
  }

  if ([MEMORY[0x1E69BF2F0] isEntitledForPhotoKit])
  {
    v7 = selfCopy;
    objc_sync_enter(v7);
    personDictsForPersonID = selfCopy->_personDictsForPersonID;
    selfCopy->_personDictsForPersonID = 0;

    [(PLPersonInfoManager *)v7 _loadDictionariesIfNeeded];
    v6 = [(NSMutableDictionary *)selfCopy->_personDictsForPersonID objectForKey:dCopy];
    objc_sync_exit(v7);

    if (v6)
    {
      goto LABEL_13;
    }

    v9 = 0;
    goto LABEL_9;
  }

  assetsdClient = [(PLPersonInfoManager *)selfCopy assetsdClient];
  cloudInternalClient = [assetsdClient cloudInternalClient];
  v14 = 0;
  v6 = [cloudInternalClient personInfoDictionaryForPersonID:dCopy error:&v14];
  v9 = v14;

  if (!v6)
  {
LABEL_9:
    v12 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v16 = dCopy;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Error getting person info with personID: %@, error: %@", buf, 0x16u);
    }

    v6 = 0;
    goto LABEL_12;
  }

  v12 = selfCopy;
  objc_sync_enter(v12);
  [(NSMutableDictionary *)selfCopy->_personDictsForPersonID setObject:v6 forKey:dCopy];
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

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  plistPath = [(PLPersonInfoManager *)self plistPath];
  [defaultManager removeItemAtPath:plistPath error:0];
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
      plistPath = [(PLPersonInfoManager *)self plistPath];
      v7 = [v5 dictionaryWithContentsOfFile:plistPath];
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

- (void)clearCacheForPersonID:(id)d
{
  v13 = *MEMORY[0x1E69E9840];
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = objc_opt_class();
    v11 = 2112;
    v12 = dCopy;
    v7 = v10;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "%@ clearing cache due to photosPersonInfoChanged %@", &v9, 0x16u);
  }

  personDictsForPersonID = selfCopy->_personDictsForPersonID;
  if (dCopy)
  {
    [(NSMutableDictionary *)personDictsForPersonID removeObjectForKey:dCopy];
  }

  else
  {
    selfCopy->_personDictsForPersonID = 0;
  }

  objc_sync_exit(selfCopy);
}

- (id)phonesForInvitationRecordGUID:(id)d
{
  v3 = [(PLPersonInfoManager *)self personInfoForPersonID:d];
  v4 = [v3 objectForKey:PLKInvitationRecordInfoAllPhonesKey];

  return v4;
}

- (id)emailsForInvitationRecordGUID:(id)d
{
  v3 = [(PLPersonInfoManager *)self personInfoForPersonID:d];
  v4 = [v3 objectForKey:PLKInvitationRecordInfoAllEmailsKey];

  return v4;
}

- (void)deleteEmailsAndPhonesForInvitationRecordGUID:(id)d
{
  if (d)
  {
    v4 = MEMORY[0x1E695DF90];
    dCopy = d;
    v6 = objc_alloc_init(v4);
    [(PLPersonInfoManager *)self setPersonInfo:v6 forPersonID:dCopy];
  }
}

- (void)setEmails:(id)emails phones:(id)phones forInvitationRecordGUID:(id)d
{
  emailsCopy = emails;
  phonesCopy = phones;
  dCopy = d;
  if (dCopy && ([phonesCopy count] || objc_msgSend(emailsCopy, "count")))
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = v10;
    if (emailsCopy)
    {
      [v10 setObject:emailsCopy forKey:PLKInvitationRecordInfoAllEmailsKey];
    }

    if (phonesCopy)
    {
      [v11 setObject:phonesCopy forKey:PLKInvitationRecordInfoAllPhonesKey];
    }

    [(PLPersonInfoManager *)self setPersonInfo:v11 forPersonID:dCopy];
  }
}

- (id)emailForPersonID:(id)d
{
  v3 = [(PLPersonInfoManager *)self personInfoForPersonID:d];
  v4 = [v3 objectForKey:PLKPersonInfoEmailNameKey];

  return v4;
}

- (id)fullNameForPersonID:(id)d
{
  v3 = [(PLPersonInfoManager *)self personInfoForPersonID:d];
  v4 = [v3 objectForKey:PLKPersonInfoFullNameKey];

  return v4;
}

- (id)lastNameForPersonID:(id)d
{
  v3 = [(PLPersonInfoManager *)self personInfoForPersonID:d];
  v4 = [v3 objectForKey:PLKPersonInfoLastNameKey];

  return v4;
}

- (id)firstNameForPersonID:(id)d
{
  v3 = [(PLPersonInfoManager *)self personInfoForPersonID:d];
  v4 = [v3 objectForKey:PLKPersonInfoFirstNameKey];

  return v4;
}

- (void)setFirstName:(id)name lastName:(id)lastName fullName:(id)fullName email:(id)email forPersonID:(id)d
{
  v22 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  lastNameCopy = lastName;
  fullNameCopy = fullName;
  emailCopy = email;
  dCopy = d;
  if (dCopy)
  {
    if (nameCopy || lastNameCopy || fullNameCopy || emailCopy)
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v17 = v19;
      if (nameCopy)
      {
        [v19 setObject:nameCopy forKey:PLKPersonInfoFirstNameKey];
      }

      if (lastNameCopy)
      {
        [v17 setObject:lastNameCopy forKey:PLKPersonInfoLastNameKey];
      }

      if (fullNameCopy)
      {
        [v17 setObject:fullNameCopy forKey:PLKPersonInfoFullNameKey];
      }

      if (emailCopy)
      {
        [v17 setObject:emailCopy forKey:PLKPersonInfoEmailNameKey];
      }

      [(PLPersonInfoManager *)self setPersonInfo:v17 forPersonID:dCopy];
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

- (PLPersonInfoManager)initWithPathManager:(id)manager lazyAssetsdClient:(id)client
{
  managerCopy = manager;
  clientCopy = client;
  v10 = clientCopy;
  if (!managerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPersonInfoManager.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];

    if (v10)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLPersonInfoManager.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"lazyAssetsdClient"}];

    goto LABEL_3;
  }

  if (!clientCopy)
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
    objc_storeStrong(&v11->_pathManager, manager);
    objc_storeStrong(&v12->_lazyAssetsdClient, client);
    if ((PLIsAssetsd() & 1) == 0)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v12, photosPersonInfoChanged, @"com.apple.mobileslideshow.PersonInfoChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }
  }

  return v12;
}

@end
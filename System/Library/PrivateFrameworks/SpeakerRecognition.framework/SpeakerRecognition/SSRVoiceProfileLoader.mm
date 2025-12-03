@interface SSRVoiceProfileLoader
+ (id)getActivePersonaIds;
+ (id)getActiveSiriSharedUserIds;
+ (id)getVoiceProfileWithLocale:(id)locale;
+ (id)getVoiceProfileWithLocale:(id)locale userSiriProfileId:(id)id;
+ (id)getVoiceProfileWithVoiceProfileId:(id)id;
- (SSRVoiceProfileLoader)initWithLocale:(id)locale;
- (SSRVoiceProfileLoader)initWithLocale:(id)locale personaId:(id)id;
- (SSRVoiceProfileLoader)initWithLocale:(id)locale siriSharedUserId:(id)id;
- (id)getVoiceProfile;
@end

@implementation SSRVoiceProfileLoader

- (id)getVoiceProfile
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = +[SSRVoiceProfileStore sharedInstance];
  loadCurrentVoiceProfiles = [v3 loadCurrentVoiceProfiles];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = loadCurrentVoiceProfiles;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        locale = [v10 locale];
        v12 = [locale isEqualToString:self->_locale];

        if (v12)
        {
          appDomain = [v10 appDomain];
          v14 = [appDomain isEqualToString:@"com.apple.siri"];

          if (v14)
          {
            v15 = v10;
            goto LABEL_12;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_12:

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (SSRVoiceProfileLoader)initWithLocale:(id)locale siriSharedUserId:(id)id
{
  localeCopy = locale;
  idCopy = id;
  v12.receiver = self;
  v12.super_class = SSRVoiceProfileLoader;
  v9 = [(SSRVoiceProfileLoader *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_locale, locale);
    objc_storeStrong(&v10->_siriSharedUserId, id);
  }

  return v10;
}

- (SSRVoiceProfileLoader)initWithLocale:(id)locale personaId:(id)id
{
  localeCopy = locale;
  idCopy = id;
  v12.receiver = self;
  v12.super_class = SSRVoiceProfileLoader;
  v9 = [(SSRVoiceProfileLoader *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_locale, locale);
    objc_storeStrong(&v10->_personaId, id);
  }

  return v10;
}

- (SSRVoiceProfileLoader)initWithLocale:(id)locale
{
  localeCopy = locale;
  v9.receiver = self;
  v9.super_class = SSRVoiceProfileLoader;
  v6 = [(SSRVoiceProfileLoader *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_locale, locale);
  }

  return v7;
}

+ (id)getActivePersonaIds
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = +[SSRVoiceProfileStore sharedInstance];
  loadCurrentVoiceProfiles = [v2 loadCurrentVoiceProfiles];

  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (CSIsCommunalDevice())
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = loadCurrentVoiceProfiles;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          personaID = [v10 personaID];

          if (personaID)
          {
            personaID2 = [v10 personaID];
            [v4 addObject:personaID2];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }
  }

  allObjects = [v4 allObjects];

  v14 = *MEMORY[0x277D85DE8];

  return allObjects;
}

+ (id)getActiveSiriSharedUserIds
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = +[SSRVoiceProfileStore sharedInstance];
  loadCurrentVoiceProfiles = [v2 loadCurrentVoiceProfiles];

  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (CSIsCommunalDevice())
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = loadCurrentVoiceProfiles;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          siriProfileId = [v10 siriProfileId];

          if (siriProfileId)
          {
            siriProfileId2 = [v10 siriProfileId];
            [v4 addObject:siriProfileId2];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }
  }

  allObjects = [v4 allObjects];

  v14 = *MEMORY[0x277D85DE8];

  return allObjects;
}

+ (id)getVoiceProfileWithLocale:(id)locale userSiriProfileId:(id)id
{
  v24 = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  v5 = +[SSRVoiceProfileStore sharedInstance];
  loadCurrentVoiceProfiles = [v5 loadCurrentVoiceProfiles];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = loadCurrentVoiceProfiles;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        locale = [v12 locale];
        if ([locale isEqualToString:localeCopy])
        {
          appDomain = [v12 appDomain];
          v15 = [appDomain isEqualToString:@"com.apple.siri"];

          if (v15)
          {
            v16 = v12;
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v16 = 0;
LABEL_13:

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)getVoiceProfileWithLocale:(id)locale
{
  v23 = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  v4 = +[SSRVoiceProfileStore sharedInstance];
  loadCurrentVoiceProfiles = [v4 loadCurrentVoiceProfiles];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = loadCurrentVoiceProfiles;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        locale = [v11 locale];
        if ([locale isEqualToString:localeCopy])
        {
          appDomain = [v11 appDomain];
          v14 = [appDomain isEqualToString:@"com.apple.siri"];

          if (v14)
          {
            v15 = v11;
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = 0;
LABEL_13:

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)getVoiceProfileWithVoiceProfileId:(id)id
{
  v20 = *MEMORY[0x277D85DE8];
  idCopy = id;
  if (idCopy)
  {
    v4 = +[SSRVoiceProfileStore sharedInstance];
    loadCurrentVoiceProfiles = [v4 loadCurrentVoiceProfiles];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = loadCurrentVoiceProfiles;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          profileID = [v10 profileID];
          v12 = [profileID isEqualToString:idCopy];

          if (v12)
          {
            v7 = v10;
            goto LABEL_12;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v7 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

@end
@interface UNCNotificationSettingsPersistentStore
- (BOOL)hasSectionInfoLegacyFile;
- (UNCNotificationSettingsPersistentStore)init;
- (UNCNotificationSettingsPersistentStore)initWithDataDirectoryPath:(id)path;
- (id)readClearedSections;
- (id)readSectionInfo;
- (id)readSectionInfoLegacy;
- (id)readSectionInfoWithVersionNumberForMigration;
- (id)readSectionOrder;
- (void)deleteSectionInfoFile;
- (void)deleteSectionInfoLegacyFile;
- (void)writeClearedSections:(id)sections;
- (void)writeSectionInfo:(id)info;
- (void)writeSectionOrder:(id)order;
@end

@implementation UNCNotificationSettingsPersistentStore

- (UNCNotificationSettingsPersistentStore)initWithDataDirectoryPath:(id)path
{
  v13 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v10.receiver = self;
  v10.super_class = UNCNotificationSettingsPersistentStore;
  v6 = [(UNCNotificationSettingsPersistentStore *)&v10 init];
  if (v6)
  {
    v7 = *MEMORY[0x1E6983388];
    if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = pathCopy;
      _os_log_impl(&dword_1DA7A9000, v7, OS_LOG_TYPE_DEFAULT, "Created UNPersistedStore with path %@", buf, 0xCu);
    }

    objc_storeStrong(&v6->_dataDirectoryPath, path);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

- (UNCNotificationSettingsPersistentStore)init
{
  stringByExpandingTildeInPath = [@"~/Library/BulletinBoard/" stringByExpandingTildeInPath];
  v4 = [(UNCNotificationSettingsPersistentStore *)self initWithDataDirectoryPath:stringByExpandingTildeInPath];

  return v4;
}

- (id)readClearedSections
{
  v3 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1DA7A9000, v3, OS_LOG_TYPE_DEFAULT, "Reading cleared sections from persistence", v8, 2u);
  }

  v4 = MEMORY[0x1E695DF20];
  _clearedSectionsPath = [(UNCNotificationSettingsPersistentStore *)self _clearedSectionsPath];
  v6 = [v4 dictionaryWithContentsOfFile:_clearedSectionsPath];

  return v6;
}

- (id)readSectionInfo
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DA7A9000, v3, OS_LOG_TYPE_DEFAULT, "Reading UNCSectionInfo from persistence", buf, 2u);
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  context = objc_autoreleasePoolPush();
  v4 = MEMORY[0x1E695DF20];
  _sectionInfoPath = [(UNCNotificationSettingsPersistentStore *)self _sectionInfoPath];
  v6 = [v4 dictionaryWithContentsOfFile:_sectionInfoPath];

  v24 = v6;
  v7 = [v6 objectForKey:@"sectionInfo"];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [v7 allKeys];
  v8 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    v27 = *MEMORY[0x1E696A508];
    do
    {
      v11 = 0;
      do
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v31 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        v14 = [v7 objectForKey:v12];
        v15 = objc_alloc(MEMORY[0x1E696ACD0]);
        v30 = 0;
        v16 = [v15 initForReadingFromData:v14 error:&v30];
        v17 = v30;
        if (v17)
        {
          goto LABEL_12;
        }

        [v16 setClass:objc_opt_class() forClassName:@"BBMuteAssertion"];
        [v16 setClass:objc_opt_class() forClassName:@"BBSectionIcon"];
        [v16 setClass:objc_opt_class() forClassName:@"BBSectionIconVariant"];
        [v16 setClass:objc_opt_class() forClassName:@"BBSectionInfo"];
        [v16 setClass:objc_opt_class() forClassName:@"BBSectionInfoSettings"];
        [v16 setClass:objc_opt_class() forClassName:@"BBSectionMuteAssertion"];
        [v16 setClass:objc_opt_class() forClassName:@"BBThreadsMuteAssertion"];
        v18 = objc_opt_class();
        v29 = 0;
        v19 = [v16 decodeTopLevelObjectOfClass:v18 forKey:v27 error:&v29];
        v17 = v29;
        if (v19)
        {
          [dictionary setObject:v19 forKey:v12];
        }

        if (v17)
        {
LABEL_12:
          v20 = *MEMORY[0x1E6983388];
          if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v36 = v12;
            v37 = 2114;
            v38 = v17;
            _os_log_error_impl(&dword_1DA7A9000, v20, OS_LOG_TYPE_ERROR, "Decoding UNCSectionInfo for sectionID %{public}@ failed: %{public}@", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v13);
        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v9);
  }

  objc_autoreleasePoolPop(context);
  v21 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = dictionary;
    _os_log_impl(&dword_1DA7A9000, v21, OS_LOG_TYPE_DEFAULT, "Returning sectionInfo %@", buf, 0xCu);
  }

  v22 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (id)readSectionInfoLegacy
{
  v3 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1DA7A9000, v3, OS_LOG_TYPE_DEFAULT, "Reading legacy SectionInfo from persistence", v8, 2u);
  }

  v4 = MEMORY[0x1E695DF20];
  _sectionInfoLegacyPath = [(UNCNotificationSettingsPersistentStore *)self _sectionInfoLegacyPath];
  v6 = [v4 dictionaryWithContentsOfFile:_sectionInfoLegacyPath];

  return v6;
}

- (id)readSectionOrder
{
  v3 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1DA7A9000, v3, OS_LOG_TYPE_DEFAULT, "Reading section order from persistence", v8, 2u);
  }

  v4 = MEMORY[0x1E695DF20];
  _sectionOrderPath = [(UNCNotificationSettingsPersistentStore *)self _sectionOrderPath];
  v6 = [v4 dictionaryWithContentsOfFile:_sectionOrderPath];

  return v6;
}

- (void)writeClearedSections:(id)sections
{
  sectionsCopy = sections;
  v5 = MEMORY[0x1E6983388];
  v6 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1DA7A9000, v6, OS_LOG_TYPE_DEFAULT, "Writing cleared sections to persistence", v10, 2u);
  }

  v7 = [MEMORY[0x1E696AE40] dataWithPropertyList:sectionsCopy format:200 options:0 error:0];
  _clearedSectionsPath = [(UNCNotificationSettingsPersistentStore *)self _clearedSectionsPath];
  v9 = [v7 writeToFile:_clearedSectionsPath options:268435457 error:0];

  if ((v9 & 1) == 0 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
  {
    [UNCNotificationSettingsPersistentStore writeClearedSections:];
  }
}

- (void)writeSectionOrder:(id)order
{
  orderCopy = order;
  v5 = MEMORY[0x1E6983388];
  v6 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1DA7A9000, v6, OS_LOG_TYPE_DEFAULT, "Writing section order to persistence", v10, 2u);
  }

  v7 = [MEMORY[0x1E696AE40] dataWithPropertyList:orderCopy format:100 options:0 error:0];
  _sectionOrderPath = [(UNCNotificationSettingsPersistentStore *)self _sectionOrderPath];
  v9 = [v7 writeToFile:_sectionOrderPath options:268435457 error:0];

  if ((v9 & 1) == 0 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
  {
    [UNCNotificationSettingsPersistentStore writeSectionOrder:];
  }
}

- (void)writeSectionInfo:(id)info
{
  selfCopy = self;
  v30 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v4 = *MEMORY[0x1E6983388];
  if (os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DA7A9000, v4, OS_LOG_TYPE_DEFAULT, "Writing section info to persistence", buf, 2u);
  }

  context = objc_autoreleasePoolPush();
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = infoCopy;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v12 = [v6 objectForKey:{v11, selfCopy}];
        if (([v12 suppressFromSettings] & 1) == 0)
        {
          v13 = objc_autoreleasePoolPush();
          v14 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v12 requiringSecureCoding:1 error:0];
          [dictionary2 setObject:v14 forKey:v11];

          objc_autoreleasePoolPop(v13);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }

  [dictionary setObject:dictionary2 forKey:@"sectionInfo"];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:2];
  [dictionary setObject:v15 forKey:@"sectionInfoVersionNumber"];

  v16 = [MEMORY[0x1E696AE40] dataWithPropertyList:dictionary format:100 options:0 error:0];
  _sectionInfoPath = [(UNCNotificationSettingsPersistentStore *)selfCopy _sectionInfoPath];
  v23 = 0;
  [v16 writeToFile:_sectionInfoPath options:268435457 error:&v23];
  v18 = v23;

  if (v18 && os_log_type_enabled(*MEMORY[0x1E6983388], OS_LOG_TYPE_ERROR))
  {
    [UNCNotificationSettingsPersistentStore writeSectionInfo:];
  }

  objc_autoreleasePoolPop(context);
  v19 = *MEMORY[0x1E69E9840];
}

- (void)deleteSectionInfoFile
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)deleteSectionInfoLegacyFile
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasSectionInfoLegacyFile
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  _sectionInfoLegacyPath = [(UNCNotificationSettingsPersistentStore *)self _sectionInfoLegacyPath];
  v5 = [defaultManager fileExistsAtPath:_sectionInfoLegacyPath];

  return v5;
}

- (id)readSectionInfoWithVersionNumberForMigration
{
  v2 = MEMORY[0x1E695DF20];
  _sectionInfoPath = [(UNCNotificationSettingsPersistentStore *)self _sectionInfoPath];
  v4 = [v2 dictionaryWithContentsOfFile:_sectionInfoPath];

  return v4;
}

- (void)writeSectionInfo:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end
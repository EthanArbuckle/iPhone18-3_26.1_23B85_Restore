@interface TUNicknamesMetadataCacheDataProvider
+ (TUNicknamesMetadataCacheDataProvider)sharedInstance;
+ (id)tuMetadataDestinationIDForHandleValue:(id)value;
- (TUNicknamesMetadataCacheDataProvider)init;
- (id)fetchNicknameForHandleValue:(id)value;
- (id)formattedNicknameStringForHandleValue:(id)value;
- (id)formattedNicknameStringForNickname:(id)nickname;
- (void)nicknameStoreDidChange:(id)change;
- (void)updateCacheWithDestinationIDs:(id)ds withGroup:(id)group;
@end

@implementation TUNicknamesMetadataCacheDataProvider

+ (TUNicknamesMetadataCacheDataProvider)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__TUNicknamesMetadataCacheDataProvider_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_3 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_3, block);
  }

  v2 = sharedInstance_sNicknamesMetadataCacheDataProvider;

  return v2;
}

uint64_t __54__TUNicknamesMetadataCacheDataProvider_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sNicknamesMetadataCacheDataProvider = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (TUNicknamesMetadataCacheDataProvider)init
{
  v8.receiver = self;
  v8.super_class = TUNicknamesMetadataCacheDataProvider;
  v2 = [(TUMetadataCacheDataProvider *)&v8 init];
  if (v2)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v3 = getIMNicknameProviderClass_softClass;
    v13 = getIMNicknameProviderClass_softClass;
    if (!getIMNicknameProviderClass_softClass)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getIMNicknameProviderClass_block_invoke;
      v9[3] = &unk_1E7424CD8;
      v9[4] = &v10;
      __getIMNicknameProviderClass_block_invoke(v9);
      v3 = v11[3];
    }

    v4 = v3;
    _Block_object_dispose(&v10, 8);
    v5 = objc_alloc_init(v3);
    nicknameProvider = v2->_nicknameProvider;
    v2->_nicknameProvider = v5;

    [(IMNicknameProvider *)v2->_nicknameProvider setNicknameListener:v2];
  }

  return v2;
}

- (id)fetchNicknameForHandleValue:(id)value
{
  valueCopy = value;
  v5 = [objc_opt_class() tuMetadataDestinationIDForHandleValue:valueCopy];
  if (v5)
  {
    v6 = [(TUMetadataCacheDataProvider *)self metadataForDestinationID:v5];
    if (!v6)
    {
      v6 = [(TUNicknamesMetadataCacheDataProvider *)self formattedNicknameStringForHandleValue:valueCopy];
      [(TUMetadataCacheDataProvider *)self setObject:v6 forDestinationID:v5];
      v7 = [[TUMetadataDict alloc] initWithSource:@"Apple" identificationLabel:v6];
      [(TUMetadataCacheDataProvider *)self setMetadataDict:v7 forDestinationID:v5];
    }
  }

  else
  {
    v6 = [(TUNicknamesMetadataCacheDataProvider *)self formattedNicknameStringForHandleValue:valueCopy];
  }

  return v6;
}

- (void)updateCacheWithDestinationIDs:(id)ds withGroup:(id)group
{
  v22 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  groupCopy = group;
  dispatch_group_enter(groupCopy);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = dsCopy;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        handle = [*(*(&v17 + 1) + 8 * v12) handle];
        normalizedValue = [handle normalizedValue];
        v15 = [(TUNicknamesMetadataCacheDataProvider *)self fetchNicknameForHandleValue:normalizedValue];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  dispatch_group_leave(groupCopy);
  v16 = *MEMORY[0x1E69E9840];
}

- (void)nicknameStoreDidChange:(id)change
{
  v22 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  [(TUMetadataCacheDataProvider *)self invalidateCache];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [changeCopy allKeys];
  v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        v10 = [objc_opt_class() tuMetadataDestinationIDForHandleValue:v9];
        v11 = [changeCopy objectForKeyedSubscript:@"pendingNicknames"];
        v12 = [v11 objectForKeyedSubscript:v9];
        if (v10)
        {
          v13 = [(TUNicknamesMetadataCacheDataProvider *)self formattedNicknameStringForNickname:v12];
          [(TUMetadataCacheDataProvider *)self setObject:v13 forDestinationID:v10];
          v14 = [[TUMetadataDict alloc] initWithSource:@"Apple" identificationLabel:v13];
          [(TUMetadataCacheDataProvider *)self setMetadataDict:v14 forDestinationID:v10];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x1E69E9840];
}

+ (id)tuMetadataDestinationIDForHandleValue:(id)value
{
  valueCopy = value;
  if ([valueCopy length])
  {
    v4 = [TUHandle normalizedHandleWithDestinationID:valueCopy];
    if (v4)
    {
      v5 = [[TUMetadataDestinationID alloc] initWithHandle:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)formattedNicknameStringForHandleValue:(id)value
{
  v15 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  if ([valueCopy length])
  {
    nicknameProvider = [(TUNicknamesMetadataCacheDataProvider *)self nicknameProvider];
    v6 = [nicknameProvider nicknameForHandleID:valueCopy];

    v7 = TUDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = valueCopy;
      _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "Fetched nickname %@ for handle: %@", &v11, 0x16u);
    }

    v8 = [(TUNicknamesMetadataCacheDataProvider *)self formattedNicknameStringForNickname:v6];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)formattedNicknameStringForNickname:(id)nickname
{
  nicknameCopy = nickname;
  v4 = nicknameCopy;
  if (nicknameCopy)
  {
    firstName = [nicknameCopy firstName];
    if ([firstName length])
    {

LABEL_5:
      v8 = MEMORY[0x1E696AEC0];
      firstName2 = [v4 firstName];
      lastName = [v4 lastName];
      v11 = [v8 stringWithFormat:@"%@ %@", firstName2, lastName];

      v12 = MEMORY[0x1E696AEC0];
      v13 = TUBundle();
      v14 = [v13 localizedStringForKey:@"MAYBE_NICKNAME_%@" value:&stru_1F098C218 table:@"TelephonyUtilities"];
      v15 = [v12 stringWithFormat:v14, v11];

      goto LABEL_7;
    }

    lastName2 = [v4 lastName];
    v7 = [lastName2 length];

    if (v7)
    {
      goto LABEL_5;
    }
  }

  v15 = 0;
LABEL_7:

  return v15;
}

@end
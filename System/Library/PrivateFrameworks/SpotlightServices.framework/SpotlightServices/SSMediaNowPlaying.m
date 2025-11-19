@interface SSMediaNowPlaying
+ (id)sharedInstance;
- (BOOL)filterEvent:(id)a3;
- (SSMediaNowPlaying)init;
- (id)_attributesUpdatesForEvent:(id)a3;
- (id)_identifierForItemUpdate:(id)a3;
- (id)_itemUpdateForEvent:(id)a3 itemIdentifier:(id)a4 bundleToUpdate:(id)a5;
- (id)stream;
- (void)handleEvent:(id)a3;
@end

@implementation SSMediaNowPlaying

- (id)stream
{
  v2 = BiomeLibrary();
  v3 = [v2 Media];
  v4 = [v3 NowPlaying];

  return v4;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[SSMediaNowPlaying sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

uint64_t __35__SSMediaNowPlaying_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_0 = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (SSMediaNowPlaying)init
{
  v6.receiver = self;
  v6.super_class = SSMediaNowPlaying;
  v2 = [(SSBaseConsumer *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (BOOL)filterEvent:(id)a3
{
  v3 = a3;
  v4 = [v3 bundleID];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  v6 = [v3 bundleID];
  v7 = [v6 isEqualToString:@"com.apple.Music"];

  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = [v3 iTunesStoreIdentifier];
  v9 = [v8 length];

  if (v9)
  {
    v10 = [v3 playbackState] != 1;
  }

  else
  {
LABEL_5:
    v10 = 1;
  }

  return v10;
}

- (void)handleEvent:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (![(SSMediaNowPlaying *)self filterEvent:v5])
    {
      v6 = [v5 iTunesStoreIdentifier];
      v7 = SSRedactString(v6, 1);

      if (v7)
      {
        v8 = SSGeneralLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [(SSBaseConsumer *)self identifier];
          *buf = 138412546;
          v19 = v9;
          v20 = 2112;
          v21 = v7;
          _os_log_impl(&dword_1D9F69000, v8, OS_LOG_TYPE_DEFAULT, "%@: processing event media nowplaying: %@", buf, 0x16u);
        }
      }

      v10 = @"com.apple.Music";
      v11 = *MEMORY[0x1E696A388];
      v12 = [(SSMediaNowPlaying *)self _identifierForItemUpdate:v5];
      if (v12)
      {
        v13 = [(SSMediaNowPlaying *)self _itemUpdateForEvent:v5 itemIdentifier:v12 bundleToUpdate:v10];
        v14 = v13;
        if (v13 && v11)
        {
          v17 = v13;
          v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
          [(SSBaseConsumer *)self indexItems:v15 protectionClass:v11 bundleID:v10];
        }
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)_identifierForItemUpdate:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 iTunesStoreIdentifier];

  if (v5)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = *MEMORY[0x1E6963BC8];
    v8 = [v4 iTunesStoreIdentifier];
    v9 = [v6 stringWithFormat:@"%@=%@", v7, v8];
    v15[0] = @"com.apple.Music";
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v11 = [(SSBaseConsumer *)self queryWithString:v9 bundleIDs:v10 fetchAttributes:MEMORY[0x1E695E0F0]];

    if ([v11 count] == 1)
    {
      v12 = [v11 firstObject];
      v5 = [v12 uniqueIdentifier];
    }

    else
    {
      v5 = 0;
    }
  }

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_attributesUpdatesForEvent:(id)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 absoluteTimestamp];

  if (v4)
  {
    v10[0] = @"_kMDItemLastOutOfSpotlightEngagementDate";
    v5 = [v3 absoluteTimestamp];
    v11[0] = v5;
    v10[1] = *MEMORY[0x1E6964548];
    v6 = [v3 absoluteTimestamp];
    v11[1] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F8];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_itemUpdateForEvent:(id)a3 itemIdentifier:(id)a4 bundleToUpdate:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(SSMediaNowPlaying *)self _attributesUpdatesForEvent:a3];
  v11 = v10;
  if (v10 && [v10 count])
  {
    v12 = objc_alloc_init(MEMORY[0x1E6964E80]);
    [v12 setUniqueIdentifier:v8];
    [v12 setBundleID:v9];
    [v12 setIsUpdate:1];
    v13 = [objc_alloc(MEMORY[0x1E6964E90]) initWithAttributes:v11];
    [v12 setAttributeSet:v13];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end
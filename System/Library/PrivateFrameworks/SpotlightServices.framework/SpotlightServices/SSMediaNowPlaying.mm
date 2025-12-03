@interface SSMediaNowPlaying
+ (id)sharedInstance;
- (BOOL)filterEvent:(id)event;
- (SSMediaNowPlaying)init;
- (id)_attributesUpdatesForEvent:(id)event;
- (id)_identifierForItemUpdate:(id)update;
- (id)_itemUpdateForEvent:(id)event itemIdentifier:(id)identifier bundleToUpdate:(id)update;
- (id)stream;
- (void)handleEvent:(id)event;
@end

@implementation SSMediaNowPlaying

- (id)stream
{
  v2 = BiomeLibrary();
  media = [v2 Media];
  nowPlaying = [media NowPlaying];

  return nowPlaying;
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

- (BOOL)filterEvent:(id)event
{
  eventCopy = event;
  bundleID = [eventCopy bundleID];
  if (!bundleID)
  {
    goto LABEL_5;
  }

  v5 = bundleID;
  bundleID2 = [eventCopy bundleID];
  v7 = [bundleID2 isEqualToString:@"com.apple.Music"];

  if (!v7)
  {
    goto LABEL_5;
  }

  iTunesStoreIdentifier = [eventCopy iTunesStoreIdentifier];
  v9 = [iTunesStoreIdentifier length];

  if (v9)
  {
    v10 = [eventCopy playbackState] != 1;
  }

  else
  {
LABEL_5:
    v10 = 1;
  }

  return v10;
}

- (void)handleEvent:(id)event
{
  v22 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = eventCopy;
    if (![(SSMediaNowPlaying *)self filterEvent:v5])
    {
      iTunesStoreIdentifier = [v5 iTunesStoreIdentifier];
      v7 = SSRedactString(iTunesStoreIdentifier, 1);

      if (v7)
      {
        v8 = SSGeneralLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          identifier = [(SSBaseConsumer *)self identifier];
          *buf = 138412546;
          v19 = identifier;
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

- (id)_identifierForItemUpdate:(id)update
{
  v15[1] = *MEMORY[0x1E69E9840];
  updateCopy = update;
  iTunesStoreIdentifier = [updateCopy iTunesStoreIdentifier];

  if (iTunesStoreIdentifier)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = *MEMORY[0x1E6963BC8];
    iTunesStoreIdentifier2 = [updateCopy iTunesStoreIdentifier];
    v9 = [v6 stringWithFormat:@"%@=%@", v7, iTunesStoreIdentifier2];
    v15[0] = @"com.apple.Music";
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v11 = [(SSBaseConsumer *)self queryWithString:v9 bundleIDs:v10 fetchAttributes:MEMORY[0x1E695E0F0]];

    if ([v11 count] == 1)
    {
      firstObject = [v11 firstObject];
      iTunesStoreIdentifier = [firstObject uniqueIdentifier];
    }

    else
    {
      iTunesStoreIdentifier = 0;
    }
  }

  v13 = *MEMORY[0x1E69E9840];

  return iTunesStoreIdentifier;
}

- (id)_attributesUpdatesForEvent:(id)event
{
  v11[2] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  absoluteTimestamp = [eventCopy absoluteTimestamp];

  if (absoluteTimestamp)
  {
    v10[0] = @"_kMDItemLastOutOfSpotlightEngagementDate";
    absoluteTimestamp2 = [eventCopy absoluteTimestamp];
    v11[0] = absoluteTimestamp2;
    v10[1] = *MEMORY[0x1E6964548];
    absoluteTimestamp3 = [eventCopy absoluteTimestamp];
    v11[1] = absoluteTimestamp3;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F8];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_itemUpdateForEvent:(id)event itemIdentifier:(id)identifier bundleToUpdate:(id)update
{
  identifierCopy = identifier;
  updateCopy = update;
  v10 = [(SSMediaNowPlaying *)self _attributesUpdatesForEvent:event];
  v11 = v10;
  if (v10 && [v10 count])
  {
    v12 = objc_alloc_init(MEMORY[0x1E6964E80]);
    [v12 setUniqueIdentifier:identifierCopy];
    [v12 setBundleID:updateCopy];
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
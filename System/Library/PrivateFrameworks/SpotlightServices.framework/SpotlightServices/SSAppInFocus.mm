@interface SSAppInFocus
+ (id)sharedInstance;
- (BOOL)filterEvent:(id)event;
- (SSAppInFocus)init;
- (id)_attributesUpdatesForEvent:(id)event;
- (id)_itemUpdatesForEvent:(id)event;
- (id)stream;
- (void)handleEvent:(id)event;
@end

@implementation SSAppInFocus

- (id)stream
{
  v2 = BiomeLibrary();
  v3 = [v2 App];
  inFocus = [v3 InFocus];

  return inFocus;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[SSAppInFocus sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __30__SSAppInFocus_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(SSAppInFocus);

  return MEMORY[0x1EEE66BB8]();
}

- (SSAppInFocus)init
{
  v6.receiver = self;
  v6.super_class = SSAppInFocus;
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
  shortVersionString = [eventCopy shortVersionString];
  if (shortVersionString)
  {
  }

  else
  {
    exactVersionString = [eventCopy exactVersionString];

    if (!exactVersionString)
    {
      LOBYTE(v6) = 1;
      goto LABEL_5;
    }
  }

  v6 = [eventCopy starting] ^ 1;
LABEL_5:

  return v6;
}

- (void)handleEvent:(id)event
{
  v25 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = eventCopy;
    bundleID = [v5 bundleID];
    if (bundleID)
    {
      v7 = bundleID;
      bundleID2 = [v5 bundleID];
      v9 = [bundleID2 length];

      if (v9)
      {
        if (![(SSAppInFocus *)self filterEvent:v5])
        {
          bundleID3 = [v5 bundleID];
          v11 = SSRedactString(bundleID3, 1);

          if (v11)
          {
            v12 = SSGeneralLog();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              identifier = [(SSBaseConsumer *)self identifier];
              *buf = 138412546;
              v22 = identifier;
              v23 = 2112;
              v24 = v11;
              _os_log_impl(&dword_1D9F69000, v12, OS_LOG_TYPE_DEFAULT, "%@: processing event for bundle %@.", buf, 0x16u);
            }
          }

          v14 = [(SSAppInFocus *)self _itemUpdatesForEvent:v5];
          v15 = v14;
          if (v14)
          {
            bundleID4 = [v14 bundleID];

            if (bundleID4)
            {
              v20 = v15;
              v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
              bundleID5 = [v15 bundleID];
              [(SSBaseConsumer *)self indexItems:v17 protectionClass:@"Priority" bundleID:bundleID5];
            }
          }
        }
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
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

- (id)_itemUpdatesForEvent:(id)event
{
  eventCopy = event;
  v5 = [(SSAppInFocus *)self _attributesUpdatesForEvent:eventCopy];
  v6 = v5;
  if (v5 && [v5 count])
  {
    v7 = [objc_alloc(MEMORY[0x1E6964E90]) initWithAttributes:v6];
    v8 = objc_alloc(MEMORY[0x1E6964E80]);
    bundleID = [eventCopy bundleID];
    v10 = [v8 initWithUniqueIdentifier:bundleID domainIdentifier:0 attributeSet:v7];

    [v10 setIsUpdate:1];
    [v10 setBundleID:@"com.apple.application"];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end
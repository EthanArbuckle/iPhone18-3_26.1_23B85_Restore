@interface SSAppInFocus
+ (id)sharedInstance;
- (BOOL)filterEvent:(id)a3;
- (SSAppInFocus)init;
- (id)_attributesUpdatesForEvent:(id)a3;
- (id)_itemUpdatesForEvent:(id)a3;
- (id)stream;
- (void)handleEvent:(id)a3;
@end

@implementation SSAppInFocus

- (id)stream
{
  v2 = BiomeLibrary();
  v3 = [v2 App];
  v4 = [v3 InFocus];

  return v4;
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

- (BOOL)filterEvent:(id)a3
{
  v3 = a3;
  v4 = [v3 shortVersionString];
  if (v4)
  {
  }

  else
  {
    v5 = [v3 exactVersionString];

    if (!v5)
    {
      LOBYTE(v6) = 1;
      goto LABEL_5;
    }
  }

  v6 = [v3 starting] ^ 1;
LABEL_5:

  return v6;
}

- (void)handleEvent:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 bundleID];
    if (v6)
    {
      v7 = v6;
      v8 = [v5 bundleID];
      v9 = [v8 length];

      if (v9)
      {
        if (![(SSAppInFocus *)self filterEvent:v5])
        {
          v10 = [v5 bundleID];
          v11 = SSRedactString(v10, 1);

          if (v11)
          {
            v12 = SSGeneralLog();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v13 = [(SSBaseConsumer *)self identifier];
              *buf = 138412546;
              v22 = v13;
              v23 = 2112;
              v24 = v11;
              _os_log_impl(&dword_1D9F69000, v12, OS_LOG_TYPE_DEFAULT, "%@: processing event for bundle %@.", buf, 0x16u);
            }
          }

          v14 = [(SSAppInFocus *)self _itemUpdatesForEvent:v5];
          v15 = v14;
          if (v14)
          {
            v16 = [v14 bundleID];

            if (v16)
            {
              v20 = v15;
              v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
              v18 = [v15 bundleID];
              [(SSBaseConsumer *)self indexItems:v17 protectionClass:@"Priority" bundleID:v18];
            }
          }
        }
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
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

- (id)_itemUpdatesForEvent:(id)a3
{
  v4 = a3;
  v5 = [(SSAppInFocus *)self _attributesUpdatesForEvent:v4];
  v6 = v5;
  if (v5 && [v5 count])
  {
    v7 = [objc_alloc(MEMORY[0x1E6964E90]) initWithAttributes:v6];
    v8 = objc_alloc(MEMORY[0x1E6964E80]);
    v9 = [v4 bundleID];
    v10 = [v8 initWithUniqueIdentifier:v9 domainIdentifier:0 attributeSet:v7];

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
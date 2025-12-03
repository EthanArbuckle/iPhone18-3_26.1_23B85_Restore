@interface VUIDebugMetricsGladiatorsRulesets
+ (id)sharedInstance;
- (VUIDebugMetricsGladiatorsRulesets)init;
@end

@implementation VUIDebugMetricsGladiatorsRulesets

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__VUIDebugMetricsGladiatorsRulesets_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_once != -1)
  {
    dispatch_once(&sharedInstance_once, block);
  }

  v2 = sharedInstance_sharedInstance_0;

  return v2;
}

void __51__VUIDebugMetricsGladiatorsRulesets_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_0;
  sharedInstance_sharedInstance_0 = v1;
}

- (VUIDebugMetricsGladiatorsRulesets)init
{
  v19.receiver = self;
  v19.super_class = VUIDebugMetricsGladiatorsRulesets;
  v2 = [(VUIDebugMetricsGladiatorsRulesets *)&v19 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E695DFF8]);
    v4 = [@"https://ae-validator-service.amp.apple.com" stringByAppendingString:@"/v1/cache/manifest/"];
    v5 = [v4 stringByAppendingString:@"com.apple.amp.ae.validator.manifest.Video.AllRulesets"];
    v6 = [v3 initWithString:v5];

    v7 = objc_alloc_init(MEMORY[0x1E696AD68]);
    [v7 setHTTPMethod:@"GET"];
    [v7 addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [v7 setURL:v6];
    v8 = MEMORY[0x1E696AF78];
    defaultSessionConfiguration = [MEMORY[0x1E696AF80] defaultSessionConfiguration];
    v10 = [v8 sessionWithConfiguration:defaultSessionConfiguration];

    objc_initWeak(&location, v2);
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __41__VUIDebugMetricsGladiatorsRulesets_init__block_invoke;
    v16 = &unk_1E872E320;
    objc_copyWeak(&v17, &location);
    v11 = [v10 dataTaskWithRequest:v7 completionHandler:&v13];
    [v11 resume];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __41__VUIDebugMetricsGladiatorsRulesets_init__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v7)
  {
    v9 = [v7 userInfo];
    v10 = [v9 description];
    NSLog(&cfstr_ErrorInGladiat_0.isa, v10);
  }

  else
  {
    v28 = 0;
    v11 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v6 options:0 error:&v28];
    v12 = v28;
    v13 = v12;
    if (v12)
    {
      NSLog(&cfstr_ErrorParsingGl.isa, v12);
    }

    else
    {
      v23 = v11;
      v14 = [v11 valueForKey:@"rulesets"];
      v15 = [MEMORY[0x1E695DF70] array];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v16 = v14;
      v17 = [v16 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v25;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v25 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = [*(*(&v24 + 1) + 8 * i) valueForKey:@"name"];
            [v15 addObject:v21];
          }

          v18 = [v16 countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v18);
      }

      v22 = [v15 copy];
      [WeakRetained setRulesets:v22];

      v13 = 0;
      v11 = v23;
    }
  }
}

@end
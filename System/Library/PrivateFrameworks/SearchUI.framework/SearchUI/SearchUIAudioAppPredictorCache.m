@interface SearchUIAudioAppPredictorCache
- (SearchUIAudioAppPredictorCache)init;
- (void)computeObjectForKey:(id)a3 completionHandler:(id)a4;
@end

@implementation SearchUIAudioAppPredictorCache

- (SearchUIAudioAppPredictorCache)init
{
  v5.receiver = self;
  v5.super_class = SearchUIAudioAppPredictorCache;
  v2 = [(TLKAsyncCache *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v3 addObserver:v2 selector:sel_clear name:@"com.apple.LaunchServices.applicationRegistered" object:0];
    [v3 addObserver:v2 selector:sel_clear name:@"com.apple.LaunchServices.applicationUnregistered" object:0];
  }

  return v2;
}

- (void)computeObjectForKey:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v8 = getSAAudioAppPredictorClass_softClass;
    v25 = getSAAudioAppPredictorClass_softClass;
    if (!getSAAudioAppPredictorClass_softClass)
    {
      v17 = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __getSAAudioAppPredictorClass_block_invoke;
      v20 = &unk_1E85B2928;
      v21 = &v22;
      __getSAAudioAppPredictorClass_block_invoke(&v17);
      v8 = v23[3];
    }

    v9 = v8;
    _Block_object_dispose(&v22, 8);
    v10 = [[v8 alloc] initWithCaller:6];
    v11 = [SearchUIMediaUtilities mediaSearchForMetadata:v5];
    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v12 = getSAAudioAppPredictorOptionsClass_softClass;
    v25 = getSAAudioAppPredictorOptionsClass_softClass;
    if (!getSAAudioAppPredictorOptionsClass_softClass)
    {
      v17 = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __getSAAudioAppPredictorOptionsClass_block_invoke;
      v20 = &unk_1E85B2928;
      v21 = &v22;
      __getSAAudioAppPredictorOptionsClass_block_invoke(&v17);
      v12 = v23[3];
    }

    v13 = v12;
    _Block_object_dispose(&v22, 8);
    v14 = objc_opt_new();
    [v14 setTrimDisambiguationForRelevance:1];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __72__SearchUIAudioAppPredictorCache_computeObjectForKey_completionHandler___block_invoke;
    v15[3] = &unk_1E85B4538;
    v16 = v7;
    [v10 predictWithSearch:v11 options:v14 completion:v15];
  }

  else
  {
    (*(v6 + 2))(v6, 0);
  }
}

@end
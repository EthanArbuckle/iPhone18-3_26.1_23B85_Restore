@interface SearchUIAppClipButtonItemGenerator
+ (id)sharedCache;
- (TLKAsyncCache)cacheToPrewarm;
- (void)generateSearchUIButtonItemsWithSFButtonItem:(id)a3 completion:(id)a4;
@end

@implementation SearchUIAppClipButtonItemGenerator

- (void)generateSearchUIButtonItemsWithSFButtonItem:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 command];
  v8 = [objc_opt_class() sharedCache];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __93__SearchUIAppClipButtonItemGenerator_generateSearchUIButtonItemsWithSFButtonItem_completion___block_invoke;
  v11[3] = &unk_1E85B2EC0;
  v12 = v5;
  v13 = v6;
  v9 = v6;
  v10 = v5;
  [v8 getObjectForKey:v7 completionHandler:v11];
}

void __93__SearchUIAppClipButtonItemGenerator_generateSearchUIButtonItemsWithSFButtonItem_completion___block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if ([a2 BOOLValue])
  {
    v3 = [[SearchUIButtonItem alloc] initWithSFButtonItem:*(a1 + 32)];
    v4 = *(a1 + 40);
    v7[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    (*(v4 + 16))(v4, v5, 1);
  }

  else
  {
    v6 = *(*(a1 + 40) + 16);

    v6();
  }
}

+ (id)sharedCache
{
  if (sharedCache_onceToken != -1)
  {
    +[SearchUIAppClipButtonItemGenerator sharedCache];
  }

  v3 = sharedCache_cache;

  return v3;
}

uint64_t __49__SearchUIAppClipButtonItemGenerator_sharedCache__block_invoke()
{
  sharedCache_cache = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (TLKAsyncCache)cacheToPrewarm
{
  v2 = objc_opt_class();

  return [v2 sharedCache];
}

@end
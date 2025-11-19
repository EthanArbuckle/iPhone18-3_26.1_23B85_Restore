@interface SearchUIAsyncSectionLoaderCache
- (void)computeObjectForKey:(id)a3 completionHandler:(id)a4;
@end

@implementation SearchUIAsyncSectionLoaderCache

- (void)computeObjectForKey:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = [a3 computeBlock];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__SearchUIAsyncSectionLoaderCache_computeObjectForKey_completionHandler___block_invoke;
  v9[3] = &unk_1E85B4298;
  v10 = v5;
  v7 = v6[2];
  v8 = v5;
  v7(v6, v9);
}

@end
@interface SearchUIAsyncSectionLoaderCache
- (void)computeObjectForKey:(id)key completionHandler:(id)handler;
@end

@implementation SearchUIAsyncSectionLoaderCache

- (void)computeObjectForKey:(id)key completionHandler:(id)handler
{
  handlerCopy = handler;
  computeBlock = [key computeBlock];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__SearchUIAsyncSectionLoaderCache_computeObjectForKey_completionHandler___block_invoke;
  v9[3] = &unk_1E85B4298;
  v10 = handlerCopy;
  v7 = computeBlock[2];
  v8 = handlerCopy;
  v7(computeBlock, v9);
}

@end
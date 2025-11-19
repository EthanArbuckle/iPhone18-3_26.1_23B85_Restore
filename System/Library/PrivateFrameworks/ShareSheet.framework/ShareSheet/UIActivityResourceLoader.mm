@interface UIActivityResourceLoader
@end

@implementation UIActivityResourceLoader

void __49___UIActivityResourceLoader_loadResourceIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _loadResourceWithBlock:*(a1 + 32)];
}

void __50___UIActivityResourceLoader_getResourceWithBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _getResourceWithBlock:*(a1 + 32)];
}

@end
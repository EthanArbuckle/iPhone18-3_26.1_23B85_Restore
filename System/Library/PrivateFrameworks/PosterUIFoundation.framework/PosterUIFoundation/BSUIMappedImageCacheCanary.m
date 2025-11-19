@interface BSUIMappedImageCacheCanary
@end

@implementation BSUIMappedImageCacheCanary

void __38___BSUIMappedImageCacheCanary_dealloc__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained returnImageCacheForKey:*(a1 + 32)];
}

@end
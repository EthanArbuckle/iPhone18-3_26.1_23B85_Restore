@interface MobileAssetGetWorkQueue
@end

@implementation MobileAssetGetWorkQueue

void ___MobileAssetGetWorkQueue_block_invoke(id a1)
{
  _MobileAssetGetWorkQueue_workQueue = dispatch_queue_create("com.apple.MobileAsset.workQueue", 0);

  _objc_release_x1();
}

@end
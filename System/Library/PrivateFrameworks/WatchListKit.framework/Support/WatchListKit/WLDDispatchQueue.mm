@interface WLDDispatchQueue
@end

@implementation WLDDispatchQueue

void __WLDDispatchQueue_block_invoke(id a1)
{
  WLDDispatchQueue___queue = dispatch_queue_create("com.apple.watchlistd.defaultworkqueue", 0);

  _objc_release_x1();
}

@end
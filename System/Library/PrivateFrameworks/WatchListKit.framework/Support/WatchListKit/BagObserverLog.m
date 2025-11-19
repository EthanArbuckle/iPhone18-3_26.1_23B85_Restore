@interface BagObserverLog
@end

@implementation BagObserverLog

void ___BagObserverLog_block_invoke(id a1)
{
  _BagObserverLog_log = os_log_create("com.apple.watchlistd", "BagObserver");

  _objc_release_x1();
}

@end
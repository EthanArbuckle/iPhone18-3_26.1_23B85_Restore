@interface ContactFetchQueue
@end

@implementation ContactFetchQueue

void ___ContactFetchQueue_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_UTILITY, 0);

  v1 = dispatch_queue_create("com.apple.PXPhotoKitPersonSuggestion.contactFetchQueue", attr);
  v2 = _ContactFetchQueue_contactFetchQueue;
  _ContactFetchQueue_contactFetchQueue = v1;
}

@end
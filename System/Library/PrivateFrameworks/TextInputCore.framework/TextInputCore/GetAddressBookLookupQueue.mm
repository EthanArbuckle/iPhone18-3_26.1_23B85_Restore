@interface GetAddressBookLookupQueue
@end

@implementation GetAddressBookLookupQueue

void ____GetAddressBookLookupQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v0 = dispatch_queue_create("com.apple.TextInput.address-book-lookup", v2);
  v1 = __GetAddressBookLookupQueue___queueSingleton;
  __GetAddressBookLookupQueue___queueSingleton = v0;
}

@end
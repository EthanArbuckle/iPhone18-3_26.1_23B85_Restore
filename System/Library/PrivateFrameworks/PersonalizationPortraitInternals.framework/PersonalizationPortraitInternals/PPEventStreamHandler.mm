@interface PPEventStreamHandler
+ (void)prepareToHandleNotificationWithName:(id)name;
@end

@implementation PPEventStreamHandler

+ (void)prepareToHandleNotificationWithName:(id)name
{
  if ([name isEqualToString:@"ABAddressBookMeCardChangeDistributedNotification"])
  {
    v3 = pp_default_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_23224A000, v3, OS_LOG_TYPE_DEFAULT, "instantiating contact store to deal with Me card change", v5, 2u);
    }

    v4 = +[PPLocalContactStore defaultStore];
  }
}

@end
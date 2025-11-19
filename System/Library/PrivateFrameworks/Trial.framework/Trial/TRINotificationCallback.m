@interface TRINotificationCallback
- (TRINotificationCallback)init;
@end

@implementation TRINotificationCallback

- (TRINotificationCallback)init
{
  v3.receiver = self;
  v3.super_class = TRINotificationCallback;
  result = [(TRINotificationCallback *)&v3 init];
  if (result)
  {
    result->_id = atomic_fetch_add(init_objCount, 1u);
  }

  return result;
}

@end
@interface WebNotificationPrivate
- (id).cxx_construct;
@end

@implementation WebNotificationPrivate

- (id).cxx_construct
{
  *(self + 16) = 0;
  *(self + 272) = 0;
  return self;
}

@end
@interface VALog
- (VALog)init;
@end

@implementation VALog

- (VALog)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(VALog *)&v3 init];
}

@end
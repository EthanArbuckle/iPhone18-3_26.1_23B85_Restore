@interface CSDProviderDisplayMonitor
- (BOOL)isVisible;
@end

@implementation CSDProviderDisplayMonitor

- (BOOL)isVisible
{
  selfCopy = self;
  v3 = sub_1002C820C();

  return v3 & 1;
}

@end
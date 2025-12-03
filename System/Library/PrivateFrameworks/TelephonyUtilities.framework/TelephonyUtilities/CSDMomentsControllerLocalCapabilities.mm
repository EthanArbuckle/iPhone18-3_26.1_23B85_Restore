@interface CSDMomentsControllerLocalCapabilities
- (BOOL)isEnabled;
- (BOOL)isRegionBlocked;
@end

@implementation CSDMomentsControllerLocalCapabilities

- (BOOL)isEnabled
{
  selfCopy = self;
  v3 = sub_1003815F4();

  return v3 & 1;
}

- (BOOL)isRegionBlocked
{
  selfCopy = self;
  v3 = sub_100381654();

  return v3 & 1;
}

@end
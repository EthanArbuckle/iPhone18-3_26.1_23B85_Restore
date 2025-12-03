@interface FTMomentsControllerLocalCapabilities
- (BOOL)isEnabled;
- (BOOL)isRegionBlocked;
@end

@implementation FTMomentsControllerLocalCapabilities

- (BOOL)isEnabled
{
  selfCopy = self;
  v3 = sub_100037784();

  return v3 & 1;
}

- (BOOL)isRegionBlocked
{
  selfCopy = self;
  v3 = sub_1000377E4();

  return v3 & 1;
}

@end
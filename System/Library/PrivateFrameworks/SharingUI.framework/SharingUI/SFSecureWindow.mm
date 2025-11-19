@interface SFSecureWindow
+ (BOOL)_isSecure;
@end

@implementation SFSecureWindow

+ (BOOL)_isSecure
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  static SFSecureWindow._isSecure()();
  return sub_1B9ED848C() & 1;
}

@end
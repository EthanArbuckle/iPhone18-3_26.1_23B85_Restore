@interface VUIPlayerHapticManagerObjC
+ (void)setPlayer:(id)a3;
@end

@implementation VUIPlayerHapticManagerObjC

+ (void)setPlayer:(id)a3
{
  v4 = a3;
  static PlayerHapticManagerObjC.setPlayer(_:)(a3);
}

@end
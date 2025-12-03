@interface VUIPlayerHapticManagerObjC
+ (void)setPlayer:(id)player;
@end

@implementation VUIPlayerHapticManagerObjC

+ (void)setPlayer:(id)player
{
  playerCopy = player;
  static PlayerHapticManagerObjC.setPlayer(_:)(player);
}

@end
@interface PXVisionKitUtilities
+ (void)ensureVisionKitResourcesArePurgedWhenAppIsHidden;
- (PXVisionKitUtilities)init;
@end

@implementation PXVisionKitUtilities

+ (void)ensureVisionKitResourcesArePurgedWhenAppIsHidden
{
  if ((byte_1EB189BB0 & 1) == 0)
  {
    byte_1EB189BB0 = 1;
    sharedState = [objc_opt_self() sharedState];
    PXApplicationState.registerVisibilityChangeHandler(identifier:handler:)(0xD000000000000021, 0x80000001A53F6A20, sub_1A49E13E0, 0);
  }
}

- (PXVisionKitUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for VisionKitUtilities();
  return [(PXVisionKitUtilities *)&v3 init];
}

@end
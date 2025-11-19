@interface PVHeliumEffect
+ (void)registerEffects;
@end

@implementation PVHeliumEffect

+ (void)registerEffects
{
  [PVMultiBlendEffect registerEffectWithID:@"3048982C-6092-44A8-9A09-80C6C992FCAA" displayName:@"MultiBlend"];
  [PVOrientationEffect registerEffectWithID:@"Orientation" displayName:@"Orientation"];
  [PVExposureAdjust registerEffectWithID:@"8F739200-ED08-45FA-9873-F2CE8677C6A3" displayName:@"ExposureAdjust"];
  [PVBlurEffect registerEffectWithID:@"Helium:2B1A5740-7A1B-4AF3-9B95-2E81B81791C3" displayName:@"Blur"];
  [PVClearAlphaEffect registerEffectWithID:@"Helium:546F6E1C-A3D6-4E0E-BEA5-9E8E6DBD251D" displayName:@"ClearAlpha"];
  [PVSaturationZebraEffect registerEffectWithID:@"Helium:A8264B76-DCDF-41FA-8D8E-90971D43549B" displayName:@"SaturationZebra"];

  [PVCinematicEffect registerEffectWithID:@"Helium:BD4D38AC-EF67-434A-832D-D1C5BE323955" displayName:@"Cinematic"];
}

@end
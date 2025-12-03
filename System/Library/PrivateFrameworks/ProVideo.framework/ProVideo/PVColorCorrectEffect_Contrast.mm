@interface PVColorCorrectEffect_Contrast
+ (void)registerEffectWithID:(id)d displayName:(id)name;
- (PVColorCorrectEffect_Contrast)initWithEffectID:(id)d;
@end

@implementation PVColorCorrectEffect_Contrast

+ (void)registerEffectWithID:(id)d displayName:(id)name
{
  dCopy = d;
  nameCopy = name;
  v6 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{nameCopy, @"FFEffectProperty_DisplayName", @"Helium", @"FFEffectProperty_Category", @"effect.video.filter", @"FFEffectProperty_EffectType", 0}];
  [PVEffect registerEffectClass:objc_opt_class() forEffectID:dCopy withProperties:v6];
}

- (PVColorCorrectEffect_Contrast)initWithEffectID:(id)d
{
  v4.receiver = self;
  v4.super_class = PVColorCorrectEffect_Contrast;
  result = [(PVEffect *)&v4 initWithEffectID:d];
  if (result)
  {
    result->super._look = 1;
  }

  return result;
}

@end
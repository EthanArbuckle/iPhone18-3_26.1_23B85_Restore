@interface PVColorCorrectEffect_Cool
+ (void)registerEffectWithID:(id)d displayName:(id)name;
- (PVColorCorrectEffect_Cool)initWithEffectID:(id)d;
@end

@implementation PVColorCorrectEffect_Cool

+ (void)registerEffectWithID:(id)d displayName:(id)name
{
  dCopy = d;
  nameCopy = name;
  v6 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{nameCopy, @"FFEffectProperty_DisplayName", @"Helium", @"FFEffectProperty_Category", @"effect.video.filter", @"FFEffectProperty_EffectType", 0}];
  [PVEffect registerEffectClass:objc_opt_class() forEffectID:dCopy withProperties:v6];
}

- (PVColorCorrectEffect_Cool)initWithEffectID:(id)d
{
  v4.receiver = self;
  v4.super_class = PVColorCorrectEffect_Cool;
  result = [(PVEffect *)&v4 initWithEffectID:d];
  if (result)
  {
    result->super._look = 4;
  }

  return result;
}

@end
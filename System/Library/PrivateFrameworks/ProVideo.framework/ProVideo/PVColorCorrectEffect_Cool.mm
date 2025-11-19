@interface PVColorCorrectEffect_Cool
+ (void)registerEffectWithID:(id)a3 displayName:(id)a4;
- (PVColorCorrectEffect_Cool)initWithEffectID:(id)a3;
@end

@implementation PVColorCorrectEffect_Cool

+ (void)registerEffectWithID:(id)a3 displayName:(id)a4
{
  v7 = a3;
  v5 = a4;
  v6 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{v5, @"FFEffectProperty_DisplayName", @"Helium", @"FFEffectProperty_Category", @"effect.video.filter", @"FFEffectProperty_EffectType", 0}];
  [PVEffect registerEffectClass:objc_opt_class() forEffectID:v7 withProperties:v6];
}

- (PVColorCorrectEffect_Cool)initWithEffectID:(id)a3
{
  v4.receiver = self;
  v4.super_class = PVColorCorrectEffect_Cool;
  result = [(PVEffect *)&v4 initWithEffectID:a3];
  if (result)
  {
    result->super._look = 4;
  }

  return result;
}

@end
@interface PVColorCorrectEffect
+ (void)registerEffects;
- (HGRef<HGNode>)hgNodeForTime:(id *)time inputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context;
@end

@implementation PVColorCorrectEffect

+ (void)registerEffects
{
  [PVColorCorrectEffect_BnW registerEffectWithID:@"Helium:CBA2376C-F0E0-4D55-8C97-0A3ECF72CE63" displayName:@"Black and White"];
  [PVColorCorrectEffect_Contrast registerEffectWithID:@"Helium:D47A107B-85CF-4DC8-B580-060F272D611F" displayName:@"Contrast"];
  [PVColorCorrectEffect_Bright registerEffectWithID:@"Helium:0B37D582-6CFF-48BA-B57A-85FE45E14AAE" displayName:@"Brighten"];
  [PVColorCorrectEffect_Warm registerEffectWithID:@"Helium:73A91088-DD32-4B19-B7AE-A27F070A926D" displayName:@"Warmth"];

  [PVColorCorrectEffect_Cool registerEffectWithID:@"Helium:9215A4CB-FB6F-47F8-944B-1785F0551131" displayName:@"Cool"];
}

- (HGRef<HGNode>)hgNodeForTime:(id *)time inputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context
{
  v9 = v6;
  look = self->_look;
  if (look > 4)
  {
    v11 = 1.0;
    v14 = 6504.0;
    v12 = 1.0;
    v13 = 1.0;
  }

  else
  {
    v11 = flt_260343160[look];
    v12 = flt_260343174[look];
    v13 = flt_260343188[look];
    v14 = flt_26034319C[look];
  }

  [(NSLock *)self->super.super._inspectablePropertiesLock lock:time];
  inspectableProperties = self->super.super._inspectableProperties;
  if (inspectableProperties)
  {
    v16 = [(NSMutableDictionary *)inspectableProperties objectForKeyedSubscript:@"xParam"];

    v17 = 0.0;
    v18 = 0.0;
    if (v16)
    {
      v19 = [(NSMutableDictionary *)self->super.super._inspectableProperties objectForKeyedSubscript:@"xParam"];
      [v19 floatValue];
      v18 = v20 / 100.0;
    }

    v21 = [(NSMutableDictionary *)self->super.super._inspectableProperties objectForKeyedSubscript:@"yParam"];

    if (v21)
    {
      v22 = [(NSMutableDictionary *)self->super.super._inspectableProperties objectForKeyedSubscript:@"yParam"];
      [v22 floatValue];
      v17 = v23 / 100.0;
    }

    v12 = v12 + v18;
    v13 = v13 + v17;
  }

  [(NSLock *)self->super.super._inspectablePropertiesLock unlock];
  PVInputHGNodeMap<unsigned int>::GetNode(inputs, 0, &v26);
  v24 = HGObject::operator new(0x1A0uLL);
  HGColorCorrect::HGColorCorrect(v24);
  (*(*v24 + 120))(v24, 0, v26);
  (*(*v24 + 96))(v24, HGColorCorrect::kParam_wgt, 0.2126, 0.7152, 0.0722, 0.0);
  (*(*v24 + 96))(v24, HGColorCorrect::kParam_hue_saturation_temp, 0.0, v11, v14, 0.0);
  (*(*v24 + 96))(v24, HGColorCorrect::kParam_brightness, v12, v12, v12, 1.0);
  (*(*v24 + 96))(v24, HGColorCorrect::kParam_contrast, v13, v13, v13, 1.0);
  *v9 = v24;
  v25 = v26;
  if (v26)
  {
    return (*(*v26 + 24))(v26);
  }

  return v25;
}

@end
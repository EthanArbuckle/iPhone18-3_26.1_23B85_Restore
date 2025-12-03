@interface PAEKeyerMatteTools
- (BOOL)addAdvancedParametersWithParamAPI:(id)i hideSimpleViewParam:(unsigned int)param;
- (BOOL)addLevelsParametersWithParamAPI:(id)i hideSimpleViewParam:(unsigned int)param;
- (BOOL)addParametersWithParamAPI:(id)i hideSimpleViewParam:(unsigned int)param isLumaKey:(BOOL)key;
- (BOOL)doMatteManipulationWithInfo:(id *)info pixelAspectRatio:(float)ratio fieldHeight:(float)height doInvertMatte:(BOOL)matte inputIsInverted:(BOOL)inverted fillHoles:(BOOL)holes scaling:(BOOL)scaling blendingGamma:(float)self0 blackLevel:(double)self1 whiteLevel:(double)self2 gammaLevel:(double)self3 preKeyedInputNode:(void *)self4 outputNode:(void *)self5;
- (BOOL)doMatteManipulationWithParamAPI:(id)i withPrivateParamAPI:(id)pI withInfo:(id *)info pixelAspectRatio:(float)ratio fieldHeight:(float)height doInvertMatte:(BOOL)matte inputIsInverted:(BOOL)inverted fillHoles:(BOOL)self0 scaling:(BOOL)self1 blendingGamma:(float)self2 preKeyedInputNode:(void *)self3 outputNode:(void *)self4;
- (PAEKeyerMatteTools)init;
@end

@implementation PAEKeyerMatteTools

- (PAEKeyerMatteTools)init
{
  v3.receiver = self;
  v3.super_class = PAEKeyerMatteTools;
  return [(PAEKeyerMatteTools *)&v3 init];
}

- (BOOL)addParametersWithParamAPI:(id)i hideSimpleViewParam:(unsigned int)param isLumaKey:(BOOL)key
{
  if (i)
  {
    v5 = *&param;
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [i addFloatSliderWithName:objc_msgSend(v7 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::MatteFillHoles" parameterMin:@"Fill Holes" parameterMax:0) sliderMin:48 sliderMax:v5 delta:0.0 parmFlags:{0.0, 10.0, 0.0, 10.0, 0.1}];
    [i addFloatSliderWithName:objc_msgSend(v7 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::MatteFillHolesDistance" parameterMin:@"Edge Distance" parameterMax:0) sliderMin:54 sliderMax:v5 delta:3.0 parmFlags:{0.0, 100.0, 0.0, 25.0, 0.1}];
  }

  return 1;
}

- (BOOL)addLevelsParametersWithParamAPI:(id)i hideSimpleViewParam:(unsigned int)param
{
  if (i)
  {
    [i addLevelsWithName:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] parmId:"bundleForClass:" hideGamma:objc_opt_class()) parmFlags:{"localizedStringForKey:value:table:", @"Keyer::MatteLevels", @"Levels", 0), 49, 0, param | 0x20}];
  }

  return 1;
}

- (BOOL)addAdvancedParametersWithParamAPI:(id)i hideSimpleViewParam:(unsigned int)param
{
  if (i)
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [i addFloatSliderWithName:objc_msgSend(v6 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::kMatteExpand" parameterMin:@"Shrink/Expand" parameterMax:0) sliderMin:53 sliderMax:param | 0x20 delta:0.0 parmFlags:{-100.0, 100.0, -10.0, 10.0, 0.1}];
    [i addFloatSliderWithName:objc_msgSend(v6 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::MatteSoften" parameterMin:@"Soften" parameterMax:0) sliderMin:51 sliderMax:param | 0x20 delta:0.0 parmFlags:{0.0, 10.0, 0.0, 10.0, 0.1}];
    [i addFloatSliderWithName:objc_msgSend(v6 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::Erode" parameterMin:@"Erode" parameterMax:0) sliderMin:52 sliderMax:param | 0x20 delta:0.0 parmFlags:{0.0, 10.0, 0.0, 10.0, 0.1}];
  }

  return 1;
}

- (BOOL)doMatteManipulationWithParamAPI:(id)i withPrivateParamAPI:(id)pI withInfo:(id *)info pixelAspectRatio:(float)ratio fieldHeight:(float)height doInvertMatte:(BOOL)matte inputIsInverted:(BOOL)inverted fillHoles:(BOOL)self0 scaling:(BOOL)self1 blendingGamma:(float)self2 preKeyedInputNode:(void *)self3 outputNode:(void *)self4
{
  holesCopy = holes;
  matteCopy = matte;
  if (inverted)
  {
    v22 = HGObject::operator new(0x1A0uLL);
    HgcInvertAlpha::HgcInvertAlpha(v22);
    (*(*v22 + 120))(v22, 0, *outputNode);
    v23 = *outputNode;
    if (*outputNode != v22)
    {
      if (v23)
      {
        (*(*v23 + 24))(v23);
      }

      *outputNode = v22;
      (*(*v22 + 16))(v22);
    }

    (*(*v22 + 24))(v22);
  }

  v54 = 0.0;
  v55 = 0.0;
  v53 = 0.0;
  [pI getLevelsBlack:&v55 White:&v54 Gamma:&v53 fromParm:49 atTime:info->var0.var1];
  v24 = v53;
  if (v55 != 0.0 || v54 != 1.0 || v53 != 1.0)
  {
    if (v53 < 0.001)
    {
      v24 = 0.001;
    }

    v53 = 1.0 / v24;
    v27 = HGObject::operator new(0x1A0uLL);
    HLevels::HLevels(v27);
  }

  if (holesCopy)
  {
    v52 = 0.0;
    [i getFloatValue:&v52 fromParm:48 atFxTime:info->var0.var1];
    v24 = v52;
    if (v52 != 0.0)
    {
      v28 = HGObject::operator new(0x1B0uLL);
      HGrowShrinkMatte::HGrowShrinkMatte(v28);
      v29 = v52;
      v28[102] = v29;
      (*(*v28 + 120))(v28, 0, *outputNode);
      v51 = 0.0;
      [i getFloatValue:&v51 fromParm:54 atFxTime:info->var0.var1];
      v30 = HGObject::operator new(0x1B0uLL);
      HGrowShrinkMatte::HGrowShrinkMatte(v30);
      v31 = -v52 - v51;
      v30[102] = v31;
      (*(*v30 + 120))(v30, 0, v28);
      v32 = HGObject::operator new(0x220uLL);
      HGHWBlendFlipped::HGHWBlendFlipped(v32);
      (*(*v32 + 96))(v32, 0, 39.0, 0.0, 0.0, 0.0);
      (*(*v32 + 96))(v32, 5, gamma, 0.0, 0.0, 0.0);
      (*(*v32 + 120))(v32, 0, *outputNode);
      (*(*v32 + 120))(v32, 1, v30);
      v33 = *outputNode;
      if (*outputNode != v32)
      {
        if (v33)
        {
          (*(*v33 + 24))(v33);
        }

        *outputNode = v32;
        (*(*v32 + 16))(v32);
      }

      (*(*v32 + 24))(v32);
      (*(*v30 + 24))(v30);
      (*(*v28 + 24))(v28);
    }
  }

  if (scaling)
  {
    v52 = 0.0;
    [i getFloatValue:&v52 fromParm:53 atFxTime:{info->var0.var1, v24}];
    v34 = v52;
    if (v52 != 0.0)
    {
      v35 = HGObject::operator new(0x1B0uLL);
      HGrowShrinkMatte::HGrowShrinkMatte(v35);
      v36 = v52;
      v35[102] = v36;
      (*(*v35 + 120))(v35, 0, *outputNode);
      v37 = *outputNode;
      if (*outputNode != v35)
      {
        if (v37)
        {
          (*(*v37 + 24))(v37);
        }

        *outputNode = v35;
        (*(*v35 + 16))(v35);
      }

      (*(*v35 + 24))(v35);
    }

    v51 = 0.0;
    [i getFloatValue:&v51 fromParm:51 atFxTime:{info->var0.var1, v34}];
    v38 = v51;
    if (v51 != 0.0)
    {
      v51 = v51 * 4.0;
      v39 = HGObject::operator new(0x1B0uLL);
      HGaussianBlur::HGaussianBlur(v39);
      v40 = v51;
      v41 = info->var3 / ratio;
      v42 = info->var4 / height;
      HGaussianBlur::init(v39, v40, v41, v42, 0, 0, 0);
      (*(*v39 + 120))(v39, 0, *outputNode);
      v43 = *outputNode;
      if (*outputNode != v39)
      {
        if (v43)
        {
          (*(*v43 + 24))(v43);
        }

        *outputNode = v39;
        (*(*v39 + 16))(v39);
      }

      (*(*v39 + 24))(v39);
    }

    v50 = 0.0;
    [i getFloatValue:&v50 fromParm:52 atFxTime:{info->var0.var1, v38}];
    if (v50 > 0.0)
    {
      v44 = HGObject::operator new(0x1B0uLL);
      HErode::HErode(v44);
      v45 = v50;
      v44[102] = v45;
      (*(*v44 + 120))(v44, 0, *outputNode);
      v46 = *outputNode;
      if (*outputNode != v44)
      {
        if (v46)
        {
          (*(*v46 + 24))(v46);
        }

        *outputNode = v44;
        (*(*v44 + 16))(v44);
      }

      (*(*v44 + 24))(v44);
    }
  }

  if (matteCopy)
  {
    v47 = HGObject::operator new(0x1A0uLL);
    HgcInvertAlpha::HgcInvertAlpha(v47);
    (*(*v47 + 120))(v47, 0, *outputNode);
    v48 = *outputNode;
    if (*outputNode != v47)
    {
      if (v48)
      {
        (*(*v48 + 24))(v48);
      }

      *outputNode = v47;
      (*(*v47 + 16))(v47);
    }

    (*(*v47 + 24))(v47);
  }

  return 1;
}

- (BOOL)doMatteManipulationWithInfo:(id *)info pixelAspectRatio:(float)ratio fieldHeight:(float)height doInvertMatte:(BOOL)matte inputIsInverted:(BOOL)inverted fillHoles:(BOOL)holes scaling:(BOOL)scaling blendingGamma:(float)self0 blackLevel:(double)self1 whiteLevel:(double)self2 gammaLevel:(double)self3 preKeyedInputNode:(void *)self4 outputNode:(void *)self5
{
  matteCopy = matte;
  if (inverted)
  {
    v19 = HGObject::operator new(0x1A0uLL);
    HgcInvertAlpha::HgcInvertAlpha(v19);
    (*(*v19 + 120))(v19, 0, *outputNode);
    v20 = *outputNode;
    if (*outputNode != v19)
    {
      if (v20)
      {
        (*(*v20 + 24))(v20);
      }

      *outputNode = v19;
      (*(*v19 + 16))(v19);
    }

    (*(*v19 + 24))(v19);
  }

  if (level != 0.0 || whiteLevel != 1.0 || gammaLevel != 1.0)
  {
    v23 = HGObject::operator new(0x1A0uLL);
    HLevels::HLevels(v23);
  }

  if (matteCopy)
  {
    v24 = HGObject::operator new(0x1A0uLL);
    HgcInvertAlpha::HgcInvertAlpha(v24);
    (*(*v24 + 120))(v24, 0, *outputNode);
    v25 = *outputNode;
    if (*outputNode != v24)
    {
      if (v25)
      {
        (*(*v25 + 24))(v25);
      }

      *outputNode = v24;
      (*(*v24 + 16))(v24);
    }

    (*(*v24 + 24))(v24);
  }

  return 1;
}

@end
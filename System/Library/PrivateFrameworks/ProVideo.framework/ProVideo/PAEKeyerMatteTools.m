@interface PAEKeyerMatteTools
- (BOOL)addAdvancedParametersWithParamAPI:(id)a3 hideSimpleViewParam:(unsigned int)a4;
- (BOOL)addLevelsParametersWithParamAPI:(id)a3 hideSimpleViewParam:(unsigned int)a4;
- (BOOL)addParametersWithParamAPI:(id)a3 hideSimpleViewParam:(unsigned int)a4 isLumaKey:(BOOL)a5;
- (BOOL)doMatteManipulationWithInfo:(id *)a3 pixelAspectRatio:(float)a4 fieldHeight:(float)a5 doInvertMatte:(BOOL)a6 inputIsInverted:(BOOL)a7 fillHoles:(BOOL)a8 scaling:(BOOL)a9 blendingGamma:(float)a10 blackLevel:(double)a11 whiteLevel:(double)a12 gammaLevel:(double)a13 preKeyedInputNode:(void *)a14 outputNode:(void *)a15;
- (BOOL)doMatteManipulationWithParamAPI:(id)a3 withPrivateParamAPI:(id)a4 withInfo:(id *)a5 pixelAspectRatio:(float)a6 fieldHeight:(float)a7 doInvertMatte:(BOOL)a8 inputIsInverted:(BOOL)a9 fillHoles:(BOOL)a10 scaling:(BOOL)a11 blendingGamma:(float)a12 preKeyedInputNode:(void *)a13 outputNode:(void *)a14;
- (PAEKeyerMatteTools)init;
@end

@implementation PAEKeyerMatteTools

- (PAEKeyerMatteTools)init
{
  v3.receiver = self;
  v3.super_class = PAEKeyerMatteTools;
  return [(PAEKeyerMatteTools *)&v3 init];
}

- (BOOL)addParametersWithParamAPI:(id)a3 hideSimpleViewParam:(unsigned int)a4 isLumaKey:(BOOL)a5
{
  if (a3)
  {
    v5 = *&a4;
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [a3 addFloatSliderWithName:objc_msgSend(v7 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::MatteFillHoles" parameterMin:@"Fill Holes" parameterMax:0) sliderMin:48 sliderMax:v5 delta:0.0 parmFlags:{0.0, 10.0, 0.0, 10.0, 0.1}];
    [a3 addFloatSliderWithName:objc_msgSend(v7 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::MatteFillHolesDistance" parameterMin:@"Edge Distance" parameterMax:0) sliderMin:54 sliderMax:v5 delta:3.0 parmFlags:{0.0, 100.0, 0.0, 25.0, 0.1}];
  }

  return 1;
}

- (BOOL)addLevelsParametersWithParamAPI:(id)a3 hideSimpleViewParam:(unsigned int)a4
{
  if (a3)
  {
    [a3 addLevelsWithName:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] parmId:"bundleForClass:" hideGamma:objc_opt_class()) parmFlags:{"localizedStringForKey:value:table:", @"Keyer::MatteLevels", @"Levels", 0), 49, 0, a4 | 0x20}];
  }

  return 1;
}

- (BOOL)addAdvancedParametersWithParamAPI:(id)a3 hideSimpleViewParam:(unsigned int)a4
{
  if (a3)
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [a3 addFloatSliderWithName:objc_msgSend(v6 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::kMatteExpand" parameterMin:@"Shrink/Expand" parameterMax:0) sliderMin:53 sliderMax:a4 | 0x20 delta:0.0 parmFlags:{-100.0, 100.0, -10.0, 10.0, 0.1}];
    [a3 addFloatSliderWithName:objc_msgSend(v6 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::MatteSoften" parameterMin:@"Soften" parameterMax:0) sliderMin:51 sliderMax:a4 | 0x20 delta:0.0 parmFlags:{0.0, 10.0, 0.0, 10.0, 0.1}];
    [a3 addFloatSliderWithName:objc_msgSend(v6 parmId:"localizedStringForKey:value:table:" defaultValue:@"Keyer::Erode" parameterMin:@"Erode" parameterMax:0) sliderMin:52 sliderMax:a4 | 0x20 delta:0.0 parmFlags:{0.0, 10.0, 0.0, 10.0, 0.1}];
  }

  return 1;
}

- (BOOL)doMatteManipulationWithParamAPI:(id)a3 withPrivateParamAPI:(id)a4 withInfo:(id *)a5 pixelAspectRatio:(float)a6 fieldHeight:(float)a7 doInvertMatte:(BOOL)a8 inputIsInverted:(BOOL)a9 fillHoles:(BOOL)a10 scaling:(BOOL)a11 blendingGamma:(float)a12 preKeyedInputNode:(void *)a13 outputNode:(void *)a14
{
  v15 = a10;
  v16 = a8;
  if (a9)
  {
    v22 = HGObject::operator new(0x1A0uLL);
    HgcInvertAlpha::HgcInvertAlpha(v22);
    (*(*v22 + 120))(v22, 0, *a14);
    v23 = *a14;
    if (*a14 != v22)
    {
      if (v23)
      {
        (*(*v23 + 24))(v23);
      }

      *a14 = v22;
      (*(*v22 + 16))(v22);
    }

    (*(*v22 + 24))(v22);
  }

  v54 = 0.0;
  v55 = 0.0;
  v53 = 0.0;
  [a4 getLevelsBlack:&v55 White:&v54 Gamma:&v53 fromParm:49 atTime:a5->var0.var1];
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

  if (v15)
  {
    v52 = 0.0;
    [a3 getFloatValue:&v52 fromParm:48 atFxTime:a5->var0.var1];
    v24 = v52;
    if (v52 != 0.0)
    {
      v28 = HGObject::operator new(0x1B0uLL);
      HGrowShrinkMatte::HGrowShrinkMatte(v28);
      v29 = v52;
      v28[102] = v29;
      (*(*v28 + 120))(v28, 0, *a14);
      v51 = 0.0;
      [a3 getFloatValue:&v51 fromParm:54 atFxTime:a5->var0.var1];
      v30 = HGObject::operator new(0x1B0uLL);
      HGrowShrinkMatte::HGrowShrinkMatte(v30);
      v31 = -v52 - v51;
      v30[102] = v31;
      (*(*v30 + 120))(v30, 0, v28);
      v32 = HGObject::operator new(0x220uLL);
      HGHWBlendFlipped::HGHWBlendFlipped(v32);
      (*(*v32 + 96))(v32, 0, 39.0, 0.0, 0.0, 0.0);
      (*(*v32 + 96))(v32, 5, a12, 0.0, 0.0, 0.0);
      (*(*v32 + 120))(v32, 0, *a14);
      (*(*v32 + 120))(v32, 1, v30);
      v33 = *a14;
      if (*a14 != v32)
      {
        if (v33)
        {
          (*(*v33 + 24))(v33);
        }

        *a14 = v32;
        (*(*v32 + 16))(v32);
      }

      (*(*v32 + 24))(v32);
      (*(*v30 + 24))(v30);
      (*(*v28 + 24))(v28);
    }
  }

  if (a11)
  {
    v52 = 0.0;
    [a3 getFloatValue:&v52 fromParm:53 atFxTime:{a5->var0.var1, v24}];
    v34 = v52;
    if (v52 != 0.0)
    {
      v35 = HGObject::operator new(0x1B0uLL);
      HGrowShrinkMatte::HGrowShrinkMatte(v35);
      v36 = v52;
      v35[102] = v36;
      (*(*v35 + 120))(v35, 0, *a14);
      v37 = *a14;
      if (*a14 != v35)
      {
        if (v37)
        {
          (*(*v37 + 24))(v37);
        }

        *a14 = v35;
        (*(*v35 + 16))(v35);
      }

      (*(*v35 + 24))(v35);
    }

    v51 = 0.0;
    [a3 getFloatValue:&v51 fromParm:51 atFxTime:{a5->var0.var1, v34}];
    v38 = v51;
    if (v51 != 0.0)
    {
      v51 = v51 * 4.0;
      v39 = HGObject::operator new(0x1B0uLL);
      HGaussianBlur::HGaussianBlur(v39);
      v40 = v51;
      v41 = a5->var3 / a6;
      v42 = a5->var4 / a7;
      HGaussianBlur::init(v39, v40, v41, v42, 0, 0, 0);
      (*(*v39 + 120))(v39, 0, *a14);
      v43 = *a14;
      if (*a14 != v39)
      {
        if (v43)
        {
          (*(*v43 + 24))(v43);
        }

        *a14 = v39;
        (*(*v39 + 16))(v39);
      }

      (*(*v39 + 24))(v39);
    }

    v50 = 0.0;
    [a3 getFloatValue:&v50 fromParm:52 atFxTime:{a5->var0.var1, v38}];
    if (v50 > 0.0)
    {
      v44 = HGObject::operator new(0x1B0uLL);
      HErode::HErode(v44);
      v45 = v50;
      v44[102] = v45;
      (*(*v44 + 120))(v44, 0, *a14);
      v46 = *a14;
      if (*a14 != v44)
      {
        if (v46)
        {
          (*(*v46 + 24))(v46);
        }

        *a14 = v44;
        (*(*v44 + 16))(v44);
      }

      (*(*v44 + 24))(v44);
    }
  }

  if (v16)
  {
    v47 = HGObject::operator new(0x1A0uLL);
    HgcInvertAlpha::HgcInvertAlpha(v47);
    (*(*v47 + 120))(v47, 0, *a14);
    v48 = *a14;
    if (*a14 != v47)
    {
      if (v48)
      {
        (*(*v48 + 24))(v48);
      }

      *a14 = v47;
      (*(*v47 + 16))(v47);
    }

    (*(*v47 + 24))(v47);
  }

  return 1;
}

- (BOOL)doMatteManipulationWithInfo:(id *)a3 pixelAspectRatio:(float)a4 fieldHeight:(float)a5 doInvertMatte:(BOOL)a6 inputIsInverted:(BOOL)a7 fillHoles:(BOOL)a8 scaling:(BOOL)a9 blendingGamma:(float)a10 blackLevel:(double)a11 whiteLevel:(double)a12 gammaLevel:(double)a13 preKeyedInputNode:(void *)a14 outputNode:(void *)a15
{
  v18 = a6;
  if (a7)
  {
    v19 = HGObject::operator new(0x1A0uLL);
    HgcInvertAlpha::HgcInvertAlpha(v19);
    (*(*v19 + 120))(v19, 0, *a15);
    v20 = *a15;
    if (*a15 != v19)
    {
      if (v20)
      {
        (*(*v20 + 24))(v20);
      }

      *a15 = v19;
      (*(*v19 + 16))(v19);
    }

    (*(*v19 + 24))(v19);
  }

  if (a11 != 0.0 || a12 != 1.0 || a13 != 1.0)
  {
    v23 = HGObject::operator new(0x1A0uLL);
    HLevels::HLevels(v23);
  }

  if (v18)
  {
    v24 = HGObject::operator new(0x1A0uLL);
    HgcInvertAlpha::HgcInvertAlpha(v24);
    (*(*v24 + 120))(v24, 0, *a15);
    v25 = *a15;
    if (*a15 != v24)
    {
      if (v25)
      {
        (*(*v25 + 24))(v25);
      }

      *a15 = v24;
      (*(*v24 + 16))(v24);
    }

    (*(*v24 + 24))(v24);
  }

  return 1;
}

@end
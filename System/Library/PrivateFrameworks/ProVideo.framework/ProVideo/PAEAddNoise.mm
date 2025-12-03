@interface PAEAddNoise
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (BOOL)parameterChanged:(unsigned int)changed;
- (HGRef<HGNode>)noiseNodeWithWidth:(int)width height:(int)height noiseType:(int)type isMono:(BOOL)mono frameNum:(double)num autoAnimate:(BOOL)animate randomSeed:(int)seed inputPixelTransform:(PCMatrix44Tmpl<double> *)self0 outputPixelTransform:(PCMatrix44Tmpl<double> *)self1 outputInvPixelTransform:(PCMatrix44Tmpl<double> *)self2 is360:(BOOL)self3;
- (HGRef<HGNode>)translateNode:(HGRef<HGNode>)node byAmount:(PCVector2<double>)amount andCropTo:(HGRect)to;
- (PAEAddNoise)initWithAPIManager:(id)manager;
- (id)dynamicPropertiesAtTime:(id)time withError:(id *)error;
- (id)properties;
@end

@implementation PAEAddNoise

- (PAEAddNoise)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEAddNoise;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (BOOL)addParameters
{
  v7.receiver = self;
  v7.super_class = PAEAddNoise;
  [(PAESharedDefaultBase *)&v7 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"AddNoise::Amount" parameterMin:0 parameterMax:0) sliderMin:1 sliderMax:0 delta:0.33 parmFlags:{0.0, 4.0, 0.0, 1.0, 0.1}];
    [v3 addPopupMenuWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"AddNoise::Type" menuEntries:0 parmFlags:{0), 2, 1, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:", objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::TVNoise", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::WhiteNoise", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::GaussianNoise", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::BlueNoise", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::PinkNoise", 0, 0), 0), 1}];
    [v3 addToggleButtonWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"AddNoise::Monochrome" parmFlags:{0, 0), 3, 0, 1}];
    [v3 addPopupMenuWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"AddNoise::BlendMode" menuEntries:0 parmFlags:{0), 4, 0, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:", objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::NormalMode", 0, 0), @"-", objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::SubtractMode", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::MultiplyMode", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::DarkenMode", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::ColorBurnMode", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::LinearBurnMode", 0, 0), @"-", objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::AddMode", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::LightenMode", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::ScreenMode", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::ColorDodgeMode", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::LinearDodgeMode", 0, 0), @"-", objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::OverlayMode", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::SoftLightMode", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::HardLightMode", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::VividLightMode", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::LinearLightMode", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::PinLightMode", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::HardMixMode", 0, 0), @"-", objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::DifferenceMode", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::ExclusionMode", 0, 0), 0), 1}];
    [v3 addToggleButtonWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"AddNoise::Autoanimate" parmFlags:{0, 0), 5, 1, 1}];
    LODWORD(v6) = 4;
    [v3 addIntSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"AddNoise::RandomSeed" parameterMin:0 parameterMax:0) sliderMin:6 sliderMax:25 delta:2294967296 parmFlags:{2000000000, 1, 0x1000003E8, v6}];
    [v3 addToggleButtonWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"AddNoise::RandomSeed" parmFlags:{0, 0), 7, 0, 2}];
  }

  return v3 != 0;
}

- (BOOL)parameterChanged:(unsigned int)changed
{
  if (changed != 5)
  {
    return 1;
  }

  v16 = v3;
  v17 = v4;
  v6 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v7 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E448];
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    return 0;
  }

  v10 = v7;
  v14 = *MEMORY[0x277CC0898];
  v15 = *(MEMORY[0x277CC0898] + 16);
  v13 = 0;
  if ([v6 getBoolValue:&v13 fromParm:5 atFxTime:&v14])
  {
    v12 = 0;
    [v6 getParameterFlags:&v12 fromParm:6];
    if (v13)
    {
      v11 = 4;
    }

    else
    {
      v11 = 0;
    }

    [v10 setParameterFlags:v12 & 0xFFFFFFFB | v11 toParm:6];
  }

  return 1;
}

- (HGRef<HGNode>)translateNode:(HGRef<HGNode>)node byAmount:(PCVector2<double>)amount andCropTo:(HGRect)to
{
  v7 = v5;
  v8 = *&to.var2;
  v9 = *&to.var0;
  v11 = v6;
  HGTransform::HGTransform(v15);
  HGTransform::LoadIdentity(v15);
  HGTransform::Translate(v15, *v9, v9[1], 0.0);
  v12 = HGObject::operator new(0x210uLL);
  HGXForm::HGXForm(v12);
  (*(*v12 + 120))(v12, 0, *node.var0);
  (*(*v12 + 576))(v12, v15);
  v13 = HGObject::operator new(0x1A0uLL);
  HGCrop::HGCrop(v13);
  (*(*v13 + 120))(v13, 0, v12);
  (*(*v13 + 96))(v13, 0, v8, SHIDWORD(v8), v7, SHIDWORD(v7));
  *v11 = v13;
  (*(*v12 + 24))(v12);
  HGTransform::~HGTransform(v15);
  return v14;
}

- (HGRef<HGNode>)noiseNodeWithWidth:(int)width height:(int)height noiseType:(int)type isMono:(BOOL)mono frameNum:(double)num autoAnimate:(BOOL)animate randomSeed:(int)seed inputPixelTransform:(PCMatrix44Tmpl<double> *)self0 outputPixelTransform:(PCMatrix44Tmpl<double> *)self1 outputInvPixelTransform:(PCMatrix44Tmpl<double> *)self2 is360:(BOOL)self3
{
  *v13 = 0;
  if (is360)
  {
    PAEGenerateNoise(1.0, num, (3 * height / 2), *&height, type, mono, animate, seed);
  }

  PAEGenerateNoise(1.0, num, *&width, *&height, type, mono, animate, seed);
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (v9)
  {
    v10 = v9;
    if ([input imageType] == 3)
    {
      v58 = 0.33;
      [v10 getFloatValue:&v58 fromParm:1 atFxTime:info->var0.var1];
      if (v58 == 0.0)
      {
        if (input)
        {
          [input heliumRef];
        }

        else
        {
          *&v52[0] = 0;
        }

        [output setHeliumRef:v52];
        if (*&v52[0])
        {
          (*(**&v52[0] + 24))(*&v52[0]);
        }
      }

      else
      {
        v11 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8, v58];
        if (v11)
        {
          v12 = [v11 versionAtCreation] == 0;
        }

        else
        {
          v12 = 0;
        }

        v57 = 1;
        [v10 getIntValue:&v57 fromParm:2 atFxTime:info->var0.var1];
        v56 = 0;
        [v10 getBoolValue:&v56 fromParm:3 atFxTime:info->var0.var1];
        v55 = 1;
        [v10 getBoolValue:&v55 fromParm:5 atFxTime:info->var0.var1];
        v54 = 25;
        [v10 getIntValue:&v54 fromParm:6 atFxTime:info->var0.var1];
        v53 = 0;
        [v10 getIntValue:&v53 fromParm:4 atFxTime:info->var0.var1];
        [(PAESharedDefaultBase *)self getInversePixelTransformForImage:input];
        [(PAESharedDefaultBase *)self getInversePixelTransformForImage:output];
        [(PAESharedDefaultBase *)self getPixelTransformForImage:output];
        [(PAESharedDefaultBase *)self frameFromFxTime:info->var0.var1 forPlugIn:self];
        v14 = v13;
        width = [input width];
        height = [input height];
        v34[5] = v52[5];
        v34[6] = v52[6];
        v34[7] = v52[7];
        v34[1] = v52[1];
        v34[2] = v52[2];
        v34[3] = v52[3];
        v34[4] = v52[4];
        v33[5] = v41;
        v33[6] = v42;
        v33[7] = v43;
        v34[0] = v52[0];
        v33[1] = v37;
        v33[2] = v38;
        v33[3] = v39;
        v33[4] = v40;
        v32[2] = v46;
        v32[3] = v47;
        v32[0] = v44;
        v32[1] = v45;
        v32[7] = v51;
        v33[0] = v36;
        v32[5] = v49;
        v32[6] = v50;
        v32[4] = v48;
        LOBYTE(v28) = 0;
        [(PAEAddNoise *)self noiseNodeWithWidth:width height:height noiseType:v57 isMono:v56 frameNum:v55 autoAnimate:v54 randomSeed:v14 inputPixelTransform:v34 outputPixelTransform:v33 outputInvPixelTransform:v32 is360:v28];
        if (input)
        {
          [input heliumRef];
        }

        else
        {
          v31 = 0;
        }

        [input width];
        [input height];
        v17 = HGObject::operator new(0x220uLL);
        HGHWBlendFlipped::HGHWBlendFlipped(v17);
        v30 = v17;
        [(PAESharedDefaultBase *)self getBlendingGamma];
        (*(*v17 + 96))(v17, 5);
        if (input)
        {
          [input heliumRef];
        }

        else
        {
          v29 = 0;
        }

        if (v53)
        {
          v18 = HGObject::operator new(0x1A0uLL);
          HgcAddNoise::HgcAddNoise(v18);
          if (v18)
          {
            (*(*v18 + 16))(v18);
          }

          (*(*v18 + 120))(v18, 0, v35);
          (*(*v18 + 120))(v18, 1, v31);
          if (v12)
          {
            v21 = v58;
            (*(*v18 + 96))(v18, 0, v21, v21, v21, 1.0);
            v22 = (*v18 + 96);
            v23.n128_u64[0] = 0;
            if (v53)
            {
              v23.n128_f32[0] = 1.0;
            }
          }

          else
          {
            (*(*v18 + 96))(v18, 0, 1.0, 1.0, 1.0, 1.0);
            v22 = (*v18 + 96);
            v23.n128_u64[0] = 0;
            if ((v53 - 2) < 5)
            {
              v23.n128_f32[0] = 1.0;
            }
          }

          (*v22)(v18, 1, v23, v23.n128_f32[0], v23.n128_f32[0], v23.n128_f32[0]);
          (*(*v30 + 96))(v30, 0, kBlendConversions[v53], 0.0, 0.0, 0.0);
          v24.n128_u32[1] = HIDWORD(v58);
          v24.n128_f32[0] = v58;
          if (v12)
          {
            v24.n128_f32[0] = 1.0;
          }

          (*(*v30 + 96))(v24, 0.0, 0.0, 0.0);
          v25 = v58;
          (*(*v30 + 96))(v30, 1, v25, 0.0, 0.0, 0.0);
          (*(*v30 + 96))(v30, 2, 0.0, 0.0, 0.0, 0.0);
          if (!info->var5)
          {
            v26 = HGObject::operator new(0x1C0uLL);
            HGColorClamp::HGColorClamp(v26);
          }

          (*(*v30 + 120))(v30, 0, v29);
          (*(*v30 + 120))(v30, 1, v18);
          (*(*v18 + 24))(v18);
          (*(*v18 + 24))(v18);
        }

        else
        {
          v19 = HGObject::operator new(0x1A0uLL);
          HgcAddNoiseNormal::HgcAddNoiseNormal(v19);
          if (v19)
          {
            (*(*v19 + 16))(v19);
          }

          (*(*v19 + 120))(v19, 0, v35);
          (*(*v19 + 120))(v19, 1, v31);
          v20 = v58;
          (*(*v19 + 96))(v19, 0, v20, v20, v20, 1.0);
          (*(*v30 + 96))(v30, 0, kBlendConversions[v53], 0.0, 0.0, 0.0);
          (*(*v30 + 96))(v30, 0, 41.0, 0.0, 0.0, 0.0);
          (*(*v30 + 96))(v30, 1, 1.0, 0.0, 0.0, 0.0);
          (*(*v30 + 120))(v30, 0, v19);
          (*(*v19 + 24))(v19);
          (*(*v19 + 24))(v19);
        }

        [(PAESharedDefaultBase *)self crop:&v30 fromImage:input toImage:output];
        [output setHeliumRef:&v30];
        if (v29)
        {
          (*(*v29 + 24))(v29);
        }

        if (v30)
        {
          (*(*v30 + 24))(v30);
        }

        if (v31)
        {
          (*(*v31 + 24))(v31);
        }

        if (v35)
        {
          (*(*v35 + 24))(v35);
        }
      }

      LOBYTE(v9) = 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software
{
  *software = 0;
  *hardware = 0;
  v6 = *&setup->var2;
  v8[0] = *&setup->var0.var0;
  v8[1] = v6;
  v8[2] = *&setup->var4;
  [(PAESharedDefaultBase *)self overrideFrameSetupForRenderMode:v8 hardware:hardware software:software];
  return 1;
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"PositionIndependent", v4, @"MayRemapTime", v5, @"SupportsLargeRenderScale", v6, @"SupportsHeliumRendering", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 1), @"AutoColorProcessingSupport", 0}];
}

- (id)dynamicPropertiesAtTime:(id)time withError:(id *)error
{
  v10 = 0.0;
  if ([-[PAEFilterDefaultBase getParamAPIWithError:](self getParamAPIWithError:{error), "getFloatValue:fromParm:atFxTime:", &v10, 1, time.var1}])
  {
    if (v10 == 0.0)
    {
      v6 = 6;
    }

    else
    {
      v6 = 1;
    }

    return [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", v6, v10), @"PixelTransformSupport", 0}];
  }

  else if (error)
  {
    v8 = objc_opt_class();
    v9 = [(PAEFilterDefaultBase *)self getParamErrorFor:NSStringFromClass(v8)];
    result = 0;
    *error = v9;
  }

  else
  {
    return 0;
  }

  return result;
}

@end
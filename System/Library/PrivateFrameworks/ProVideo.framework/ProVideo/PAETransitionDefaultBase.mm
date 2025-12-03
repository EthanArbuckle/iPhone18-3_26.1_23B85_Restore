@interface PAETransitionDefaultBase
- (BOOL)addEaseParametersWithDefault:(float)default andFlags:(unsigned int)flags;
- (BOOL)addHDRWhiteLevelParameter;
- (BOOL)addMotionBlurParameters;
- (BOOL)applyHDRWhiteLevelForRed:(double *)red green:(double *)green blue:(double *)blue inColorSpace:(CGColorSpace *)space;
- (BOOL)canThrowRenderOutput:(id)output withInputA:(id)a withInputB:(id)b withTimeFraction:(float)fraction withInfo:(id *)info;
- (BOOL)convertTimeFraction:(double)fraction toLocal:(double *)local andDerivative:(double *)derivative atTime:(id)time;
- (BOOL)disableHDRWhiteLevelParameter:(BOOL)parameter;
- (BOOL)finishInitialSetup:(id *)setup;
- (BOOL)frameSetup:(id *)setup inputInfoA:(id *)a inputInfoB:(id *)b timeFraction:(float)fraction hardware:(BOOL *)hardware software:(BOOL *)software;
- (BOOL)getEaseIn:(double *)in easeOut:(double *)out atTime:(id)time;
- (BOOL)getOutputWidth:(unint64_t *)width height:(unint64_t *)height withInputA:(id *)a withInputB:(id *)b withTimeFraction:(float)fraction withInfo:(id *)info;
- (BOOL)isEndGap;
- (BOOL)isFrontGap;
- (BOOL)renderOutput:(id)output withInputA:(id)a withInputB:(id)b withTimeFraction:(float)fraction withInfo:(id *)info;
- (BOOL)showHideHDRWhiteLevelParameterForColorModel:(id)model;
- (double)relativeShutterAtTime:(id)time;
@end

@implementation PAETransitionDefaultBase

- (BOOL)getOutputWidth:(unint64_t *)width height:(unint64_t *)height withInputA:(id *)a withInputB:(id *)b withTimeFraction:(float)fraction withInfo:(id *)info
{
  var0 = a->var0;
  if (a->var0 <= b->var0)
  {
    var0 = b->var0;
  }

  *width = var0;
  var1 = a->var1;
  if (var1 <= b->var1)
  {
    var1 = b->var1;
  }

  *height = var1;
  return 1;
}

- (BOOL)frameSetup:(id *)setup inputInfoA:(id *)a inputInfoB:(id *)b timeFraction:(float)fraction hardware:(BOOL *)hardware software:(BOOL *)software
{
  *hardware = 1;
  *software = 1;
  return 1;
}

- (BOOL)finishInitialSetup:(id *)setup
{
  if (setup)
  {
    *setup = 0;
  }

  return setup != 0;
}

- (BOOL)addEaseParametersWithDefault:(float)default andFlags:(unsigned int)flags
{
  v4 = *&flags;
  v7 = [(PROAPIAccessing *)self->super._apiManager apiForProtocol:&unk_28735B348];
  if (v7)
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{objc_msgSend(v8, "localizedStringForKey:value:table:", @"Transition::Ease In", 0, 0), objc_msgSend(v8, "localizedStringForKey:value:table:", @"Transition::Ease Out", 0, 0), objc_msgSend(v8, "localizedStringForKey:value:table:", @"Transition::Ease In Out", 0, 0), 0}];
    [v7 addPopupMenuWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Transition::Ease Type" menuEntries:0 parmFlags:{0), 50, 2, v9, v4 | 1}];

    [v7 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Transition::Ease Amount" parameterMin:0 parameterMax:0) sliderMin:51 sliderMax:v4 delta:default parmFlags:{0.0, 100.0, 0.0, 100.0, 1.0}];
    *(&self->super._hostIsVertigo + 1) = 1;
  }

  return v7 != 0;
}

- (BOOL)addMotionBlurParameters
{
  v3 = [(PROAPIAccessing *)self->super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addToggleButtonWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Transition::Motion Blur" parmFlags:{0, 0), 52, 1, 3}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Transition::Shutter Angle" parameterMin:0 parameterMax:0) sliderMin:53 sliderMax:2 delta:180.0 parmFlags:{0.0, 360.0, 0.0, 360.0, 1.0}];
    *(&self->super._hostIsVertigo + 2) = 1;
  }

  return v3 != 0;
}

- (BOOL)convertTimeFraction:(double)fraction toLocal:(double *)local andDerivative:(double *)derivative atTime:(id)time
{
  if (*(&self->super._hostIsVertigo + 1))
  {
    v12 = 0.0;
    v13 = 0.0;
    v10 = [(PAETransitionDefaultBase *)self getEaseIn:&v13 easeOut:&v12 atTime:time.var1];
    if (v10)
    {
      PCMath::easeInOut(local, fraction, v13, v12, 0.0, 1.0, derivative, v9);
    }
  }

  else
  {
    if (local)
    {
      *local = fraction;
    }

    if (derivative)
    {
      *derivative = 1.0;
    }

    LOBYTE(v10) = 1;
  }

  return v10;
}

- (BOOL)getEaseIn:(double *)in easeOut:(double *)out atTime:(id)time
{
  *out = 0.0;
  *in = 0.0;
  if (*(&self->super._hostIsVertigo + 1))
  {
    v18 = v5;
    v19 = v6;
    v10 = [(PROAPIAccessing *)self->super._apiManager apiForProtocol:&unk_28735E258];
    if (v10)
    {
      v11 = v10;
      v17 = 0;
      v16 = 0.0;
      v12 = [v10 getIntValue:&v17 fromParm:50 atFxTime:time.var1];
      LODWORD(v10) = v12 & [v11 getFloatValue:&v16 fromParm:51 atFxTime:time.var1];
      if (v10 == 1)
      {
        v13 = v16 / 100.0;
        switch(v17)
        {
          case 0:
            v14 = v16 / 100.0;
            v13 = 0.0;
            goto LABEL_11;
          case 2:
            v14 = v13 * 0.5;
            v13 = v13 * 0.5;
            goto LABEL_11;
          case 1:
            v14 = 0.0;
LABEL_11:
            *in = v14;
            *out = v13;
            break;
        }
      }
    }
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  return v10;
}

- (double)relativeShutterAtTime:(id)time
{
  v3 = 0.0;
  if (*(&self->super._hostIsVertigo + 2))
  {
    v6 = [(PROAPIAccessing *)self->super._apiManager apiForProtocol:&unk_28735E258];
    if (v6)
    {
      v7 = v6;
      v11 = 0;
      [v6 getBoolValue:&v11 fromParm:52 atFxTime:time.var1];
      if (v11 == 1)
      {
        v10 = 0.0;
        [v7 getFloatValue:&v10 fromParm:53 atFxTime:time.var1];
        [(PAESharedDefaultBase *)self relativeShutterForAngle:v10];
        return v8;
      }
    }
  }

  return v3;
}

- (BOOL)renderOutput:(id)output withInputA:(id)a withInputB:(id)b withTimeFraction:(float)fraction withInfo:(id *)info
{
  v7 = *&info->var2;
  v9[0] = *&info->var0.var0;
  v9[1] = v7;
  v9[2] = *&info->var4;
  return [(PAETransitionDefaultBase *)self canThrowRenderOutput:output withInputA:a withInputB:b withTimeFraction:v9 withInfo:?];
}

- (BOOL)canThrowRenderOutput:(id)output withInputA:(id)a withInputB:(id)b withTimeFraction:(float)fraction withInfo:(id *)info
{
  v18 = 0.0;
  v19 = 0.0;
  v12 = [(PAETransitionDefaultBase *)self convertTimeFraction:&v19 toLocal:&v18 andDerivative:info->var0.var1 atTime:fraction];
  if (v12)
  {
    HIDWORD(v14) = HIDWORD(v18);
    HIDWORD(v13) = HIDWORD(v19);
    *&v13 = v19;
    *&v14 = v18;
    v15 = *&info->var2;
    v17[0] = *&info->var0.var0;
    v17[1] = v15;
    v17[2] = *&info->var4;
    LOBYTE(v12) = [(PAETransitionDefaultBase *)self canThrowRenderOutput:output withInputA:a withInputB:b withTimeFraction:v17 withSpeed:v13 withInfo:v14];
  }

  return v12;
}

- (BOOL)isFrontGap
{
  v3 = [(PROAPIAccessing *)self->super._apiManager apiForProtocol:&unk_28736D650];
  v4 = [v3 isGapBefore:self];
  return ([v3 isAtStartofStoryline:self] | v4) & 1;
}

- (BOOL)isEndGap
{
  v3 = [(PROAPIAccessing *)self->super._apiManager apiForProtocol:&unk_28736D650];
  v4 = [v3 isGapAfter:self];
  return ([v3 isAtEndofStoryline:self] | v4) & 1;
}

- (BOOL)addHDRWhiteLevelParameter
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [(PROAPIAccessing *)self->super._apiManager apiForProtocol:&unk_28735B348];
  v5 = [v3 localizedStringForKey:@"PAETransitionDefaultBase::HDRWhiteLevel" value:0 table:0];

  return [v4 addPercentSliderWithName:v5 parmId:18 defaultValue:1 parameterMin:0.949999988 parameterMax:0.5 sliderMin:1.0 sliderMax:0.5 delta:1.0 parmFlags:0.01];
}

- (BOOL)showHideHDRWhiteLevelParameterForColorModel:(id)model
{
  v5 = [(PROAPIAccessing *)self->super._apiManager apiForProtocol:&unk_28735E258];
  v6 = [(PROAPIAccessing *)self->super._apiManager apiForProtocol:&unk_28735E448];
  v7 = [-[PROAPIAccessing apiForProtocol:](self->super._apiManager apiForProtocol:{&unk_28736D6B0), "shouldDisableDRTandHideWhiteLevel"}];
  v11 = 0;
  v8 = [v5 getParameterFlags:&v11 fromParm:18];
  if (v8)
  {
    if (v7 & 1 | (([model isEqualToString:kFxColorSpaceChange_HDR] & 1) == 0))
    {
      v9 = 131074;
    }

    else
    {
      v9 = 0;
    }

    v11 = v11 & 0xFFFDFFFD | v9;
    [v6 setParameterFlags:? toParm:?];
  }

  return v8;
}

- (BOOL)disableHDRWhiteLevelParameter:(BOOL)parameter
{
  v5 = [(PROAPIAccessing *)self->super._apiManager apiForProtocol:&unk_28735E258];
  v6 = [(PROAPIAccessing *)self->super._apiManager apiForProtocol:&unk_28735E448];
  v7 = [-[PROAPIAccessing apiForProtocol:](self->super._apiManager apiForProtocol:{&unk_28736D6B0), "shouldDisableDRTandHideWhiteLevel"}];
  v11 = 0;
  v8 = [v5 getParameterFlags:&v11 fromParm:18];
  if (v8)
  {
    if ((parameter | v7))
    {
      v9 = 4;
    }

    else
    {
      v9 = 0;
    }

    v11 = v11 & 0xFFFFFFFB | v9;
    [v6 setParameterFlags:? toParm:?];
  }

  return v8;
}

- (BOOL)applyHDRWhiteLevelForRed:(double *)red green:(double *)green blue:(double *)blue inColorSpace:(CGColorSpace *)space
{
  v10 = [(PROAPIAccessing *)self->super._apiManager apiForProtocol:&unk_28735E258];
  v28 = 0;
  v11 = 0;
  if ([v10 getParameterFlags:&v28 fromParm:18])
  {
    if ((v28 & 2) != 0)
    {
      return 1;
    }

    else
    {
      v26 = *MEMORY[0x277CC08F0];
      v27 = *(MEMORY[0x277CC08F0] + 16);
      v25 = 0.0;
      v12 = [v10 getFloatValue:&v25 fromParm:18 atFxTime:&v26];
      v11 = v12;
      if (v12)
      {
        v13.i32[1] = HIDWORD(v25);
        *v13.i32 = v25;
        WhiteGainForHLGLevel = PCColorUtil::getWhiteGainForHLGLevel(v12, v13);
        v15 = *&WhiteGainForHLGLevel;
        *&WhiteGainForHLGLevel = *red;
        v16 = *green;
        v17 = *blue;
        PCColor::PCColor(&v24, *&WhiteGainForHLGLevel, v16, v17, space);
        v18 = PCGetNCLCColorSpace(&kPCNCLC_Rec2020Linear);
        v23 = 0;
        v22 = 0.0;
        PCColor::getRGB(&v24, &v23 + 1, &v23, &v22, v18);
        *&v23 = v15 * *&v23;
        *(&v23 + 1) = v15 * *(&v23 + 1);
        v22 = v15 * v22;
        v21 = 0.0;
        v20 = 0;
        PCColor::setRGB(&v24, *(&v23 + 1), *&v23, v22, v18);
        PCColor::getRGB(&v24, &v21, &v20 + 1, &v20, space);
        *red = v21;
        *green = *(&v20 + 1);
        *blue = *&v20;
        PCCFRef<CGColorSpace *>::~PCCFRef(&v24.var1._obj);
      }
    }
  }

  return v11;
}

@end
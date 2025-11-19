@interface PAEStroke
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (BOOL)getOutputWidth:(unint64_t *)a3 height:(unint64_t *)a4 withInput:(id *)a5 withInfo:(id *)a6;
- (BOOL)parameterChanged:(unsigned int)a3;
- (PAEStroke)initWithAPIManager:(id)a3;
- (id)properties;
- (void)dealloc;
@end

@implementation PAEStroke

- (PAEStroke)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEStroke;
  result = [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
  result->_thresholdDefault = 0.5001;
  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PAEStroke;
  [(PAESharedDefaultBase *)&v2 dealloc];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:3];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"PositionIndependent", v4, @"MayRemapTime", v5, @"SupportsHeliumRendering", v6, @"PixelTransformSupport", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 3), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v6.receiver = self;
  v6.super_class = PAEStroke;
  [(PAESharedDefaultBase *)&v6 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addPopupMenuWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Stroke::Type" menuEntries:0 parmFlags:{0), 1, 0, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:", objc_msgSend(v4, "localizedStringForKey:value:table:", @"Stroke::Color", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"Stroke::Gradient", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"Stroke::OutlineGradient", 0, 0), 0), 1}];
    [v3 addColorParameterWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultRed:@"Stroke::OutlineColor" defaultGreen:0 defaultBlue:0) defaultAlpha:2 parmFlags:{0, 1.0, 0.0, 0.0, 1.0}];
    [v3 addGradientPositionedWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" parmFlags:{@"Stroke::Gradient", 0, 0), 3, 2}];
    [v3 setGradientHiddenWithOSC:1 toParam:3];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Stroke::Width" parameterMin:0 parameterMax:0) sliderMin:4 sliderMax:0 delta:10.0 parmFlags:{1.0, 300.0, 1.0, 100.0, 1.0}];
    [v3 addPopupMenuWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Stroke::Position" menuEntries:0 parmFlags:{0), 5, 0, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:", objc_msgSend(v4, "localizedStringForKey:value:table:", @"Stroke::Outside", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"Stroke::Centered", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"Stroke::Inside", 0, 0), 0), 1}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Stroke::Offset" parameterMin:0 parameterMax:0) sliderMin:6 sliderMax:0 delta:0.0 parmFlags:{-500.0, 300.0, -100.0, 100.0, 1.0}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Stroke::Threshold" parameterMin:0 parameterMax:0) sliderMin:7 sliderMax:0 delta:self->_thresholdDefault parmFlags:{0.0, 1.0, 0.0, 1.0, 0.01}];
    [v3 addToggleButtonWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Hidden::ThresholdChanged" parmFlags:{0, 0), 14, 0, 2}];
    [v3 addPercentSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Stroke::FadeInside" parameterMin:0 parameterMax:0) sliderMin:8 sliderMax:0 delta:0.0 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.01}];
    [v3 addPercentSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Stroke::FadeOutside" parameterMin:0 parameterMax:0) sliderMin:9 sliderMax:0 delta:0.0 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.01}];
    [v3 addPercentSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Stroke::FadeWidth" parameterMin:0 parameterMax:0) sliderMin:13 sliderMax:0 delta:1.0 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.01}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Stroke::FadeFalloff" parameterMin:0 parameterMax:0) sliderMin:10 sliderMax:0 delta:0.0 parmFlags:{-100.0, 100.0, -100.0, 100.0, 0.1}];
    [v3 addToggleButtonWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Stroke::Hide" parmFlags:{0, 0), 12, 0, 33}];
    [v3 addPopupMenuWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Stroke::BlendMode" menuEntries:0 parmFlags:{0), 11, 0, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:", objc_msgSend(v4, "localizedStringForKey:value:table:", @"Stroke::NormalMode", 0, 0), @"-", objc_msgSend(v4, "localizedStringForKey:value:table:", @"Stroke::SubtractMode", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"Stroke::DarkenMode", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"Stroke::MultiplyMode", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"Stroke::ColorBurnMode", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"Stroke::LinearBurnMode", 0, 0), @"-", objc_msgSend(v4, "localizedStringForKey:value:table:", @"Stroke::AddMode", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"Stroke::LightenMode", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"Stroke::ScreenMode", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"Stroke::ColorDodgeMode", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"Stroke::LinearDodgeMode", 0, 0), @"-", objc_msgSend(v4, "localizedStringForKey:value:table:", @"Stroke::OverlayMode", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"Stroke::SoftLightMode", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"Stroke::HardLightMode", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"Stroke::VividLightMode", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"Stroke::LinearLightMode", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"Stroke::PinLightMode", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"Stroke::HardMixMode", 0, 0), @"-", objc_msgSend(v4, "localizedStringForKey:value:table:", @"Stroke::DifferenceMode", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"Stroke::ExclusionMode", 0, 0), 0), 1}];
  }

  return v3 != 0;
}

- (BOOL)parameterChanged:(unsigned int)a3
{
  v5 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v6 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E448];
  v7 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28736D590];
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || v7 == 0)
  {
    return 0;
  }

  v11 = v7;
  v29 = *MEMORY[0x277CC08F0];
  v30 = *(MEMORY[0x277CC08F0] + 16);
  v28 = 0;
  [v5 getBoolValue:&v28 fromParm:14 atFxTime:&v29];
  v27 = 0.0;
  [v5 getFloatValue:&v27 fromParm:7 atFxTime:&v29];
  v13 = v28;
  if (a3 == 7 && (v28 & 1) != 0)
  {
    v12 = v27;
    if (v27 == self->_thresholdDefault)
    {
      [v6 setBoolValue:0 toParm:14 atFxTime:{&v29, v27}];
      LODWORD(v26) = 0;
      [v5 getIntValue:&v26 fromParm:5 atFxTime:&v29];
      if (v26)
      {
        if (v26 == 2)
        {
          thresholdDefault = 0.0;
        }

        else
        {
          if (v26 != 1)
          {
LABEL_21:
            v13 = v28;
            goto LABEL_22;
          }

          thresholdDefault = 1.0;
        }
      }

      else
      {
        thresholdDefault = self->_thresholdDefault;
      }

      [v6 setFloatValue:7 toParm:&v29 atFxTime:thresholdDefault];
      goto LABEL_21;
    }

    v13 = 1;
  }

LABEL_22:
  if (a3 != 7 || (v13 & 1) != 0)
  {
    if ((a3 != 5) | v13 & 1)
    {
      goto LABEL_34;
    }

    LODWORD(v26) = 0;
    [v5 getIntValue:&v26 fromParm:5 atFxTime:&v29];
    if (v26)
    {
      if (v26 == 2)
      {
        v15 = 0.0;
      }

      else
      {
        if (v26 != 1)
        {
          goto LABEL_34;
        }

        v15 = 1.0;
      }
    }

    else
    {
      v15 = self->_thresholdDefault;
    }

    [v6 setFloatValue:7 toParm:&v29 atFxTime:v15];
  }

  else
  {
    v12 = v27;
    if (v27 != self->_thresholdDefault)
    {
      [v6 setBoolValue:1 toParm:14 atFxTime:{&v29, v27}];
    }
  }

LABEL_34:
  v26 = 0;
  [v11 keyframeCount:&v26 forParam:7 andChannel:{0, v12}];
  if (v26)
  {
    [v6 setBoolValue:1 toParm:14 atFxTime:&v29];
  }

  if (a3 == 12)
  {
    LOBYTE(v24) = 0;
    [v5 getBoolValue:&v24 fromParm:12 atFxTime:&v29];
    v25 = 0;
    [v5 getParameterFlags:&v25 fromParm:11];
    if (v24)
    {
      v18 = 2;
    }

    else
    {
      v18 = 0;
    }

    v19 = v25 & 0xFFFFFFFD | v18;
    v20 = v6;
    v21 = 11;
    goto LABEL_50;
  }

  if (a3 == 1)
  {
    v25 = 0;
    [v5 getIntValue:&v25 fromParm:1 atFxTime:&v29];
    v23 = 0;
    v24 = 0;
    [v5 getParameterFlags:&v24 fromParm:2];
    [v5 getParameterFlags:&v23 fromParm:3];
    switch(v25)
    {
      case 2:
        [v5 setGradientHiddenWithOSC:0 toParam:3];
        v22 = v23 & 0xFFFFFFDD | 0x20;
        break;
      case 1:
        [v5 setGradientHiddenWithOSC:0 toParam:3];
        v22 = v23 & 0xFFFFFFDD;
        break;
      case 0:
        v16 = 3;
        [v5 setGradientHiddenWithOSC:1 toParam:3];
        [v6 setParameterFlags:v24 & 0xFFFFFFFD toParm:2];
        v17 = &v23;
LABEL_49:
        v19 = *v17 | 2;
        v20 = v6;
        v21 = v16;
LABEL_50:
        [v20 setParameterFlags:v19 toParm:v21];
        return 1;
      default:
        return 0;
    }

    v23 = v22;
    [v6 setParameterFlags:? toParm:?];
    v16 = 2;
    v17 = &v24;
    goto LABEL_49;
  }

  return 1;
}

- (BOOL)getOutputWidth:(unint64_t *)a3 height:(unint64_t *)a4 withInput:(id *)a5 withInfo:(id *)a6
{
  v6 = self;
  LOBYTE(self) = 0;
  if (a3)
  {
    if (a4)
    {
      self = [(PROAPIAccessing *)v6->super.super._apiManager apiForProtocol:&unk_28735E258];
      if (self)
      {
        v11 = self;
        v21 = 0.0;
        [(PAEStroke *)self getFloatValue:&v21 fromParm:4 atFxTime:a6->var0.var1];
        v20 = 0;
        [(PAEStroke *)v11 getIntValue:&v20 fromParm:5 atFxTime:a6->var0.var1];
        v19 = 0.0;
        [(PAEStroke *)v11 getFloatValue:&v19 fromParm:6 atFxTime:a6->var0.var1];
        v12 = v21 * -0.5;
        if (v20 != 1)
        {
          v12 = 0.0;
        }

        v13 = v21;
        v14 = -v13;
        if (v20 == 2)
        {
          v12 = v14;
        }

        v15 = v21 + v19 + v12;
        if (v15 > 0.0)
        {
          var1 = a5->var1;
          v17 = 2 * vcvtps_s32_f32(v15);
          *a3 = a5->var0 + v17;
          *a4 = var1 + v17;
        }

        LOBYTE(self) = 1;
      }
    }
  }

  return self;
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v8 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_287359A98];
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    LOBYTE(v12) = 0;
  }

  else
  {
    v57 = v10;
    LOBYTE(v12) = 0;
    if ([a4 imageType] == 3 && v57)
    {
      v85[0] = 0;
      [v8 getIntValue:v85 fromParm:1 atFxTime:a5->var0.var1];
      v83 = 0;
      v84 = 0;
      v81 = 0;
      v82 = 0;
      [v8 getRedValue:&v84 greenValue:&v83 blueValue:&v82 alphaValue:&v81 fromParm:2 atFxTime:a5->var0.var1];
      v79 = 0;
      v80 = 0;
      v77 = 0;
      v78 = 0;
      v76 = 0;
      [v8 getGradientStartEnd:&v80 startY:&v79 endX:&v78 endY:&v77 type:&v76 fromParm:3 atFxTime:a5->var0.var1];
      v75 = 0.0;
      [v8 getFloatValue:&v75 fromParm:4 atFxTime:a5->var0.var1];
      v74 = 0;
      [v8 getIntValue:&v74 fromParm:5 atFxTime:a5->var0.var1];
      v73 = 0.0;
      [v8 getFloatValue:&v73 fromParm:6 atFxTime:a5->var0.var1];
      v72 = 0.0;
      [v8 getFloatValue:&v72 fromParm:7 atFxTime:a5->var0.var1];
      v72 = fmin(fmax(v72, 0.01), 0.99);
      v71 = 0;
      [v8 getFloatValue:&v71 fromParm:8 atFxTime:a5->var0.var1];
      v70 = 0;
      [v8 getFloatValue:&v70 fromParm:9 atFxTime:a5->var0.var1];
      v69 = 0;
      [v8 getFloatValue:&v69 fromParm:13 atFxTime:a5->var0.var1];
      v68 = 0;
      [v8 getFloatValue:&v68 fromParm:10 atFxTime:a5->var0.var1];
      v67 = 0;
      [v8 getBoolValue:&v67 fromParm:12 atFxTime:a5->var0.var1];
      v66 = 0;
      [v8 getIntValue:&v66 fromParm:11 atFxTime:a5->var0.var1];
      if (a4)
      {
        [a4 heliumRef];
        v64 = v65;
        if (v65)
        {
          (*(*v65 + 16))(v65);
        }
      }

      else
      {
        v65 = 0;
        v64 = 0;
      }

      [(PAESharedDefaultBase *)self getInversePixelTransformForImage:a3];
      [(PAESharedDefaultBase *)self getPixelTransformForImage:a4];
      HGTransform::HGTransform(v59);
      HGTransform::Scale(v59, v60, v62, 1.0);
      HGTransform::Translate(v59, v61, v63, 0.0);
      v13 = HGObject::operator new(0x210uLL);
      HGXForm::HGXForm(v13);
      (*(*v13 + 576))(v13, v59);
      (*(*v13 + 120))(v13, 0, v65);
      if (v64 != v13)
      {
        if (v64)
        {
          (*(*v64 + 24))();
        }

        v64 = v13;
        (*(*v13 + 16))(v13);
      }

      v14 = v75 * -0.5;
      if (v74 != 1)
      {
        v14 = 0.0;
      }

      v15 = v75;
      v16 = -v15;
      if (v74 == 2)
      {
        v14 = v16;
      }

      v17 = v73 + v14;
      v18 = v75 + v17;
      if (v18 >= 1.0 || v18 <= 0.0)
      {
        v20 = v75 + v17;
      }

      else
      {
        v20 = 1.0;
      }

      if (v20 == 0.0)
      {
        v20 = v20 + -0.001;
        v17 = v17 + -0.001;
      }

      v21 = ceilf(v20);
      if (v21 > 1.0)
      {
        v22 = v21;
      }

      else
      {
        v22 = 1.0;
      }

      v23 = HGObject::operator new(0x1B0uLL);
      HMaskAlpha::HMaskAlpha(v23, v22);
      v56 = v23;
      (*(*v23 + 120))(v23, 0, v13);
      v24 = v72;
      (*(*v23 + 96))(v23, 0, 0.0, v24, 0.0, 0.0);
      v25 = HGObject::operator new(0x1B0uLL);
      HMaskAlpha::HMaskAlpha(v25, v22);
      v55 = v25;
      (*(*v25 + 120))(v25, 0, v13);
      v26 = v72;
      (*(*v25 + 96))(v25, 0, 1.0, v26, 0.0, 0.0);
      v27 = HGObject::operator new(0x1B0uLL);
      HGMPSImageEDT::HGMPSImageEDT(v27, vcvtps_s32_f32(v20 + 1.0));
      (*(*v27 + 120))(v27, 0, v56);
      (*(*v27 + 136))(v27, 0xFFFFFFFFLL, 2);
      (*(*v27 + 136))(v27, 0, 2);
      HGNode::SetOutputFormatComponents(v27, 4, v28);
      HGNode::SetSupportedFormatPrecisions(v27, 0xC, v29);
      v30 = HGObject::operator new(0x1B0uLL);
      HGMPSImageEDT::HGMPSImageEDT(v30, vcvtps_s32_f32(fabsf(v17)));
      (*(*v30 + 120))(v30, 0, v25);
      (*(*v30 + 136))(v30, 0xFFFFFFFFLL, 2);
      (*(*v30 + 136))(v30, 0, 2);
      HGNode::SetOutputFormatComponents(v30, 4, v31);
      HGNode::SetSupportedFormatPrecisions(v30, 0xC, v32);
      v33 = HGObject::operator new(0x1A0uLL);
      HgcReconstructDT::HgcReconstructDT(v33);
      (*(*v33 + 120))(v33, 0, v27);
      (*(*v33 + 96))(v33, 0, 1.0, 1.0, 0.0, 0.0);
      HGNode::SetOutputFormatComponents(v33, 4, v34);
      HGNode::SetSupportedFormatPrecisions(v33, 0xC, v35);
      v36 = HGObject::operator new(0x1A0uLL);
      HgcReconstructDT::HgcReconstructDT(v36);
      (*(*v36 + 120))(v36, 0, v30);
      (*(*v36 + 96))(v36, 0, 1.0, -1.0, 0.0, 0.0);
      HGNode::SetOutputFormatComponents(v36, 4, v37);
      HGNode::SetSupportedFormatPrecisions(v36, 0xC, v38);
      if (!v85[0])
      {
        v52 = HGObject::operator new(0x1A0uLL);
        HgcColorAndGradientStroke::HgcColorAndGradientStroke(v52);
      }

      if (v85[0] == 1)
      {
        v39 = 512.0;
      }

      else
      {
        v39 = v75;
      }

      v40 = HGRectMake4i(0, 0, v39, 1u);
      v42 = v41;
      v12 = HGObject::operator new(0x80uLL);
      HGBitmap::HGBitmap(v12, v40, v42, 28);
      [v8 getGradientSamples:*(v12 + 10) numSamples:v39 depth:4 fromParm:3 atFxTime:a5->var0.var1];
      if (v39 > 0.0)
      {
        v43 = 0;
        v44 = *(v12 + 10);
        v45 = (v44 + 4);
        do
        {
          v46 = (v44 + 16 * v43);
          v47 = *v46;
          v48 = 3;
          v49 = v45;
          do
          {
            *(v49 - 1) = *v49;
            ++v49;
            --v48;
          }

          while (v48);
          v46[3] = v47;
          ++v43;
          v45 += 4;
        }

        while (v39 > v43);
      }

      v50 = HGObject::operator new(0x1F0uLL);
      HGBitmapLoader::HGBitmapLoader(v50, v12);
      (*(*v50 + 136))(v50, 0xFFFFFFFFLL, 4);
      if (v85[0] == 2)
      {
        v53 = HGObject::operator new(0x1A0uLL);
        HgcOutlineGradientStroke::HgcOutlineGradientStroke(v53);
      }

      if (v85[0] == 1)
      {
        v51 = HGObject::operator new(0x1A0uLL);
        HgcColorAndGradientStroke::HgcColorAndGradientStroke(v51);
      }

      NSLog(&cfstr_InvalidStrokeT.isa);
      (*(*v50 + 24))(v50);
      if (v12)
      {
        (*(*v12 + 24))(v12);
        LOBYTE(v12) = 0;
      }

      (*(*v36 + 24))(v36);
      (*(*v33 + 24))(v33);
      (*(*v30 + 24))(v30);
      (*(*v27 + 24))(v27);
      (*(*v55 + 24))(v55);
      (*(*v56 + 24))(v56);
      (*(*v13 + 24))(v13);
      HGTransform::~HGTransform(v59);
      if (v64)
      {
        (*(*v64 + 24))(v64);
      }

      if (v65)
      {
        (*(*v65 + 24))(v65);
      }
    }
  }

  return v12;
}

- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6
{
  *a6 = 0;
  *a5 = 0;
  v6 = *&a3->var2;
  v8[0] = *&a3->var0.var0;
  v8[1] = v6;
  v8[2] = *&a3->var4;
  [(PAESharedDefaultBase *)self overrideFrameSetupForRenderMode:v8 hardware:a5 software:a6];
  return 1;
}

@end
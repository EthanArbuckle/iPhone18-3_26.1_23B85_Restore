@interface PAEBloom
- (BOOL)addParameters;
- (BOOL)bloomHeliumRender:(id)render withInput:(id)input withRadius:(double)radius withBrightness:(double)brightness withThreshold:(double)threshold doDarkBloom:(BOOL)bloom withXScale:(double)scale withYScale:(double)self0 withDoCrop:(BOOL)self1 withDoClip:(BOOL)self2 is360:(BOOL)self3 withInfo:(id *)self4;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (BOOL)getOutputWidth:(unint64_t *)width height:(unint64_t *)height withInput:(id *)input withInfo:(id *)info;
- (PAEBloom)initWithAPIManager:(id)manager;
- (id)dynamicPropertiesAtTime:(id)time withError:(id *)error;
- (id)properties;
@end

@implementation PAEBloom

- (PAEBloom)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEBloom;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"MayRemapTime", v4, @"SupportsLargeRenderScale", v5, @"SupportsHeliumRendering", v6, @"InputSizeLimit", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 1), @"AutoColorProcessingSupport", 0}];
}

- (id)dynamicPropertiesAtTime:(id)time withError:(id *)error
{
  v7 = [(PAEFilterDefaultBase *)self getParamAPIWithError:error];
  v16 = 0.0;
  if ([v7 getFloatValue:&v16 fromParm:1 atFxTime:time.var1] & 1) != 0 && (v15 = 0, (objc_msgSend(v7, "getBoolValue:fromParm:atFxTime:", &v15, 6, time.var1)) && (v14 = 0, (objc_msgSend(v7, "getBoolValue:fromParm:atFxTime:", &v14, 8, time.var1)))
  {
    if (v16 == 0.0)
    {
      v8 = 6;
    }

    else
    {
      v8 = 1;
    }

    v9 = MEMORY[0x277CBEAC0];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:{v8, v16}];
    return [v9 dictionaryWithObjectsAndKeys:{v10, @"PixelTransformSupport", objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", ((v15 | v14) & 1) == 0), @"PositionIndependent", 0}];
  }

  else if (error)
  {
    v12 = objc_opt_class();
    v13 = [(PAEFilterDefaultBase *)self getParamErrorFor:NSStringFromClass(v12)];
    result = 0;
    *error = v13;
  }

  else
  {
    return 0;
  }

  return result;
}

- (BOOL)addParameters
{
  v10.receiver = self;
  v10.super_class = PAEBloom;
  [(PAESharedDefaultBase *)&v10 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  v4 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (!v5)
  {
    v7 = [v4 versionAtCreation] < 2;
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Bloom::Amount" parameterMin:0 parameterMax:0) sliderMin:1 sliderMax:0 delta:7.0 parmFlags:{0.0, 32.0, 0.0, 32.0, 1.0}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Bloom::Brightness" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:70.0 parmFlags:{0.0, 100.0, 0.0, 100.0, 1.0}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Bloom::Threshold" parameterMin:0 parameterMax:0) sliderMin:3 sliderMax:0 delta:75.0 parmFlags:{0.0, 100.0, 0.0, 100.0, 1.0}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Bloom::Horizontal" parameterMin:0 parameterMax:0) sliderMin:4 sliderMax:32 delta:100.0 parmFlags:{0.0, 100.0, 0.0, 100.0, 1.0}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Bloom::Vertical" parameterMin:0 parameterMax:0) sliderMin:5 sliderMax:32 delta:100.0 parmFlags:{0.0, 100.0, 0.0, 100.0, 1.0}];
    [v3 addToggleButtonWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Bloom::Clip" parmFlags:{0, 0), 7, v7, 1}];
    [v3 addToggleButtonWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Bloom::Crop" parmFlags:{0, 0), 6, 0, 33}];
    [v3 addToggleButtonWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Bloom::Equirect" parmFlags:{0, 0), 8, 0, 1}];
  }

  return v6;
}

- (BOOL)getOutputWidth:(unint64_t *)width height:(unint64_t *)height withInput:(id *)input withInfo:(id *)info
{
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v11 = v10;
  if (v10)
  {
    v22 = 0;
    [v10 getBoolValue:&v22 fromParm:8 atFxTime:info->var0.var1];
    if (v22 == 1)
    {
      if (width)
      {
        *width = input->var0;
      }

      if (height)
      {
        var1 = input->var1;
LABEL_14:
        *height = var1;
      }
    }

    else
    {
      v21 = 0.0;
      [v11 getFloatValue:&v21 fromParm:1 atFxTime:info->var0.var1];
      v20 = 0.0;
      [v11 getFloatValue:&v20 fromParm:4 atFxTime:info->var0.var1];
      v20 = v20 * 0.01;
      v19 = 0.0;
      [v11 getFloatValue:&v19 fromParm:5 atFxTime:info->var0.var1];
      v19 = v19 * 0.01;
      v18 = 0;
      [v11 getBoolValue:&v18 fromParm:6 atFxTime:info->var0.var1];
      var0 = input->var0;
      var1 = input->var1;
      if (v18 == 1)
      {
        if (width)
        {
          *width = var0;
        }
      }

      else
      {
        v14 = v21 + v21;
        v15 = v14;
        v16 = vcvtpd_s64_f64(v19 * v15);
        if (width)
        {
          *width = var0 + (2 * vcvtpd_s64_f64(v20 * v15));
        }

        var1 += (2 * v16);
      }

      if (height)
      {
        goto LABEL_14;
      }
    }
  }

  return v11 != 0;
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (v9)
  {
    v10 = v9;
    if ([input imageType] == 3)
    {
      [(PAESharedDefaultBase *)self getScaleForImage:input];
      v12 = v26[1];
      v11 = v26[2];
      v26[0] = 0.0;
      [v10 getFloatValue:v26 fromParm:1 atFxTime:info->var0.var1];
      if (v26[0] == 0.0)
      {
        if (input)
        {
          [input heliumRef];
        }

        else
        {
          *&v18[0] = 0;
        }

        [output setHeliumRef:v18];
        if (*&v18[0])
        {
          (*(**&v18[0] + 24))(*&v18[0]);
        }

        LOBYTE(v9) = 1;
      }

      else
      {
        if (v12 <= v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = v12;
        }

        v25 = 0.0;
        [v10 getFloatValue:&v25 fromParm:4 atFxTime:{info->var0.var1, v26[0]}];
        v25 = v12 / v13 * (v25 * 0.01);
        v24 = 0.0;
        [v10 getFloatValue:&v24 fromParm:5 atFxTime:info->var0.var1];
        v24 = v11 / v13 * (v24 * 0.01);
        v23 = 0.0;
        [v10 getFloatValue:&v23 fromParm:2 atFxTime:info->var0.var1];
        v22 = 0.0;
        [v10 getFloatValue:&v22 fromParm:3 atFxTime:info->var0.var1];
        v21 = 0;
        [v10 getBoolValue:&v21 fromParm:7 atFxTime:info->var0.var1];
        v20 = 0;
        [v10 getBoolValue:&v20 fromParm:6 atFxTime:info->var0.var1];
        v19 = 0;
        [v10 getBoolValue:&v19 fromParm:8 atFxTime:info->var0.var1];
        v14 = v23;
        v23 = fabs((v23 + -50.0) * 4.0);
        if (v14 >= 50.0)
        {
          v15 = 0;
        }

        else
        {
          v22 = 100.0 - v22;
          v15 = 1;
        }

        v16 = *&info->var2;
        v18[0] = *&info->var0.var0;
        v18[1] = v16;
        v18[2] = *&info->var4;
        LOBYTE(v9) = [PAEBloom bloomHeliumRender:"bloomHeliumRender:withInput:withRadius:withBrightness:withThreshold:doDarkBloom:withXScale:withYScale:withDoCrop:withDoClip:is360:withInfo:" withInput:output withRadius:input withBrightness:v15 withThreshold:v20 doDarkBloom:v21 withXScale:v19 withYScale:v26[0] withDoCrop:v18 withDoClip:? is360:? withInfo:?];
      }
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

- (BOOL)bloomHeliumRender:(id)render withInput:(id)input withRadius:(double)radius withBrightness:(double)brightness withThreshold:(double)threshold doDarkBloom:(BOOL)bloom withXScale:(double)scale withYScale:(double)self0 withDoCrop:(BOOL)self1 withDoClip:(BOOL)self2 is360:(BOOL)self3 withInfo:(id *)self4
{
  is360Copy = is360;
  clipCopy = clip;
  cropCopy = crop;
  bloomCopy = bloom;
  v25 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
  if (v25)
  {
    v26 = [v25 versionAtCreation] == 0;
    if (input)
    {
LABEL_3:
      [input heliumRef];
      goto LABEL_6;
    }
  }

  else
  {
    v26 = 1;
    if (input)
    {
      goto LABEL_3;
    }
  }

  v56 = 0;
LABEL_6:
  if (bloomCopy)
  {
    v27 = -10.0;
  }

  else
  {
    v27 = 10.0;
  }

  if (bloomCopy)
  {
    v28 = 10.0;
  }

  else
  {
    v28 = -10.0;
  }

  v29 = HGObject::operator new(0x1A0uLL);
  HgcBloomThreshold::HgcBloomThreshold(v29);
  (*(*v29 + 120))(v29, 0, v56);
  v30 = threshold / 100.0;
  (*(*v29 + 96))(v29, 0, v28 * v30, v28 * v30, v28 * v30, v28 * v30);
  (*(*v29 + 96))(v29, 1, v27, v27, v27, v27);
  (*(*v29 + 96))(v29, 3, 0.0, 0.0, 0.0, 0.0);
  (*(*v29 + 96))(v29, 2, -3.4028e38, 3.4028e38, 0.0, 0.0);
  if (is360Copy)
  {
    [(PAESharedDefaultBase *)self getInversePixelTransformForImage:render];
    [(PAESharedDefaultBase *)self getPixelTransformForImage:render];
    v31 = HGObject::operator new(0x1C0uLL);
    HGNode::HGNode(v31);
    *v31 = &unk_2871D9F38;
    *(v31 + 51) = 0;
    *(v31 + 52) = 0;
    *(v31 + 106) = 0;
    *(v31 + 54) = 0;
    *(v31 + 55) = 0;
    off_2871D9FB0(v31, 0, v29);
    width = [input width];
    height = [input height];
    v34 = radius * 0.5;
    scaleCopy = scale;
    yScaleCopy = yScale;
    v54 = vcvt_hight_f32_f64(vcvt_f32_f64(v48[0]), v48[1]);
    v53 = vcvt_hight_f32_f64(vcvt_f32_f64(v49), v50);
    v52 = vcvt_hight_f32_f64(vcvt_f32_f64(v55[0]), v55[1]);
    v51 = vcvt_hight_f32_f64(vcvt_f32_f64(v55[2]), v55[3]);
    HEquirectGaussianBlur::init(v31, vcvtpd_s64_f64(fabs(v48[0].f64[0]) * width), vcvtpd_s64_f64(fabs(v49.f64[1]) * height), &v54, &v53, &v52, &v51, v34, scaleCopy, yScaleCopy);
    (*(*v31 + 16))(v31);
    (*(*v31 + 24))(v31);
  }

  else
  {
    v31 = HGObject::operator new(0x1B0uLL);
    HGaussianBlur::HGaussianBlur(v31);
    (*(*v31 + 120))(v31, 0, v29);
    v37 = radius * 0.5;
    scaleCopy2 = scale;
    yScaleCopy2 = yScale;
    HGaussianBlur::init(v31, v37, scaleCopy2, yScaleCopy2, 0, 0, 0);
    (*(*v31 + 16))(v31);
    (*(*v31 + 24))(v31);
  }

  if (bloomCopy)
  {
    v40 = -50.0;
  }

  else
  {
    v40 = 50.0;
  }

  v41 = HGObject::operator new(0x1A0uLL);
  HgcEchoScaleAndAdd::HgcEchoScaleAndAdd(v41);
  v42 = brightness / v40;
  *&v55[0].f64[0] = v41;
  (*(*v41 + 96))(v41, 0, v42, v42, v42, v42);
  v43.n128_u32[0] = 2139095039;
  if (clipCopy)
  {
    v43.n128_f32[0] = 1.0;
  }

  (*(**&v55[0].f64[0] + 96))(v43, 0.0, 0.0, 0.0);
  (*(*v31 + 16))(v31);
  v44 = v31;
  if (v26)
  {
    v44 = v31;
    if (info->var5)
    {
      HGTransform::HGTransform(v48);
      HGTransform::Translate(v48, 0.0, -2.25, 0.0);
      v45 = HGObject::operator new(0x210uLL);
      HGXForm::HGXForm(v45);
      (*(*v45 + 576))(v45, v48);
      (*(*v45 + 120))(v45, 0, v56);
      v44 = v31;
      if (v31 != v45)
      {
        (*(*v31 + 24))(v31);
        v44 = v45;
        (*(*v45 + 16))(v45);
      }

      (*(*v45 + 24))(v45);
      HGTransform::~HGTransform(v48);
    }
  }

  (*(**&v55[0].f64[0] + 120))(*&v55[0].f64[0], 0, v44);
  (*(**&v55[0].f64[0] + 120))(*&v55[0].f64[0], 1, v56);
  if (cropCopy)
  {
    [(PAESharedDefaultBase *)self crop:v55 fromImage:input toImage:render];
  }

  [render setHeliumRef:v55];
  (*(*v44 + 24))(v44);
  if (*&v55[0].f64[0])
  {
    (*(**&v55[0].f64[0] + 24))(*&v55[0].f64[0]);
  }

  (*(*v31 + 24))(v31);
  (*(*v29 + 24))(v29);
  if (v56)
  {
    (*(*v56 + 24))(v56);
  }

  return 1;
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

@end
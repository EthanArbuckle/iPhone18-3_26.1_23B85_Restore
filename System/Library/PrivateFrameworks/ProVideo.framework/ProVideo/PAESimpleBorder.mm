@interface PAESimpleBorder
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (BOOL)getOutputWidth:(unint64_t *)width height:(unint64_t *)height withInput:(id *)input withInfo:(id *)info;
- (PAESimpleBorder)initWithAPIManager:(id)manager;
- (id)properties;
- (void)dealloc;
@end

@implementation PAESimpleBorder

- (PAESimpleBorder)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAESimpleBorder;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PAESimpleBorder;
  [(PAESharedDefaultBase *)&v2 dealloc];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"PositionIndependent", v4, @"MayRemapTime", v5, @"SupportsLargeRenderScale", v6, @"SupportsHeliumRendering", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 3), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)getOutputWidth:(unint64_t *)width height:(unint64_t *)height withInput:(id *)input withInfo:(id *)info
{
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v19 = 0.0;
  [v10 getFloatValue:&v19 fromParm:1 atFxTime:info->var0.var1];
  v18 = 0;
  [v10 getIntValue:&v18 fromParm:3 atFxTime:info->var0.var1];
  var3 = info->var3;
  var4 = info->var4;
  var8 = input->var8;
  v14 = input->var0 / var3 * var8;
  v15 = input->var1 / var4;
  if (v18 == 2)
  {
    v16 = v19 + v19;
    goto LABEL_5;
  }

  if (v18 == 1)
  {
    v16 = v19;
LABEL_5:
    v14 = v14 + v16;
    v15 = v15 + v16;
  }

  *width = vcvtpd_s64_f64(var3 * (v14 / var8));
  *height = vcvtpd_s64_f64(var4 * v15);
  return 1;
}

- (BOOL)addParameters
{
  v6.receiver = self;
  v6.super_class = PAESimpleBorder;
  [(PAESharedDefaultBase *)&v6 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"SimpleBorder::Size" parameterMin:0 parameterMax:0) sliderMin:1 sliderMax:0 delta:10.0 parmFlags:{0.0, 1000.0, 0.0, 100.0, 1.0}];
    [v3 addColorParameterWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultRed:@"SimpleBorder::Color" defaultGreen:0 defaultBlue:0) defaultAlpha:2 parmFlags:{0, 0.0, 0.0, 0.0, 1.0}];
    [v3 addPopupMenuWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"SimpleBorder::Border Placement" menuEntries:0 parmFlags:{0), 3, 0, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:", objc_msgSend(v4, "localizedStringForKey:value:table:", @"SimpleBorder::Inside", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"SimpleBorder::Overlap", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"SimpleBorder::Outside", 0, 0), 0), 1}];
  }

  return v3 != 0;
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v23 = 0.0;
  memset(v22, 0, sizeof(v22));
  v21 = 0;
  [(PAESharedDefaultBase *)self getPixelTransformForImage:output];
  [v10 getFloatValue:&v23 fromParm:1 atFxTime:info->var0.var1];
  [v10 getRedValue:v22 greenValue:v22 + 8 blueValue:&v22[1] alphaValue:&v22[1] + 8 fromParm:2 atFxTime:info->var0.var1];
  v11.f64[0] = *(v22 + 1);
  *&v22[0] = vmuld_lane_f64(*v22, v22[1], 1);
  v11.f64[1] = *(&v22[1] + 1);
  *(v22 + 8) = vmulq_f64(v11, vextq_s8(v22[1], v22[1], 8uLL));
  [v10 getIntValue:&v21 fromParm:3 atFxTime:info->var0.var1];
  imageType = [input imageType];
  if ([(PAESharedDefaultBase *)self getRenderMode:info->var0.var1])
  {
    v13 = imageType == 3;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  if (v13)
  {
    if (input)
    {
      [input heliumRef];
    }

    else
    {
      v19 = 0;
    }

    [(PAESharedDefaultBase *)self getImageBoundary:input];
    v18[0] = vcvtq_f64_f32(v17[0]);
    v18[1] = vcvtq_f64_f32(v17[1]);
    *&v15 = v23;
    fxSimpleBorder(v18, v20, v21, v17, v15, v15);
    [output setHeliumRef:v17];
    if (v17[0])
    {
      (*(**v17 + 24))(*v17);
    }

    if (v19)
    {
      (*(*v19 + 24))(v19);
    }
  }

  return v14;
}

- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software
{
  *software = 1;
  *hardware = 0;
  v6 = *&setup->var2;
  v8[0] = *&setup->var0.var0;
  v8[1] = v6;
  v8[2] = *&setup->var4;
  [(PAESharedDefaultBase *)self overrideFrameSetupForRenderMode:v8 hardware:hardware software:software];
  return 1;
}

@end
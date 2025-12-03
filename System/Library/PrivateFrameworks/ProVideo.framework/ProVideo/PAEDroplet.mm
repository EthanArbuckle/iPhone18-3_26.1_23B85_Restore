@interface PAEDroplet
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (BOOL)getOutputWidth:(unint64_t *)width height:(unint64_t *)height withInput:(id *)input withInfo:(id *)info;
- (PAEDroplet)initWithAPIManager:(id)manager;
- (id)properties;
@end

@implementation PAEDroplet

- (PAEDroplet)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEDroplet;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:3];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"PositionIndependent", v4, @"MayRemapTime", v5, @"SupportsLargeRenderScale", v6, @"SupportsHeliumRendering", v7, @"InputSizeLimit", v8, @"PixelTransformSupport", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 3), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v13.receiver = self;
  v13.super_class = PAEDroplet;
  [(PAESharedDefaultBase *)&v13 addParameters];
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
    versionAtCreation = [v4 versionAtCreation];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addPointParameterWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultX:@"Droplet::Center" defaultY:0 parmFlags:{0), 1, 0, 0.5, 0.5}];
    v9 = [v8 localizedStringForKey:@"Droplet::Radius" value:0 table:0];
    if (versionAtCreation >= 2)
    {
      v10 = 2000.0;
    }

    else
    {
      v10 = 100.0;
    }

    if (versionAtCreation >= 2)
    {
      v11 = 200.0;
    }

    else
    {
      v11 = 100.0;
    }

    [v3 addFloatSliderWithName:v9 parmId:2 defaultValue:0 parameterMin:300.0 parameterMax:-50.0 sliderMin:dbl_260343F20[versionAtCreation < 2] sliderMax:-50.0 delta:dbl_260343F30[versionAtCreation < 2] parmFlags:1.0];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Droplet::Width" parameterMin:0 parameterMax:0) sliderMin:4 sliderMax:0 delta:40.0 parmFlags:{0.0, v10, 0.0, v11, 1.0}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Droplet::Height" parameterMin:0 parameterMax:0) sliderMin:3 sliderMax:0 delta:30.0 parmFlags:{-50.0, 50.0, -50.0, 50.0, 1.0}];
    if (versionAtCreation)
    {
      [v3 addToggleButtonWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Droplet::Crop" parmFlags:{0, 0), 5, 0, 33}];
    }
  }

  return v6;
}

- (BOOL)getOutputWidth:(unint64_t *)width height:(unint64_t *)height withInput:(id *)input withInfo:(id *)info
{
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v16 = 0;
  [v10 getBoolValue:&v16 fromParm:5 atFxTime:info->var0.var1];
  if (v16 == 1)
  {
    *width = input->var0;
    var1 = input->var1;
  }

  else
  {
    v15 = 30.0;
    [v10 getFloatValue:&v15 fromParm:3 atFxTime:info->var0.var1];
    v12 = fabs(v15);
    v13 = v12 + v12;
    *width = (v13 + input->var0);
    var1 = (v13 + input->var1);
  }

  *height = var1;
  return 1;
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (v9)
  {
    v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
    v11 = v10 && [v10 versionAtCreation] == 0;
    [(PAESharedDefaultBase *)self getPixelTransformForImage:input];
    [(PAESharedDefaultBase *)self getInversePixelTransformForImage:output];
    __asm { FMOV            V0.2D, #0.5 }

    v27[0] = _Q0;
    [v9 getXValue:v27 YValue:v27 + 8 fromParm:1 atFxTime:info->var0.var1];
    [(PAESharedDefaultBase *)self convertRelativeToImageCoordinates:v27 withImage:input];
    v26[4] = v27[13];
    v26[5] = v27[14];
    v26[6] = v27[15];
    v26[7] = v27[16];
    v27[0] = v26[0];
    v26[0] = v27[9];
    v26[1] = v27[10];
    v26[2] = v27[11];
    v26[3] = v27[12];
    v25[4] = v27[5];
    v25[5] = v27[6];
    v25[6] = v27[7];
    v25[7] = v27[8];
    v25[0] = v27[1];
    v25[1] = v27[2];
    v25[2] = v27[3];
    v25[3] = v27[4];
    PCMatrix44Tmpl<double>::rightTranslate(v26, *v27, *(v27 + 1), 0.0);
    v17.f64[0] = -*v27;
    v24 = 0x4072C00000000000;
    [v9 getFloatValue:&v24 fromParm:2 atFxTime:{info->var0.var1, PCMatrix44Tmpl<double>::leftTranslate(v25, v17, -*(v27 + 1), 0.0).f64[0]}];
    v23 = 40.0;
    [v9 getFloatValue:&v23 fromParm:4 atFxTime:info->var0.var1];
    v22 = 30.0;
    [v9 getFloatValue:&v22 fromParm:3 atFxTime:info->var0.var1];
    if ([(PAESharedDefaultBase *)self getRenderMode:info->var0.var1])
    {
      if ([input imageType] == 3)
      {
        if (input)
        {
          [input heliumRef];
        }

        else
        {
          v21 = 0;
        }

        v20 = 1;
        if (!v11)
        {
          [v9 getBoolValue:&v20 fromParm:5 atFxTime:info->var0.var1];
        }

        if (v23 > 0.0)
        {
          v18 = HGObject::operator new(0x2C0uLL);
          HDroplet::HDroplet(v18);
        }

        [output setHeliumRef:{&v21, v23}];
        if (v21)
        {
          (*(*v21 + 24))(v21);
        }
      }
    }
  }

  return v9 != 0;
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
@interface PAESphere
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (PAESphere)initWithAPIManager:(id)a3;
- (id)properties;
@end

@implementation PAESphere

- (PAESphere)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAESphere;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:1];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"PositionIndependent", v4, @"SupportsHeliumRendering", v5, @"MayRemapTime", v6, @"SupportsLargeRenderScale", v7, @"PixelTransformSupport", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 3), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v10.receiver = self;
  v10.super_class = PAESphere;
  [(PAESharedDefaultBase *)&v10 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  v4 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
  if (!v4)
  {
    return 0;
  }

  v5 = [v4 versionAtCreation];
  if (!v3)
  {
    return 0;
  }

  v6 = v5;
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = 1;
  [v3 addPointParameterWithName:objc_msgSend(v7 parmId:"localizedStringForKey:value:table:" defaultX:@"Sphere::Center" defaultY:0 parmFlags:{0), 1, 0, 0.5, 0.5}];
  [v3 addFloatSliderWithName:objc_msgSend(v7 parmId:"localizedStringForKey:value:table:" defaultValue:@"Sphere::Radius" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:400.0 parmFlags:{0.0, 1000.0, 0.0, 1000.0, 1.0}];
  if (v6)
  {
    [v3 addToggleButtonWithName:objc_msgSend(v7 parmId:"localizedStringForKey:value:table:" defaultValue:@"Sphere::Crop" parmFlags:{0, 0), 3, 0, 33}];
  }

  return v8;
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
  if (v10)
  {
    [v10 versionAtCreation];
    if (!v9)
    {
      return v9 != 0;
    }
  }

  else if (!v9)
  {
    return v9 != 0;
  }

  [(PAESharedDefaultBase *)self getPixelTransformForImage:a4];
  [(PAESharedDefaultBase *)self getInversePixelTransformForImage:a3];
  __asm { FMOV            V0.2D, #0.5 }

  v23 = _Q0;
  [v9 getXValue:&v23 YValue:&v23 + 8 fromParm:1 atFxTime:a5->var0.var1];
  [(PAESharedDefaultBase *)self convertRelativeToImageCoordinates:&v23 withImage:a4];
  v23 = v22;
  PCMatrix44Tmpl<double>::rightTranslate(v25, *&v22, *(&v22 + 1), 0.0);
  v16.f64[0] = -*&v23;
  *&v17 = *&PCMatrix44Tmpl<double>::leftTranslate(v24, v16, -*(&v23 + 1), 0.0);
  *&v22 = 0x4079000000000000;
  [v9 getFloatValue:&v22 fromParm:2 atFxTime:{a5->var0.var1, v17}];
  if (*&v22 != 0.0)
  {
    if (a4)
    {
      [a4 heliumRef];
    }

    else
    {
      v21 = 0;
    }

    v19 = HGObject::operator new(0x2B0uLL);
    HSphere::HSphere(v19);
  }

  v18 = HGObject::operator new(0x1A0uLL);
  HGNode::HGNode(v18);
  v21 = v18;
  [a3 setHeliumRef:&v21];
  if (v21)
  {
    (*(*v21 + 24))(v21);
  }

  return v9 != 0;
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
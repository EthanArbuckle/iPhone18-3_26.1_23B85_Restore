@interface PAEFisheye
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (PAEFisheye)initWithAPIManager:(id)a3;
- (id)dynamicPropertiesAtTime:(id)a3 withError:(id *)a4;
- (id)properties;
@end

@implementation PAEFisheye

- (PAEFisheye)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEFisheye;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
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

- (id)dynamicPropertiesAtTime:(id)a3 withError:(id *)a4
{
  v10 = 0.0;
  if ([-[PAEFilterDefaultBase getParamAPIWithError:](self getParamAPIWithError:{a4), "getFloatValue:fromParm:atFxTime:", &v10, 2, a3.var1}])
  {
    if (v10 == 0.0)
    {
      v6 = 6;
    }

    else
    {
      v6 = 3;
    }

    return [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", v6, v10), @"PixelTransformSupport", 0}];
  }

  else if (a4)
  {
    v8 = objc_opt_class();
    v9 = [(PAEFilterDefaultBase *)self getParamErrorFor:NSStringFromClass(v8)];
    result = 0;
    *a4 = v9;
  }

  else
  {
    return 0;
  }

  return result;
}

- (BOOL)addParameters
{
  v6.receiver = self;
  v6.super_class = PAEFisheye;
  [(PAESharedDefaultBase *)&v6 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Fisheye::Radius" parameterMin:0 parameterMax:0) sliderMin:1 sliderMax:0 delta:1.0 parmFlags:{0.0, 2.0, 0.0, 2.0, 0.1}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Fisheye::Amount" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:15.0 parmFlags:{-100.0, 100.0, -100.0, 100.0, 1.0}];
    [v3 addPointParameterWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultX:@"Fisheye::Center" defaultY:0 parmFlags:{0), 3, 0, 0.5, 0.5}];
  }

  return v3 != 0;
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
  if (!v9)
  {
LABEL_20:
    LOBYTE(v14) = 0;
    return v14;
  }

  v11 = v10;
  v25 = 0.0;
  [v9 getFloatValue:&v25 fromParm:2 atFxTime:a5->var0.var1];
  if (v25 == 0.0)
  {
    if (a4)
    {
      [a4 heliumRef];
    }

    else
    {
      *&v22 = 0;
    }

    [a3 setHeliumRef:&v22];
    if (v22)
    {
      (*(*v22 + 24))(v22);
    }

    LOBYTE(v14) = 1;
    return v14;
  }

  v12 = v25 / 30.0 + 1.0;
  if (v25 <= 0.0)
  {
    v12 = 1.0 / (1.0 - v25 / 30.0);
  }

  v25 = v12;
  if (v11)
  {
    v13 = [v11 versionAtCreation] == 0;
  }

  else
  {
    v13 = 1;
  }

  __asm { FMOV            V0.2D, #0.5 }

  v24 = _Q0;
  [v9 getXValue:&v24 YValue:&v24 + 8 fromParm:3 atFxTime:a5->var0.var1];
  [(PAESharedDefaultBase *)self convertRelativeToImageCoordinates:&v24 withImage:a4];
  v24 = v22;
  v23 = 0x3FB999999999999ALL;
  [v9 getFloatValue:&v23 fromParm:1 atFxTime:a5->var0.var1];
  [a4 width];
  [a4 height];
  if (v13)
  {
    [a4 pixelAspect];
  }

  [(PAESharedDefaultBase *)self getPixelTransformForImage:a4];
  [(PAESharedDefaultBase *)self getInversePixelTransformForImage:a4];
  v14 = [(PAESharedDefaultBase *)self getRenderMode:a5->var0.var1];
  if (v14)
  {
    if ([a3 imageType] == 3)
    {
      if (a4)
      {
        [a4 heliumRef];
      }

      v20 = HGObject::operator new(0x220uLL);
      HgcFisheye::HgcFisheye(v20);
    }

    goto LABEL_20;
  }

  return v14;
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
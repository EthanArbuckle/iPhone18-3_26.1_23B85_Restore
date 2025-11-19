@interface PAEDirectionalBlur
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (BOOL)getOutputWidth:(unint64_t *)a3 height:(unint64_t *)a4 withInput:(id *)a5 withInfo:(id *)a6;
- (PAEDirectionalBlur)initWithAPIManager:(id)a3;
- (id)dynamicPropertiesAtTime:(id)a3 withError:(id *)a4;
- (id)properties;
@end

@implementation PAEDirectionalBlur

- (PAEDirectionalBlur)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEDirectionalBlur;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:0];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"MayRemapTime", v4, @"SupportsLargeRenderScale", v5, @"SupportsHeliumRendering", v6, @"InputSizeLimit", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 3), @"AutoColorProcessingSupport", 0}];
}

- (id)dynamicPropertiesAtTime:(id)a3 withError:(id *)a4
{
  v6 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (!v6)
  {
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"Unable to retrieve FxParameterRetrievalAPI object", *MEMORY[0x277CCA450], 0}];
    if (a4)
    {
      v13 = v17;
      v14 = MEMORY[0x277CCA9B8];
      v15 = FxPlugErrorDomain;
      v16 = 100001;
      goto LABEL_12;
    }

    return 0;
  }

  v7 = v6;
  v20 = 0;
  v19 = 0.0;
  if (![v6 getBoolValue:&v20 fromParm:3 atFxTime:a3.var1] || (objc_msgSend(v7, "getFloatValue:fromParm:atFxTime:", &v19, 1, a3.var1) & 1) == 0)
  {
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"Unable to retrieve a parameter in [-PAEPrism dynamicPropertiesAtTime:withError:]", *MEMORY[0x277CCA450], 0}];
    if (a4)
    {
      v13 = v12;
      v14 = MEMORY[0x277CCA9B8];
      v15 = FxPlugErrorDomain;
      v16 = 100002;
LABEL_12:
      v18 = [v14 errorWithDomain:v15 code:v16 userInfo:v13];
      result = 0;
      *a4 = v18;
      return result;
    }

    return 0;
  }

  if (v20 & 1 | (v19 != 0.0))
  {
    v8 = 3;
  }

  else
  {
    v8 = 6;
  }

  v9 = MEMORY[0x277CBEAC0];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{(v20 & 1) == 0, v19}];
  return [v9 dictionaryWithObjectsAndKeys:{v10, @"PositionIndependent", objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", v8), @"PixelTransformSupport", 0}];
}

- (BOOL)addParameters
{
  v10.receiver = self;
  v10.super_class = PAEDirectionalBlur;
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
    v7 = [v4 versionAtCreation] == 0;
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"DirectionalBlur::Amount" parameterMin:0 parameterMax:0) sliderMin:1 sliderMax:0 delta:7.0 parmFlags:{0.0, dbl_260343800[v7], 0.0, 32.0, 1.0}];
    [v3 addAngleSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"DirectionalBlur::Angle" parameterMin:0 parameterMax:0) parmFlags:{2, 0, 0.0, 0.0, 6.28318531}];
    [v3 addToggleButtonWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"DirectionalBlur::Crop" parmFlags:{0, 0), 3, 0, 33}];
    [v3 addPointParameterWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultX:@"DirectionalBlur::OSC Center" defaultY:0 parmFlags:{0), 4, 2, 0.5, 0.5}];
  }

  return v6;
}

- (BOOL)getOutputWidth:(unint64_t *)a3 height:(unint64_t *)a4 withInput:(id *)a5 withInfo:(id *)a6
{
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B780];
  v11 = v10;
  if (v10)
  {
    v18 = 0.0;
    [v10 getFloatValue:&v18 fromParm:1 atFxTime:a6->var0.var1];
    v17 = 0;
    [v11 getBoolValue:&v17 fromParm:3 atFxTime:a6->var0.var1];
    var0 = a5->var0;
    var1 = a5->var1;
    if (v17 == 1)
    {
      if (a3)
      {
        *a3 = var0;
      }
    }

    else
    {
      v14 = v18 + v18;
      v15 = (2 * vcvtps_s32_f32(v14));
      if (a3)
      {
        *a3 = var0 + v15;
      }

      var1 += v15;
    }

    if (a4)
    {
      *a4 = var1;
    }
  }

  return v11 != 0;
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B780];
  if (v9)
  {
    [(PAESharedDefaultBase *)self getPixelTransformForImage:a4];
    v19[0] = 0.0;
    [v9 getFloatValue:v19 fromParm:1 atFxTime:a5->var0.var1];
    v19[0] = v19[0] * 0.5;
    v18 = 0.0;
    [v9 getFloatValue:&v18 fromParm:2 atFxTime:a5->var0.var1];
    if ([a4 origin] == 2)
    {
      v18 = 6.28318531 - v18;
    }

    v17 = 0;
    [v9 getBoolValue:&v17 fromParm:3 atFxTime:a5->var0.var1];
    if ([(PAESharedDefaultBase *)self getRenderMode:a5->var0.var1])
    {
      if (v19[0] == 0.0)
      {
        if (a4)
        {
          [a4 heliumRef];
        }

        else
        {
          v15.f64[0] = 0.0;
        }

        [a3 setHeliumRef:&v15];
        if (*&v15.f64[0])
        {
          (*(**&v15.f64[0] + 24))(*&v15.f64[0]);
        }
      }

      else
      {
        if (a4)
        {
          [a4 heliumRef];
        }

        else
        {
          v16 = 0;
        }

        v10 = HGObject::operator new(0x1B0uLL);
        HDirectionalBlur::HDirectionalBlur(v10);
        v11 = __sincos_stret(v18);
        v13.f64[0] = v19[2];
        v12.f64[0] = v19[1];
        v12.f64[1] = v19[5];
        v13.f64[1] = v19[6];
        v15 = vmulq_n_f64(vaddq_f64(vmulq_n_f64(v12, v11.__cosval), vmulq_n_f64(v13, v11.__sinval)), v19[0]);
        HDirectionalBlur::init(v10, v15.f64);
        *&v15.f64[0] = v10;
        if (v10)
        {
          (*(*v10 + 16))(v10);
        }

        (*(*v10 + 120))(v10, 0, v16);
        if (v17 == 1)
        {
          [(PAESharedDefaultBase *)self crop:&v15 fromImage:a4 toImage:a3];
        }

        [a3 setHeliumRef:&v15];
        if (*&v15.f64[0])
        {
          (*(**&v15.f64[0] + 24))(*&v15.f64[0]);
        }

        (*(*v10 + 24))(v10);
        if (v16)
        {
          (*(*v16 + 24))(v16);
        }
      }
    }
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
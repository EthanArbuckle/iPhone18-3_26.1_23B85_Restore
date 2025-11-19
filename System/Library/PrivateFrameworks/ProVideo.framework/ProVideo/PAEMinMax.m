@interface PAEMinMax
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (PAEMinMax)initWithAPIManager:(id)a3;
- (id)dynamicPropertiesAtTime:(id)a3 withError:(id *)a4;
- (id)properties;
- (void)dealloc;
@end

@implementation PAEMinMax

- (PAEMinMax)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEMinMax;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PAEMinMax;
  [(PAESharedDefaultBase *)&v2 dealloc];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:0];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"PositionIndependent", v4, @"MayRemapTime", v5, @"SupportsLargeRenderScale", v6, @"SupportsHeliumRendering", v7, @"InputSizeLimit", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 1), @"AutoColorProcessingSupport", 0}];
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
      v6 = 1;
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
  v11.receiver = self;
  v11.super_class = PAEMinMax;
  [(PAESharedDefaultBase *)&v11 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  v4 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
  if (v4)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (!v5)
  {
    if ([v4 versionAtCreation] >= 2)
    {
      v7 = 250;
    }

    else
    {
      v7 = 1000;
    }

    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addPopupMenuWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"MinMax::Mode" menuEntries:0 parmFlags:{0), 1, 0, objc_msgSend(objc_msgSend(v8, "localizedStringForKey:value:table:", @"MinMax::ModeEntries", 0, 0), "componentsSeparatedByString:", @"|", 1}];
    LODWORD(v10) = 0;
    [v3 addIntSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"MinMax::Radius" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:0 parmFlags:{v7, 0, 0x100000064, v10}];
  }

  return v6;
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    return 0;
  }

  [(PAESharedDefaultBase *)self getPixelTransformForImage:a4];
  v12 = v28[0];
  v13 = v28[5];
  v27 = 0;
  [v9 getIntValue:&v27 + 4 fromParm:1 atFxTime:a5->var0.var1];
  [v9 getIntValue:&v27 fromParm:2 atFxTime:a5->var0.var1];
  if (!-[PAESharedDefaultBase getRenderMode:](self, "getRenderMode:", a5->var0.var1) || [a4 imageType] != 3)
  {
    return 0;
  }

  if (a4)
  {
    [a4 heliumRef];
  }

  else
  {
    v26 = 0;
  }

  v14 = v27 == 0;
  if (v27)
  {
    [(PAESharedDefaultBase *)self getImageBoundary:a4];
    v25[0] = vcvtq_f64_f32(v24[0]);
    v25[1] = vcvtq_f64_f32(v24[1]);
    v16 = PCMatrix44Tmpl<double>::transformRect<double>(v28, v25, v25);
    if (v16)
    {
      v23 = v26;
      if (v26)
      {
        (*(**&v26 + 16))(v26);
      }

      [(PAESharedDefaultBase *)self changeDOD:&v23 withRect:v25];
      v17 = v24[0];
      if (*&v26 == *v24)
      {
        if (v26)
        {
          (*(**v24 + 24))(*v24);
        }
      }

      else
      {
        if (v26)
        {
          (*(**&v26 + 24))();
          v17 = v24[0];
        }

        v26 = v17;
        v24[0] = 0;
      }

      if (v23)
      {
        (*(**&v23 + 24))(v23);
      }

      v18 = HGObject::operator new(0x1D0uLL);
      HGTextureWrap::HGTextureWrap(v18);
      (*(*v18 + 120))(v18, 0, v26);
      HGTextureWrap::SetTextureWrapMode(v18, 1, v19);
      v20 = HGObject::operator new(0x1C0uLL);
      HGMinMax::HGMinMax(v20);
      (*(*v20 + 120))(v20, 0, v18);
      (*(*v20 + 96))(v20, 0, SHIDWORD(v27), 0.0, 0.0, 0.0);
      v21 = v27;
      v22 = v12 * v21;
      *&v21 = v13 * v21;
      (*(*v20 + 96))(v20, 1, v22, *&v21, 0.0, 0.0);
      v24[0] = v20;
      (*(*v20 + 16))(v20);
      [(PAESharedDefaultBase *)self crop:v24 fromImage:a4 toImage:a3];
      [a3 setHeliumRef:v24];
      if (v24[0])
      {
        (*(**v24 + 24))(*v24);
      }

      (*(*v20 + 24))(v20);
      (*(*v18 + 24))(v18);
    }
  }

  else
  {
    [a3 setHeliumRef:&v26];
    v16 = 0;
  }

  if (v26)
  {
    (*(**&v26 + 24))(v26);
  }

  if (v16)
  {
    return 1;
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
@interface PAEBulge
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (PAEBulge)initWithAPIManager:(id)a3;
- (id)dynamicPropertiesAtTime:(id)a3 withError:(id *)a4;
- (id)properties;
- (void)getEdgeMode:(unsigned int *)a3 withInfo:(id *)a4;
@end

@implementation PAEBulge

- (PAEBulge)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEBulge;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:0];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"PositionIndependent", v4, @"MayRemapTime", v5, @"SupportsLargeRenderScale", v6, @"SupportsHeliumRendering", v7, @"InputSizeLimit", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 3), @"AutoColorProcessingSupport", 0}];
}

- (id)dynamicPropertiesAtTime:(id)a3 withError:(id *)a4
{
  v7 = [(PAEFilterDefaultBase *)self getParamAPIWithError:a4];
  v13 = 0.0;
  if ([v7 getFloatValue:&v13 fromParm:2 atFxTime:a3.var1] & 1) != 0 && (v12 = 0, (objc_msgSend(v7, "getBoolValue:fromParm:atFxTime:", &v12, 4, a3.var1)))
  {
    if (v12 & 1 | (v13 != 0.0))
    {
      v8 = 1;
    }

    else
    {
      v8 = 6;
    }

    return [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", v8, v13), @"PixelTransformSupport", 0}];
  }

  else if (a4)
  {
    v10 = objc_opt_class();
    v11 = [(PAEFilterDefaultBase *)self getParamErrorFor:NSStringFromClass(v10)];
    result = 0;
    *a4 = v11;
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
  v11.super_class = PAEBulge;
  [(PAESharedDefaultBase *)&v11 addParameters];
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
    v7 = v4;
    v8 = [v4 versionAtCreation];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addPointParameterWithName:objc_msgSend(v9 parmId:"localizedStringForKey:value:table:" defaultX:@"Bulge::Center" defaultY:0 parmFlags:{0), 1, 0, 0.5, 0.5}];
    [v3 addFloatSliderWithName:objc_msgSend(v9 parmId:"localizedStringForKey:value:table:" defaultValue:@"Bulge::Amount" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:300.0 parmFlags:{0.0, dbl_260343D30[v8 < 2], 0.0, dbl_260343770[v8 < 2], 1.0}];
    [v3 addFloatSliderWithName:objc_msgSend(v9 parmId:"localizedStringForKey:value:table:" defaultValue:@"Bulge::Scale" parameterMin:0 parameterMax:0) sliderMin:3 sliderMax:0 delta:0.5 parmFlags:{-5.0, 5.0, -2.0, 2.0, 0.5}];
    [v3 addToggleButtonWithName:objc_msgSend(v9 parmId:"localizedStringForKey:value:table:" defaultValue:@"Bulge::Crop" parmFlags:{0, 0), 4, objc_msgSend(v7, "versionAtCreation") == 0, 33}];
  }

  return v6;
}

- (void)getEdgeMode:(unsigned int *)a3 withInfo:(id *)a4
{
  v6 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (v6)
  {
    v7 = 0;
    [v6 getBoolValue:&v7 fromParm:4 atFxTime:a4->var0.var1];
    *a3 = v7;
  }
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (v9)
  {
    v10 = v9;
    v24 = 150.0;
    [v9 getFloatValue:&v24 fromParm:2 atFxTime:a5->var0.var1];
    if (v24 == 0.0)
    {
      if (a4)
      {
        [a4 heliumRef];
      }

      else
      {
        v23 = 0;
      }

      [a3 setHeliumRef:&v23];
      if (v23)
      {
        (*(*v23 + 24))(v23);
      }

      LOBYTE(v9) = 1;
    }

    else
    {
      [(PAESharedDefaultBase *)self getScaleForImage:a4, v24];
      v21 = 0.5;
      v22 = 0.5;
      [v10 getXValue:&v22 YValue:&v21 fromParm:1 atFxTime:a5->var0.var1];
      v11 = [a4 width];
      v22 = v22 * v11;
      v12 = [a4 height];
      v21 = v21 * v12;
      v20 = 0x3FE0000000000000;
      [v10 getFloatValue:&v20 fromParm:3 atFxTime:a5->var0.var1];
      v19 = 0;
      [v10 getBoolValue:&v19 fromParm:4 atFxTime:a5->var0.var1];
      LODWORD(v9) = [(PAESharedDefaultBase *)self getRenderMode:a5->var0.var1];
      if (v9)
      {
        if ([a4 imageType] == 3)
        {
          if (a4)
          {
            [a4 heliumRef];
          }

          else
          {
            v18 = 0;
          }

          if (v19 == 1)
          {
            v16 = v18;
            if (v18)
            {
              (*(*v18 + 16))(v18);
            }

            [(PAESharedDefaultBase *)self smear:&v16 fromImage:a4 toImage:a4];
            v13 = v17;
            if (v18 == v17)
            {
              if (v18)
              {
                (*(*v17 + 24))(v17);
              }
            }

            else
            {
              if (v18)
              {
                (*(*v18 + 24))();
                v13 = v17;
              }

              v17 = 0;
              v18 = v13;
            }

            if (v16)
            {
              (*(*v16 + 24))(v16);
            }
          }

          v14 = HGObject::operator new(0x1A0uLL);
          HgcBulge::HgcBulge(v14);
        }

        LOBYTE(v9) = 0;
      }
    }
  }

  return v9;
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
@interface PAEOffset
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (PAEOffset)initWithAPIManager:(id)a3;
- (id)properties;
@end

@implementation PAEOffset

- (PAEOffset)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEOffset;
  return [(PAETile *)&v4 initWithAPIManager:a3];
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

- (BOOL)addParameters
{
  v2 = [(PROAPIAccessing *)self->super.super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v2)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v2 addFloatSliderWithName:objc_msgSend(v3 parmId:"localizedStringForKey:value:table:" defaultValue:@"Offset::Horizontal Offset" parameterMin:0 parameterMax:0) sliderMin:1 sliderMax:0 delta:0.0 parmFlags:{-10000.0, 10000.0, -1000.0, 1000.0, 0.1}];
    [v2 addFloatSliderWithName:objc_msgSend(v3 parmId:"localizedStringForKey:value:table:" defaultValue:@"Offset::Vertical Offset" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:0.0 parmFlags:{-10000.0, 10000.0, -1000.0, 1000.0, 0.1}];
  }

  return v2 != 0;
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v9 = [(PROAPIAccessing *)self->super.super.super._apiManager apiForProtocol:&unk_28735E258];
  v10 = v9;
  if (v9)
  {
    v29 = 0.0;
    v30 = 0.0;
    [v9 getFloatValue:&v30 fromParm:1 atFxTime:a5->var0.var1];
    [v10 getFloatValue:&v29 fromParm:2 atFxTime:a5->var0.var1];
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    if (a3)
    {
      [a3 imageInfo];
    }

    [(PAESharedDefaultBase *)self getInversePixelTransformForImage:a4];
    [(PAESharedDefaultBase *)self getPixelTransformForImage:a4];
    v11 = v29;
    if (*(&v26 + 1))
    {
      v11 = -v29;
    }

    v29 = v11 / 100.0 - floor(v11 / 100.0);
    v30 = v30 / 100.0 - floor(v30 / 100.0);
    if (-[PAESharedDefaultBase getRenderMode:](self, "getRenderMode:", a5->var0.var1) && [a4 imageType] == 3)
    {
      if (a4)
      {
        [a4 heliumRef];
      }

      else
      {
        v23 = 0;
      }

      [(PAESharedDefaultBase *)self getScaleForImage:a4];
      v19 = v23;
      if (v23)
      {
        (*(*v23 + 16))(v23);
      }

      v12 = v30;
      v13 = [a4 width];
      v14 = v21;
      v15 = v29;
      v16 = [a4 height];
      *v18 = v21;
      *&v18[1] = v22;
      [(PAETile *)self transformAndTile:&v19 withXValue:v18 YValue:a4 skew:v12 * v13 * v14 scale:v15 * v16 * v22 stretch:0.0 rotation:1.0 resolution:1.0 inputImage:0.0];
      if (v19)
      {
        (*(*v19 + 24))(v19);
      }

      [a3 setHeliumRef:&v20];
      if (v20)
      {
        (*(*v20 + 24))(v20);
      }

      if (v23)
      {
        (*(*v23 + 24))(v23);
      }
    }
  }

  return v10 != 0;
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
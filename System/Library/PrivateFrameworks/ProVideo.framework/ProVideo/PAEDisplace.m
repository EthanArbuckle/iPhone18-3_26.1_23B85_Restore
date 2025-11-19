@interface PAEDisplace
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (PAEDisplace)initWithAPIManager:(id)a3;
- (id)properties;
@end

@implementation PAEDisplace

- (PAEDisplace)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEDisplace;
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
  v8 = [MEMORY[0x277CCABB0] numberWithInt:3];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"PositionIndependent", v4, @"MayRemapTime", v5, @"SupportsLargeRenderScale", v6, @"SupportsHeliumRendering", v7, @"InputSizeLimit", v8, @"PixelTransformSupport", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 3), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v6.receiver = self;
  v6.super_class = PAEDisplace;
  [(PAESharedDefaultBase *)&v6 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addImageReferenceWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" parmFlags:{@"Displace::Map Image", 0, 0), 1, 0}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Displace::Horizontal Scale" parameterMin:0 parameterMax:0) sliderMin:3 sliderMax:0 delta:0.1 parmFlags:{-1.0, 1.0, -1.0, 1.0, 0.1}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Displace::Vertical Scale" parameterMin:0 parameterMax:0) sliderMin:4 sliderMax:0 delta:0.1 parmFlags:{-1.0, 1.0, -1.0, 1.0, 0.1}];
    [v3 addToggleButtonWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Displace::Repeat Edges" parmFlags:{0, 0), 5, 0, 1}];
  }

  return v3 != 0;
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v29 = 0;
  v27 = 0;
  v28 = 0;
  [v9 getFloatValue:&v28 fromParm:3 atFxTime:a5->var0.var1];
  [v10 getFloatValue:&v27 fromParm:4 atFxTime:a5->var0.var1];
  [v10 getBoolValue:&v29 fromParm:5 atFxTime:a5->var0.var1];
  v11 = [a3 imageType];
  if ([(PAESharedDefaultBase *)self getRenderMode:a5->var0.var1])
  {
    v12 = v11 == 3;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  if (v12)
  {
    v26 = 0;
    v14 = *&a5->var2;
    v15 = *&a5->var4;
    v25[0] = *&a5->var0.var0;
    v25[1] = v14;
    v25[2] = v15;
    [(PAESharedDefaultBase *)self getHeliumImage:&v26 layerOffsetX:0 layerOffsetY:0 requestInfo:v25 fromParm:1 atTime:a5->var0.var1];
    if (v26)
    {
      [v26 heliumRef];
      v16 = *&v25[0];
      v17 = [v26 width];
      v18 = [v26 height];
    }

    else
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
    }

    [(PAESharedDefaultBase *)self getPixelTransformForImage:a4];
    [(PAESharedDefaultBase *)self getInversePixelTransformForImage:a4];
    if (v16 && v17 && v18)
    {
      [(PAESharedDefaultBase *)self getImageBoundary:a4];
      v19 = *(&v25[0] + 1);
      HGTransform::HGTransform(v25);
      v20 = v17 / a5->var3;
      v21 = v18 / a5->var4;
      HGTransform::Scale(v25, *&v19 / (v20 + 4.0), *(&v19 + 1) / (v21 + 4.0), 1.0);
      v22 = HGObject::operator new(0x210uLL);
      HGXForm::HGXForm(v22);
      (*(*v22 + 576))(v22, v25);
      (*(*v22 + 120))(v22, 0, v16);
      (*(*v22 + 136))(v22, 0, 32);
      if (a4)
      {
        [a4 heliumRef];
      }

      v23 = HGObject::operator new(0x1A0uLL);
      HgcDisplace::HgcDisplace(v23);
    }

    if (a4)
    {
      [a4 heliumRef];
    }

    else
    {
      *&v25[0] = 0;
    }

    [a3 setHeliumRef:v25];
    if (*&v25[0])
    {
      (*(**&v25[0] + 24))(*&v25[0]);
    }

    if (v16)
    {
      (*(*v16 + 24))(v16);
    }
  }

  return v13;
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
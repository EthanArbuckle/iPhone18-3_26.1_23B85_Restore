@interface PAEStripesFilter
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (BOOL)getOutputWidth:(unint64_t *)a3 height:(unint64_t *)a4 withInput:(id *)a5 withInfo:(id *)a6;
- (PAEStripesFilter)initWithAPIManager:(id)a3;
- (id)properties;
@end

@implementation PAEStripesFilter

- (PAEStripesFilter)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEStripesFilter;
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

- (BOOL)addParameters
{
  v7.receiver = self;
  v7.super_class = PAEStripesFilter;
  [(PAESharedDefaultBase *)&v7 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    v4 = v3;
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v4 addPointParameterWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultX:@"StripesFilter::Center" defaultY:0 parmFlags:{0), 1, 0, 0.5, 0.5}];
    [v4 addAngleSliderWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"StripesFilter::Angle" parameterMin:0 parameterMax:0) parmFlags:{2, 0, 0.0, 0.0, 6.28318531}];
    [v4 addAngleSliderWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"StripesFilter::Offset" parameterMin:0 parameterMax:0) parmFlags:{3, 0, 0.0, 0.0, 6.28318531}];
  }

  return 1;
}

- (BOOL)getOutputWidth:(unint64_t *)a3 height:(unint64_t *)a4 withInput:(id *)a5 withInfo:(id *)a6
{
  if (a3)
  {
    v6 = a4 == 0;
  }

  else
  {
    v6 = 1;
  }

  result = !v6;
  if (!v6)
  {
    *a3 = a5->var0;
    *a4 = a5->var1;
  }

  return result;
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (v9)
  {
    v10 = v9;
    v11 = [a4 width];
    v12 = [a4 height];
    v36 = 0.0;
    v37[0] = 0.0;
    [v10 getXValue:v37 YValue:&v36 fromParm:1 atFxTime:a5->var0.var1];
    v36 = (v36 + -0.5) * v12;
    v37[0] = (v37[0] + -0.5) * v11;
    v35 = 0.0;
    [v10 getFloatValue:&v35 fromParm:2 atFxTime:a5->var0.var1];
    v34 = 0.0;
    [v10 getFloatValue:&v34 fromParm:3 atFxTime:a5->var0.var1];
    v33 = 0.0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    if (a3)
    {
      [a3 imageInfo];
      v13 = v33;
      if (*(&v31 + 1))
      {
        v34 = -v34;
        v35 = -v35;
      }
    }

    else
    {
      v13 = 0.0;
    }

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
          v28 = 0;
        }

        v14 = HGObject::operator new(0x1D0uLL);
        HGTextureWrap::HGTextureWrap(v14);
        HGTextureWrap::SetTextureWrapMode(v14, 2, v15);
        (*(*v14 + 120))(v14, 0, v28);
        HGTransform::HGTransform(v27);
        HGTransform::Translate(v27, -v37[0], v36, 0.0);
        HGTransform::Scale(v27, v13, 1.0, 1.0);
        HGTransform::Rotate(v27, v35 * 180.0 / 3.14159265, 0.0, 0.0, 1.0);
        HGTransform::Rotate(v27, v34 * -180.0 / 3.14159265, 0.0, 0.0, 1.0);
        v16 = HGObject::operator new(0x210uLL);
        HGXForm::HGXForm(v16);
        (*(*v16 + 576))(v16, v27);
        (*(*v16 + 120))(v16, 0, v14);
        v17 = HGObject::operator new(0x1A0uLL);
        HGCrop::HGCrop(v17);
        v18 = HGRectMake4i(-v11, 0, v11, 1u);
        v20 = v19;
        (*(*v17 + 120))(v17, 0, v16);
        (*(*v17 + 96))(v17, 0, v18, SHIDWORD(v18), v20, SHIDWORD(v20));
        v21 = HGObject::operator new(0x1D0uLL);
        HGTextureWrap::HGTextureWrap(v21);
        HGTextureWrap::SetTextureWrapMode(v21, 1, v22);
        (*(*v21 + 120))(v21, 0, v17);
        HGTransform::HGTransform(v26);
        HGTransform::Rotate(v26, v35 * -57.2957795, 0.0, 0.0, 1.0);
        HGTransform::Scale(v26, 1.0 / v13, 1.0, 1.0);
        HGTransform::Translate(v26, v37[0], -v36, 0.0);
        v23 = HGObject::operator new(0x210uLL);
        HGXForm::HGXForm(v23);
        (*(*v23 + 576))(v23, v26);
        (*(*v23 + 120))(v23, 0, v21);
        v25 = v23;
        (*(*v23 + 16))(v23);
        [(PAESharedDefaultBase *)self crop:&v25 fromImage:a4 toImage:a3];
        [a3 setHeliumRef:&v25];
        if (v25)
        {
          (*(*v25 + 24))(v25);
        }

        (*(*v23 + 24))(v23);
        HGTransform::~HGTransform(v26);
        (*(*v21 + 24))(v21);
        (*(*v17 + 24))(v17);
        (*(*v16 + 24))(v16);
        HGTransform::~HGTransform(v27);
        (*(*v14 + 24))(v14);
        if (v28)
        {
          (*(*v28 + 24))(v28);
        }

        LOBYTE(v9) = 1;
      }

      else
      {
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
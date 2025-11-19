@interface PAEZoomBlur
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (BOOL)getOutputWidth:(unint64_t *)a3 height:(unint64_t *)a4 withInput:(id *)a5 withInfo:(id *)a6;
- (PAEZoomBlur)initWithAPIManager:(id)a3;
- (id)dynamicPropertiesAtTime:(id)a3 withError:(id *)a4;
- (id)properties;
- (void)constrainWidth:(unint64_t *)a3 andHeight:(unint64_t *)a4 withImageInfo:(id *)a5;
- (void)dealloc;
- (void)polarToRect:(id)a3 withInputImage:(id)a4 withInputNode:(HGRef<HGNode>)a5 centerX:(double)a6 centerY:(double)a7 upscaleFactor:(double)a8 andOutputNode:(void *)a9;
- (void)rectToPolar:(id)a3 withInputImage:(id)a4 withInputNode:(HGRef<HGNode>)a5 centerX:(double)a6 centerY:(double)a7 upscaleFactor:(double)a8 andOutputNode:(void *)a9;
@end

@implementation PAEZoomBlur

- (PAEZoomBlur)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEZoomBlur;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PAEZoomBlur;
  [(PAESharedDefaultBase *)&v2 dealloc];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:1];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"PositionIndependent", v4, @"MayRemapTime", v5, @"SupportsLargeRenderScale", v6, @"SupportsHeliumRendering", v7, @"InputSizeLimit", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 3), @"AutoColorProcessingSupport", 0}];
}

- (id)dynamicPropertiesAtTime:(id)a3 withError:(id *)a4
{
  v7 = [(PAEFilterDefaultBase *)self getParamAPIWithError:a4];
  v13 = 0.0;
  if ([v7 getFloatValue:&v13 fromParm:1 atFxTime:a3.var1] & 1) != 0 && (v12 = 0, (objc_msgSend(v7, "getBoolValue:fromParm:atFxTime:", &v12, 3, a3.var1)))
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
  v12.receiver = self;
  v12.super_class = PAEZoomBlur;
  [(PAESharedDefaultBase *)&v12 addParameters];
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
    v7 = [v4 versionAtCreation];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addPopupMenuWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Zoomblur::Look" menuEntries:0 parmFlags:{0), 5, 0, objc_msgSend(objc_msgSend(v8, "localizedStringForKey:value:table:", @"Zoomblur::Look Entries", 0, 0), "componentsSeparatedByString:", @"|", 1}];
    v9 = [v8 localizedStringForKey:@"Zoomblur::Amount" value:0 table:0];
    if (v7 >= 2)
    {
      v10 = 1000.0;
    }

    else
    {
      v10 = 100.0;
    }

    [v3 addFloatSliderWithName:v9 parmId:1 defaultValue:0 parameterMin:2.0 parameterMax:0.0 sliderMin:v10 sliderMax:0.0 delta:32.0 parmFlags:1.0];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Zoomblur::Swirliness" parameterMin:0 parameterMax:0) sliderMin:4 sliderMax:0 delta:0.0 parmFlags:{-1.0, 1.0, -1.0, 1.0, 0.1}];
    [v3 addPointParameterWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultX:@"Zoomblur::Center" defaultY:0 parmFlags:{0), 2, 0, 0.5, 0.5}];
    [v3 addToggleButtonWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Zoomblur::Crop" parmFlags:{0, 0), 3, 0, 33}];
  }

  return v6;
}

- (void)constrainWidth:(unint64_t *)a3 andHeight:(unint64_t *)a4 withImageInfo:(id *)a5
{
  v5 = *a3;
  v6 = *a4;
  if (v5 / v6 <= 1.0)
  {
    if (*a4 < 0xFFD)
    {
      return;
    }

    v8 = (v5 * 4092.0 / v6);
    v7 = 4092;
  }

  else
  {
    if (*a3 < 0xFFD)
    {
      return;
    }

    v7 = (v6 * 4092.0 / v5);
    v8 = 4092;
  }

  *a3 = v8;
  *a4 = v7;
}

- (BOOL)getOutputWidth:(unint64_t *)a3 height:(unint64_t *)a4 withInput:(id *)a5 withInfo:(id *)a6
{
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = &v33;
  }

  if (a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = &v33;
  }

  v11 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B780];
  v12 = v11;
  if (v11)
  {
    v32 = 0.0;
    v33 = 0;
    [v11 getFloatValue:&v32 fromParm:1 atFxTime:a6->var0.var1];
    v31 = 0;
    [v12 getBoolValue:&v31 fromParm:3 atFxTime:a6->var0.var1];
    v30 = 0;
    [v12 getIntValue:&v30 fromParm:5 atFxTime:a6->var0.var1];
    var0 = a5->var0;
    var1 = a5->var1;
    v28 = 0.5;
    v29 = 0.5;
    [v12 getXValue:&v29 YValue:&v28 fromParm:2 atFxTime:a6->var0.var1];
    v16 = v28;
    if (a5->var5 == 2)
    {
      v16 = 1.0 - v28;
    }

    v17 = v29 * var0;
    v18 = v16 * var1;
    v28 = v18;
    v29 = v17;
    if ((v31 & 1) != 0 || v32 == 0.0)
    {
      *v9 = var0;
      *v10 = var1;
    }

    else if (v30 == 1)
    {
      v19 = 3 * vcvtpd_s64_f64(v32);
      *v9 = var0 + v19;
      *v10 = var1 + v19;
    }

    else
    {
      v20 = v32;
      v21 = v17;
      v22 = v18;
      HZoomBlur::getOutputWidthAndHeight(LODWORD(a5->var0), a5->var1, v9, v20, v21, v22, v10, v15);
      v23 = *&a5->var6;
      v26[2] = *&a5->var4;
      v26[3] = v23;
      var8 = a5->var8;
      v24 = *&a5->var2;
      v26[0] = *&a5->var0;
      v26[1] = v24;
      [(PAEZoomBlur *)self constrainWidth:v9 andHeight:v10 withImageInfo:v26];
    }
  }

  return v12 != 0;
}

- (void)polarToRect:(id)a3 withInputImage:(id)a4 withInputNode:(HGRef<HGNode>)a5 centerX:(double)a6 centerY:(double)a7 upscaleFactor:(double)a8 andOutputNode:(void *)a9
{
  if ([-[PROAPIAccessing apiForProtocol:](self->super.super._apiManager apiForProtocol:{&unk_28735F2C8), "versionAtCreation"}])
  {
    v12 = a4;
  }

  else
  {
    v12 = a3;
  }

  [v12 width];
  [v12 height];
  [(PAESharedDefaultBase *)self getInversePixelTransformForImage:a3];
  [(PAESharedDefaultBase *)self getPixelTransformForImage:a4];
  v13 = HGObject::operator new(0x1C0uLL);
  HgcPolarToRect::HgcPolarToRect(v13);
}

- (void)rectToPolar:(id)a3 withInputImage:(id)a4 withInputNode:(HGRef<HGNode>)a5 centerX:(double)a6 centerY:(double)a7 upscaleFactor:(double)a8 andOutputNode:(void *)a9
{
  v12 = [-[PROAPIAccessing apiForProtocol:](self->super.super._apiManager apiForProtocol:{&unk_28735F2C8), "versionAtCreation"}];
  [(PAESharedDefaultBase *)self getInversePixelTransformForImage:a3];
  [(PAESharedDefaultBase *)self getPixelTransformForImage:a4];
  if (!v12)
  {
    a4 = a3;
  }

  [a4 width];
  [a4 height];
  [a3 width];
  [a3 height];
  v13 = HGObject::operator new(0x1B0uLL);
  HgcRectToPolar::HgcRectToPolar(v13);
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  if (a5->var1 == 2)
  {
    v9 = 1.5;
  }

  else
  {
    v9 = 1.0;
  }

  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B780];
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v63 = 0.0;
  [v10 getFloatValue:&v63 fromParm:1 atFxTime:a5->var0.var1];
  if (v63 == 0.0)
  {
    if (a4)
    {
      [a4 heliumRef];
    }

    else
    {
      v55[0] = 0;
    }

    [a3 setHeliumRef:v55];
    if (v55[0])
    {
      (*(*v55[0] + 24))(v55[0]);
    }

    return 1;
  }

  else
  {
    v62 = 0.0;
    [v11 getFloatValue:&v62 fromParm:4 atFxTime:{a5->var0.var1, v63}];
    v62 = v62 * 3.14159265 * 0.5 + 1.57079633;
    v60 = 0.5;
    v61 = 0.5;
    [v11 getXValue:&v61 YValue:&v60 fromParm:2 atFxTime:a5->var0.var1];
    v13 = v61;
    v14 = v13 * [a4 width] - vcvtd_n_f64_u64(objc_msgSend(a4, "width"), 1uLL);
    v15 = v60;
    v16 = v15 * [a4 height] - vcvtd_n_f64_u64(objc_msgSend(a4, "height"), 1uLL);
    v17 = sqrtf((v14 * v14) + (v16 * v16));
    if (v17 > 65000.0)
    {
      if (v17 >= 0.00001)
      {
        v14 = v14 / v17;
        v16 = v16 / v17;
      }

      v18 = v14 * 65000.0;
      v19 = v16 * 65000.0;
      v20 = vcvtd_n_f64_u64([a4 width], 1uLL) + v18;
      v61 = v20 / [a4 width];
      v21 = vcvtd_n_f64_u64([a4 height], 1uLL) + v19;
      v60 = v21 / [a4 height];
    }

    v59 = 0;
    [v11 getBoolValue:&v59 fromParm:3 atFxTime:a5->var0.var1];
    v58 = 0;
    [v11 getIntValue:&v58 fromParm:5 atFxTime:a5->var0.var1];
    v22 = [a4 imageType];
    if ([(PAESharedDefaultBase *)self getRenderMode:a5->var0.var1])
    {
      v23 = v22 == 3;
    }

    else
    {
      v23 = 0;
    }

    v12 = v23;
    if (v23)
    {
      if (a4)
      {
        [a4 heliumRef];
      }

      else
      {
        v57 = 0;
      }

      if (v63 == 0.0)
      {
        [a3 setHeliumRef:{&v57, v63}];
      }

      else if (v58 == 1)
      {
        [(PAESharedDefaultBase *)self getInversePixelTransformForImage:a3, v63];
        HGTransform::HGTransform(v55);
        HGTransform::Scale(v55, v9, v9, 1.0);
        v25 = HGObject::operator new(0x210uLL);
        HGXForm::HGXForm(v25);
        (*(*v25 + 576))(v25, v55);
        (*(*v25 + 120))(v25, 0, v57);
        v53 = v25;
        v54 = 0;
        (*(*v25 + 16))(v25);
        [(PAEZoomBlur *)self polarToRect:a3 withInputImage:a4 withInputNode:&v53 centerX:&v54 centerY:v61 upscaleFactor:v60 andOutputNode:v9];
        if (v53)
        {
          (*(*v53 + 24))(v53);
        }

        v26 = HGObject::operator new(0x1B0uLL);
        HDirectionalBlur::HDirectionalBlur(v26);
        if (v26)
        {
          (*(*v26 + 16))(v26);
        }

        v27 = v9 * v63;
        v28 = v62;
        v29 = 1.0 / *v56;
        v30 = 1.0 / fabs(*&v56[5]);
        HDirectionalBlur::init(v26, v27, v28, v29, v30);
        (*(*v26 + 120))(v26, 0, v54);
        v51 = v26;
        v52 = 0;
        (*(*v26 + 16))(v26);
        [(PAEZoomBlur *)self rectToPolar:a3 withInputImage:a4 withInputNode:&v51 centerX:&v52 centerY:v61 upscaleFactor:v60 andOutputNode:v9];
        if (v51)
        {
          (*(*v51 + 24))(v51);
        }

        HGTransform::HGTransform(v49);
        HGTransform::Scale(v49, 1.0 / v9, 1.0 / v9, 1.0);
        v31 = HGObject::operator new(0x210uLL);
        HGXForm::HGXForm(v31);
        (*(*v31 + 576))(v31, v49);
        (*(*v31 + 120))(v31, 0, v52);
        if (v59 == 1)
        {
          v32 = [a3 width];
          v33 = [a3 height];
          v34 = HGObject::operator new(0x1A0uLL);
          HGCrop::HGCrop(v34);
          (*(*v34 + 120))(v34, 0, v31);
          v35 = vcvtd_n_f64_u64(v32, 1uLL);
          v36 = vcvtd_n_f64_u64(v33, 1uLL);
          (*(*v34 + 96))(v34, 0, -v35, -v36);
          v48 = v34;
          (*(*v34 + 16))(v34);
          [a3 setHeliumRef:&v48];
          if (v48)
          {
            (*(*v48 + 24))(v48);
          }

          (*(*v34 + 24))(v34);
        }

        else
        {
          v48 = v31;
          (*(*v31 + 16))(v31);
          [a3 setHeliumRef:&v48];
          if (v48)
          {
            (*(*v48 + 24))(v48);
          }
        }

        (*(*v31 + 24))(v31);
        HGTransform::~HGTransform(v49);
        if (v52)
        {
          (*(*v52 + 24))(v52);
        }

        (*(*v26 + 24))(v26);
        (*(*v26 + 24))(v26);
        if (v54)
        {
          (*(*v54 + 24))(v54);
        }

        (*(*v25 + 24))(v25);
        HGTransform::~HGTransform(v55);
      }

      else
      {
        [(PAESharedDefaultBase *)self getInversePixelTransformForImage:a4, v63];
        v37 = v61;
        v61 = (v37 + -0.5) * [a4 width];
        v38 = v60;
        v60 = (v38 + -0.5) * [a4 height];
        v39 = v63;
        v40 = v61;
        v41 = v60;
        HZoomBlur::makeZoom(&v57, v56, v39, v40, v41);
        v54 = [a3 width];
        v42 = [a3 height];
        v52 = v42;
        if ((v59 & 1) == 0)
        {
          v54 *= 2;
          v52 = 2 * v42;
        }

        if (a4)
        {
          [a4 imageInfo];
        }

        else
        {
          v50 = 0;
          memset(v49, 0, sizeof(v49));
        }

        [(PAEZoomBlur *)self constrainWidth:&v54 andHeight:&v52 withImageInfo:v49];
        v43 = v54;
        v44 = v52;
        v45 = HGObject::operator new(0x1A0uLL);
        HGCrop::HGCrop(v45);
        (*(*v45 + 120))(v45, 0, v56[0]);
        v46 = v43 * 0.5;
        v47 = v44 * 0.5;
        (*(*v45 + 96))(v45, 0, -v46, -v47);
        if (v56[0] != v45)
        {
          if (v56[0])
          {
            (*(*v56[0] + 24))();
          }

          v56[0] = v45;
          (*(*v45 + 16))(v45);
        }

        [a3 setHeliumRef:v56];
        (*(*v45 + 24))(v45);
        if (v56[0])
        {
          (*(*v56[0] + 24))(v56[0]);
        }
      }

      if (v57)
      {
        (*(*v57 + 24))(v57);
      }
    }
  }

  return v12;
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
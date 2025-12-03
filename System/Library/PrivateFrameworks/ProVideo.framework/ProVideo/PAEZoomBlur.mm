@interface PAEZoomBlur
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (BOOL)getOutputWidth:(unint64_t *)width height:(unint64_t *)height withInput:(id *)input withInfo:(id *)info;
- (PAEZoomBlur)initWithAPIManager:(id)manager;
- (id)dynamicPropertiesAtTime:(id)time withError:(id *)error;
- (id)properties;
- (void)constrainWidth:(unint64_t *)width andHeight:(unint64_t *)height withImageInfo:(id *)info;
- (void)dealloc;
- (void)polarToRect:(id)rect withInputImage:(id)image withInputNode:(HGRef<HGNode>)node centerX:(double)x centerY:(double)y upscaleFactor:(double)factor andOutputNode:(void *)outputNode;
- (void)rectToPolar:(id)polar withInputImage:(id)image withInputNode:(HGRef<HGNode>)node centerX:(double)x centerY:(double)y upscaleFactor:(double)factor andOutputNode:(void *)outputNode;
@end

@implementation PAEZoomBlur

- (PAEZoomBlur)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEZoomBlur;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
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

- (id)dynamicPropertiesAtTime:(id)time withError:(id *)error
{
  v7 = [(PAEFilterDefaultBase *)self getParamAPIWithError:error];
  v13 = 0.0;
  if ([v7 getFloatValue:&v13 fromParm:1 atFxTime:time.var1] & 1) != 0 && (v12 = 0, (objc_msgSend(v7, "getBoolValue:fromParm:atFxTime:", &v12, 3, time.var1)))
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

  else if (error)
  {
    v10 = objc_opt_class();
    v11 = [(PAEFilterDefaultBase *)self getParamErrorFor:NSStringFromClass(v10)];
    result = 0;
    *error = v11;
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
    versionAtCreation = [v4 versionAtCreation];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addPopupMenuWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Zoomblur::Look" menuEntries:0 parmFlags:{0), 5, 0, objc_msgSend(objc_msgSend(v8, "localizedStringForKey:value:table:", @"Zoomblur::Look Entries", 0, 0), "componentsSeparatedByString:", @"|", 1}];
    v9 = [v8 localizedStringForKey:@"Zoomblur::Amount" value:0 table:0];
    if (versionAtCreation >= 2)
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

- (void)constrainWidth:(unint64_t *)width andHeight:(unint64_t *)height withImageInfo:(id *)info
{
  v5 = *width;
  v6 = *height;
  if (v5 / v6 <= 1.0)
  {
    if (*height < 0xFFD)
    {
      return;
    }

    v8 = (v5 * 4092.0 / v6);
    v7 = 4092;
  }

  else
  {
    if (*width < 0xFFD)
    {
      return;
    }

    v7 = (v6 * 4092.0 / v5);
    v8 = 4092;
  }

  *width = v8;
  *height = v7;
}

- (BOOL)getOutputWidth:(unint64_t *)width height:(unint64_t *)height withInput:(id *)input withInfo:(id *)info
{
  if (width)
  {
    widthCopy = width;
  }

  else
  {
    widthCopy = &v33;
  }

  if (height)
  {
    heightCopy = height;
  }

  else
  {
    heightCopy = &v33;
  }

  v11 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B780];
  v12 = v11;
  if (v11)
  {
    v32 = 0.0;
    v33 = 0;
    [v11 getFloatValue:&v32 fromParm:1 atFxTime:info->var0.var1];
    v31 = 0;
    [v12 getBoolValue:&v31 fromParm:3 atFxTime:info->var0.var1];
    v30 = 0;
    [v12 getIntValue:&v30 fromParm:5 atFxTime:info->var0.var1];
    var0 = input->var0;
    var1 = input->var1;
    v28 = 0.5;
    v29 = 0.5;
    [v12 getXValue:&v29 YValue:&v28 fromParm:2 atFxTime:info->var0.var1];
    v16 = v28;
    if (input->var5 == 2)
    {
      v16 = 1.0 - v28;
    }

    v17 = v29 * var0;
    v18 = v16 * var1;
    v28 = v18;
    v29 = v17;
    if ((v31 & 1) != 0 || v32 == 0.0)
    {
      *widthCopy = var0;
      *heightCopy = var1;
    }

    else if (v30 == 1)
    {
      v19 = 3 * vcvtpd_s64_f64(v32);
      *widthCopy = var0 + v19;
      *heightCopy = var1 + v19;
    }

    else
    {
      v20 = v32;
      v21 = v17;
      v22 = v18;
      HZoomBlur::getOutputWidthAndHeight(LODWORD(input->var0), input->var1, widthCopy, v20, v21, v22, heightCopy, v15);
      v23 = *&input->var6;
      v26[2] = *&input->var4;
      v26[3] = v23;
      var8 = input->var8;
      v24 = *&input->var2;
      v26[0] = *&input->var0;
      v26[1] = v24;
      [(PAEZoomBlur *)self constrainWidth:widthCopy andHeight:heightCopy withImageInfo:v26];
    }
  }

  return v12 != 0;
}

- (void)polarToRect:(id)rect withInputImage:(id)image withInputNode:(HGRef<HGNode>)node centerX:(double)x centerY:(double)y upscaleFactor:(double)factor andOutputNode:(void *)outputNode
{
  if ([-[PROAPIAccessing apiForProtocol:](self->super.super._apiManager apiForProtocol:{&unk_28735F2C8), "versionAtCreation"}])
  {
    rectCopy = image;
  }

  else
  {
    rectCopy = rect;
  }

  [rectCopy width];
  [rectCopy height];
  [(PAESharedDefaultBase *)self getInversePixelTransformForImage:rect];
  [(PAESharedDefaultBase *)self getPixelTransformForImage:image];
  v13 = HGObject::operator new(0x1C0uLL);
  HgcPolarToRect::HgcPolarToRect(v13);
}

- (void)rectToPolar:(id)polar withInputImage:(id)image withInputNode:(HGRef<HGNode>)node centerX:(double)x centerY:(double)y upscaleFactor:(double)factor andOutputNode:(void *)outputNode
{
  v12 = [-[PROAPIAccessing apiForProtocol:](self->super.super._apiManager apiForProtocol:{&unk_28735F2C8), "versionAtCreation"}];
  [(PAESharedDefaultBase *)self getInversePixelTransformForImage:polar];
  [(PAESharedDefaultBase *)self getPixelTransformForImage:image];
  if (!v12)
  {
    image = polar;
  }

  [image width];
  [image height];
  [polar width];
  [polar height];
  v13 = HGObject::operator new(0x1B0uLL);
  HgcRectToPolar::HgcRectToPolar(v13);
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  if (info->var1 == 2)
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
  [v10 getFloatValue:&v63 fromParm:1 atFxTime:info->var0.var1];
  if (v63 == 0.0)
  {
    if (input)
    {
      [input heliumRef];
    }

    else
    {
      v55[0] = 0;
    }

    [output setHeliumRef:v55];
    if (v55[0])
    {
      (*(*v55[0] + 24))(v55[0]);
    }

    return 1;
  }

  else
  {
    v62 = 0.0;
    [v11 getFloatValue:&v62 fromParm:4 atFxTime:{info->var0.var1, v63}];
    v62 = v62 * 3.14159265 * 0.5 + 1.57079633;
    v60 = 0.5;
    v61 = 0.5;
    [v11 getXValue:&v61 YValue:&v60 fromParm:2 atFxTime:info->var0.var1];
    v13 = v61;
    v14 = v13 * [input width] - vcvtd_n_f64_u64(objc_msgSend(input, "width"), 1uLL);
    v15 = v60;
    v16 = v15 * [input height] - vcvtd_n_f64_u64(objc_msgSend(input, "height"), 1uLL);
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
      v20 = vcvtd_n_f64_u64([input width], 1uLL) + v18;
      v61 = v20 / [input width];
      v21 = vcvtd_n_f64_u64([input height], 1uLL) + v19;
      v60 = v21 / [input height];
    }

    v59 = 0;
    [v11 getBoolValue:&v59 fromParm:3 atFxTime:info->var0.var1];
    v58 = 0;
    [v11 getIntValue:&v58 fromParm:5 atFxTime:info->var0.var1];
    imageType = [input imageType];
    if ([(PAESharedDefaultBase *)self getRenderMode:info->var0.var1])
    {
      v23 = imageType == 3;
    }

    else
    {
      v23 = 0;
    }

    v12 = v23;
    if (v23)
    {
      if (input)
      {
        [input heliumRef];
      }

      else
      {
        v57 = 0;
      }

      if (v63 == 0.0)
      {
        [output setHeliumRef:{&v57, v63}];
      }

      else if (v58 == 1)
      {
        [(PAESharedDefaultBase *)self getInversePixelTransformForImage:output, v63];
        HGTransform::HGTransform(v55);
        HGTransform::Scale(v55, v9, v9, 1.0);
        v25 = HGObject::operator new(0x210uLL);
        HGXForm::HGXForm(v25);
        (*(*v25 + 576))(v25, v55);
        (*(*v25 + 120))(v25, 0, v57);
        v53 = v25;
        width2 = 0;
        (*(*v25 + 16))(v25);
        [(PAEZoomBlur *)self polarToRect:output withInputImage:input withInputNode:&v53 centerX:&width2 centerY:v61 upscaleFactor:v60 andOutputNode:v9];
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
        (*(*v26 + 120))(v26, 0, width2);
        v51 = v26;
        v52 = 0;
        (*(*v26 + 16))(v26);
        [(PAEZoomBlur *)self rectToPolar:output withInputImage:input withInputNode:&v51 centerX:&v52 centerY:v61 upscaleFactor:v60 andOutputNode:v9];
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
          width = [output width];
          height = [output height];
          v34 = HGObject::operator new(0x1A0uLL);
          HGCrop::HGCrop(v34);
          (*(*v34 + 120))(v34, 0, v31);
          v35 = vcvtd_n_f64_u64(width, 1uLL);
          v36 = vcvtd_n_f64_u64(height, 1uLL);
          (*(*v34 + 96))(v34, 0, -v35, -v36);
          v48 = v34;
          (*(*v34 + 16))(v34);
          [output setHeliumRef:&v48];
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
          [output setHeliumRef:&v48];
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
        if (width2)
        {
          (*(*width2 + 24))(width2);
        }

        (*(*v25 + 24))(v25);
        HGTransform::~HGTransform(v55);
      }

      else
      {
        [(PAESharedDefaultBase *)self getInversePixelTransformForImage:input, v63];
        v37 = v61;
        v61 = (v37 + -0.5) * [input width];
        v38 = v60;
        v60 = (v38 + -0.5) * [input height];
        v39 = v63;
        v40 = v61;
        v41 = v60;
        HZoomBlur::makeZoom(&v57, v56, v39, v40, v41);
        width2 = [output width];
        height2 = [output height];
        v52 = height2;
        if ((v59 & 1) == 0)
        {
          width2 *= 2;
          v52 = 2 * height2;
        }

        if (input)
        {
          [input imageInfo];
        }

        else
        {
          v50 = 0;
          memset(v49, 0, sizeof(v49));
        }

        [(PAEZoomBlur *)self constrainWidth:&width2 andHeight:&v52 withImageInfo:v49];
        v43 = width2;
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

        [output setHeliumRef:v56];
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
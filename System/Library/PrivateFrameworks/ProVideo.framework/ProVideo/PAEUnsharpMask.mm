@interface PAEUnsharpMask
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (PAEUnsharpMask)initWithAPIManager:(id)a3;
- (id)dynamicPropertiesAtTime:(id)a3 withError:(id *)a4;
- (id)properties;
@end

@implementation PAEUnsharpMask

- (PAEUnsharpMask)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEUnsharpMask;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"MayRemapTime", v4, @"SupportsHeliumRendering", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 1), @"AutoColorProcessingSupport", 0}];
}

- (id)dynamicPropertiesAtTime:(id)a3 withError:(id *)a4
{
  v7 = [(PAEFilterDefaultBase *)self getParamAPIWithError:a4];
  v15 = 0.0;
  v14 = 0;
  if ([v7 getFloatValue:&v15 fromParm:2 atFxTime:a3.var1] && (objc_msgSend(v7, "getBoolValue:fromParm:atFxTime:", &v14, 6, a3.var1) & 1) != 0)
  {
    if (v15 == 0.0)
    {
      v8 = 6;
    }

    else
    {
      v8 = 1;
    }

    v9 = MEMORY[0x277CBEAC0];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:{v8, v15}];
    return [v9 dictionaryWithObjectsAndKeys:{v10, @"PixelTransformSupport", objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", (v14 & 1) == 0), @"SupportsLargeRenderScale", 0}];
  }

  else if (a4)
  {
    v12 = objc_opt_class();
    v13 = [(PAEFilterDefaultBase *)self getParamErrorFor:NSStringFromClass(v12)];
    result = 0;
    *a4 = v13;
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
  v6.super_class = PAEUnsharpMask;
  [(PAESharedDefaultBase *)&v6 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735DF10];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Unsharpmask::Radius" parameterMin:0 parameterMax:0) sliderMin:1 sliderMax:0 delta:7.0 parmFlags:{0.0, 32.0, 0.0, 32.0, 1.0}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Unsharpmask::Amount" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:1.0 parmFlags:{0.0, 2.0, 0.0, 2.0, 0.1}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Unsharpmask::Threshold" parameterMin:0 parameterMax:0) sliderMin:3 sliderMax:0 delta:0.0 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.01}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Unsharpmask::Horizontal" parameterMin:0 parameterMax:0) sliderMin:4 sliderMax:32 delta:100.0 parmFlags:{0.0, 100.0, 0.0, 100.0, 1.0}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Unsharpmask::Vertical" parameterMin:0 parameterMax:0) sliderMin:5 sliderMax:32 delta:100.0 parmFlags:{0.0, 100.0, 0.0, 100.0, 1.0}];
    [v3 addToggleButtonWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Unsharpmask::Equirect" parmFlags:{0, 0), 6, 0, 1}];
  }

  return v3 != 0;
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

  v12 = v10;
  if ([a4 imageType] != 3)
  {
    return 0;
  }

  v70 = 0.0;
  [v9 getFloatValue:&v70 fromParm:2 atFxTime:a5->var0.var1];
  if (v70 == 0.0)
  {
    if (a4)
    {
      [a4 heliumRef];
    }

    else
    {
      v57[0] = 0;
    }

    [a3 setHeliumRef:v57];
    if (v57[0])
    {
      (*(**v57 + 24))(*v57);
    }
  }

  else
  {
    v14 = [v12 versionAtCreation];
    [(PAESharedDefaultBase *)self getScaleForImage:a4];
    v15 = v68;
    v16 = v69;
    if (v68 <= v69)
    {
      v17 = v69;
    }

    else
    {
      v17 = v68;
    }

    v67 = 0.0;
    [v9 getFloatValue:&v67 fromParm:1 atFxTime:a5->var0.var1];
    v67 = v17 * v67;
    v66 = 0.0;
    [v9 getFloatValue:&v66 fromParm:3 atFxTime:a5->var0.var1];
    v65 = 0.0;
    [v9 getFloatValue:&v65 fromParm:4 atFxTime:a5->var0.var1];
    v18 = v15 / v17;
    v65 = v18 * (v65 * 0.01);
    v64 = 0.0;
    [v9 getFloatValue:&v64 fromParm:5 atFxTime:a5->var0.var1];
    v19 = v16 / v17;
    v64 = v19 * (v64 * 0.01);
    v63 = 0;
    [v9 getBoolValue:&v63 fromParm:6 atFxTime:a5->var0.var1];
    if (a4)
    {
      [a4 heliumRef];
      v60 = v62;
      if (v62)
      {
        (*(*v62 + 16))(v62);
      }
    }

    else
    {
      v62 = 0;
      v60 = 0;
    }

    [(PAESharedDefaultBase *)self smear:&v60 fromImage:a4 toImage:a4];
    if (v60)
    {
      (*(*v60 + 24))(v60);
    }

    if (v63 == 1)
    {
      v20 = HGObject::operator new(0x1C0uLL);
      HGNode::HGNode(v20);
      *v20 = &unk_2871D9F38;
      *(v20 + 51) = 0;
      *(v20 + 52) = 0;
      *(v20 + 106) = 0;
      *(v20 + 54) = 0;
      *(v20 + 55) = 0;
      v21 = v67;
      v22 = v68;
      v24 = v64;
      v23 = v65;
      v25 = v69;
      v26 = [a4 width];
      v27 = [a4 height];
      v28 = v21;
      v29 = v22 * v23 / v18;
      *v57[0].f32 = xmmword_2603429B0;
      v55 = xmmword_2603429C0;
      v30 = v25 * v24 / v19;
      v52 = xmmword_2603429B0;
      v59 = xmmword_2603429C0;
      HEquirectGaussianBlur::init(v20, v26, v27, v57, &v55, &v52, &v59, v28, v29, v30);
      (*(*v20 + 120))(v20, 0, v62);
      (*(*v20 + 16))(v20);
      (*(*v20 + 24))(v20);
    }

    else
    {
      v20 = HGObject::operator new(0x1B0uLL);
      HGaussianBlur::HGaussianBlur(v20);
      v31 = v67;
      v32 = v65;
      v33 = v64;
      HGaussianBlur::init(v20, v31, v32, v33, v14 == 0, 0, 0);
      (*(*v20 + 120))(v20, 0, v62);
      (*(*v20 + 16))(v20);
      (*(*v20 + 24))(v20);
    }

    *&v59 = v20;
    (*(*v20 + 16))(v20);
    [(PAESharedDefaultBase *)self crop:&v59 fromImage:a4 toImage:a3];
    v34 = HGObject::operator new(0x1A0uLL);
    HgcUnsharpMask::HgcUnsharpMask(v34);
    v58 = v34;
    (*(*v34 + 120))(v34, 0, v62);
    (*(*v58 + 120))(v58, 1, v59);
    v35 = v70;
    (*(*v58 + 96))(v58, 0, v35, 0.0, 0.0, 0.0);
    v36 = v66;
    (*(*v58 + 96))(v58, 1, v36, 0.0, 0.0, 0.0);
    if (!v14)
    {
      v51 = HGObject::operator new(0x1C0uLL);
      HGColorClamp::HGColorClamp(v51);
    }

    if (v63 == 1)
    {
      [(PAESharedDefaultBase *)self getPixelTransformForImage:a3];
      [(PAESharedDefaultBase *)self getInversePixelTransformForImage:a3];
      v37 = [a4 width];
      v38 = *&v55;
      v39 = [a4 height];
      v40 = ceil(fabs(v38) * v37);
      v41 = ceil(fabs(v56) * v39);
      *&v52 = v40 * -0.5;
      *(&v52 + 1) = v41 * -0.5;
      v53 = v40;
      v54 = v41;
      PCMatrix44Tmpl<double>::transformRect<double>(v57, &v52, &v52);
      v42 = *&v52;
      v43 = *(&v52 + 1);
      v44 = *&v52 + v53;
      v45 = *(&v52 + 1) + v54;
      v47 = HGRectMake4f(v46, v42, v43, v44, v45);
      v49 = v48;
      v50 = HGObject::operator new(0x1A0uLL);
      HGCrop::HGCrop(v50);
      (*(*v50 + 120))(v50, 0, v58);
      (*(*v50 + 96))(v50, 0, v47, SHIDWORD(v47), v49, SHIDWORD(v49));
      if (v58 != v50)
      {
        if (v58)
        {
          (*(*v58 + 24))(v58);
        }

        v58 = v50;
        (*(*v50 + 16))(v50);
      }

      (*(*v50 + 24))(v50);
    }

    [a3 setHeliumRef:&v58];
    if (v58)
    {
      (*(*v58 + 24))(v58);
    }

    if (v59)
    {
      (*(*v59 + 24))(v59);
    }

    (*(*v20 + 24))(v20);
    if (v61)
    {
      (*(*v61 + 24))(v61);
    }

    if (v62)
    {
      (*(*v62 + 24))(v62);
    }
  }

  return 1;
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
@interface PAECompoundBlur
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (BOOL)getOutputWidth:(unint64_t *)a3 height:(unint64_t *)a4 withInput:(id *)a5 withInfo:(id *)a6;
- (PAECompoundBlur)initWithAPIManager:(id)a3;
- (id)properties;
@end

@implementation PAECompoundBlur

- (PAECompoundBlur)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAECompoundBlur;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
}

- (id)properties
{
  if ([PAECompoundBlur properties]::once != -1)
  {
    [PAECompoundBlur properties];
  }

  return [PAECompoundBlur properties]::sPropertiesDict;
}

uint64_t __29__PAECompoundBlur_properties__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEAC0]);
  v1 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:3];
  result = [v0 initWithObjectsAndKeys:{v1, @"PositionIndependent", v2, @"MayRemapTime", v3, @"SupportsLargeRenderScale", v4, @"SupportsHeliumRendering", v5, @"InputSizeLimit", v6, @"PixelTransformSupport", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 3), @"AutoColorProcessingSupport", 0}];
  [PAECompoundBlur properties]::sPropertiesDict = result;
  return result;
}

- (BOOL)addParameters
{
  v7.receiver = self;
  v7.super_class = PAECompoundBlur;
  [(PAESharedDefaultBase *)&v7 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    v4 = v3;
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v4 addFloatSliderWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"CompoundBlur::Amount" parameterMin:0 parameterMax:0) sliderMin:1 sliderMax:0 delta:7.0 parmFlags:{0.0, 300.0, 0.0, 32.0, 1.0}];
    [v4 addImageReferenceWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" parmFlags:{@"CompoundBlur::Blur Map", 0, 0), 2, 0}];
    [v4 addPopupMenuWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"CompoundBlur::Map Channel" menuEntries:0 parmFlags:{0), 3, 4, objc_msgSend(objc_msgSend(v5, "localizedStringForKey:value:table:", @"CompoundBlur::ChannelEntries", 0, 0), "componentsSeparatedByString:", @"|", 1}];
    [v4 addToggleButtonWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"CompoundBlur::Invert Map" parmFlags:{0, 0), 4, 0, 33}];
    [v4 addToggleButtonWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"CompoundBlur::Stretch Map" parmFlags:{0, 0), 5, 0, 33}];
    [v4 addFloatSliderWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"CompoundBlur::Horizontal" parameterMin:0 parameterMax:0) sliderMin:6 sliderMax:32 delta:100.0 parmFlags:{0.0, 100.0, 0.0, 100.0, 1.0}];
    [v4 addFloatSliderWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"CompoundBlur::Vertical" parameterMin:0 parameterMax:0) sliderMin:7 sliderMax:32 delta:100.0 parmFlags:{0.0, 100.0, 0.0, 100.0, 1.0}];
  }

  return 1;
}

- (BOOL)getOutputWidth:(unint64_t *)a3 height:(unint64_t *)a4 withInput:(id *)a5 withInfo:(id *)a6
{
  if ([(PAESharedDefaultBase *)self getRenderMode:a6->var0.var1])
  {
    *a3 = a5->var0;
    *a4 = a5->var1;
    return 1;
  }

  v11 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B780];
  result = 0;
  if (a4 && a3 && v11)
  {
    v20 = 0.0;
    [v11 getFloatValue:&v20 fromParm:1 atFxTime:a6->var0.var1];
    v19 = 0.0;
    [v11 getFloatValue:&v19 fromParm:6 atFxTime:a6->var0.var1];
    v19 = v19 * 0.01;
    v18 = 0.0;
    [v11 getFloatValue:&v18 fromParm:7 atFxTime:a6->var0.var1];
    v18 = v18 * 0.01;
    v17 = 0;
    [v11 getBoolValue:&v17 fromParm:5 atFxTime:a6->var0.var1];
    v13 = *&a5->var0;
    if ((v17 & 1) == 0)
    {
      v14.f64[0] = v19;
      v15 = v20 + v20;
      v14.f64[1] = v18;
      v16 = vmovn_s64(vcvtq_s64_f64(vrndpq_f64(vmulq_n_f64(v14, v15))));
      v13 = vaddw_s32(v13, vadd_s32(v16, v16));
    }

    *a3 = v13.i64[0];
    *a4 = v13.u64[1];
    return 1;
  }

  return result;
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v9 = [(PAESharedDefaultBase *)self getRenderMode:a5->var0.var1];
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B780];
  if (!v10)
  {
    return v10;
  }

  v11 = v10;
  [(PAESharedDefaultBase *)self getScaleForImage:a4];
  v13 = v42;
  v12 = v43;
  if (v42 <= v43)
  {
    v14 = v43;
  }

  else
  {
    v14 = v42;
  }

  __x = 0.0;
  [v11 getFloatValue:&__x fromParm:1 atFxTime:a5->var0.var1];
  __x = __x * 0.5;
  v40 = 0.0;
  [v11 getFloatValue:&v40 fromParm:6 atFxTime:a5->var0.var1];
  v40 = v13 / v14 * (v40 * 0.01);
  v39 = 0.0;
  [v11 getFloatValue:&v39 fromParm:7 atFxTime:a5->var0.var1];
  v39 = v12 / v14 * (v39 * 0.01);
  v38 = 0;
  [v11 getIntValue:&v38 fromParm:3 atFxTime:a5->var0.var1];
  v37 = 0;
  [v11 getBoolValue:&v37 fromParm:4 atFxTime:a5->var0.var1];
  v36 = 0;
  [v11 getBoolValue:&v36 fromParm:5 atFxTime:a5->var0.var1];
  v15 = [a4 imageType];
  DWORD1(v16) = HIDWORD(__x);
  if (__x > 0.0)
  {
    v17 = v15;
    LODWORD(v16) = 1.0;
    if (v37)
    {
      *&v16 = -1.0;
    }

    v33 = v16;
    *&v16 = 0;
    v32 = v16;
    if (v38 > 2)
    {
      if (v38 == 3)
      {
        LODWORD(v16) = 0;
        DWORD1(v16) = v33;
        goto LABEL_23;
      }

      if (v38 == 4)
      {
        *&v16 = *&v33 * 0.3086;
        v31 = v16;
        *&v16 = *&v33 * 0.6094;
        HIDWORD(v18) = 0;
        *&v18 = *&v33 * 0.082;
        [a4 pixelAspect];
        goto LABEL_25;
      }
    }

    else
    {
      if (v38 == 1)
      {
        [a4 pixelAspect];
        goto LABEL_25;
      }

      if (v38 == 2)
      {
        *&v16 = v33;
LABEL_23:
        v32 = v16;
        *&v16 = 0;
        goto LABEL_24;
      }
    }

    v16 = v33;
LABEL_24:
    [a4 pixelAspect];
LABEL_25:
    v20 = v19;
    LOBYTE(v10) = 0;
    if (self->super.super._upscalesFields)
    {
      v21 = 1.0;
    }

    else
    {
      v21 = 2.0;
    }

    if (v9 && v17 == 3)
    {
      if (a4)
      {
        [a4 heliumRef];
      }

      else
      {
        v35 = 0;
      }

      v34 = 0;
      v22 = *&a5->var2;
      v23 = *&a5->var4;
      v44[0] = *&a5->var0.var0;
      v44[1] = v22;
      v44[2] = v23;
      [(PAESharedDefaultBase *)self getHeliumImage:&v34 layerOffsetX:0 layerOffsetY:0 requestInfo:v44 fromParm:2 atTime:a5->var0.var1];
      if (v34)
      {
        [v34 heliumRef];
      }

      else
      {
        v34 = a4;
        if (v35)
        {
          (*(*v35 + 16))(v35);
        }
      }

      v24 = HGObject::operator new(0x1D0uLL);
      HGModulatedBlur::HGModulatedBlur(v24);
      v25 = __x;
      (*(*v24 + 96))(v24, 0, v25, 0.0, 0.0, 0.0);
      v26 = v13 * v40 / v20;
      v27 = v12 * v39 / v21;
      (*(*v24 + 96))(v24, 1, v26, v27, 0.0, 0.0);
      v45 = xmmword_2603437AC;
      v46[0] = unk_2603437BC;
      *(v46 + 12) = unk_2603437C8;
      v28 = ceil(log2(__x)) + 1.0;
      if (v28 <= 0.0)
      {
        v28 = 1.0;
      }

      HGModulatedBlur::setBlurValues(v24, &v45, v28);
      (*(*v24 + 120))(v24, 0, v35);
      v29 = HGObject::operator new(0x1F0uLL);
      HGColorMatrix::HGColorMatrix(v29);
    }

    return v10;
  }

  if (a4)
  {
    [a4 heliumRef];
  }

  else
  {
    *&v44[0] = 0;
  }

  [a3 setHeliumRef:v44];
  if (*&v44[0])
  {
    (*(**&v44[0] + 24))(*&v44[0]);
  }

  LOBYTE(v10) = 1;
  return v10;
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
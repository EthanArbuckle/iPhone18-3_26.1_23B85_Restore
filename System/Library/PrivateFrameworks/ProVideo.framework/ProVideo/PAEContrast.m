@interface PAEContrast
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (CGPoint)calculateBezier:(double)a3 startPt:(CGPoint)a4 controlPoint1:(CGPoint)a5 controlPoint2:(CGPoint)a6 endPt:(CGPoint)a7;
- (PAEContrast)initWithAPIManager:(id)a3;
- (id)properties;
- (void)generateLut:(RGBAfPixel *)a3 forContrast:(double)a4 andPivot:(double)a5;
@end

@implementation PAEContrast

- (PAEContrast)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEContrast;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
}

- (id)properties
{
  if ([PAEContrast properties]::once != -1)
  {
    [PAEContrast properties];
  }

  return [PAEContrast properties]::sPropertiesDict;
}

uint64_t __25__PAEContrast_properties__block_invoke()
{
  v10 = objc_alloc(MEMORY[0x277CBEAC0]);
  v0 = [MEMORY[0x277CCABB0] numberWithInt:6];
  v1 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:65792];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:590080];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:1];
  result = [v10 initWithObjectsAndKeys:{v0, @"PixelTransformSupport", v1, @"PixelIndependent", v2, @"PositionIndependent", v3, @"MayRemapTime", v4, @"SupportsLargeRenderScale", v5, @"SupportsHeliumRendering", v6, @"SDRWorkingSpace", v7, @"HDRWorkingSpace", v8, @"SupportsInternalMixing", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 1), @"AutoColorProcessingSupport", 0}];
  [PAEContrast properties]::sPropertiesDict = result;
  return result;
}

- (BOOL)addParameters
{
  v7.receiver = self;
  v7.super_class = PAEContrast;
  [(PAESharedDefaultBase *)&v7 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
    [v5 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Contrast::Contrast" parameterMin:0 parameterMax:0) sliderMin:1 sliderMax:0 delta:1.0 parmFlags:{0.0, 10.0, 0.0, 2.0, 0.1}];
    [v5 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Contrast::Pivot" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:0.5 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.1}];
    [v5 addToggleButtonWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Contrast::Bezier" parmFlags:{0, 0), 4, 0, 1}];
    [v5 addToggleButtonWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Contrast::Luma" parmFlags:{0, 0), 5, 0, 1}];
    [v5 addPopupMenuWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Contrast::Clip" menuEntries:0 parmFlags:{0), 3, 0, objc_msgSend(objc_msgSend(v4, "localizedStringForKey:value:table:", @"Contrast::Clip Values", 0, 0), "componentsSeparatedByString:", @"|", 1}];
  }

  return v3 != 0;
}

- (CGPoint)calculateBezier:(double)a3 startPt:(CGPoint)a4 controlPoint1:(CGPoint)a5 controlPoint2:(CGPoint)a6 endPt:(CGPoint)a7
{
  v7 = 1.0 - a3;
  v8 = v7 * (v7 * v7);
  v9 = v7 * v7 * 3.0 * a3;
  v10 = a4.x * v8 + a5.x * v9;
  v11 = a3 * a3 * ((1.0 - a3) * 3.0);
  v12 = v11 * a6.x + v10;
  v13 = a3 * a3 * a3;
  v14 = v13 * a7.x + v12;
  v15 = v13 * a7.y + v11 * a6.y + a4.y * v8 + a5.y * v9;
  result.y = v15;
  result.x = v14;
  return result;
}

- (void)generateLut:(RGBAfPixel *)a3 forContrast:(double)a4 andPivot:(double)a5
{
  v5 = MEMORY[0x28223BE20](self);
  v7 = v6;
  v9 = v8;
  v10 = v5;
  v34[2047] = *MEMORY[0x277D85DE8];
  v12 = v6 + -1.0 + 1.0;
  v13 = __sincos_stret((1.0 - (v11 + -1.0)) * 1.57079633 * 0.5);
  v14 = 0;
  v15 = v34;
  do
  {
    if (v14 > 0x1FF)
    {
      [v10 calculateBezier:(v14 - 512) / 511.0 startPt:v7 controlPoint1:v7 controlPoint2:v7 endPt:{v7, (v12 + -1.0) * v13.__cosval - v13.__sinval * 0.0 + 1.0, (v12 + -1.0) * v13.__sinval + v13.__cosval * 0.0 + 1.0, 0x3FF0000000000000, 0x3FF0000000000000}];
    }

    else
    {
      [v10 calculateBezier:vcvtd_n_f64_u32(v14 startPt:9uLL) controlPoint1:0.0 controlPoint2:0.0 endPt:{v13.__cosval * v7 - v13.__sinval * 0.0, v13.__sinval * v7 + v13.__cosval * 0.0, v7, v7, *&v7, *&v7}];
    }

    *(v15 - 1) = v16;
    *v15 = v17;
    ++v14;
    v15 += 2;
  }

  while (v14 != 1024);
  v18 = 0;
  v19 = 0;
  __asm { FMOV            V0.4S, #1.0 }

  do
  {
    v25 = vcvtd_n_f64_u32(v18, 0xAuLL);
    v26 = (v19 << 32) - 0x100000000;
    v27 = &v34[2 * v19 + 1];
    v19 = v19 - 1;
    do
    {
      v28 = *v27;
      v27 += 2;
      v29 = v28;
      v26 += 0x100000000;
      ++v19;
    }

    while (v28 <= v25);
    v30 = *&v33[(v26 >> 28) + 8] + (v25 - *&v33[v26 >> 28]) / (v29 - *&v33[v26 >> 28]) * (*(v27 - 1) - *&v33[(v26 >> 28) + 8]);
    v31 = _Q0;
    *v31.i32 = v30;
    v32 = vzip1q_s32(v31, v31);
    *&v32.i32[2] = v30;
    *(v9 + 16 * v18++) = v32;
  }

  while (v18 != 1024);
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v10 = v9;
  if (v9)
  {
    v29 = 0.0;
    v30 = 0.0;
    v28 = 0;
    v27 = 0;
    [v9 getFloatValue:&v30 fromParm:1 atFxTime:a5->var0.var1];
    [v10 getFloatValue:&v29 fromParm:2 atFxTime:a5->var0.var1];
    [v10 getIntValue:&v27 fromParm:3 atFxTime:a5->var0.var1];
    [v10 getBoolValue:&v28 + 1 fromParm:4 atFxTime:a5->var0.var1];
    [v10 getBoolValue:&v28 fromParm:5 atFxTime:a5->var0.var1];
    v11 = v27;
    [v10 mixAmountAtTime:a5->var0.var1];
    v13 = v12;
    if (a4)
    {
      [a4 heliumRef];
    }

    else
    {
      v26 = 0;
    }

    v14 = v11 & 0xFFFFFFFD;
    v15 = v11 & 0xFFFFFFFE;
    if (HIBYTE(v28) == 1)
    {
      v16 = HGRectMake4i(0, 0, 0x400u, 1u);
      v18 = v17;
      v19 = HGObject::operator new(0x80uLL);
      HGBitmap::HGBitmap(v19, v16, v18, 28);
      [(PAEContrast *)self generateLut:*(v19 + 10) forContrast:v30 andPivot:v29];
      [v10 getFloatValue:&v30 fromParm:1 atFxTime:a5->var0.var1];
      [v10 getFloatValue:&v29 fromParm:2 atFxTime:a5->var0.var1];
      [v10 getIntValue:&v27 fromParm:3 atFxTime:a5->var0.var1];
      [v10 mixAmountAtTime:a5->var0.var1];
      v20 = HGObject::operator new(0x1F0uLL);
      HGBitmapLoader::HGBitmapLoader(v20, v19);
      if (v28 == 1)
      {
        v24[2] = v26;
        if (v26)
        {
          (*(*v26 + 16))(v26);
        }

        v24[1] = v20;
        if (v20)
        {
          (*(*v20 + 16))(v20);
        }

        createContrastBezierLumaNode();
      }

      v23[2] = v26;
      if (v26)
      {
        (*(*v26 + 16))(v26);
      }

      v23[1] = v20;
      if (v20)
      {
        (*(*v20 + 16))(v20);
      }

      createContrastBezierRGBNode();
    }

    if (v28 == 1)
    {
      v23[0] = v26;
      if (v26)
      {
        (*(*v26 + 16))(v26);
      }

      createContrastLumaNode(v23, v15 == 2, v14 == 1, &v25, v30, v29, v13);
      if (v23[0])
      {
        (*(*v23[0] + 24))(v23[0]);
      }

      v24[0] = v25;
      if (v25)
      {
        (*(*v25 + 16))(v25);
      }

      [a3 setHeliumRef:v24];
      if (v24[0])
      {
        (*(*v24[0] + 24))(v24[0]);
      }

      if (v25)
      {
        (*(*v25 + 24))(v25);
      }
    }

    else
    {
      v22 = v26;
      if (v26)
      {
        (*(*v26 + 16))(v26);
      }

      createContrastRGBNode(&v22, v15 == 2, v14 == 1, &v25, v30, v29, v13);
      if (v22)
      {
        (*(*v22 + 24))(v22);
      }

      v24[0] = v25;
      if (v25)
      {
        (*(*v25 + 16))(v25);
      }

      [a3 setHeliumRef:{v24, v22}];
      if (v24[0])
      {
        (*(*v24[0] + 24))(v24[0]);
      }

      if (v25)
      {
        (*(*v25 + 24))(v25);
      }
    }

    if (v26)
    {
      (*(*v26 + 24))(v26);
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
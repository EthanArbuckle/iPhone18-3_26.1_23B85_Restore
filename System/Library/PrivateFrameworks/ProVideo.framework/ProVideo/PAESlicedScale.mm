@interface PAESlicedScale
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (BOOL)getOutputBounds:(CGRect *)bounds withInputBounds:(CGRect)inputBounds withInputInfo:(id *)info withRenderInfo:(id *)renderInfo;
- (PAESlicedScale)initWithAPIManager:(id)manager;
- (id)properties;
- (void)additionalObjectDownScale:(void *)scale objectScale:(PCVector2<double>)objectScale innerScale:(PCVector2<double>)innerScale xLeft:(double)left xRight:(double)right yTop:(double)top yBottom:(double)bottom;
- (void)calculateBounds:(CGRect *)bounds fromOrigin:(PCVector2<double>)origin mode:(int)mode inputSize:(PCVector2<double>)size ignoreOffsets:(BOOL)offsets xLeft:(double)left xRight:(double)right yBottom:(double)self0 yTop:(double)self1 objectScale:(PCVector2<double>)self2 offset:(PCVector2<double>)self3;
- (void)innerScaleFromObjectScale:(PCVector2<double>)scale innerScale:(void *)innerScale xLeft:(double)left xRight:(double)right yTop:(double)top yBottom:(double)bottom inputSize:(PCVector2<double>)size newObjectSize:(void *)self0 mode:(int)self1;
- (void)wholeTileExpandLeftScale:(double *)scale expandRightScale:(double *)rightScale expandBottomScale:(double *)bottomScale expandTopScale:(double *)topScale objectScale:(void *)objectScale xLeft:(double)left xRight:(double)right yBottom:(double)self0 yTop:(double)self1;
@end

@implementation PAESlicedScale

- (PAESlicedScale)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAESlicedScale;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (id)properties
{
  v7[9] = *MEMORY[0x277D85DE8];
  v2 = [-[PROAPIAccessing apiForProtocol:](self->super.super._apiManager apiForProtocol:{&unk_28735F2C8), "versionAtCreation"}];
  v6[0] = @"PixelTransformSupport";
  v6[1] = @"MayRemapTime";
  if (v2 <= 1)
  {
    v3 = 65792;
  }

  else
  {
    v3 = 67584;
  }

  if (v2 <= 1)
  {
    v4 = 590080;
  }

  else
  {
    v4 = 591872;
  }

  v7[0] = &unk_28732D418;
  v7[1] = MEMORY[0x277CBEC28];
  v6[2] = @"PixelIndependent";
  v6[3] = @"PositionIndependent";
  v7[2] = MEMORY[0x277CBEC28];
  v7[3] = MEMORY[0x277CBEC28];
  v6[4] = @"SupportsLargeRenderScale";
  v6[5] = @"SupportsHeliumRendering";
  v7[4] = MEMORY[0x277CBEC38];
  v7[5] = MEMORY[0x277CBEC38];
  v6[6] = @"SDRWorkingSpace";
  v7[6] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
  v6[7] = @"HDRWorkingSpace";
  v6[8] = @"AutoColorProcessingSupport";
  v7[7] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
  v7[8] = &unk_28732D418;
  return [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:9];
}

- (BOOL)addParameters
{
  v11.receiver = self;
  v11.super_class = PAESlicedScale;
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
    versionAtCreation = [v4 versionAtCreation];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addToggleButtonWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"SlicedScale::editSlices" parmFlags:{0, 0), 1, 0, 1}];
    [v3 addPointParameterWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultX:@"SlicedScale::sliceRightTop" defaultY:0 parmFlags:{0), 2, 34, 0.75, 0.75}];
    [v3 addPointParameterWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultX:@"SlicedScale::sliceLeftBottom" defaultY:0 parmFlags:{0), 3, 34, 0.25, 0.25}];
    [v3 addPopupMenuWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"SlicedScale::mode" menuEntries:0 parmFlags:{0), 4, 0, objc_msgSend(objc_msgSend(v8, "localizedStringForKey:value:table:", @"SlicedScale::modeEntries", 0, 0), "componentsSeparatedByString:", @"|", 1}];
    [v3 add2DScaleWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultX:@"SlicedScale::objectScale" defaultY:0 parmFlags:{0), 5, 32, 1.0, 1.0}];
    [v3 addPointParameterWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultX:@"SlicedScale::offset" defaultY:0 parmFlags:{0), 6, 32, 0.5, 0.5}];
    [v3 startParameterSubGroup:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" parmFlags:{@"SlicedScale::expandGroup", 0, 0), 7, 40}];
    v9 = [v8 localizedStringForKey:@"SlicedScale::expandLeft" value:0 table:0];
    if (versionAtCreation < 2)
    {
      [v3 addFloatSliderWithName:v9 parmId:8 defaultValue:0 parameterMin:0.0 parameterMax:0.0 sliderMin:1.0 sliderMax:0.0 delta:1.0 parmFlags:0.01];
      [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"SlicedScale::expandRight" parameterMin:0 parameterMax:0) sliderMin:10 sliderMax:0 delta:0.0 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.01}];
      [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"SlicedScale::expandTop" parameterMin:0 parameterMax:0) sliderMin:11 sliderMax:0 delta:0.0 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.01}];
      [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"SlicedScale::expandBottom" parameterMin:0 parameterMax:0) sliderMin:9 sliderMax:0 delta:0.0 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.01}];
    }

    else
    {
      [v3 addPercentSliderWithName:v9 parmId:8 defaultValue:0 parameterMin:0.0 parameterMax:0.0 sliderMin:1.0 sliderMax:0.0 delta:1.0 parmFlags:0.01];
      [v3 addPercentSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"SlicedScale::expandRight" parameterMin:0 parameterMax:0) sliderMin:10 sliderMax:0 delta:0.0 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.01}];
      [v3 addPercentSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"SlicedScale::expandTop" parameterMin:0 parameterMax:0) sliderMin:11 sliderMax:0 delta:0.0 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.01}];
      [v3 addPercentSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"SlicedScale::expandBottom" parameterMin:0 parameterMax:0) sliderMin:9 sliderMax:0 delta:0.0 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.01}];
    }

    [v3 endParameterSubGroup];
    [v3 startParameterSubGroup:@"Debug" parmId:12 parmFlags:34];
    [v3 addToggleButtonWithName:@"Ignore Offset values" parmId:15 defaultValue:0 parmFlags:33];
    [v3 addToggleButtonWithName:@"Don't Auto-keyframe offset" parmId:16 defaultValue:0 parmFlags:33];
    [v3 endParameterSubGroup];
  }

  return v6;
}

- (void)innerScaleFromObjectScale:(PCVector2<double>)scale innerScale:(void *)innerScale xLeft:(double)left xRight:(double)right yTop:(double)top yBottom:(double)bottom inputSize:(PCVector2<double>)size newObjectSize:(void *)self0 mode:(int)self1
{
  v13 = vdupq_n_s64(0x3EE4F8B588E368F1uLL);
  v14 = vmaxnmq_f64(*innerScale, v13);
  *innerScale = v14;
  __asm { FMOV            V3.2D, #1.0 }

  v22 = vmulq_f64(vsubq_f64(*&scale.var1, scale), **&mode);
  v23 = vmaxnmq_f64(vdivq_f64(vsubq_f64(vaddq_f64(v22, vmaxnmq_f64(vmulq_f64(v14, **&mode), _Q3)), **&mode), v22), v13);
  if (v12 == 2)
  {
    v24 = floor(v23.f64[0] + 0.0000001);
    if (v23.f64[0] <= 1.0)
    {
      v25 = v23.f64[0];
    }

    else
    {
      v25 = v24;
    }

    v23.f64[0] = v25;
    if (v23.f64[1] > 1.0)
    {
      v23.f64[1] = floor(v23.f64[1] + 0.0000001);
    }
  }

  *v11 = vaddq_f64(**&mode, vsubq_f64(vmulq_f64(v22, v23), v22));
  *objectSize = v23;
}

- (void)wholeTileExpandLeftScale:(double *)scale expandRightScale:(double *)rightScale expandBottomScale:(double *)bottomScale expandTopScale:(double *)topScale objectScale:(void *)objectScale xLeft:(double)left xRight:(double)right yBottom:(double)self0 yTop:(double)self1
{
  v11.f64[0] = right;
  v11.f64[1] = top;
  v12.f64[0] = left;
  v12.f64[1] = bottom;
  v13 = vsubq_f64(v11, v12);
  v14 = vdupq_n_s64(0x3EE4F8B588E368F1uLL);
  v15 = vaddq_f64(vbslq_s8(vcgtq_f64(v14, *objectScale), v14, *objectScale), v11);
  v16 = *scale + 1.0;
  if (v16 < 0.00001)
  {
    v16 = 0.00001;
  }

  v17 = (v16 + right - left + -1.0) / v13.f64[0];
  if (v17 < 0.00001)
  {
    v17 = 0.00001;
  }

  v18 = floor(v17 + 0.0000001);
  if (v17 > 1.0)
  {
    v17 = v18;
  }

  v19 = *bottomScale + 1.0;
  if (v19 < 0.00001)
  {
    v19 = 0.00001;
  }

  v20 = (v19 + top - bottom + -1.0) / v13.f64[1];
  if (v20 < 0.00001)
  {
    v20 = 0.00001;
  }

  v21 = floor(v20 + 0.0000001);
  if (v20 > 1.0)
  {
    v20 = v21;
  }

  v22 = *rightScale + 1.0;
  if (v22 < 0.00001)
  {
    v22 = 0.00001;
  }

  v23 = (v22 + right - left + -1.0) / v13.f64[0];
  if (v23 < 0.00001)
  {
    v23 = 0.00001;
  }

  v24 = floor(v23 + 0.0000001);
  if (v23 > 1.0)
  {
    v23 = v24;
  }

  v25 = *topScale + 1.0;
  if (v25 < 0.00001)
  {
    v25 = 0.00001;
  }

  v26 = (v25 + top - bottom + -1.0) / v13.f64[1];
  if (v26 < 0.00001)
  {
    v26 = 0.00001;
  }

  v27 = floor(v26 + 0.0000001);
  if (v26 > 1.0)
  {
    v26 = v27;
  }

  v28 = vmuld_lane_f64(v20 + -1.0, v13, 1) + 1.0;
  v29 = (v23 + -1.0) * v13.f64[0] + 1.0;
  v30 = vmuld_lane_f64(v26 + -1.0, v13, 1) + 1.0;
  v31 = (v17 + -1.0) * v13.f64[0] + 1.0 + -1.0;
  if (v31 < 0.0)
  {
    v31 = 0.0;
  }

  *scale = v31;
  v32 = v29 + -1.0;
  if (v32 < 0.0)
  {
    v32 = 0.0;
  }

  *rightScale = v32;
  v33 = v28 + -1.0;
  if (v28 + -1.0 < 0.0)
  {
    v33 = 0.0;
  }

  *bottomScale = v33;
  v34 = v30 + -1.0;
  if (v30 + -1.0 < 0.0)
  {
    v34 = 0.0;
  }

  *topScale = v34;
  __asm { FMOV            V1.2D, #-1.0 }

  v40 = vdivq_f64(vaddq_f64(vsubq_f64(v15, v12), _Q1), v13);
  v41 = vbslq_s8(vcgtq_f64(v14, v40), v14, v40);
  __asm { FMOV            V2.2D, #1.0 }

  *objectScale = vbslq_s8(vcgeq_f64(*objectScale, _Q2), vaddq_f64(vmulq_f64(v13, vaddq_f64(vbslq_s8(vcgtq_f64(v41, _Q2), vrndmq_f64(vaddq_f64(v41, vdupq_n_s64(0x3E7AD7F29ABCAF48uLL))), v41), _Q1)), _Q2), *objectScale);
}

- (void)additionalObjectDownScale:(void *)scale objectScale:(PCVector2<double>)objectScale innerScale:(PCVector2<double>)innerScale xLeft:(double)left xRight:(double)right yTop:(double)top yBottom:(double)bottom
{
  __asm { FMOV            V4.2D, #1.0 }

  *scale = _Q4;
  v16 = vmaxnmq_f64(*v9, vdupq_n_s64(0x3EE4F8B588E368F1uLL));
  *v9 = v16;
  if (*v10 <= 0.00001)
  {
    *scale = v16.f64[0] / (*v10 * objectScale.var1 - *v10 * objectScale.var0 + objectScale.var0 - objectScale.var1 + 1.0);
  }

  v17 = v10[1];
  if (v17 <= 0.00001)
  {
    *(scale + 1) = v16.f64[1] / (v17 * innerScale.var0 - v17 * innerScale.var1 + innerScale.var1 - innerScale.var0 + 1.0);
  }
}

- (void)calculateBounds:(CGRect *)bounds fromOrigin:(PCVector2<double>)origin mode:(int)mode inputSize:(PCVector2<double>)size ignoreOffsets:(BOOL)offsets xLeft:(double)left xRight:(double)right yBottom:(double)self0 yTop:(double)self1 objectScale:(PCVector2<double>)self2 offset:(PCVector2<double>)self3
{
  v14 = v13;
  var1_low = LOBYTE(scale.var1);
  var0 = scale.var0;
  v17 = *&mode;
  var1 = size.var1;
  v19 = size.var0;
  v20 = origin.var1;
  v21 = origin.var0;
  v55 = 0.0;
  v56 = 0.0;
  v54 = 0uLL;
  v24 = *v13;
  v52 = **&scale.var0;
  v53 = v24;
  [(PAESlicedScale *)self innerScaleFromObjectScale:&v53 innerScale:&v55 xLeft:&v52 xRight:&v54 yTop:offsets yBottom:origin.var0 inputSize:origin.var1 newObjectSize:size.var1 mode:size.var0];
  v49 = v17[1];
  v50 = *v17;
  v26 = **&var0;
  v25 = *(*&var0 + 8);
  v28 = v55;
  v27 = v56;
  v53 = 0uLL;
  v52 = *v14;
  *v51 = v55;
  *&v51[1] = v56;
  [(PAESlicedScale *)self additionalObjectDownScale:&v53 objectScale:&v52 innerScale:v51 xLeft:v21 xRight:v20 yTop:var1 yBottom:v19];
  if (var1_low)
  {
    v29 = **&var0;
    __asm { FMOV            V0.2D, #-0.5 }

    v35 = vmulq_f64(**&var0, _Q0);
  }

  else
  {
    v36 = v50 / v26;
    v37 = v49 / v25;
    v38 = v21 - v28 * v21;
    v39 = v36 - v38;
    v40 = v19 - v27 * v19;
    v41 = v37 - v40;
    v42.f32[0] = (v38 - (v28 * v20 - v20)) * 0.5 + v39;
    v43 = (v40 - (v27 * var1 - var1)) * 0.5 + v41;
    if (v55 <= 0.00001)
    {
      v42.f32[0] = *&v53 * v42.f32[0];
      *&v54 = *&v53 * *&v54;
    }

    v44 = v43;
    if (v56 <= 0.00001)
    {
      v44 = *(&v53 + 1) * v44;
      v45 = *(&v53 + 1) * *(&v54 + 1);
    }

    else
    {
      v45 = *(&v54 + 1);
    }

    v42.f32[1] = v44;
    __asm { FMOV            V3.2D, #-0.5 }

    v47 = vaddq_f64(**&offset.var0, _Q3);
    **&offset.var0 = v47;
    v35 = vcvtq_f64_f32(vcvt_f32_f64(vmulq_f64(**&var0, vcvtq_f64_f32(vcvt_f32_f64(vaddq_f64(v47, vcvtq_f64_f32(v42)))))));
    *v17 = v35;
    *&v29.f64[0] = v54;
    v29.f64[1] = v45;
  }

  __asm { FMOV            V1.2D, #1.0 }

  bounds->origin = v35;
  bounds->size = vbslq_s8(vcgtq_f64(_Q1, v29), _Q1, v29);
}

- (BOOL)getOutputBounds:(CGRect *)bounds withInputBounds:(CGRect)inputBounds withInputInfo:(id *)info withRenderInfo:(id *)renderInfo
{
  height = inputBounds.size.height;
  width = inputBounds.size.width;
  y = inputBounds.origin.y;
  x = inputBounds.origin.x;
  info = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258, info];
  if (bounds)
  {
    _ZF = info == 0;
  }

  else
  {
    _ZF = 1;
  }

  v15 = !_ZF;
  if (!_ZF)
  {
    v16 = info;
    v37 = 0;
    [info getBoolValue:&v37 fromParm:1 atFxTime:renderInfo->var0.var1];
    if ((v37 & 1) == 0)
    {
      v35 = 0.0;
      v36 = 0.0;
      v33 = 0.0;
      v34 = 0.0;
      [v16 getXValue:&v35 YValue:&v33 fromParm:3 atFxTime:renderInfo->var0.var1];
      [v16 getXValue:&v36 YValue:&v34 fromParm:2 atFxTime:renderInfo->var0.var1];
      v35 = v35 + -0.5;
      v36 = v36 + -0.5;
      v33 = v33 + -0.5;
      v34 = v34 + -0.5;
      __asm { FMOV            V0.2D, #1.0 }

      v32 = _Q0;
      [v16 getXValue:&v32 YValue:&v32.f64[1] fromParm:5 atFxTime:renderInfo->var0.var1];
      v32 = vmaxnmq_f64(v32, vdupq_n_s64(0x3EE4F8B588E368F1uLL));
      v31 = 0;
      [v16 getIntValue:&v31 fromParm:4 atFxTime:renderInfo->var0.var1];
      v30 = 0;
      [v16 getBoolValue:&v30 fromParm:15 atFxTime:renderInfo->var0.var1];
      __asm { FMOV            V0.2D, #0.5 }

      v29 = _Q0;
      [v16 getXValue:&v29 YValue:&v29 + 8 fromParm:6 atFxTime:renderInfo->var0.var1];
      *v27 = x;
      *&v27[1] = y;
      *v26 = width;
      *&v26[1] = height;
      v24 = v29;
      v25 = v32;
      [(PAESlicedScale *)self calculateBounds:v28 fromOrigin:v27 mode:v31 inputSize:v26 ignoreOffsets:v30 xLeft:&v25 xRight:v35 yBottom:v36 yTop:v33 objectScale:v34 offset:&v24];
      v22 = v28[1];
      bounds->origin = v28[0];
      bounds->size = v22;
    }
  }

  return v15;
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
  if (v9)
  {
    _ZF = v10 == 0;
  }

  else
  {
    _ZF = 1;
  }

  v12 = !_ZF;
  if (!_ZF)
  {
    versionAtCreation = [v10 versionAtCreation];
    width = [input width];
    height = [input height];
    [(PAESharedDefaultBase *)self getImageBoundary:input];
    v16 = v51;
    [(PAESharedDefaultBase *)self getInversePixelTransformForImage:output];
    [(PAESharedDefaultBase *)self getPixelTransformForImage:input];
    v17 = v86;
    v18 = v87;
    v19 = v82;
    v20 = v83;
    v21 = v84;
    v22 = v85;
    v81 = 0uLL;
    v79 = 0.0;
    v80 = 0.0;
    v77 = 0.0;
    v78 = 0.0;
    v76 = 0;
    v75 = 0uLL;
    v74 = 0;
    [v9 getBoolValue:&v74 fromParm:1 atFxTime:info->var0.var1];
    if (input)
    {
      [input heliumRef];
    }

    else
    {
      v73 = 0;
    }

    if ((v74 & 1) == 0)
    {
      v47 = v18;
      v48 = v17;
      __asm { FMOV            V0.2D, #1.0 }

      v72 = _Q0;
      [v9 getXValue:&v72 YValue:&v72.f64[1] fromParm:5 atFxTime:info->var0.var1];
      v72 = vmaxnmq_f64(v72, vdupq_n_s64(0x3EE4F8B588E368F1uLL));
      [v9 getXValue:&v79 YValue:&v77 fromParm:3 atFxTime:info->var0.var1];
      [v9 getXValue:&v80 YValue:&v78 fromParm:2 atFxTime:info->var0.var1];
      v27 = width;
      v28 = height;
      v29 = 1.0 / width;
      v30 = 1.0 / height;
      v31 = v79;
      if (v29 >= v79)
      {
        v31 = 1.0 / width;
      }

      v32 = v31 + -0.5;
      v33 = v77;
      if (v30 >= v77)
      {
        v33 = 1.0 / height;
      }

      v34 = 1.0 - v29;
      if (v34 > v80)
      {
        v34 = v80;
      }

      v79 = v32;
      v80 = v34 + -0.5;
      v35 = 1.0 - v30;
      if (1.0 - v30 > v78)
      {
        v35 = v78;
      }

      v77 = v33 + -0.5;
      v78 = v35 + -0.5;
      [v9 getBoolValue:&v76 fromParm:15 atFxTime:info->var0.var1];
      [v9 getXValue:&v75 YValue:&v75.f64[1] fromParm:6 atFxTime:info->var0.var1];
      v71 = 0;
      [v9 getIntValue:&v71 fromParm:4 atFxTime:info->var0.var1];
      v69 = 0.0;
      v70 = 0.0;
      v67 = 0.0;
      v68 = 0.0;
      [v9 getFloatValue:&v70 fromParm:8 atFxTime:info->var0.var1];
      [v9 getFloatValue:&v68 fromParm:9 atFxTime:info->var0.var1];
      [v9 getFloatValue:&v69 fromParm:10 atFxTime:info->var0.var1];
      [v9 getFloatValue:&v67 fromParm:11 atFxTime:info->var0.var1];
      v36 = v71;
      if (v71 == 2 && versionAtCreation >= 2)
      {
        [(PAESlicedScale *)self wholeTileExpandLeftScale:&v70 expandRightScale:&v69 expandBottomScale:&v68 expandTopScale:&v67 objectScale:&v72 xLeft:v79 xRight:v80 yBottom:v77 yTop:v78];
        v36 = v71;
      }

      v49 = v21;
      v50 = v22;
      v37 = v72.f64[0] + v70 + v69;
      v38 = v72.f64[1] + v68 + v67;
      v66[0] = 0;
      v66[1] = 0;
      v51 = v37;
      v52 = v38;
      *&v56 = width;
      *(&v56 + 1) = height;
      [(PAESlicedScale *)self innerScaleFromObjectScale:&v51 innerScale:&v81 xLeft:&v56 xRight:v66 yTop:v36 yBottom:v79 inputSize:v80 newObjectSize:v78 mode:v77];
      v64 = 0.0;
      v65 = 0.0;
      v51 = v37;
      v52 = v38;
      v56 = v81;
      [(PAESlicedScale *)self additionalObjectDownScale:&v64 objectScale:&v51 innerScale:&v56 xLeft:v79 xRight:v80 yTop:v78 yBottom:v77];
      v39 = 0.0;
      v40 = 0.0;
      if ((v76 & 1) == 0)
      {
        *&v56 = *&v16;
        *(&v56 + 1) = *(&v16 + 1);
        v62 = v48 * v27;
        v63 = v47 * v28;
        v60 = v37;
        v61 = v38;
        v59 = v75;
        [(PAESlicedScale *)self calculateBounds:&v51 fromOrigin:&v56 mode:v71 inputSize:&v62 ignoreOffsets:0 xLeft:&v60 xRight:v79 yBottom:v80 yTop:v77 objectScale:v78 offset:&v59];
        v62 = *&v16;
        v63 = *(&v16 + 1);
        v60 = v48 * v27;
        v61 = v47 * v28;
        v59 = v72;
        v55 = v75;
        [(PAESlicedScale *)self calculateBounds:&v56 fromOrigin:&v62 mode:v71 inputSize:&v60 ignoreOffsets:v76 xLeft:&v59 xRight:v79 yBottom:v80 yTop:v77 objectScale:v78 offset:&v55];
        v39 = (v75.f64[0] + -0.5 + (*&v56 + *&v56 + v57) * 0.5 / (v48 * v27) + (v51 + v51 + v53) * -0.5 / (v48 * v27) + (v70 - v69) * -0.5 + (v64 * (v79 - v79 * *&v81) - v64 * (*&v81 * v80 - v80)) * 0.5) * v27;
        v40 = (v75.f64[1] + -0.5 + (*(&v56 + 1) + *(&v56 + 1) + v58) * 0.5 / (v47 * v28) + (v52 + v52 + v54) * -0.5 / (v47 * v28) + (v68 - v67) * -0.5 + (v65 * (v77 - v77 * *(&v81 + 1)) - v65 * (*(&v81 + 1) * v78 - v78)) * 0.5) * v28;
      }

      HGTransform::HGTransform(&v51);
      HGTransform::Translate(&v51, v39, v40, 0.0);
      v41 = HGObject::operator new(0x210uLL);
      HGXForm::HGXForm(v41);
      (*(*v41 + 576))(v41, &v51);
      v42 = HGRectMake4i((v19 * *&v16 + v20), (v49 * *(&v16 + 1) + v50), (v19 * *&v16 + v20 + v27), (v49 * *(&v16 + 1) + v50 + v28));
      v44 = v43;
      v45 = HGObject::operator new(0x1A0uLL);
      *&v88.var0 = v42;
      *&v88.var2 = v44;
      HGSolidColor::HGSolidColor(v45, v88);
    }

    [output setHeliumRef:&v73];
    if (v73)
    {
      (*(*v73 + 24))(v73);
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
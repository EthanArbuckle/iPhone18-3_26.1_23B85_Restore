@interface PAESharedDefaultBase
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (BOOL)getCropRectFromImage:(id)a3 toImage:(id)a4 output:(void *)a5;
- (BOOL)getHeliumImage:(id *)a3 layerOffsetX:(double *)a4 layerOffsetY:(double *)a5 requestInfo:(id *)a6 fromParm:(int)a7 atTime:(id)a8;
- (BOOL)getPoint:(void *)a3 fromParm:(unsigned int)a4 atTime:(id)a5 withImage:(id)a6;
- (BOOL)smear:(HGRef<HGNode>)a3 fromImage:(id)a4 toImage:(id)a5 resultNode:(void *)a6;
- (HGRef<HGNode>)changeDOD:(HGRef<HGNode>)a3 withRect:(const void *)a4;
- (HGRef<HGNode>)cropFromImage:(id)a3 toImage:(id)a4;
- (HGRef<HGNode>)smear:(HGRef<HGNode>)a3 fromImage:(id)a4 toImage:(id)a5;
- (HGRef<HGNode>)transformFromImage:(id)a3 toImage:(id)a4 fit:(BOOL)a5;
- (PAESharedDefaultBase)initWithAPIManager:(id)a3;
- (PCMatrix44Tmpl<double>)getInversePixelTransformForImage:(SEL)a3;
- (PCMatrix44Tmpl<double>)getPixelTransformForImage:(SEL)a3;
- (PCRect<float>)getCropRectFromImage:(id)a3 toImage:(id)a4;
- (PCRect<float>)getImageBoundary:(id)a3;
- (PCVector2<double>)convertRelativeToImageCoordinates:(const void *)a3 withImage:(id)a4;
- (PCVector2<double>)convertRelativeToPixelCoordinates:(const void *)a3 withImage:(id)a4;
- (PCVector2<double>)getScaleForImage:(id)a3;
- (double)frameFromFxTime:(id)a3 forPlugIn:(id)a4;
- (double)frameRate;
- (double)relativeShutterForAngle:(double)a3;
- (double)secondsFromFxTime:(id)a3;
- (float)getBlendingGamma;
- (void)crop:(void *)a3 fromImage:(id)a4 toImage:(id)a5;
- (void)crop:(void *)a3 withRect:(PCRect<float>)a4;
- (void)dealloc;
- (void)fxTime:(id *)a3 fromFrame:(double)a4 forPlugIn:(id)a5;
- (void)transform:(void *)a3 fromImage:(id)a4 toImage:(id)a5 fit:(BOOL)a6;
@end

@implementation PAESharedDefaultBase

- (PAESharedDefaultBase)initWithAPIManager:(id)a3
{
  v8.receiver = self;
  v8.super_class = PAESharedDefaultBase;
  v4 = [(PAESharedDefaultBase *)&v8 init];
  v4->_apiManager = a3;
  v5 = [[FxHostCapabilities alloc] initWithAPIManager:v4->_apiManager];
  v4->_upscalesFields = [(FxHostCapabilities *)v5 upscalesFields];
  if ([(FxHostCapabilities *)v5 hostIsFCP])
  {
    v6 = 1;
  }

  else
  {
    v6 = [(FxHostCapabilities *)v5 hostIsFCE];
  }

  v4->_hostIsFinalCutPro = v6;
  v4->_hostIsVertigo = [-[FxHostCapabilities hostID](v5 "hostID")];
  return v4;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PAESharedDefaultBase;
  [(PAESharedDefaultBase *)&v2 dealloc];
}

- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6
{
  *a6 = 0;
  *a5 = 0;
  return 1;
}

- (HGRef<HGNode>)changeDOD:(HGRef<HGNode>)a3 withRect:(const void *)a4
{
  v7 = v4;
  v15[2] = *MEMORY[0x277D85DE8];
  v8 = HGObject::operator new(0x1D0uLL);
  HGTextureWrap::HGTextureWrap(v8);
  HGTextureWrap::SetTextureWrapMode(v8, 0, v9);
  v15[0] = 0;
  v15[1] = 0;
  HGTextureWrap::SetTextureBorderColor(v8, v15);
  (*(*v8 + 120))(v8, 0, *a3.var0);
  v10 = HGObject::operator new(0x1A0uLL);
  HGCrop::HGCrop(v10);
  v11 = HGRectMake4i(*a4, *(a4 + 1), (*a4 + *(a4 + 2)), (*(a4 + 1) + *(a4 + 3)));
  (*(*v10 + 96))(v10, 0, v11, SHIDWORD(v11), v12, v13);
  (*(*v10 + 120))(v10, 0, v8);
  *v7 = v10;
  return (*(*v8 + 24))(v8);
}

- (BOOL)getHeliumImage:(id *)a3 layerOffsetX:(double *)a4 layerOffsetY:(double *)a5 requestInfo:(id *)a6 fromParm:(int)a7 atTime:(id)a8
{
  v9 = *&a7;
  v14 = [(PROAPIAccessing *)self->_apiManager apiForProtocol:&unk_28735E258];
  if (v14)
  {
    v15 = v14;
    if (objc_opt_respondsToSelector())
    {
      v16 = *&a6->var2;
      v18[0] = *&a6->var0.var0;
      v18[1] = v16;
      v18[2] = *&a6->var4;
      LOBYTE(v14) = [v15 getHeliumImage:a3 layerOffsetX:a4 layerOffsetY:a5 requestInfo:v18 fromParm:v9 atTime:a8.var1];
    }

    else
    {
      *a3 = 0;
      LOBYTE(v14) = 1;
    }
  }

  return v14;
}

- (PCMatrix44Tmpl<double>)getPixelTransformForImage:(SEL)a3
{
  v5 = [a4 pixelTransform];

  FxMatrixToPCMatrix(v5, retstr);
  return result;
}

- (PCVector2<double>)getScaleForImage:(id)a3
{
  v4 = v3;
  if (self)
  {
    [(PAESharedDefaultBase *)self getPixelTransformForImage:a3];
    v5 = v7;
    v6 = v8;
  }

  else
  {
    v6 = 0.0;
    v5 = 0.0;
  }

  *v4 = v5;
  v4[1] = v6;
  result.var1 = v5;
  result.var0 = v6;
  return result;
}

- (PCMatrix44Tmpl<double>)getInversePixelTransformForImage:(SEL)a3
{
  if (self)
  {
    [(PAESharedDefaultBase *)self getPixelTransformForImage:a4];
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  retstr->var0[3][3] = 1.0;
  retstr->var0[2][2] = 1.0;
  retstr->var0[1][1] = 1.0;
  retstr->var0[0][0] = 1.0;
  *&retstr->var0[0][1] = 0u;
  *&retstr->var0[0][3] = 0u;
  *&retstr->var0[1][2] = 0u;
  *&retstr->var0[2][0] = 0u;
  *&retstr->var0[2][3] = 0u;
  *&retstr->var0[3][1] = 0u;
  return PCMatrix44Tmpl<double>::planarInverseZ(retstr, v6, 0.0);
}

- (PCVector2<double>)convertRelativeToImageCoordinates:(const void *)a3 withImage:(id)a4
{
  v6 = v4;
  [a4 bounds];
  v9.f64[1] = v8;
  v10.f64[1] = v7;
  v11 = vaddq_f64(v10, vmulq_f64(*a3, v9));
  *v6 = v11;
  result.var0 = v11.f64[0];
  result.var1 = v7;
  return result;
}

- (PCVector2<double>)convertRelativeToPixelCoordinates:(const void *)a3 withImage:(id)a4
{
  v5 = v4;
  if (self)
  {
    [(PAESharedDefaultBase *)self convertRelativeToImageCoordinates:a3 withImage:?];
    [(PAESharedDefaultBase *)self getPixelTransformForImage:a4];
    v9 = *v5;
    v8 = v5[1];
    v11 = v28;
    v10 = v29;
    v12 = v30;
    v14 = v22;
    v13 = v23;
    v16 = v24;
    v15 = v25;
    v17 = v26;
    v18 = v27;
  }

  else
  {
    v18 = 0.0;
    v17 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    v12 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
  }

  v19 = v12 + v9 * v11 + v8 * v10;
  v20 = v9 * v15 + v8 * v17;
  v21 = (v18 + v20) / v19;
  *v5 = (v16 + v9 * v14 + v8 * v13) / v19;
  v5[1] = v21;
  result.var1 = v20;
  result.var0 = v21;
  return result;
}

- (PCRect<float>)getImageBoundary:(id)a3
{
  v4 = v3;
  [a3 bounds];
  *&v7 = v7;
  *&v8 = v8;
  *v4 = LODWORD(v7);
  *(v4 + 4) = LODWORD(v8);
  v9 = v5;
  v10 = v6;
  *(v4 + 8) = v9;
  *(v4 + 12) = v10;
  result.var3 = *&v6;
  result.var2 = *&v5;
  result.var1 = v10;
  result.var0 = v9;
  return result;
}

- (PCRect<float>)getCropRectFromImage:(id)a3 toImage:(id)a4
{
  v7 = v4;
  [a3 bounds];
  v17.f64[0] = v8;
  v17.f64[1] = v9;
  v18.f64[0] = v10;
  v18.f64[1] = v11;
  if (self)
  {
    [(PAESharedDefaultBase *)self getPixelTransformForImage:a4];
  }

  else
  {
    memset(v16, 0, sizeof(v16));
  }

  PCMatrix44Tmpl<double>::transformRect<double>(v16, v17.f64, &v17);
  v14 = *v18.f64;
  v15 = vcvt_hight_f32_f64(vcvt_f32_f64(v17), v18);
  *v7 = v15;
  result.var1 = v15.f32[0];
  result.var3 = v13;
  result.var2 = v12;
  result.var0 = v14;
  return result;
}

- (BOOL)getCropRectFromImage:(id)a3 toImage:(id)a4 output:(void *)a5
{
  [a3 bounds];
  v15.f64[0] = v8;
  v15.f64[1] = v9;
  v16.f64[0] = v10;
  v16.f64[1] = v11;
  if (self)
  {
    [(PAESharedDefaultBase *)self getPixelTransformForImage:a4];
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  v12 = PCMatrix44Tmpl<double>::transformRect<double>(v14, v15.f64, &v15);
  if (v12)
  {
    *a5 = vcvt_hight_f32_f64(vcvt_f32_f64(v15), v16);
  }

  return v12;
}

- (void)crop:(void *)a3 fromImage:(id)a4 toImage:(id)a5
{
  if (self)
  {
    [(PAESharedDefaultBase *)self getCropRectFromImage:a4 toImage:a5];
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v6 = HGObject::operator new(0x1A0uLL);
  HGCrop::HGCrop(v6);
  (*(*v6 + 96))(v6, 0, *&v8, *(&v8 + 1) + *(&v9 + 1), *&v8 + *&v9);
  (*(*v6 + 120))(v6, 0, *a3);
  v7 = *a3;
  if (*a3 != v6)
  {
    if (v7)
    {
      (*(*v7 + 24))(v7);
    }

    *a3 = v6;
    (*(*v6 + 16))(v6);
  }

  (*(*v6 + 24))(v6);
}

- (void)crop:(void *)a3 withRect:(PCRect<float>)a4
{
  v5 = v4;
  v7 = HGObject::operator new(0x1A0uLL);
  HGCrop::HGCrop(v7);
  (*(*v7 + 96))(v7, 0, *v5, v5[1] + v5[3], *v5 + v5[2]);
  (*(*v7 + 120))(v7, 0, *a3);
  v8 = *a3;
  if (*a3 != v7)
  {
    if (v8)
    {
      (*(*v8 + 24))(v8);
    }

    *a3 = v7;
    (*(*v7 + 16))(v7);
  }

  (*(*v7 + 24))(v7);
}

- (HGRef<HGNode>)cropFromImage:(id)a3 toImage:(id)a4
{
  v8 = v4;
  if (a3)
  {
    [a3 heliumRef];
  }

  else
  {
    *v4 = 0;
  }

  return [(PAESharedDefaultBase *)self crop:v8 fromImage:a3 toImage:a4];
}

- (HGRef<HGNode>)smear:(HGRef<HGNode>)a3 fromImage:(id)a4 toImage:(id)a5
{
  if (self)
  {
    [(PAESharedDefaultBase *)self getCropRectFromImage:a4 toImage:a5];
  }

  Fx_smearToRect();
}

- (BOOL)smear:(HGRef<HGNode>)a3 fromImage:(id)a4 toImage:(id)a5 resultNode:(void *)a6
{
  v7 = xmmword_26084A5D0;
  if ([(PAESharedDefaultBase *)self getCropRectFromImage:a4 toImage:a5 output:&v7])
  {
    Fx_smearToRect();
  }

  return 0;
}

- (void)transform:(void *)a3 fromImage:(id)a4 toImage:(id)a5 fit:(BOOL)a6
{
  v6 = a6;
  v38 = 0x3FF0000000000000;
  *v36 = 0x3FF0000000000000;
  v33 = 1.0;
  v30 = 1.0;
  v31 = 0u;
  v32 = 0u;
  v34 = 0u;
  v35 = 0u;
  *&v36[8] = 0u;
  v37 = 0u;
  [a5 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [a4 bounds];
  if (v6)
  {
    v32 = 0u;
    v31 = 0u;
    *&v34 = 0;
    v35 = 0u;
    v38 = 0x3FF0000000000000;
    *&v36[16] = 0;
    v37 = 0uLL;
    v30 = v16 / v21;
    *&v32 = v12 - v16 * v19 / v21;
    v33 = v18 / v22;
    *(&v34 + 1) = v14 - v18 * v20 / v22;
    *v36 = xmmword_2603426F0;
  }

  if (self)
  {
    [(PAESharedDefaultBase *)self getPixelTransformForImage:a5];
    PCMatrix44Tmpl<double>::operator*(v26, &v30, v27);
    [(PAESharedDefaultBase *)self getInversePixelTransformForImage:a4];
  }

  else
  {
    memset(v26, 0, sizeof(v26));
    PCMatrix44Tmpl<double>::operator*(v26, &v30, v27);
    memset(v25, 0, sizeof(v25));
  }

  PCMatrix44Tmpl<double>::operator*(v27, v25, v28);
  FxSupport::makeHeliumXForm(v28, a3, 1, 0, &v29);
  v23 = *a3;
  v24 = v29;
  if (*a3 == v29)
  {
    if (v23)
    {
      (*(*v29 + 24))(v29);
    }
  }

  else
  {
    if (v23)
    {
      (*(*v23 + 24))(v23);
      v24 = v29;
    }

    *a3 = v24;
  }
}

- (HGRef<HGNode>)transformFromImage:(id)a3 toImage:(id)a4 fit:(BOOL)a5
{
  v6 = a5;
  v10 = v5;
  if (a3)
  {
    [a3 heliumRef];
  }

  else
  {
    *v5 = 0;
  }

  return [(PAESharedDefaultBase *)self transform:v10 fromImage:a3 toImage:a4 fit:v6];
}

- (BOOL)getPoint:(void *)a3 fromParm:(unsigned int)a4 atTime:(id)a5 withImage:(id)a6
{
  apiManager = self->_apiManager;
  if (!apiManager)
  {
    return 0;
  }

  v8 = *&a4;
  v10 = [(PROAPIAccessing *)apiManager apiForProtocol:&unk_28735E258, *&a4, a5.var1, a6];
  if (!v10)
  {
    return 0;
  }

  return [v10 getXValue:a3 YValue:a3 + 8 fromParm:v8 atFxTime:a5.var1];
}

- (double)relativeShutterForAngle:(double)a3
{
  v5 = [(PROAPIAccessing *)self->_apiManager apiForProtocol:&unk_28735F060];
  if (!v5)
  {
    return 0.0;
  }

  v9 = *MEMORY[0x277CC08F0];
  v10 = *(MEMORY[0x277CC08F0] + 16);
  v8 = &v9;
  [v5 durationFxTimeForEffect:&v8];
  [(PAESharedDefaultBase *)self frameFromFxTime:v8 forPlugIn:0];
  return a3 / 360.0 / v6;
}

- (double)secondsFromFxTime:(id)a3
{
  v3 = *a3.var1;
  v5.epoch = *(a3.var1 + 2);
  *&v5.value = v3;
  return CMTimeGetSeconds(&v5);
}

- (double)frameRate
{
  v2 = [(PROAPIAccessing *)self->_apiManager apiForProtocol:&unk_28735EBF0];
  if (!v2)
  {
    return 0.0;
  }

  v3 = v2;
  v4 = [v2 timelineFpsNumeratorForEffect:0];
  return v4 / [v3 timelineFpsDenominatorForEffect:0];
}

- (double)frameFromFxTime:(id)a3 forPlugIn:(id)a4
{
  [(PAESharedDefaultBase *)self secondsFromFxTime:a3.var1, a4];
  v6 = v5;
  [(PAESharedDefaultBase *)self frameRate];
  return v6 * v7;
}

- (void)fxTime:(id *)a3 fromFrame:(double)a4 forPlugIn:(id)a5
{
  v8 = [(PROAPIAccessing *)self->_apiManager apiForProtocol:&unk_28735EBF0];
  if (v8)
  {
    memset(&v11, 0, sizeof(v11));
    CMTimeMakeWithSeconds(&v11, a4 / ([v8 timelineFpsNumeratorForEffect:a5] / objc_msgSend(v8, "timelineFpsDenominatorForEffect:", a5)), 120000);
    var1 = a3->var1;
    v10 = *&v11.value;
    *(var1 + 2) = v11.epoch;
    *var1 = v10;
  }
}

- (float)getBlendingGamma
{
  v2 = [(PROAPIAccessing *)self->_apiManager apiForProtocol:&unk_28735AEE0];
  if (v2)
  {

    [v2 blendingGamma];
  }

  else
  {

    return PCRenderModel::getDefaultBlendingGamma(0);
  }

  return result;
}

@end
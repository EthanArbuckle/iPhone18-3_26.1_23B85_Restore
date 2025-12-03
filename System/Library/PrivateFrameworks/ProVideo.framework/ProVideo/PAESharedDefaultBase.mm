@interface PAESharedDefaultBase
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (BOOL)getCropRectFromImage:(id)image toImage:(id)toImage output:(void *)output;
- (BOOL)getHeliumImage:(id *)image layerOffsetX:(double *)x layerOffsetY:(double *)y requestInfo:(id *)info fromParm:(int)parm atTime:(id)time;
- (BOOL)getPoint:(void *)point fromParm:(unsigned int)parm atTime:(id)time withImage:(id)image;
- (BOOL)smear:(HGRef<HGNode>)smear fromImage:(id)image toImage:(id)toImage resultNode:(void *)node;
- (HGRef<HGNode>)changeDOD:(HGRef<HGNode>)d withRect:(const void *)rect;
- (HGRef<HGNode>)cropFromImage:(id)image toImage:(id)toImage;
- (HGRef<HGNode>)smear:(HGRef<HGNode>)smear fromImage:(id)image toImage:(id)toImage;
- (HGRef<HGNode>)transformFromImage:(id)image toImage:(id)toImage fit:(BOOL)fit;
- (PAESharedDefaultBase)initWithAPIManager:(id)manager;
- (PCMatrix44Tmpl<double>)getInversePixelTransformForImage:(SEL)image;
- (PCMatrix44Tmpl<double>)getPixelTransformForImage:(SEL)image;
- (PCRect<float>)getCropRectFromImage:(id)image toImage:(id)toImage;
- (PCRect<float>)getImageBoundary:(id)boundary;
- (PCVector2<double>)convertRelativeToImageCoordinates:(const void *)coordinates withImage:(id)image;
- (PCVector2<double>)convertRelativeToPixelCoordinates:(const void *)coordinates withImage:(id)image;
- (PCVector2<double>)getScaleForImage:(id)image;
- (double)frameFromFxTime:(id)time forPlugIn:(id)in;
- (double)frameRate;
- (double)relativeShutterForAngle:(double)angle;
- (double)secondsFromFxTime:(id)time;
- (float)getBlendingGamma;
- (void)crop:(void *)crop fromImage:(id)image toImage:(id)toImage;
- (void)crop:(void *)crop withRect:(PCRect<float>)rect;
- (void)dealloc;
- (void)fxTime:(id *)time fromFrame:(double)frame forPlugIn:(id)in;
- (void)transform:(void *)transform fromImage:(id)image toImage:(id)toImage fit:(BOOL)fit;
@end

@implementation PAESharedDefaultBase

- (PAESharedDefaultBase)initWithAPIManager:(id)manager
{
  v8.receiver = self;
  v8.super_class = PAESharedDefaultBase;
  v4 = [(PAESharedDefaultBase *)&v8 init];
  v4->_apiManager = manager;
  v5 = [[FxHostCapabilities alloc] initWithAPIManager:v4->_apiManager];
  v4->_upscalesFields = [(FxHostCapabilities *)v5 upscalesFields];
  if ([(FxHostCapabilities *)v5 hostIsFCP])
  {
    hostIsFCE = 1;
  }

  else
  {
    hostIsFCE = [(FxHostCapabilities *)v5 hostIsFCE];
  }

  v4->_hostIsFinalCutPro = hostIsFCE;
  v4->_hostIsVertigo = [-[FxHostCapabilities hostID](v5 "hostID")];
  return v4;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PAESharedDefaultBase;
  [(PAESharedDefaultBase *)&v2 dealloc];
}

- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software
{
  *software = 0;
  *hardware = 0;
  return 1;
}

- (HGRef<HGNode>)changeDOD:(HGRef<HGNode>)d withRect:(const void *)rect
{
  v7 = v4;
  v15[2] = *MEMORY[0x277D85DE8];
  v8 = HGObject::operator new(0x1D0uLL);
  HGTextureWrap::HGTextureWrap(v8);
  HGTextureWrap::SetTextureWrapMode(v8, 0, v9);
  v15[0] = 0;
  v15[1] = 0;
  HGTextureWrap::SetTextureBorderColor(v8, v15);
  (*(*v8 + 120))(v8, 0, *d.var0);
  v10 = HGObject::operator new(0x1A0uLL);
  HGCrop::HGCrop(v10);
  v11 = HGRectMake4i(*rect, *(rect + 1), (*rect + *(rect + 2)), (*(rect + 1) + *(rect + 3)));
  (*(*v10 + 96))(v10, 0, v11, SHIDWORD(v11), v12, v13);
  (*(*v10 + 120))(v10, 0, v8);
  *v7 = v10;
  return (*(*v8 + 24))(v8);
}

- (BOOL)getHeliumImage:(id *)image layerOffsetX:(double *)x layerOffsetY:(double *)y requestInfo:(id *)info fromParm:(int)parm atTime:(id)time
{
  v9 = *&parm;
  v14 = [(PROAPIAccessing *)self->_apiManager apiForProtocol:&unk_28735E258];
  if (v14)
  {
    v15 = v14;
    if (objc_opt_respondsToSelector())
    {
      v16 = *&info->var2;
      v18[0] = *&info->var0.var0;
      v18[1] = v16;
      v18[2] = *&info->var4;
      LOBYTE(v14) = [v15 getHeliumImage:image layerOffsetX:x layerOffsetY:y requestInfo:v18 fromParm:v9 atTime:time.var1];
    }

    else
    {
      *image = 0;
      LOBYTE(v14) = 1;
    }
  }

  return v14;
}

- (PCMatrix44Tmpl<double>)getPixelTransformForImage:(SEL)image
{
  pixelTransform = [a4 pixelTransform];

  FxMatrixToPCMatrix(pixelTransform, retstr);
  return result;
}

- (PCVector2<double>)getScaleForImage:(id)image
{
  v4 = v3;
  if (self)
  {
    [(PAESharedDefaultBase *)self getPixelTransformForImage:image];
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

- (PCMatrix44Tmpl<double>)getInversePixelTransformForImage:(SEL)image
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

- (PCVector2<double>)convertRelativeToImageCoordinates:(const void *)coordinates withImage:(id)image
{
  v6 = v4;
  [image bounds];
  v9.f64[1] = v8;
  v10.f64[1] = v7;
  v11 = vaddq_f64(v10, vmulq_f64(*coordinates, v9));
  *v6 = v11;
  result.var0 = v11.f64[0];
  result.var1 = v7;
  return result;
}

- (PCVector2<double>)convertRelativeToPixelCoordinates:(const void *)coordinates withImage:(id)image
{
  v5 = v4;
  if (self)
  {
    [(PAESharedDefaultBase *)self convertRelativeToImageCoordinates:coordinates withImage:?];
    [(PAESharedDefaultBase *)self getPixelTransformForImage:image];
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

- (PCRect<float>)getImageBoundary:(id)boundary
{
  v4 = v3;
  [boundary bounds];
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

- (PCRect<float>)getCropRectFromImage:(id)image toImage:(id)toImage
{
  v7 = v4;
  [image bounds];
  v17.f64[0] = v8;
  v17.f64[1] = v9;
  v18.f64[0] = v10;
  v18.f64[1] = v11;
  if (self)
  {
    [(PAESharedDefaultBase *)self getPixelTransformForImage:toImage];
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

- (BOOL)getCropRectFromImage:(id)image toImage:(id)toImage output:(void *)output
{
  [image bounds];
  v15.f64[0] = v8;
  v15.f64[1] = v9;
  v16.f64[0] = v10;
  v16.f64[1] = v11;
  if (self)
  {
    [(PAESharedDefaultBase *)self getPixelTransformForImage:toImage];
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  v12 = PCMatrix44Tmpl<double>::transformRect<double>(v14, v15.f64, &v15);
  if (v12)
  {
    *output = vcvt_hight_f32_f64(vcvt_f32_f64(v15), v16);
  }

  return v12;
}

- (void)crop:(void *)crop fromImage:(id)image toImage:(id)toImage
{
  if (self)
  {
    [(PAESharedDefaultBase *)self getCropRectFromImage:image toImage:toImage];
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v6 = HGObject::operator new(0x1A0uLL);
  HGCrop::HGCrop(v6);
  (*(*v6 + 96))(v6, 0, *&v8, *(&v8 + 1) + *(&v9 + 1), *&v8 + *&v9);
  (*(*v6 + 120))(v6, 0, *crop);
  v7 = *crop;
  if (*crop != v6)
  {
    if (v7)
    {
      (*(*v7 + 24))(v7);
    }

    *crop = v6;
    (*(*v6 + 16))(v6);
  }

  (*(*v6 + 24))(v6);
}

- (void)crop:(void *)crop withRect:(PCRect<float>)rect
{
  v5 = v4;
  v7 = HGObject::operator new(0x1A0uLL);
  HGCrop::HGCrop(v7);
  (*(*v7 + 96))(v7, 0, *v5, v5[1] + v5[3], *v5 + v5[2]);
  (*(*v7 + 120))(v7, 0, *crop);
  v8 = *crop;
  if (*crop != v7)
  {
    if (v8)
    {
      (*(*v8 + 24))(v8);
    }

    *crop = v7;
    (*(*v7 + 16))(v7);
  }

  (*(*v7 + 24))(v7);
}

- (HGRef<HGNode>)cropFromImage:(id)image toImage:(id)toImage
{
  v8 = v4;
  if (image)
  {
    [image heliumRef];
  }

  else
  {
    *v4 = 0;
  }

  return [(PAESharedDefaultBase *)self crop:v8 fromImage:image toImage:toImage];
}

- (HGRef<HGNode>)smear:(HGRef<HGNode>)smear fromImage:(id)image toImage:(id)toImage
{
  if (self)
  {
    [(PAESharedDefaultBase *)self getCropRectFromImage:image toImage:toImage];
  }

  Fx_smearToRect();
}

- (BOOL)smear:(HGRef<HGNode>)smear fromImage:(id)image toImage:(id)toImage resultNode:(void *)node
{
  v7 = xmmword_26084A5D0;
  if ([(PAESharedDefaultBase *)self getCropRectFromImage:image toImage:toImage output:&v7])
  {
    Fx_smearToRect();
  }

  return 0;
}

- (void)transform:(void *)transform fromImage:(id)image toImage:(id)toImage fit:(BOOL)fit
{
  fitCopy = fit;
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
  [toImage bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [image bounds];
  if (fitCopy)
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
    [(PAESharedDefaultBase *)self getPixelTransformForImage:toImage];
    PCMatrix44Tmpl<double>::operator*(v26, &v30, v27);
    [(PAESharedDefaultBase *)self getInversePixelTransformForImage:image];
  }

  else
  {
    memset(v26, 0, sizeof(v26));
    PCMatrix44Tmpl<double>::operator*(v26, &v30, v27);
    memset(v25, 0, sizeof(v25));
  }

  PCMatrix44Tmpl<double>::operator*(v27, v25, v28);
  FxSupport::makeHeliumXForm(v28, transform, 1, 0, &v29);
  v23 = *transform;
  v24 = v29;
  if (*transform == v29)
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

    *transform = v24;
  }
}

- (HGRef<HGNode>)transformFromImage:(id)image toImage:(id)toImage fit:(BOOL)fit
{
  fitCopy = fit;
  v10 = v5;
  if (image)
  {
    [image heliumRef];
  }

  else
  {
    *v5 = 0;
  }

  return [(PAESharedDefaultBase *)self transform:v10 fromImage:image toImage:toImage fit:fitCopy];
}

- (BOOL)getPoint:(void *)point fromParm:(unsigned int)parm atTime:(id)time withImage:(id)image
{
  apiManager = self->_apiManager;
  if (!apiManager)
  {
    return 0;
  }

  v8 = *&parm;
  image = [(PROAPIAccessing *)apiManager apiForProtocol:&unk_28735E258, *&parm, time.var1, image];
  if (!image)
  {
    return 0;
  }

  return [image getXValue:point YValue:point + 8 fromParm:v8 atFxTime:time.var1];
}

- (double)relativeShutterForAngle:(double)angle
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
  return angle / 360.0 / v6;
}

- (double)secondsFromFxTime:(id)time
{
  v3 = *time.var1;
  v5.epoch = *(time.var1 + 2);
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

- (double)frameFromFxTime:(id)time forPlugIn:(id)in
{
  [(PAESharedDefaultBase *)self secondsFromFxTime:time.var1, in];
  v6 = v5;
  [(PAESharedDefaultBase *)self frameRate];
  return v6 * v7;
}

- (void)fxTime:(id *)time fromFrame:(double)frame forPlugIn:(id)in
{
  v8 = [(PROAPIAccessing *)self->_apiManager apiForProtocol:&unk_28735EBF0];
  if (v8)
  {
    memset(&v11, 0, sizeof(v11));
    CMTimeMakeWithSeconds(&v11, frame / ([v8 timelineFpsNumeratorForEffect:in] / objc_msgSend(v8, "timelineFpsDenominatorForEffect:", in)), 120000);
    var1 = time->var1;
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
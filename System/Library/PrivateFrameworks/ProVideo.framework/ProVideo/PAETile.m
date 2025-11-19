@interface PAETile
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (HGRef<HGNode>)transformAndTile:(HGRef<HGNode>)a3 withXValue:(double)a4 YValue:(double)a5 skew:(double)a6 scale:(double)a7 stretch:(double)a8 rotation:(double)a9 resolution:(PCVector2<double>)a10 inputImage:(id)a11;
- (PAETile)initWithAPIManager:(id)a3;
- (id)properties;
- (void)_compute_2x2_matrix:(float *)a3 withScale:(float)a4 angle:(float)a5 skew:(float)a6 stretch:(float)a7;
- (void)retrieveXValue:(double *)a3 YValue:(double *)a4 skew:(double *)a5 scale:(double *)a6 stretch:(double *)a7 rotation:(double *)a8 forOutputImage:(id)a9 withRenderInfo:(id *)a10;
@end

@implementation PAETile

- (PAETile)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAETile;
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
  v12.receiver = self;
  v12.super_class = PAETile;
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
    [v3 addPointParameterWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultX:@"Tile::Center" defaultY:0 parmFlags:{0), 1, 0, 0.5, 0.5}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Tile::Skew" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:0.0 parmFlags:{-3.0, 3.0, -3.0, 3.0, 1.0}];
    v9 = [v8 localizedStringForKey:@"Tile::Scale" value:0 table:0];
    if (v7 >= 2)
    {
      v10 = 200.0;
    }

    else
    {
      v10 = 20.0;
    }

    [v3 addFloatSliderWithName:v9 parmId:3 defaultValue:0 parameterMin:3.0 parameterMax:0.0 sliderMin:v10 sliderMax:0.0 delta:20.0 parmFlags:1.0];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Tile::Stretch" parameterMin:0 parameterMax:0) sliderMin:4 sliderMax:0 delta:1.0 parmFlags:{0.1, 10.0, 0.1, 10.0, 1.0}];
    [v3 addAngleSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Tile::Angle" parameterMin:0 parameterMax:0) parmFlags:{5, 0, 0.0, -360.0, 360.0}];
  }

  return v6;
}

- (void)_compute_2x2_matrix:(float *)a3 withScale:(float)a4 angle:(float)a5 skew:(float)a6 stretch:(float)a7
{
  v10 = __sincosf_stret(a5);
  v11.f32[0] = (v10.__cosval - (v10.__sinval * a6)) * a7;
  v11.f32[1] = (v10.__sinval + (v10.__cosval * a6)) * a7;
  v11.f32[2] = -v10.__sinval;
  v11.i32[3] = LODWORD(v10.__cosval);
  *a3 = vmulq_n_f32(v11, a4);
}

- (void)retrieveXValue:(double *)a3 YValue:(double *)a4 skew:(double *)a5 scale:(double *)a6 stretch:(double *)a7 rotation:(double *)a8 forOutputImage:(id)a9 withRenderInfo:(id *)a10
{
  v16 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B780];
  v17 = [a9 origin];
  [v16 getXValue:a3 YValue:a4 fromParm:1 atFxTime:a10->var0.var1];
  [v16 getFloatValue:a5 fromParm:2 atFxTime:a10->var0.var1];
  if (v17 == 2)
  {
    [v16 getFloatValue:a6 fromParm:3 atFxTime:a10->var0.var1];
    [v16 getFloatValue:a7 fromParm:4 atFxTime:a10->var0.var1];
    var1 = a10->var0.var1;

    [v16 getFloatValue:a8 fromParm:5 atFxTime:var1];
  }

  else
  {
    *a5 = -*a5;
    [v16 getFloatValue:a6 fromParm:3 atFxTime:a10->var0.var1];
    [v16 getFloatValue:a7 fromParm:4 atFxTime:a10->var0.var1];
    [v16 getFloatValue:a8 fromParm:5 atFxTime:a10->var0.var1];
    *a8 = -*a8;
  }
}

- (HGRef<HGNode>)transformAndTile:(HGRef<HGNode>)a3 withXValue:(double)a4 YValue:(double)a5 skew:(double)a6 scale:(double)a7 stretch:(double)a8 rotation:(double)a9 resolution:(PCVector2<double>)a10 inputImage:(id)a11
{
  v13 = v11;
  v23 = v12;
  v84 = *MEMORY[0x277D85DE8];
  v24 = log2(a7);
  v25 = exp2(floor(v24));
  v26 = a7 / v25;
  *&v26 = a7 / v25;
  *&v27 = a9;
  *&v28 = a6;
  *&v29 = a8;
  [(PAETile *)self _compute_2x2_matrix:v83 withScale:v26 angle:v27 skew:v28 stretch:v29];
  v76[0] = v83[0];
  v76[1] = v83[2];
  v76[3] = 0.0;
  v76[2] = 0.0;
  v76[4] = v83[1];
  v76[5] = v83[3];
  v77 = 0u;
  v78 = 0u;
  v80 = 0u;
  v81 = 0u;
  v79 = 0x3FF0000000000000;
  v82 = 0x3FF0000000000000;
  v30 = *a3.var0;
  v75 = v30;
  if (v30)
  {
    (*(*v30 + 16))(v30);
  }

  if (!self)
  {
    v74[0] = 0;
    v32 = *a3.var0;
    if (!*a3.var0)
    {
      goto LABEL_10;
    }

LABEL_8:
    (*(*v32 + 24))(v32);
    v31 = v74[0];
LABEL_9:
    *a3.var0 = v31;
    v74[0] = 0;
    goto LABEL_10;
  }

  [(PAESharedDefaultBase *)self smear:&v75 fromImage:v13 toImage:v13];
  v31 = v74[0];
  v32 = *a3.var0;
  if (*a3.var0 != v74[0])
  {
    if (!v32)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v74[0])
  {
    (*(*v74[0] + 24))();
  }

LABEL_10:
  if (v75)
  {
    (*(*v75 + 24))(v75);
  }

  HGTransform::HGTransform(v74);
  HGTransform::Scale(v74, 1.0 / v25, 1.0 / v25, 1.0);
  v33 = HGObject::operator new(0x210uLL);
  HGXForm::HGXForm(v33);
  (*(*v33 + 576))(v33, v74);
  (*(*v33 + 120))(v33, 0, *a3.var0);
  (*(*v33 + 592))(v33, 0, 0.0);
  v34 = HGObject::operator new(0x1A0uLL);
  HGCrop::HGCrop(v34);
  (*(*v34 + 120))(v34, 0, v33);
  v35 = [v13 width];
  v36 = [v13 height];
  v37 = vcvtd_n_f64_u64(v35, 1uLL) / v25;
  v38 = vcvtd_n_f64_u64(v36, 1uLL) / v25;
  v39 = HGRectMake4i(-floor(v37), -floor(v38), vcvtmd_s64_f64(v37), vcvtmd_s64_f64(v38));
  (*(*v34 + 96))(v34, 0, v39, SHIDWORD(v39), v40, v41);
  (*(*v34 + 136))(v34, 0xFFFFFFFFLL, 2);
  HGTransform::HGTransform(v73);
  HGTransform::Translate(v73, a4, a5, 0.0);
  HGTransform::HGTransform(v72);
  HGTransform::LoadMatrixd(v72, v76);
  HGTransform::Invert(v72[0].f64);
  HGTransform::Multiply(v72, v73);
  v42 = HGObject::operator new(0x1D0uLL);
  HGTextureWrap::HGTextureWrap(v42);
  (*(*v42 + 120))(v42, 0, v34);
  HGTextureWrap::SetTextureWrapMode(v42, 3, v43);
  HGTransform::HGTransform(v71);
  HGTransform::Scale(v71, *a11, *(a11 + 1), 1.0);
  v44 = HGObject::operator new(0x210uLL);
  HGXForm::HGXForm(v44);
  (*(*v44 + 576))(v44, v71);
  (*(*v44 + 120))(v44, 0, v42);
  v45 = HGObject::operator new(0x210uLL);
  HGXForm::HGXForm(v45);
  (*(*v45 + 120))(v45, 0, v44);
  (*(*v45 + 576))(v45, v72);
  HGTransform::HGTransform(v70);
  HGTransform::Scale(v70, 1.0 / *a11, 1.0 / *(a11 + 1), 0.0);
  v46 = HGObject::operator new(0x210uLL);
  HGXForm::HGXForm(v46);
  (*(*v46 + 576))(v46, v70);
  (*(*v46 + 120))(v46, 0, v45);
  v47 = HGObject::operator new(0x1A0uLL);
  HGCrop::HGCrop(v47);
  (*(*v47 + 120))(v47, 0, v46);
  if (self)
  {
    [(PAESharedDefaultBase *)self getPixelTransformForImage:v13];
    [(PAESharedDefaultBase *)self getImageBoundary:v13];
    v48 = vcvtq_f64_f32(v67);
    v49 = vcvtq_f64_f32(v68);
  }

  else
  {
    v48 = 0uLL;
    memset(v69, 0, sizeof(v69));
    v49 = 0uLL;
    v67 = 0;
    v68 = 0;
  }

  v66[0] = v48;
  v66[1] = v49;
  v63 = 0.0;
  v64 = 0.0;
  __asm { FMOV            V0.2D, #-1.0 }

  v65 = _Q0;
  PCMatrix44Tmpl<double>::transformRect<double>(v69, v66, &v63);
  v55 = v63;
  v56 = v64;
  v57 = *&v65;
  v58 = *(&v65 + 1);
  v59 = HGRectMake4i(v55, v56, v57 + v55, v58 + v56);
  (*(*v47 + 96))(v47, 0, v59, SHIDWORD(v59), v60, v61);
  *v23 = v47;
  (*(*v46 + 24))(v46);
  HGTransform::~HGTransform(v70);
  (*(*v45 + 24))(v45);
  (*(*v44 + 24))(v44);
  HGTransform::~HGTransform(v71);
  (*(*v42 + 24))(v42);
  HGTransform::~HGTransform(v72);
  HGTransform::~HGTransform(v73);
  (*(*v34 + 24))(v34);
  (*(*v33 + 24))(v33);
  HGTransform::~HGTransform(v74);
  return v62;
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
  if (v9)
  {
    v10 = [v9 versionAtCreation];
    [(PAESharedDefaultBase *)self getScaleForImage:a4];
    v11 = v29;
    if (v10)
    {
      v12 = v28;
    }

    else
    {
      [a4 pixelAspect];
      v12 = v28 * (1.0 / v13);
    }

    v26 = 0.5;
    v27 = 0.5;
    v24 = 0x4008000000000000;
    v25 = 0;
    v22 = 0;
    v23 = 0x3FF0000000000000;
    v14 = *&a5->var2;
    v21[0] = *&a5->var0.var0;
    v21[1] = v14;
    v21[2] = *&a5->var4;
    [(PAETile *)self retrieveXValue:&v27 YValue:&v26 skew:&v25 scale:&v24 stretch:&v23 rotation:&v22 forOutputImage:a3 withRenderInfo:v21];
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
          v20 = 0;
        }

        v26 = v26 + -0.5;
        v27 = v27 + -0.5;
        v15 = v27;
        v27 = v12 * (v15 * [a3 width]);
        v16 = v26;
        v26 = v11 * (v16 * [a3 height]);
        v18 = v20;
        if (v20)
        {
          (*(*v20 + 16))(v20);
        }

        *v21 = v12;
        *(v21 + 1) = v11;
        [PAETile transformAndTile:"transformAndTile:withXValue:YValue:skew:scale:stretch:rotation:resolution:inputImage:" withXValue:&v18 YValue:v21 skew:a4 scale:v27 stretch:? rotation:? resolution:? inputImage:?];
        if (v18)
        {
          (*(*v18 + 24))(v18);
        }

        [a3 setHeliumRef:&v19];
        if (v19)
        {
          (*(*v19 + 24))(v19);
        }

        if (v20)
        {
          (*(*v20 + 24))(v20);
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
@interface PAEBlackHole
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (PAEBlackHole)initWithAPIManager:(id)a3;
- (id)properties;
@end

@implementation PAEBlackHole

- (PAEBlackHole)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEBlackHole;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:3];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"PositionIndependent", v4, @"SupportsHeliumRendering", v5, @"MayRemapTime", v6, @"SupportsLargeRenderScale", v7, @"PixelTransformSupport", v8, @"AutoColorProcessingSupport", objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 0), @"InputSizeLimit", 0}];
}

- (BOOL)addParameters
{
  v10.receiver = self;
  v10.super_class = PAEBlackHole;
  [(PAESharedDefaultBase *)&v10 addParameters];
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
    [v3 addPointParameterWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultX:@"BlackHole::Center" defaultY:0 parmFlags:{0), 1, 0, 0.5, 0.5}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"BlackHole::Amount" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:150.0 parmFlags:{0.0, dbl_260343CD0[v7 == 0], 0.0, dbl_260343CE0[v7 == 0], 1.0}];
  }

  return v6;
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (v9)
  {
    v10 = v9;
    __asm { FMOV            V0.2D, #0.5 }

    v49 = _Q0;
    [v9 getXValue:&v49 YValue:&v49 + 8 fromParm:1 atFxTime:a5->var0.var1];
    v48 = 150.0;
    [v10 getFloatValue:&v48 fromParm:2 atFxTime:a5->var0.var1];
    v16 = llround(log2(v48 * 0.125));
    if (v16 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v16;
    }

    v18 = [(PAESharedDefaultBase *)self getRenderMode:a5->var0.var1];
    [(PAESharedDefaultBase *)self getPixelTransformForImage:a4];
    [(PAESharedDefaultBase *)self getInversePixelTransformForImage:a4];
    [(PAESharedDefaultBase *)self convertRelativeToImageCoordinates:&v49 withImage:a4];
    v49 = *v36;
    if (v18 && [a4 imageType] == 3)
    {
      if (a4)
      {
        [a4 heliumRef];
      }

      else
      {
        v47 = 0;
      }

      v45 = 0;
      v46 = 0;
      v44 = &unk_2871D5D70;
      PCArray<HGRef<HGNode>,PCArray_Traits<HGRef<HGNode>>>::resize(&v44, 1, 3);
      if (v45 < v17)
      {
        v19 = 2 * v17 + 1;
      }

      else
      {
        v19 = v45;
      }

      PCArray<HGRef<HGNode>,PCArray_Traits<HGRef<HGNode>>>::resize(&v44, v17, v19);
      if (SHIDWORD(v45) <= 0)
      {
        PCArray_base::badIndex(v20);
      }

      v22 = v46;
      v21 = v47;
      v23 = *v46;
      if (*v46 != v47)
      {
        if (v23)
        {
          (*(*v23 + 24))(*v46);
          v21 = v47;
        }

        *v22 = v21;
        if (v21)
        {
          (*(*v21 + 16))(v21);
        }
      }

      *v36 = 0x3FE0000000000000;
      memset(&v36[8], 0, 32);
      v37 = 0x3FE0000000000000;
      v38 = 0u;
      v39 = 0u;
      v41 = 0u;
      v42 = 0u;
      v40 = 0x3FE0000000000000;
      v43 = 0x3FF0000000000000;
      if (SHIDWORD(v45) >= 2)
      {
        v24 = 1;
        do
        {
          HeliumXForm = FxSupport::makeHeliumXForm(v36, &v46[v24 - 1], 1, 0, &v34);
          if (v24 >= SHIDWORD(v45))
          {
            PCArray_base::badIndex(HeliumXForm);
          }

          v26 = v46;
          v27 = v46[v24];
          v28 = v34;
          if (v27 == v34)
          {
            if (v27)
            {
              (*(*v34 + 24))();
            }
          }

          else
          {
            if (v27)
            {
              (*(*v27 + 24))(v46[v24]);
              v28 = v34;
            }

            v26[v24] = v28;
          }

          ++v24;
        }

        while (v24 < SHIDWORD(v45));
      }

      v29 = HGObject::operator new(0x1A0uLL);
      HGNode::HGNode(v29);
      v35 = v29;
      v33 = vdupq_n_s64(0x3E7AD7F29ABCAF48uLL);
      if (SHIDWORD(v45) >= 1)
      {
        v30 = HGObject::operator new(0x2A0uLL);
        HBlackHole::HBlackHole(v30);
      }

      [a3 setHeliumRef:{&v35, *&v33}];
      if (v35)
      {
        (*(*v35 + 24))(v35);
      }

      v44 = &unk_2871D5D70;
      if (v45 < 0)
      {
        v31 = 1;
      }

      else
      {
        v31 = v45;
      }

      PCArray<HGRef<HGNode>,PCArray_Traits<HGRef<HGNode>>>::resize(&v44, 0, v31);
      if (v46)
      {
        MEMORY[0x2666E9ED0](v46, 0x1000C8077774924);
      }

      if (v47)
      {
        (*(*v47 + 24))(v47);
      }

      LOBYTE(v9) = 1;
    }

    else
    {
      LOBYTE(v9) = 0;
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
@interface PAEFill
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (BOOL)parameterChanged:(unsigned int)changed;
- (PAEFill)initWithAPIManager:(id)manager;
- (id)properties;
@end

@implementation PAEFill

- (PAEFill)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEFill;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (id)properties
{
  if ([PAEFill properties]::once != -1)
  {
    [PAEFill properties];
  }

  return [PAEFill properties]::sPropertiesDict;
}

uint64_t __21__PAEFill_properties__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEAC0]);
  v1 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:67584];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:591872];
  result = [v0 initWithObjectsAndKeys:{&unk_28732D460, @"PixelTransformSupport", v1, @"PositionIndependent", v2, @"MayRemapTime", v3, @"SupportsLargeRenderScale", v4, @"SupportsHeliumRendering", v5, @"SupportsInternalMixing", v6, @"SDRWorkingSpace", v7, @"HDRWorkingSpace", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 3), @"AutoColorProcessingSupport", 0}];
  [PAEFill properties]::sPropertiesDict = result;
  return result;
}

- (BOOL)addParameters
{
  v6.receiver = self;
  v6.super_class = PAEFill;
  [(PAESharedDefaultBase *)&v6 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addPopupMenuWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Fill::Type" menuEntries:0 parmFlags:{0), 1, 0, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:", objc_msgSend(v4, "localizedStringForKey:value:table:", @"Fill::Color", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"Fill::Gradient", 0, 0), 0), 1}];
    [v3 addColorParameterWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultRed:@"Fill::Color" defaultGreen:0 defaultBlue:0) parmFlags:{2, 0, 0.5, 0.5, 0.5}];
    [v3 addGradientPositionedWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" parmFlags:{@"Fill::Gradient", 0, 0), 3, 2}];
    [v3 setGradientHiddenWithOSC:1 toParam:3];
  }

  return v3 != 0;
}

- (BOOL)parameterChanged:(unsigned int)changed
{
  if (changed != 1)
  {
    return 1;
  }

  v4 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v5 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E448];
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return 0;
  }

  v7 = v5;
  v18 = *MEMORY[0x277CC0898];
  v19 = *(MEMORY[0x277CC0898] + 16);
  v17 = 0;
  v8 = 1;
  [v4 getIntValue:&v17 fromParm:1 atFxTime:&v18];
  v15 = 0;
  v16 = 0;
  [v4 getParameterFlags:&v16 fromParm:2];
  v9 = &v15;
  [v4 getParameterFlags:&v15 fromParm:3];
  v10 = v17 == 0;
  if (v17)
  {
    v11 = &v15;
  }

  else
  {
    v11 = &v16;
  }

  if (v17)
  {
    v12 = 3;
  }

  else
  {
    v12 = 2;
  }

  if (v17)
  {
    v9 = &v16;
    v13 = 2;
  }

  else
  {
    v13 = 3;
  }

  [v7 setParameterFlags:*v11 & 0xFFFFFFFD toParm:v12];
  [v7 setParameterFlags:*v9 | 2u toParm:v13];
  [v7 setGradientHiddenWithOSC:v10 toParam:3];
  return v8;
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E548];
  v11 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735AB90];
  v12 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_287359A98];
  if (v9)
  {
    v13 = v10 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13 || v11 == 0 || v12 == 0)
  {
    return 0;
  }

  v79 = 0;
  [v9 getIntValue:&v79 fromParm:1 atFxTime:info->var0.var1];
  v16 = [(PAESharedDefaultBase *)self getRenderMode:info->var0.var1];
  [v9 mixAmountAtTime:info->var0.var1];
  if (!v16)
  {
    return 0;
  }

  v18 = v17;
  if ([input imageType] != 3)
  {
    return 0;
  }

  if (input)
  {
    [input heliumRef];
  }

  else
  {
    v78 = 0;
  }

  if (v79)
  {
    v75 = 1.0;
    v72 = 0x3FF0000000000000;
    v69 = 1.0;
    v66 = 1.0;
    v67 = 0u;
    v68 = 0u;
    v70 = 0u;
    v71 = 0u;
    v73 = 0u;
    v74 = 0u;
    [v11 inversePixelTransform];
    for (i = 0; i != 16; i += 4)
    {
      v21 = (&v66 + i * 8);
      v22 = *&v65[i + 2];
      *v21 = *&v65[i];
      v21[1] = v22;
    }

    v23 = HGRectMake4i(0, 0, 0x400u, 1u);
    v25 = v24;
    v26 = HGObject::operator new(0x80uLL);
    *&v27 = HGBitmap::HGBitmap(v26, v23, v25, 24).n128_u64[0];
    v64 = 0.0;
    v65[0] = 0.0;
    v76 = 0.0;
    v77 = 0.0;
    v63 = 0;
    [v10 getGradientSamples:*(v26 + 10) numSamples:1024 depth:1 fromParm:3 atFxTime:{info->var0.var1, v27}];
    [v10 getGradientStartEnd:v65 startY:&v77 endX:&v76 endY:&v64 type:&v63 fromParm:3 atFxTime:info->var0.var1];
    [output pixelAspect];
    v29 = v28;
    v30 = v76;
    v31 = v77;
    v32 = v64;
    v33 = v65[0];
    v34 = HGObject::operator new(0x210uLL);
    HGGradient::HGGradient(v34);
    if (v63)
    {
      HGGradient::SetGradientMode(v34, 1);
      v35 = sqrt(v29 * (v30 - v33) * (v29 * (v30 - v33)) + (v32 - v31) * (v32 - v31));
      (*(*v34 + 96))(v34, 2, fabsf(v35), 0.0, 0.0, 0.0);
    }

    else
    {
      HGGradient::SetGradientMode(v34, 0);
      v41 = v76;
      v42 = v64;
      (*(*v34 + 96))(v34, 2, v41, v42, 0.0, 0.0);
    }

    v43 = v29;
    (*(*v34 + 96))(v34, 0, v43, 1.0, 1.0, 1.0);
    v44 = v65[0];
    v45 = v77;
    (*(*v34 + 96))(v34, 1, v44, v45, 0.0, 0.0);
    v46 = v66;
    v47 = *&v67;
    v48 = *&v68;
    (*(*v34 + 96))(v34, 3, v46, v47, 0.0, v48);
    v49 = *(&v68 + 1);
    v50 = v69;
    v51 = *(&v70 + 1);
    (*(*v34 + 96))(v34, 4, v49, v50, 0.0, v51);
    v52 = *(&v73 + 1);
    v53 = *&v74;
    v54 = v75;
    (*(*v34 + 96))(v34, 5, v52, v53, 0.0, v54);
    v55 = 0;
    v56 = *(v26 + 10);
    for (j = (v56 + 1); ; j += 4)
    {
      v58 = (v56 + 4 * v55);
      v59 = *v58;
      v60 = 3;
      v61 = j;
      do
      {
        *(v61 - 1) = *v61;
        ++v61;
        --v60;
      }

      while (v60);
      v58[3] = v59;
      if (++v55 == 1024)
      {
        v62 = HGObject::operator new(0x1F0uLL);
        HGBitmapLoader::HGBitmapLoader(v62, v26);
        (*(*v34 + 120))(v34, 0, v62);
        (*(*v34 + 16))(v34);
        FxApplyGradientBlendRequest();
      }
    }
  }

  v66 = 0.0;
  v65[0] = 0.0;
  v77 = 0.0;
  [v9 getRedValue:&v66 greenValue:v65 blueValue:&v77 fromParm:2 atFxTime:info->var0.var1];
  *&v36 = COERCE_DOUBLE(HGObject::operator new(0x1A0uLL));
  HgcFillColor::HgcFillColor(v36);
  (*(*v36 + 120))(v36, 0, v78);
  v37 = v66;
  v38 = v65[0];
  v39 = v77;
  (*(*v36 + 96))(v36, 0, v37, v38, v39, 0.0);
  v40 = v18;
  (*(*v36 + 96))(v36, 1, v40, 0.0, 0.0, 0.0);
  v76 = *&v36;
  (*(*v36 + 16))(v36);
  [output setHeliumRef:&v76];
  if (v76 != 0.0)
  {
    (*(**&v76 + 24))(COERCE_DOUBLE(*&v76));
  }

  (*(*v36 + 24))(v36);
  if (v78)
  {
    (*(*v78 + 24))(v78);
  }

  return 1;
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
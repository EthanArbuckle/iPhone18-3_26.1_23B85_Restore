@interface PAEColorSolid
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup hardware:(BOOL *)hardware software:(BOOL *)software;
- (PAEColorSolid)initWithAPIManager:(id)manager;
- (id)properties;
@end

@implementation PAEColorSolid

- (PAEColorSolid)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEColorSolid;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (id)properties
{
  if ([PAEColorSolid properties]::once != -1)
  {
    [PAEColorSolid properties];
  }

  return [PAEColorSolid properties]::sPropertiesDict;
}

uint64_t __27__PAEColorSolid_properties__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEAC0]);
  v1 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v2 = [MEMORY[0x277CCABB0] numberWithInt:6];
  result = [v0 initWithObjectsAndKeys:{&unk_28732D478, @"PixelTransformSupport", v1, @"SupportsHeliumRendering", v2, @"PixelTransformSupport", objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", 3), @"AutoColorProcessingSupport", 0}];
  [PAEColorSolid properties]::sPropertiesDict = result;
  return result;
}

- (BOOL)addParameters
{
  v5.receiver = self;
  v5.super_class = PAEColorSolid;
  [(PAESharedDefaultBase *)&v5 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    [v3 addColorParameterWithName:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] parmId:"bundleForClass:" defaultRed:objc_opt_class()) defaultGreen:"localizedStringForKey:value:table:" defaultBlue:@"ColorSolid::Color" parmFlags:{0, 0), 1, 0, 0.0, 0.0, 1.0}];
  }

  return v3 != 0;
}

- (BOOL)canThrowRenderOutput:(id)output withInfo:(id *)info
{
  v7 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (v7)
  {
    v32 = 0;
    v33 = 0;
    v31 = 0;
    [v7 getRedValue:&v33 greenValue:&v32 blueValue:&v31 fromParm:1 atFxTime:info->var0.var1];
    LODWORD(v7) = [(PAESharedDefaultBase *)self getRenderMode:info->var0.var1];
    if (v7)
    {
      if ([output imageType] == 3)
      {
        [output bounds];
        v25 = v8;
        v26 = v9;
        [(PAESharedDefaultBase *)self getPixelTransformForImage:output];
        v10.f64[0] = v25;
        v10.f64[1] = v26;
        __asm { FMOV            V1.2D, #-0.5 }

        v27 = vmulq_f64(v10, _Q1);
        v28 = v25;
        v29 = v26;
        if (PCMatrix44Tmpl<double>::transformRect<double>(v30, v27.f64, &v27) && v27.f64[0] >= -2147483650.0 && v27.f64[0] <= 2147483650.0 && (v17 = v27.f64[0] + v28, HIDWORD(v18) = -1042284544, v27.f64[0] + v28 >= -2147483650.0) && v17 <= 2147483650.0 && v27.f64[1] >= -2147483650.0 && v27.f64[1] <= 2147483650.0 && (v19 = v27.f64[1] + v29, v27.f64[1] + v29 <= 2147483650.0) && v19 >= -2147483650.0)
        {
          v20 = vcvtmd_s64_f64(v27.f64[0]);
          v21 = vcvtmd_s64_f64(v27.f64[1]);
          LODWORD(v18) = vcvtpd_s64_f64(v17);
          LODWORD(v16) = vcvtpd_s64_f64(v19);
          v22 = v18 | (v16 << 32);
        }

        else
        {
          v20 = 0x80000000;
          v21 = 0x80000000;
          v22 = 0x7FFFFFFF7FFFFFFFLL;
        }

        v23 = HGObject::operator new(0x1A0uLL);
        v34.var0 = v20;
        v34.var1 = v21;
        *&v34.var2 = v22;
        HGSolidColor::HGSolidColor(v23, v34);
      }

      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (BOOL)frameSetup:(id *)setup hardware:(BOOL *)hardware software:(BOOL *)software
{
  *software = 0;
  *hardware = 0;
  v5 = *&setup->var2;
  v7[0] = *&setup->var0.var0;
  v7[1] = v5;
  v7[2] = *&setup->var4;
  [PAESharedDefaultBase overrideFrameSetupForRenderMode:"overrideFrameSetupForRenderMode:hardware:software:" hardware:v7 software:?];
  return 1;
}

@end
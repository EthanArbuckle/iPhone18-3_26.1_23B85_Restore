@interface PAEInvert
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (PAEInvert)initWithAPIManager:(id)a3;
- (id)properties;
@end

@implementation PAEInvert

- (PAEInvert)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEInvert;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
}

- (id)properties
{
  if ([PAEInvert properties]::once != -1)
  {
    [PAEInvert properties];
  }

  return [PAEInvert properties]::sPropertiesDict;
}

uint64_t __23__PAEInvert_properties__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEAC0]);
  v1 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  result = [v0 initWithObjectsAndKeys:{&unk_28732D508, @"PixelTransformSupport", v1, @"PixelIndependent", v2, @"PositionIndependent", v3, @"MayRemapTime", v4, @"SupportsLargeRenderScale", v5, @"SupportsHeliumRendering", v6, @"SupportsInternalMixing", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 1), @"AutoColorProcessingSupport", 0}];
  [PAEInvert properties]::sPropertiesDict = result;
  return result;
}

- (BOOL)addParameters
{
  v3.receiver = self;
  v3.super_class = PAEInvert;
  [(PAESharedDefaultBase *)&v3 addParameters];
  return 1;
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (v9)
  {
    v10 = v9;
    v11 = [(PAESharedDefaultBase *)self getRenderMode:a5->var0.var1];
    [v10 mixAmountAtTime:a5->var0.var1];
    if (v11 && (v13 = v12, [a4 imageType] == 3))
    {
      if (a4)
      {
        [a4 heliumRef];
      }

      else
      {
        v18 = 0;
      }

      v14 = HGObject::operator new(0x1A0uLL);
      HgcInvert::HgcInvert(v14);
      v17 = v14;
      (*(*v14 + 120))(v14, 0, v18);
      v15 = v13;
      (*(*v14 + 96))(v14, 0, v15, v15, v15, v15);
      [a3 setHeliumRef:&v17];
      if (v17)
      {
        (*(*v17 + 24))(v17);
      }

      if (v18)
      {
        (*(*v18 + 24))(v18);
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
  *a5 = 0;
  *a6 = 0;
  v6 = *&a3->var2;
  v8[0] = *&a3->var0.var0;
  v8[1] = v6;
  v8[2] = *&a3->var4;
  [(PAESharedDefaultBase *)self overrideFrameSetupForRenderMode:v8 hardware:a5 software:a6];
  return 1;
}

@end
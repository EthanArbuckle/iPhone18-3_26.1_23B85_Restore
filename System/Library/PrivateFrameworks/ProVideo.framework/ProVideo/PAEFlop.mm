@interface PAEFlop
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (PAEFlop)initWithAPIManager:(id)a3;
- (id)properties;
@end

@implementation PAEFlop

- (PAEFlop)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEFlop;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:3];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"PositionIndependent", v4, @"MayRemapTime", v5, @"SupportsLargeRenderScale", v6, @"SupportsHeliumRendering", v7, @"PixelTransformSupport", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 3), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v6.receiver = self;
  v6.super_class = PAEFlop;
  [(PAESharedDefaultBase *)&v6 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addPopupMenuWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Flop::Flop" menuEntries:0 parmFlags:{0), 1, 0, objc_msgSend(objc_msgSend(v4, "localizedStringForKey:value:table:", @"Flop::FlopEntries", 0, 0), "componentsSeparatedByString:", @"|", 1}];
  }

  return v3 != 0;
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  [(PAESharedDefaultBase *)self getPixelTransformForImage:a3];
  [(PAESharedDefaultBase *)self getInversePixelTransformForImage:a3];
  if (!v9)
  {
    goto LABEL_12;
  }

  v28 = 0;
  [v9 getIntValue:&v28 fromParm:1 atFxTime:a5->var0.var1];
  v10 = v28;
  v11 = v28 > 2;
  v12 = [(PAESharedDefaultBase *)self getRenderMode:a5->var0.var1];
  if (!v12)
  {
    return v12;
  }

  var1 = a5->var1;
  if ([a4 imageType] != 3)
  {
LABEL_12:
    LOBYTE(v12) = 0;
    return v12;
  }

  v27 = 0x3FF0000000000000;
  v24 = 0x3FF0000000000000;
  *&v21[40] = 0x3FF0000000000000;
  *v21 = 0x3FF0000000000000;
  memset(&v21[8], 0, 32);
  v22 = 0u;
  v23 = 0u;
  v25 = 0u;
  v26 = 0u;
  if ((v11 | v10 ^ 1))
  {
    *v21 = xmmword_260343D60;
    *&v21[16] = vnegq_f64(0);
  }

  if ((v11 | (6u >> (v10 & 7))))
  {
    *&v21[32] = xmmword_260342D20;
    v22 = vnegq_f64(0);
  }

  PCMatrix44Tmpl<double>::operator*(v30, v21, v19);
  PCMatrix44Tmpl<double>::operator*(v19, v29, v20);
  for (i = 0; i != 16; i += 4)
  {
    v15 = &v21[i * 8];
    v16 = *&v20[i + 2];
    *v15 = *&v20[i];
    v15[1] = v16;
  }

  if (a4)
  {
    [a4 heliumRef];
  }

  else
  {
    v20[0] = 0;
  }

  FxSupport::makeHeliumXForm(v21, v20, var1 == 2, var1 == 2, v19);
  v17 = v19[0];
  if (v20[0] == v19[0])
  {
    if (v20[0])
    {
      (*(*v19[0] + 24))(v19[0]);
    }
  }

  else
  {
    if (v20[0])
    {
      (*(*v20[0] + 24))();
      v17 = v19[0];
    }

    v20[0] = v17;
  }

  [a3 setHeliumRef:v20];
  if (v20[0])
  {
    (*(*v20[0] + 24))(v20[0]);
  }

  LOBYTE(v12) = 1;
  return v12;
}

- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6
{
  *a6 = 1;
  *a5 = 1;
  v6 = *&a3->var2;
  v8[0] = *&a3->var0.var0;
  v8[1] = v6;
  v8[2] = *&a3->var4;
  [(PAESharedDefaultBase *)self overrideFrameSetupForRenderMode:v8 hardware:a5 software:a6];
  return 1;
}

@end
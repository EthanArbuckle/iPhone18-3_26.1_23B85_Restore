@interface PAEGeneratorDefaultBase
- (BOOL)frameSetup:(id *)a3 hardware:(BOOL *)a4 software:(BOOL *)a5;
- (BOOL)renderOutput:(id)a3 withInfo:(id *)a4;
@end

@implementation PAEGeneratorDefaultBase

- (BOOL)renderOutput:(id)a3 withInfo:(id *)a4
{
  v6 = *&a4->var2;
  v12[0] = *&a4->var0.var0;
  v12[1] = v6;
  v12[2] = *&a4->var4;
  v7 = [(PAEGeneratorDefaultBase *)self canThrowRenderOutput:a3 withInfo:v12];
  if ([a3 imageType] == 3)
  {
    v8 = [(PROAPIAccessing *)self->super._apiManager apiForProtocol:&unk_287359A98];
    if (v8)
    {
      if ([v8 colorPrimaries] == 1)
      {
        v9 = [a3 colorSpace];
        if (a3)
        {
          [a3 heliumRef];
        }

        else
        {
          v11 = 0;
        }

        FxApplySDRToHDR(v9, &v11, v9, 1, v12);
        if (v11)
        {
          (*(*v11 + 24))(v11);
        }

        [a3 setHeliumRef:v12];
        if (*&v12[0])
        {
          (*(**&v12[0] + 24))(*&v12[0]);
        }
      }
    }
  }

  return v7;
}

- (BOOL)frameSetup:(id *)a3 hardware:(BOOL *)a4 software:(BOOL *)a5
{
  *a5 = 0;
  *a4 = 0;
  return 1;
}

@end
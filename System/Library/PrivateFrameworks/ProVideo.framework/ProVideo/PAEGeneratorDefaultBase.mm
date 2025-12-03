@interface PAEGeneratorDefaultBase
- (BOOL)frameSetup:(id *)setup hardware:(BOOL *)hardware software:(BOOL *)software;
- (BOOL)renderOutput:(id)output withInfo:(id *)info;
@end

@implementation PAEGeneratorDefaultBase

- (BOOL)renderOutput:(id)output withInfo:(id *)info
{
  v6 = *&info->var2;
  v12[0] = *&info->var0.var0;
  v12[1] = v6;
  v12[2] = *&info->var4;
  v7 = [(PAEGeneratorDefaultBase *)self canThrowRenderOutput:output withInfo:v12];
  if ([output imageType] == 3)
  {
    v8 = [(PROAPIAccessing *)self->super._apiManager apiForProtocol:&unk_287359A98];
    if (v8)
    {
      if ([v8 colorPrimaries] == 1)
      {
        colorSpace = [output colorSpace];
        if (output)
        {
          [output heliumRef];
        }

        else
        {
          v11 = 0;
        }

        FxApplySDRToHDR(colorSpace, &v11, colorSpace, 1, v12);
        if (v11)
        {
          (*(*v11 + 24))(v11);
        }

        [output setHeliumRef:v12];
        if (*&v12[0])
        {
          (*(**&v12[0] + 24))(*&v12[0]);
        }
      }
    }
  }

  return v7;
}

- (BOOL)frameSetup:(id *)setup hardware:(BOOL *)hardware software:(BOOL *)software
{
  *software = 0;
  *hardware = 0;
  return 1;
}

@end
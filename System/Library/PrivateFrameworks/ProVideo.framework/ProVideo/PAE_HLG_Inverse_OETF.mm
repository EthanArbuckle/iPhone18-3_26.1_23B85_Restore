@interface PAE_HLG_Inverse_OETF
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (PAE_HLG_Inverse_OETF)initWithAPIManager:(id)manager;
- (id)properties;
@end

@implementation PAE_HLG_Inverse_OETF

- (PAE_HLG_Inverse_OETF)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAE_HLG_Inverse_OETF;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (id)properties
{
  if ([PAE_HLG_Inverse_OETF properties]::once != -1)
  {
    [PAE_HLG_Inverse_OETF properties];
  }

  return [PAE_HLG_Inverse_OETF properties]::sPropertiesDict;
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  if (input)
  {
    [input heliumRef];
  }

  else
  {
    v13 = 0;
  }

  v11 = 0x1200000009;
  v12 = 0;
  v9 = 0x800000009;
  v10 = 0;
  FxApplyColorConform(&v13, &v11, 1, &v9, 1, &v8);
  v6 = v8;
  if (v13 == v8)
  {
    if (v13)
    {
      (*(*v8 + 24))(v8);
    }
  }

  else
  {
    if (v13)
    {
      (*(*v13 + 24))(v13);
      v6 = v8;
    }

    v13 = v6;
  }

  [output setHeliumRef:&v13];
  if (v13)
  {
    (*(*v13 + 24))(v13);
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
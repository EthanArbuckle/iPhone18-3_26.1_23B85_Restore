@interface PAETextureWrap
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (PAETextureWrap)initWithAPIManager:(id)manager;
- (id)properties;
@end

@implementation PAETextureWrap

- (PAETextureWrap)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAETextureWrap;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"PositionIndependent", v4, @"SupportsLargeRenderScale", v5, @"SupportsHeliumRendering", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 3), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v3.receiver = self;
  v3.super_class = PAETextureWrap;
  [(PAESharedDefaultBase *)&v3 addParameters];
  return 1;
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  if (input)
  {
    [input heliumRef];
  }

  else
  {
    v10 = 0;
  }

  v6 = HGObject::operator new(0x1D0uLL);
  HGTextureWrap::HGTextureWrap(v6);
  (*(*v6 + 120))(v6, 0, v10);
  HGTextureWrap::SetTextureWrapMode(v6, 3, v7);
  v9 = v6;
  (*(*v6 + 16))(v6);
  [output setHeliumRef:&v9];
  if (v9)
  {
    (*(*v9 + 24))(v9);
  }

  (*(*v6 + 24))(v6);
  if (v10)
  {
    (*(*v10 + 24))(v10);
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
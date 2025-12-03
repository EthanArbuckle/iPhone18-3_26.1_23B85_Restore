@interface PAELumaKeyer
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)finishInitialSetup:(id *)setup;
- (HGRef<HGNode>)getKeyerNode:(HGRef<HGNode>)node omKeyer:(void *)keyer atTime:(id)time;
- (PAELumaKeyer)initWithAPIManager:(id)manager;
- (void)createLutForNode:(void *)node input:(int)input rect:(const HGRect *)rect omKeyer:(void *)keyer;
- (void)dealloc;
@end

@implementation PAELumaKeyer

- (PAELumaKeyer)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAELumaKeyer;
  return [(PAEKeyer *)&v4 initWithAPIManager:manager];
}

- (void)createLutForNode:(void *)node input:(int)input rect:(const HGRect *)rect omKeyer:(void *)keyer
{
  v8 = *&input;
  p_cacheMutex = &self->super._cacheMutex;
  v24 = &self->super._cacheMutex;
  PCMutex::lock(&self->super._cacheMutex);
  LOBYTE(v25) = 1;
  v12 = HGObject::operator new(0x80uLL);
  *&v13 = HGBitmap::HGBitmap(v12, *&rect->var0, *&rect->var2, 28).n128_u64[0];
  v14 = *(v12 + 10);
  v15 = [(PAEKeyer *)self isLutExpandedForHDR:v13];
  v16 = 0;
  if (v15)
  {
    v17 = 11.0;
  }

  else
  {
    v17 = 1.0;
  }

  if (v15)
  {
    v18 = 2816;
  }

  else
  {
    v18 = 256;
  }

  do
  {
    v19 = v16 / (v18 - 1);
    OMKeyer2D::getAlphaLuma(keyer, v17 * v19);
    *v14 = v20;
    v14 += 4;
    ++v16;
  }

  while (v18 != v16);
  v21 = HGObject::operator new(0x80uLL);
  HGTexture::HGTexture(v21, *rect, v12);
  lutsBitmapLoaderCache = self->super._lutsBitmapLoaderCache;
  if (lutsBitmapLoaderCache)
  {
    (*(*lutsBitmapLoaderCache + 24))(lutsBitmapLoaderCache);
  }

  v23 = HGObject::operator new(0x1F0uLL);
  HGBitmapLoader::HGBitmapLoader(v23, v21);
  self->super._lutsBitmapLoaderCache = v23;
  (*(*v21 + 24))(v21);
  (*(*v12 + 24))(v12);
  (*(*node + 120))(node, v8, self->super._lutsBitmapLoaderCache);
  PCMutex::unlock(p_cacheMutex);
}

- (HGRef<HGNode>)getKeyerNode:(HGRef<HGNode>)node omKeyer:(void *)keyer atTime:(id)time
{
  v7 = *MEMORY[0x277D85DE8];
  desiredRGBToYCbCrMatrix(self->super.super.super._apiManager, v6, time.var1);
  v5 = HGObject::operator new(0x1F0uLL);
  HGColorMatrix::HGColorMatrix(v5);
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  v5 = *&info->var2;
  v8[0] = *&info->var0.var0;
  v8[1] = v5;
  v8[2] = *&info->var4;
  v7.receiver = self;
  v7.super_class = PAELumaKeyer;
  return [(PAEKeyer *)&v7 canThrowRenderOutput:output withInput:input withInfo:v8];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PAELumaKeyer;
  [(PAEKeyer *)&v2 dealloc];
}

- (BOOL)finishInitialSetup:(id *)setup
{
  v17 = *MEMORY[0x277CC08F0];
  v18 = *(MEMORY[0x277CC08F0] + 16);
  v4 = [[PAEKeyerSetupUtil alloc] initWithAPIManager:self->super.super.super._apiManager colorPrimaries:[(PAEKeyer *)self getColorPrimaries:v17] atTime:&v17];
  omKeyer = [(PAEKeyerSetupUtil *)v4 omKeyer];
  (*(*omKeyer + 64))(omKeyer, -1.0);
  (*(*omKeyer + 72))(omKeyer, 1.0);
  (*(*omKeyer + 80))(omKeyer, 100000.0);
  (*(*omKeyer + 88))(omKeyer, 100000.0);
  [(PAEKeyerSetupUtil *)v4 autoAdjustSoftGap];
  v7 = v6;
  tight = [(PAEKeyerSetupUtil *)v4 tight];
  omSamples = self->super._omSamples;
  [(PAEKeyerSetupUtil *)v4 shadowsGain];
  v11 = v10;
  [(PAEKeyerSetupUtil *)v4 highlightsGain];
  v13 = v12;
  [(PAEKeyerSetupUtil *)v4 spreadGain];
  v15 = v14;
  OMKeyer2D::computeModel(omKeyer, 0, v7, tight, omSamples, v11, v13, v15, 1, 0);
  [(PAEKeyerSetupUtil *)v4 syncWithDB:&v17 setAsDefault:1];

  return 1;
}

@end
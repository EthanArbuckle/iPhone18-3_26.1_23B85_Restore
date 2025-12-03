@interface PVVideoCompositingExporter
- (PVVideoCompositingExporter)init;
- (id)preferredDestinationPixelBufferFormat;
- (id)requiredPixelBufferAttributesForRenderContext;
- (void)setupEffectScheduler;
- (void)setupTextureFactories;
@end

@implementation PVVideoCompositingExporter

- (id)requiredPixelBufferAttributesForRenderContext
{
  v9[1] = *MEMORY[0x277D85DE8];
  destinationBufferPoolAttributes = self->super._destinationBufferPoolAttributes;
  if (!destinationBufferPoolAttributes)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (+[PVEnvironment PV_ENABLE_BGRA_OUTPUT_EXPORT])
    {
      preferredDestinationPixelBufferFormat = &unk_28732D298;
    }

    else
    {
      preferredDestinationPixelBufferFormat = [(PVVideoCompositingExporter *)self preferredDestinationPixelBufferFormat];
    }

    v9[0] = preferredDestinationPixelBufferFormat;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    [(NSDictionary *)v4 setObject:v6 forKeyedSubscript:*MEMORY[0x277CC4E30]];

    [(NSDictionary *)v4 setObject:MEMORY[0x277CBEC10] forKeyedSubscript:*MEMORY[0x277CC4DE8]];
    v7 = self->super._destinationBufferPoolAttributes;
    self->super._destinationBufferPoolAttributes = v4;

    destinationBufferPoolAttributes = self->super._destinationBufferPoolAttributes;
  }

  return destinationBufferPoolAttributes;
}

- (id)preferredDestinationPixelBufferFormat
{
  compositingContext = [(PVRendererBase *)self compositingContext];
  outputColorSpace = [compositingContext outputColorSpace];
  if ([outputColorSpace isHDRSpace])
  {
    compositingContext2 = [(PVRendererBase *)self compositingContext];
    gpuRenderAPI = [compositingContext2 gpuRenderAPI];

    if (gpuRenderAPI)
    {
      return &unk_28732D310;
    }

    else
    {
      return &unk_28732D2E0;
    }
  }

  else
  {

    return &unk_28732D2E0;
  }
}

- (PVVideoCompositingExporter)init
{
  v16.receiver = self;
  v16.super_class = PVVideoCompositingExporter;
  v2 = [(PVVideoCompositing *)&v16 init];
  if (v2)
  {
    if (+[PVDeviceCharacteristics isLowMemDevice])
    {
      v3 = +[PVEnvironment PVPageSizeLowMemExport];
      compositingContext = [(PVRendererBase *)v2 compositingContext];
      [compositingContext setPageSize:v3];
    }

    v5 = +[PVHostApplicationDelegateHandler sharedInstance];
    preferredExportColorSpace = [v5 preferredExportColorSpace];
    [(PVRendererBase *)v2 setOutputColorSpace:preferredExportColorSpace];

    v7 = [[PVTaskTokenPool alloc] initWithOffset:+[PVAVFRenderJobDelegate jobTypeTag]+ 100];
    tokenPool = v2->super._tokenPool;
    v2->super._tokenPool = v7;

    v9 = +[PVHostApplicationDelegateHandler sharedInstance];
    preferredExportColorSpace2 = [v9 preferredExportColorSpace];
    isHDRSpace = [preferredExportColorSpace2 isHDRSpace];

    if (isHDRSpace)
    {
      v12 = +[PVColorSpace rec2020LinearColorSpace];
      compositingContext2 = [(PVRendererBase *)v2 compositingContext];
      [compositingContext2 setWorkingColorSpace:v12];
    }

    else
    {
      v12 = +[PVHostApplicationDelegateHandler sharedInstance];
      compositingContext2 = [v12 preferredExportColorSpace];
      compositingContext3 = [(PVRendererBase *)v2 compositingContext];
      [compositingContext3 setWorkingColorSpace:compositingContext2];
    }
  }

  return v2;
}

- (void)setupTextureFactories
{
  v3 = +[PVDeviceCharacteristics isLowMemDevice];
  v4 = 0.5;
  if (v3)
  {
    v4 = 0.0;
  }

  m_Obj = self->super._renderManager.m_Obj;

  PVRenderManager::SetupTextureFactories(m_Obj, v4);
}

- (void)setupEffectScheduler
{
  v3 = objc_alloc_init(PVEffectScheduler);
  effectScheduler = self->super._effectScheduler;
  self->super._effectScheduler = v3;

  v5 = self->super._effectScheduler;

  [(PVEffectScheduler *)v5 setIsExporting:1];
}

@end
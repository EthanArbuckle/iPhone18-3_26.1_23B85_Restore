@interface PVVideoCompositingContext
+ (id)createContextForCPUDisplay;
+ (id)createContextForCPUExport;
+ (id)createContextForGPUDisplay;
+ (id)createContextForGPUExport;
+ (id)defaultOutputColorSpaceWithRenderingIntent:(int)a3;
+ (id)defaultWorkingColorSpaceWithOutputColorSpace:(id)a3;
+ (id)dotGraphLoggingDirectory;
- (PVVideoCompositingContext)initWithCoder:(id)a3;
- (PVVideoCompositingContext)initWithDevice:(int)a3 defaultColorSpace:(id)a4;
- (PVVideoCompositingContext)initWithDevice:(int)a3 workingColorSpace:(id)a4 outputColorSpace:(id)a5;
- (PVVideoCompositingContext)initWithDeviceForDisplay:(int)a3;
- (PVVideoCompositingContext)initWithDeviceForExport:(int)a3;
- (void)dumpContext;
- (void)encodeWithCoder:(id)a3;
- (void)setContext:(id)a3;
- (void)setInstructionGraphDumpLevel:(int)a3;
- (void)setIntermediateBufferFormatForWorkingColorSpace;
- (void)setOutputColorSpace:(id)a3;
- (void)setSignPostLevel:(int)a3;
- (void)setTraceMetalLevel:(int)a3;
- (void)setWorkingColorSpace:(id)a3;
@end

@implementation PVVideoCompositingContext

+ (id)dotGraphLoggingDirectory
{
  if (+[PVVideoCompositingContext dotGraphLoggingDirectory]::onceToken != -1)
  {
    +[PVVideoCompositingContext dotGraphLoggingDirectory];
  }

  v3 = +[PVVideoCompositingContext dotGraphLoggingDirectory]::s_str;

  return v3;
}

uint64_t __53__PVVideoCompositingContext_dotGraphLoggingDirectory__block_invoke(PVRenderManager *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = PVRenderManager::INSTANCE(a1, &v7);
  PVRenderManager::DotGraphLoggingDirectory(v2, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v4 = [v1 stringWithUTF8String:p_p];
  v5 = +[PVVideoCompositingContext dotGraphLoggingDirectory]::s_str;
  +[PVVideoCompositingContext dotGraphLoggingDirectory]::s_str = v4;

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  result = v7;
  if (v7)
  {
    return (*(*v7 + 24))(v7);
  }

  return result;
}

+ (id)createContextForGPUDisplay
{
  v2 = [[PVVideoCompositingContext alloc] initWithDeviceForDisplay:0];

  return v2;
}

+ (id)createContextForCPUDisplay
{
  v2 = [[PVVideoCompositingContext alloc] initWithDeviceForDisplay:1];

  return v2;
}

+ (id)createContextForGPUExport
{
  v2 = [[PVVideoCompositingContext alloc] initWithDeviceForExport:0];

  return v2;
}

+ (id)createContextForCPUExport
{
  v2 = [[PVVideoCompositingContext alloc] initWithDeviceForExport:1];

  return v2;
}

+ (id)defaultOutputColorSpaceWithRenderingIntent:(int)a3
{
  if ((a3 - 2) < 2)
  {
    goto LABEL_4;
  }

  if (a3 == 1)
  {
    v3 = +[PVHostApplicationDelegateHandler sharedInstance];
    v4 = [v3 preferredExportColorSpace];
    goto LABEL_6;
  }

  if (!a3)
  {
LABEL_4:
    v3 = +[PVHostApplicationDelegateHandler sharedInstance];
    v4 = [v3 preferredDisplayColorSpace];
LABEL_6:
    v5 = v4;

    goto LABEL_8;
  }

  v5 = 0;
LABEL_8:

  return v5;
}

+ (id)defaultWorkingColorSpaceWithOutputColorSpace:(id)a3
{
  v3 = a3;
  v4 = v3;
  if ([v3 isHDRSpace])
  {
    v4 = +[PVColorSpace rec2020LinearColorSpace];
  }

  return v4;
}

- (PVVideoCompositingContext)initWithDeviceForDisplay:(int)a3
{
  v3 = *&a3;
  v5 = [PVVideoCompositingContext defaultOutputColorSpaceWithRenderingIntent:0];
  v6 = [(PVVideoCompositingContext *)self initWithDevice:v3 defaultColorSpace:v5];

  return v6;
}

- (PVVideoCompositingContext)initWithDeviceForExport:(int)a3
{
  v3 = *&a3;
  v5 = [PVVideoCompositingContext defaultOutputColorSpaceWithRenderingIntent:1];
  v6 = [(PVVideoCompositingContext *)self initWithDevice:v3 defaultColorSpace:v5];

  return v6;
}

- (PVVideoCompositingContext)initWithDevice:(int)a3 defaultColorSpace:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v7 = [PVVideoCompositingContext defaultWorkingColorSpaceWithOutputColorSpace:v6];
  v8 = [(PVVideoCompositingContext *)self initWithDevice:v4 workingColorSpace:v7 outputColorSpace:v6];

  return v8;
}

- (PVVideoCompositingContext)initWithDevice:(int)a3 workingColorSpace:(id)a4 outputColorSpace:(id)a5
{
  v6 = *&a3;
  v8 = a4;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = PVVideoCompositingContext;
  v10 = [(PVVideoCompositingContext *)&v16 init];
  v11 = v10;
  if (v10)
  {
    [(PVVideoCompositingContext *)v10 setRenderDevice:v6];
    [(PVVideoCompositingContext *)v11 setGpuRenderAPI:1];
    v12 = +[PVDeviceCharacteristics hasExtendedColorDisplay];
    [(PVVideoCompositingContext *)v11 setOutputColorSpace:v9];
    [(PVVideoCompositingContext *)v11 setWorkingColorSpace:v8];
    [(PVVideoCompositingContext *)v11 setWorkingColorSpaceConformIntent:!v12];
    [(PVVideoCompositingContext *)v11 setShaderFormat:28];
    [(PVVideoCompositingContext *)v11 setConcatenationFlag:1];
    [(PVVideoCompositingContext *)v11 setRenderGraphDumpLevel:0];
    [(PVVideoCompositingContext *)v11 setDotGraphLevel:0];
    [(PVVideoCompositingContext *)v11 setTileSize:48];
    [(PVVideoCompositingContext *)v11 setNumCPUThreads:2];
    [(PVVideoCompositingContext *)v11 setTextureBorder:1];
    [(PVVideoCompositingContext *)v11 setDynamicPlayback:0];
    [(PVVideoCompositingContext *)v11 setSignPostLevel:1];
    [(PVVideoCompositingContext *)v11 setTraceGLLevel:0];
    [(PVVideoCompositingContext *)v11 setTraceMetalLevel:0];
    [(PVVideoCompositingContext *)v11 setPageSize:+[PVEnvironment PVPageSize]];
    [(PVVideoCompositingContext *)v11 setInstructionGraphDumpLevel:0];
    [(PVVideoCompositingContext *)v11 setInstructionGraphDotTreeLevel:0];
    [(PVVideoCompositingContext *)v11 setPowerFriendlyExport:0];
    v13 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v14 = [v13 dictionaryRepresentation];
    [(PVVideoCompositingContext *)v11 setContext:v14];
  }

  return v11;
}

- (void)setContext:(id)a3
{
  v4 = a3;
  [(PVVideoCompositingContext *)self setRenderDevice:getDefaultsIntValue(v4, &cfstr_Pvvideocomposi_0.isa, [(PVVideoCompositingContext *)self renderDevice])];
  [(PVVideoCompositingContext *)self setGpuRenderAPI:getDefaultsIntValue(v4, &cfstr_Pvvideocomposi_1.isa, [(PVVideoCompositingContext *)self gpuRenderAPI])];
  [(PVVideoCompositingContext *)self setNumCPUThreads:getDefaultsIntValue(v4, &cfstr_Pvvideocomposi_2.isa, [(PVVideoCompositingContext *)self numCPUThreads])];
  [(PVVideoCompositingContext *)self setBufferFormat:getDefaultsIntValue(v4, &cfstr_Pvvideocomposi_3.isa, [(PVVideoCompositingContext *)self bufferFormat])];
  [(PVVideoCompositingContext *)self setShaderFormat:getDefaultsIntValue(v4, &cfstr_Pvvideocomposi_4.isa, [(PVVideoCompositingContext *)self shaderFormat])];
  [(PVVideoCompositingContext *)self setFilterMode:getDefaultsIntValue(v4, &cfstr_Pvvideocomposi_5.isa, [(PVVideoCompositingContext *)self filterMode])];
  [(PVVideoCompositingContext *)self setConcatenationFlag:getDefaultsBoolValue(v4, &cfstr_Pvvideocomposi_6.isa, [(PVVideoCompositingContext *)self concatenationFlag])];
  [(PVVideoCompositingContext *)self setTileSize:getDefaultsIntValue(v4, &cfstr_Pvvideocomposi_7.isa, [(PVVideoCompositingContext *)self tileSize])];
  [(PVVideoCompositingContext *)self setPageSize:getDefaultsIntValue(v4, &cfstr_Pvvideocomposi_8.isa, [(PVVideoCompositingContext *)self pageSize])];
  [(PVVideoCompositingContext *)self setTextureBorder:getDefaultsBoolValue(v4, &cfstr_Pvvideocomposi_9.isa, [(PVVideoCompositingContext *)self textureBorder])];
  [(PVVideoCompositingContext *)self setDynamicPlayback:getDefaultsBoolValue(v4, &cfstr_Pvvideocomposi_10.isa, [(PVVideoCompositingContext *)self dynamicPlayback])];
  [(PVVideoCompositingContext *)self setRenderGraphDumpLevel:getDefaultsIntValue(v4, &cfstr_Pvvideocomposi_11.isa, [(PVVideoCompositingContext *)self renderGraphDumpLevel])];
  [(PVVideoCompositingContext *)self setRenderStatsFlag:getDefaultsBoolValue(v4, &cfstr_Pvvideocomposi_12.isa, [(PVVideoCompositingContext *)self renderStatsFlag])];
  [(PVVideoCompositingContext *)self setRenderStatsWarmUp:getDefaultsIntValue(v4, &cfstr_Pvvideocomposi_13.isa, [(PVVideoCompositingContext *)self renderStatsWarmUp])];
  [(PVVideoCompositingContext *)self setRenderStatsMaxVals:getDefaultsIntValue(v4, &cfstr_Pvvideocomposi_14.isa, [(PVVideoCompositingContext *)self renderStatsMaxVals])];
  [(PVVideoCompositingContext *)self setDotGraphLevel:getDefaultsIntValue(v4, &cfstr_Pvvideocomposi_15.isa, [(PVVideoCompositingContext *)self dotGraphLevel])];
  [(PVVideoCompositingContext *)self setSignPostLevel:getDefaultsIntValue(v4, &cfstr_Pvvideocomposi_16.isa, [(PVVideoCompositingContext *)self signPostLevel])];
  [(PVVideoCompositingContext *)self setTraceGLLevel:getDefaultsIntValue(v4, &cfstr_Pvvideocomposi_17.isa, [(PVVideoCompositingContext *)self traceGLLevel])];
  [(PVVideoCompositingContext *)self setTraceMetalLevel:getDefaultsIntValue(v4, &cfstr_Pvvideocomposi_18.isa, [(PVVideoCompositingContext *)self traceMetalLevel])];
  [(PVVideoCompositingContext *)self setInstructionGraphDumpLevel:getDefaultsIntValue(v4, &cfstr_Pvvideocomposi_19.isa, [(PVVideoCompositingContext *)self instructionGraphDumpLevel])];
  [(PVVideoCompositingContext *)self setInstructionGraphDotTreeLevel:getDefaultsIntValue(v4, &cfstr_Pvvideocomposi_20.isa, [(PVVideoCompositingContext *)self instructionGraphDotTreeLevel])];
  [(PVVideoCompositingContext *)self setPowerFriendlyExport:getDefaultsBoolValue(v4, &cfstr_Pvvideocomposi_21.isa, [(PVVideoCompositingContext *)self powerFriendlyExport])];
}

- (void)dumpContext
{
  NSLog(&stru_2872F1480.isa, a2);
  NSLog(&cfstr_CustomVideoCom.isa);
  if (self->renderDevice)
  {
    v3 = @"CPU";
  }

  else
  {
    v3 = @"GPU";
  }

  NSLog(&cfstr_RenderDevice.isa, v3);
  if (self->gpuRenderAPI)
  {
    v4 = @"Metal";
  }

  else
  {
    v4 = @"OpenGL";
  }

  NSLog(&cfstr_GpuRenderApi.isa, v4);
  NSLog(&cfstr_BufferFormatD.isa, self->bufferFormat);
  NSLog(&cfstr_ShaderFormatD.isa, self->shaderFormat);
  NSLog(&cfstr_ConcatenationD.isa, self->concatenationFlag);
  NSLog(&cfstr_GraphDumpLevel.isa, self->renderGraphDumpLevel);
  NSLog(&cfstr_DotGraphLevelD.isa, self->dotGraphLevel);
  NSLog(&cfstr_TilesizeD.isa, self->tileSize);
  NSLog(&cfstr_TextureBorderD.isa, self->textureBorder);
  NSLog(&cfstr_DynamicPlaybac.isa, self->dynamicPlayback);
  NSLog(&cfstr_NumCpuThreadsD.isa, self->numCPUThreads);
  NSLog(&cfstr_SignPostLevelD.isa, self->signPostLevel);
  NSLog(&cfstr_TraceGlLevelD.isa, self->traceGLLevel);
  NSLog(&cfstr_TraceMetalLeve.isa, self->traceMetalLevel);
  NSLog(&cfstr_PageSizeD.isa, self->pageSize);
  NSLog(&cfstr_InstructionGra.isa, self->instructionGraphDumpLevel);
  NSLog(&cfstr_InstructionGra_0.isa, self->instructionGraphDotTreeLevel);
  NSLog(&cfstr_PowerFriendlyE.isa, self->powerFriendlyExport);
}

- (PVVideoCompositingContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = -[PVVideoCompositingContext initWithDevice:](self, "initWithDevice:", [v4 decodeIntForKey:@"PVVideoCompositingContextDeviceIDKey"]);
  -[PVVideoCompositingContext setGpuRenderAPI:](v5, "setGpuRenderAPI:", [v4 decodeIntegerForKey:@"PVVideoCompositingContextGPURenderAPIKey"]);
  -[PVVideoCompositingContext setNumCPUThreads:](v5, "setNumCPUThreads:", [v4 decodeIntForKey:@"PVVideoCompositingContextNumCPUThreadsKey"]);
  -[PVVideoCompositingContext setBufferFormat:](v5, "setBufferFormat:", [v4 decodeIntForKey:@"PVVideoCompositingContextBufferFormatKey"]);
  -[PVVideoCompositingContext setShaderFormat:](v5, "setShaderFormat:", [v4 decodeIntForKey:@"PVVideoCompositingContextShaderFormatKey"]);
  -[PVVideoCompositingContext setFilterMode:](v5, "setFilterMode:", [v4 decodeIntForKey:@"PVVideoCompositingContextFilterModeKey"]);
  -[PVVideoCompositingContext setConcatenationFlag:](v5, "setConcatenationFlag:", [v4 decodeBoolForKey:@"PVVideoCompositingContextConcatentationKey"]);
  -[PVVideoCompositingContext setTileSize:](v5, "setTileSize:", [v4 decodeBoolForKey:@"PVVideoCompositingContextTileSizeKey"]);
  -[PVVideoCompositingContext setPageSize:](v5, "setPageSize:", [v4 decodeBoolForKey:@"PVVideoCompositingContextPageSizeKey"]);
  -[PVVideoCompositingContext setTextureBorder:](v5, "setTextureBorder:", [v4 decodeBoolForKey:@"PVVideoCompositingContextTextureBorderKey"]);
  -[PVVideoCompositingContext setDynamicPlayback:](v5, "setDynamicPlayback:", [v4 decodeBoolForKey:@"PVVideoCompositingContextDynamicPlaybackKey"]);
  -[PVVideoCompositingContext setRenderGraphDumpLevel:](v5, "setRenderGraphDumpLevel:", [v4 decodeIntForKey:@"PVVideoCompositingContextGraphDumpLevelKey"]);
  -[PVVideoCompositingContext setRenderStatsFlag:](v5, "setRenderStatsFlag:", [v4 decodeIntForKey:@"PVVideoCompositingContextStatsFlagKey"] != 0);
  -[PVVideoCompositingContext setRenderStatsWarmUp:](v5, "setRenderStatsWarmUp:", [v4 decodeIntForKey:@"PVVideoCompositingContextStatsWarmUpKey"]);
  -[PVVideoCompositingContext setRenderStatsMaxVals:](v5, "setRenderStatsMaxVals:", [v4 decodeIntForKey:@"PVVideoCompositingContextStatsMaxValsKey"]);
  -[PVVideoCompositingContext setDotGraphLevel:](v5, "setDotGraphLevel:", [v4 decodeIntForKey:@"PVVideoCompositingContextDotGraphLevelKey"]);
  -[PVVideoCompositingContext setSignPostLevel:](v5, "setSignPostLevel:", [v4 decodeIntForKey:@"PVVideoCompositingContextSignPostLevelKey"]);
  -[PVVideoCompositingContext setTraceGLLevel:](v5, "setTraceGLLevel:", [v4 decodeIntegerForKey:@"PVVideoCompositingContextTraceGLLevelKey"]);
  -[PVVideoCompositingContext setTraceMetalLevel:](v5, "setTraceMetalLevel:", [v4 decodeIntegerForKey:@"PVVideoCompositingContextTraceMetalLevelKey"]);
  -[PVVideoCompositingContext setInstructionGraphDumpLevel:](v5, "setInstructionGraphDumpLevel:", [v4 decodeIntForKey:@"PVVideoCompositingContextInstructionGraphDumpLevelKey"]);
  -[PVVideoCompositingContext setInstructionGraphDotTreeLevel:](v5, "setInstructionGraphDotTreeLevel:", [v4 decodeIntForKey:@"PVVideoCompositingContextInstructionGraphDotTreeLevelKey"]);
  -[PVVideoCompositingContext setPowerFriendlyExport:](v5, "setPowerFriendlyExport:", [v4 decodeBoolForKey:@"PVVideoCompositingContextPowerFriendlyExport"]);

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt:-[PVVideoCompositingContext renderDevice](self forKey:{"renderDevice"), @"PVVideoCompositingContextDeviceIDKey"}];
  [v4 encodeInt:-[PVVideoCompositingContext gpuRenderAPI](self forKey:{"gpuRenderAPI"), @"PVVideoCompositingContextGPURenderAPIKey"}];
  [v4 encodeInt:-[PVVideoCompositingContext numCPUThreads](self forKey:{"numCPUThreads"), @"PVVideoCompositingContextNumCPUThreadsKey"}];
  [v4 encodeInt:-[PVVideoCompositingContext bufferFormat](self forKey:{"bufferFormat"), @"PVVideoCompositingContextBufferFormatKey"}];
  [v4 encodeInt:-[PVVideoCompositingContext shaderFormat](self forKey:{"shaderFormat"), @"PVVideoCompositingContextShaderFormatKey"}];
  [v4 encodeInt:-[PVVideoCompositingContext filterMode](self forKey:{"filterMode"), @"PVVideoCompositingContextFilterModeKey"}];
  [v4 encodeInt:-[PVVideoCompositingContext concatenationFlag](self forKey:{"concatenationFlag"), @"PVVideoCompositingContextConcatentationKey"}];
  [v4 encodeInt:-[PVVideoCompositingContext tileSize](self forKey:{"tileSize"), @"PVVideoCompositingContextTileSizeKey"}];
  [v4 encodeInt:-[PVVideoCompositingContext pageSize](self forKey:{"pageSize"), @"PVVideoCompositingContextPageSizeKey"}];
  [v4 encodeInt:-[PVVideoCompositingContext textureBorder](self forKey:{"textureBorder"), @"PVVideoCompositingContextTextureBorderKey"}];
  [v4 encodeInt:-[PVVideoCompositingContext dynamicPlayback](self forKey:{"dynamicPlayback"), @"PVVideoCompositingContextDynamicPlaybackKey"}];
  [v4 encodeInt:-[PVVideoCompositingContext renderGraphDumpLevel](self forKey:{"renderGraphDumpLevel"), @"PVVideoCompositingContextGraphDumpLevelKey"}];
  [v4 encodeInt:-[PVVideoCompositingContext renderStatsFlag](self forKey:{"renderStatsFlag"), @"PVVideoCompositingContextStatsFlagKey"}];
  [v4 encodeInt:-[PVVideoCompositingContext renderStatsWarmUp](self forKey:{"renderStatsWarmUp"), @"PVVideoCompositingContextStatsWarmUpKey"}];
  [v4 encodeInt:-[PVVideoCompositingContext renderStatsMaxVals](self forKey:{"renderStatsMaxVals"), @"PVVideoCompositingContextStatsMaxValsKey"}];
  [v4 encodeInt:-[PVVideoCompositingContext dotGraphLevel](self forKey:{"dotGraphLevel"), @"PVVideoCompositingContextDotGraphLevelKey"}];
  [v4 encodeInt:-[PVVideoCompositingContext signPostLevel](self forKey:{"signPostLevel"), @"PVVideoCompositingContextSignPostLevelKey"}];
  [v4 encodeInt:-[PVVideoCompositingContext traceGLLevel](self forKey:{"traceGLLevel"), @"PVVideoCompositingContextTraceGLLevelKey"}];
  [v4 encodeInt:-[PVVideoCompositingContext traceMetalLevel](self forKey:{"traceMetalLevel"), @"PVVideoCompositingContextTraceMetalLevelKey"}];
  [v4 encodeInt:-[PVVideoCompositingContext instructionGraphDumpLevel](self forKey:{"instructionGraphDumpLevel"), @"PVVideoCompositingContextInstructionGraphDumpLevelKey"}];
  [v4 encodeInt:-[PVVideoCompositingContext instructionGraphDotTreeLevel](self forKey:{"instructionGraphDotTreeLevel"), @"PVVideoCompositingContextInstructionGraphDotTreeLevelKey"}];
  [v4 encodeBool:-[PVVideoCompositingContext powerFriendlyExport](self forKey:{"powerFriendlyExport"), @"PVVideoCompositingContextPowerFriendlyExport"}];
}

- (void)setSignPostLevel:(int)a3
{
  v3 = *&a3;
  obj = self;
  objc_sync_enter(obj);
  obj->signPostLevel = v3;
  HGLogger::setLevel("PVSignPost", v3);
  objc_sync_exit(obj);
}

- (void)setInstructionGraphDumpLevel:(int)a3
{
  v3 = *&a3;
  obj = self;
  objc_sync_enter(obj);
  obj->instructionGraphDumpLevel = v3;
  HGLogger::setLevel("kPVInstructionGraphToHeliumGraphLogContext", v3);
  objc_sync_exit(obj);
}

- (void)setTraceMetalLevel:(int)a3
{
  v3 = *&a3;
  obj = self;
  objc_sync_enter(obj);
  obj->traceMetalLevel = v3;
  HGLogger::setLevel("metal", v3);
  objc_sync_exit(obj);
}

- (void)setOutputColorSpace:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  outputColorSpace = obj->_outputColorSpace;
  obj->_outputColorSpace = v4;

  objc_sync_exit(obj);
}

- (void)setWorkingColorSpace:(id)a3
{
  v6 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (![(PVColorSpace *)v5->_workingColorSpace isEqual:v6])
  {
    objc_storeStrong(&v5->_workingColorSpace, a3);
    [(PVVideoCompositingContext *)v5 setIntermediateBufferFormatForWorkingColorSpace];
  }

  objc_sync_exit(v5);
}

- (void)setIntermediateBufferFormatForWorkingColorSpace
{
  obj = self;
  objc_sync_enter(obj);
  v2 = [(PVVideoCompositingContext *)obj workingColorSpace];
  v3 = [v2 isWideGamutSpace];

  if (v3)
  {
    v4 = 27;
  }

  else
  {
    v4 = 24;
  }

  [(PVVideoCompositingContext *)obj setBufferFormat:v4];
  objc_sync_exit(obj);
}

@end
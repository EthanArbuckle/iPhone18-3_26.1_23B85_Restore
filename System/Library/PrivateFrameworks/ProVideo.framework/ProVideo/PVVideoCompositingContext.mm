@interface PVVideoCompositingContext
+ (id)createContextForCPUDisplay;
+ (id)createContextForCPUExport;
+ (id)createContextForGPUDisplay;
+ (id)createContextForGPUExport;
+ (id)defaultOutputColorSpaceWithRenderingIntent:(int)intent;
+ (id)defaultWorkingColorSpaceWithOutputColorSpace:(id)space;
+ (id)dotGraphLoggingDirectory;
- (PVVideoCompositingContext)initWithCoder:(id)coder;
- (PVVideoCompositingContext)initWithDevice:(int)device defaultColorSpace:(id)space;
- (PVVideoCompositingContext)initWithDevice:(int)device workingColorSpace:(id)space outputColorSpace:(id)colorSpace;
- (PVVideoCompositingContext)initWithDeviceForDisplay:(int)display;
- (PVVideoCompositingContext)initWithDeviceForExport:(int)export;
- (void)dumpContext;
- (void)encodeWithCoder:(id)coder;
- (void)setContext:(id)context;
- (void)setInstructionGraphDumpLevel:(int)level;
- (void)setIntermediateBufferFormatForWorkingColorSpace;
- (void)setOutputColorSpace:(id)space;
- (void)setSignPostLevel:(int)level;
- (void)setTraceMetalLevel:(int)level;
- (void)setWorkingColorSpace:(id)space;
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

+ (id)defaultOutputColorSpaceWithRenderingIntent:(int)intent
{
  if ((intent - 2) < 2)
  {
    goto LABEL_4;
  }

  if (intent == 1)
  {
    v3 = +[PVHostApplicationDelegateHandler sharedInstance];
    preferredExportColorSpace = [v3 preferredExportColorSpace];
    goto LABEL_6;
  }

  if (!intent)
  {
LABEL_4:
    v3 = +[PVHostApplicationDelegateHandler sharedInstance];
    preferredExportColorSpace = [v3 preferredDisplayColorSpace];
LABEL_6:
    v5 = preferredExportColorSpace;

    goto LABEL_8;
  }

  v5 = 0;
LABEL_8:

  return v5;
}

+ (id)defaultWorkingColorSpaceWithOutputColorSpace:(id)space
{
  spaceCopy = space;
  v4 = spaceCopy;
  if ([spaceCopy isHDRSpace])
  {
    v4 = +[PVColorSpace rec2020LinearColorSpace];
  }

  return v4;
}

- (PVVideoCompositingContext)initWithDeviceForDisplay:(int)display
{
  v3 = *&display;
  v5 = [PVVideoCompositingContext defaultOutputColorSpaceWithRenderingIntent:0];
  v6 = [(PVVideoCompositingContext *)self initWithDevice:v3 defaultColorSpace:v5];

  return v6;
}

- (PVVideoCompositingContext)initWithDeviceForExport:(int)export
{
  v3 = *&export;
  v5 = [PVVideoCompositingContext defaultOutputColorSpaceWithRenderingIntent:1];
  v6 = [(PVVideoCompositingContext *)self initWithDevice:v3 defaultColorSpace:v5];

  return v6;
}

- (PVVideoCompositingContext)initWithDevice:(int)device defaultColorSpace:(id)space
{
  v4 = *&device;
  spaceCopy = space;
  v7 = [PVVideoCompositingContext defaultWorkingColorSpaceWithOutputColorSpace:spaceCopy];
  v8 = [(PVVideoCompositingContext *)self initWithDevice:v4 workingColorSpace:v7 outputColorSpace:spaceCopy];

  return v8;
}

- (PVVideoCompositingContext)initWithDevice:(int)device workingColorSpace:(id)space outputColorSpace:(id)colorSpace
{
  v6 = *&device;
  spaceCopy = space;
  colorSpaceCopy = colorSpace;
  v16.receiver = self;
  v16.super_class = PVVideoCompositingContext;
  v10 = [(PVVideoCompositingContext *)&v16 init];
  v11 = v10;
  if (v10)
  {
    [(PVVideoCompositingContext *)v10 setRenderDevice:v6];
    [(PVVideoCompositingContext *)v11 setGpuRenderAPI:1];
    v12 = +[PVDeviceCharacteristics hasExtendedColorDisplay];
    [(PVVideoCompositingContext *)v11 setOutputColorSpace:colorSpaceCopy];
    [(PVVideoCompositingContext *)v11 setWorkingColorSpace:spaceCopy];
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
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    dictionaryRepresentation = [standardUserDefaults dictionaryRepresentation];
    [(PVVideoCompositingContext *)v11 setContext:dictionaryRepresentation];
  }

  return v11;
}

- (void)setContext:(id)context
{
  contextCopy = context;
  [(PVVideoCompositingContext *)self setRenderDevice:getDefaultsIntValue(contextCopy, &cfstr_Pvvideocomposi_0.isa, [(PVVideoCompositingContext *)self renderDevice])];
  [(PVVideoCompositingContext *)self setGpuRenderAPI:getDefaultsIntValue(contextCopy, &cfstr_Pvvideocomposi_1.isa, [(PVVideoCompositingContext *)self gpuRenderAPI])];
  [(PVVideoCompositingContext *)self setNumCPUThreads:getDefaultsIntValue(contextCopy, &cfstr_Pvvideocomposi_2.isa, [(PVVideoCompositingContext *)self numCPUThreads])];
  [(PVVideoCompositingContext *)self setBufferFormat:getDefaultsIntValue(contextCopy, &cfstr_Pvvideocomposi_3.isa, [(PVVideoCompositingContext *)self bufferFormat])];
  [(PVVideoCompositingContext *)self setShaderFormat:getDefaultsIntValue(contextCopy, &cfstr_Pvvideocomposi_4.isa, [(PVVideoCompositingContext *)self shaderFormat])];
  [(PVVideoCompositingContext *)self setFilterMode:getDefaultsIntValue(contextCopy, &cfstr_Pvvideocomposi_5.isa, [(PVVideoCompositingContext *)self filterMode])];
  [(PVVideoCompositingContext *)self setConcatenationFlag:getDefaultsBoolValue(contextCopy, &cfstr_Pvvideocomposi_6.isa, [(PVVideoCompositingContext *)self concatenationFlag])];
  [(PVVideoCompositingContext *)self setTileSize:getDefaultsIntValue(contextCopy, &cfstr_Pvvideocomposi_7.isa, [(PVVideoCompositingContext *)self tileSize])];
  [(PVVideoCompositingContext *)self setPageSize:getDefaultsIntValue(contextCopy, &cfstr_Pvvideocomposi_8.isa, [(PVVideoCompositingContext *)self pageSize])];
  [(PVVideoCompositingContext *)self setTextureBorder:getDefaultsBoolValue(contextCopy, &cfstr_Pvvideocomposi_9.isa, [(PVVideoCompositingContext *)self textureBorder])];
  [(PVVideoCompositingContext *)self setDynamicPlayback:getDefaultsBoolValue(contextCopy, &cfstr_Pvvideocomposi_10.isa, [(PVVideoCompositingContext *)self dynamicPlayback])];
  [(PVVideoCompositingContext *)self setRenderGraphDumpLevel:getDefaultsIntValue(contextCopy, &cfstr_Pvvideocomposi_11.isa, [(PVVideoCompositingContext *)self renderGraphDumpLevel])];
  [(PVVideoCompositingContext *)self setRenderStatsFlag:getDefaultsBoolValue(contextCopy, &cfstr_Pvvideocomposi_12.isa, [(PVVideoCompositingContext *)self renderStatsFlag])];
  [(PVVideoCompositingContext *)self setRenderStatsWarmUp:getDefaultsIntValue(contextCopy, &cfstr_Pvvideocomposi_13.isa, [(PVVideoCompositingContext *)self renderStatsWarmUp])];
  [(PVVideoCompositingContext *)self setRenderStatsMaxVals:getDefaultsIntValue(contextCopy, &cfstr_Pvvideocomposi_14.isa, [(PVVideoCompositingContext *)self renderStatsMaxVals])];
  [(PVVideoCompositingContext *)self setDotGraphLevel:getDefaultsIntValue(contextCopy, &cfstr_Pvvideocomposi_15.isa, [(PVVideoCompositingContext *)self dotGraphLevel])];
  [(PVVideoCompositingContext *)self setSignPostLevel:getDefaultsIntValue(contextCopy, &cfstr_Pvvideocomposi_16.isa, [(PVVideoCompositingContext *)self signPostLevel])];
  [(PVVideoCompositingContext *)self setTraceGLLevel:getDefaultsIntValue(contextCopy, &cfstr_Pvvideocomposi_17.isa, [(PVVideoCompositingContext *)self traceGLLevel])];
  [(PVVideoCompositingContext *)self setTraceMetalLevel:getDefaultsIntValue(contextCopy, &cfstr_Pvvideocomposi_18.isa, [(PVVideoCompositingContext *)self traceMetalLevel])];
  [(PVVideoCompositingContext *)self setInstructionGraphDumpLevel:getDefaultsIntValue(contextCopy, &cfstr_Pvvideocomposi_19.isa, [(PVVideoCompositingContext *)self instructionGraphDumpLevel])];
  [(PVVideoCompositingContext *)self setInstructionGraphDotTreeLevel:getDefaultsIntValue(contextCopy, &cfstr_Pvvideocomposi_20.isa, [(PVVideoCompositingContext *)self instructionGraphDotTreeLevel])];
  [(PVVideoCompositingContext *)self setPowerFriendlyExport:getDefaultsBoolValue(contextCopy, &cfstr_Pvvideocomposi_21.isa, [(PVVideoCompositingContext *)self powerFriendlyExport])];
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

- (PVVideoCompositingContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = -[PVVideoCompositingContext initWithDevice:](self, "initWithDevice:", [coderCopy decodeIntForKey:@"PVVideoCompositingContextDeviceIDKey"]);
  -[PVVideoCompositingContext setGpuRenderAPI:](v5, "setGpuRenderAPI:", [coderCopy decodeIntegerForKey:@"PVVideoCompositingContextGPURenderAPIKey"]);
  -[PVVideoCompositingContext setNumCPUThreads:](v5, "setNumCPUThreads:", [coderCopy decodeIntForKey:@"PVVideoCompositingContextNumCPUThreadsKey"]);
  -[PVVideoCompositingContext setBufferFormat:](v5, "setBufferFormat:", [coderCopy decodeIntForKey:@"PVVideoCompositingContextBufferFormatKey"]);
  -[PVVideoCompositingContext setShaderFormat:](v5, "setShaderFormat:", [coderCopy decodeIntForKey:@"PVVideoCompositingContextShaderFormatKey"]);
  -[PVVideoCompositingContext setFilterMode:](v5, "setFilterMode:", [coderCopy decodeIntForKey:@"PVVideoCompositingContextFilterModeKey"]);
  -[PVVideoCompositingContext setConcatenationFlag:](v5, "setConcatenationFlag:", [coderCopy decodeBoolForKey:@"PVVideoCompositingContextConcatentationKey"]);
  -[PVVideoCompositingContext setTileSize:](v5, "setTileSize:", [coderCopy decodeBoolForKey:@"PVVideoCompositingContextTileSizeKey"]);
  -[PVVideoCompositingContext setPageSize:](v5, "setPageSize:", [coderCopy decodeBoolForKey:@"PVVideoCompositingContextPageSizeKey"]);
  -[PVVideoCompositingContext setTextureBorder:](v5, "setTextureBorder:", [coderCopy decodeBoolForKey:@"PVVideoCompositingContextTextureBorderKey"]);
  -[PVVideoCompositingContext setDynamicPlayback:](v5, "setDynamicPlayback:", [coderCopy decodeBoolForKey:@"PVVideoCompositingContextDynamicPlaybackKey"]);
  -[PVVideoCompositingContext setRenderGraphDumpLevel:](v5, "setRenderGraphDumpLevel:", [coderCopy decodeIntForKey:@"PVVideoCompositingContextGraphDumpLevelKey"]);
  -[PVVideoCompositingContext setRenderStatsFlag:](v5, "setRenderStatsFlag:", [coderCopy decodeIntForKey:@"PVVideoCompositingContextStatsFlagKey"] != 0);
  -[PVVideoCompositingContext setRenderStatsWarmUp:](v5, "setRenderStatsWarmUp:", [coderCopy decodeIntForKey:@"PVVideoCompositingContextStatsWarmUpKey"]);
  -[PVVideoCompositingContext setRenderStatsMaxVals:](v5, "setRenderStatsMaxVals:", [coderCopy decodeIntForKey:@"PVVideoCompositingContextStatsMaxValsKey"]);
  -[PVVideoCompositingContext setDotGraphLevel:](v5, "setDotGraphLevel:", [coderCopy decodeIntForKey:@"PVVideoCompositingContextDotGraphLevelKey"]);
  -[PVVideoCompositingContext setSignPostLevel:](v5, "setSignPostLevel:", [coderCopy decodeIntForKey:@"PVVideoCompositingContextSignPostLevelKey"]);
  -[PVVideoCompositingContext setTraceGLLevel:](v5, "setTraceGLLevel:", [coderCopy decodeIntegerForKey:@"PVVideoCompositingContextTraceGLLevelKey"]);
  -[PVVideoCompositingContext setTraceMetalLevel:](v5, "setTraceMetalLevel:", [coderCopy decodeIntegerForKey:@"PVVideoCompositingContextTraceMetalLevelKey"]);
  -[PVVideoCompositingContext setInstructionGraphDumpLevel:](v5, "setInstructionGraphDumpLevel:", [coderCopy decodeIntForKey:@"PVVideoCompositingContextInstructionGraphDumpLevelKey"]);
  -[PVVideoCompositingContext setInstructionGraphDotTreeLevel:](v5, "setInstructionGraphDotTreeLevel:", [coderCopy decodeIntForKey:@"PVVideoCompositingContextInstructionGraphDotTreeLevelKey"]);
  -[PVVideoCompositingContext setPowerFriendlyExport:](v5, "setPowerFriendlyExport:", [coderCopy decodeBoolForKey:@"PVVideoCompositingContextPowerFriendlyExport"]);

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:-[PVVideoCompositingContext renderDevice](self forKey:{"renderDevice"), @"PVVideoCompositingContextDeviceIDKey"}];
  [coderCopy encodeInt:-[PVVideoCompositingContext gpuRenderAPI](self forKey:{"gpuRenderAPI"), @"PVVideoCompositingContextGPURenderAPIKey"}];
  [coderCopy encodeInt:-[PVVideoCompositingContext numCPUThreads](self forKey:{"numCPUThreads"), @"PVVideoCompositingContextNumCPUThreadsKey"}];
  [coderCopy encodeInt:-[PVVideoCompositingContext bufferFormat](self forKey:{"bufferFormat"), @"PVVideoCompositingContextBufferFormatKey"}];
  [coderCopy encodeInt:-[PVVideoCompositingContext shaderFormat](self forKey:{"shaderFormat"), @"PVVideoCompositingContextShaderFormatKey"}];
  [coderCopy encodeInt:-[PVVideoCompositingContext filterMode](self forKey:{"filterMode"), @"PVVideoCompositingContextFilterModeKey"}];
  [coderCopy encodeInt:-[PVVideoCompositingContext concatenationFlag](self forKey:{"concatenationFlag"), @"PVVideoCompositingContextConcatentationKey"}];
  [coderCopy encodeInt:-[PVVideoCompositingContext tileSize](self forKey:{"tileSize"), @"PVVideoCompositingContextTileSizeKey"}];
  [coderCopy encodeInt:-[PVVideoCompositingContext pageSize](self forKey:{"pageSize"), @"PVVideoCompositingContextPageSizeKey"}];
  [coderCopy encodeInt:-[PVVideoCompositingContext textureBorder](self forKey:{"textureBorder"), @"PVVideoCompositingContextTextureBorderKey"}];
  [coderCopy encodeInt:-[PVVideoCompositingContext dynamicPlayback](self forKey:{"dynamicPlayback"), @"PVVideoCompositingContextDynamicPlaybackKey"}];
  [coderCopy encodeInt:-[PVVideoCompositingContext renderGraphDumpLevel](self forKey:{"renderGraphDumpLevel"), @"PVVideoCompositingContextGraphDumpLevelKey"}];
  [coderCopy encodeInt:-[PVVideoCompositingContext renderStatsFlag](self forKey:{"renderStatsFlag"), @"PVVideoCompositingContextStatsFlagKey"}];
  [coderCopy encodeInt:-[PVVideoCompositingContext renderStatsWarmUp](self forKey:{"renderStatsWarmUp"), @"PVVideoCompositingContextStatsWarmUpKey"}];
  [coderCopy encodeInt:-[PVVideoCompositingContext renderStatsMaxVals](self forKey:{"renderStatsMaxVals"), @"PVVideoCompositingContextStatsMaxValsKey"}];
  [coderCopy encodeInt:-[PVVideoCompositingContext dotGraphLevel](self forKey:{"dotGraphLevel"), @"PVVideoCompositingContextDotGraphLevelKey"}];
  [coderCopy encodeInt:-[PVVideoCompositingContext signPostLevel](self forKey:{"signPostLevel"), @"PVVideoCompositingContextSignPostLevelKey"}];
  [coderCopy encodeInt:-[PVVideoCompositingContext traceGLLevel](self forKey:{"traceGLLevel"), @"PVVideoCompositingContextTraceGLLevelKey"}];
  [coderCopy encodeInt:-[PVVideoCompositingContext traceMetalLevel](self forKey:{"traceMetalLevel"), @"PVVideoCompositingContextTraceMetalLevelKey"}];
  [coderCopy encodeInt:-[PVVideoCompositingContext instructionGraphDumpLevel](self forKey:{"instructionGraphDumpLevel"), @"PVVideoCompositingContextInstructionGraphDumpLevelKey"}];
  [coderCopy encodeInt:-[PVVideoCompositingContext instructionGraphDotTreeLevel](self forKey:{"instructionGraphDotTreeLevel"), @"PVVideoCompositingContextInstructionGraphDotTreeLevelKey"}];
  [coderCopy encodeBool:-[PVVideoCompositingContext powerFriendlyExport](self forKey:{"powerFriendlyExport"), @"PVVideoCompositingContextPowerFriendlyExport"}];
}

- (void)setSignPostLevel:(int)level
{
  v3 = *&level;
  obj = self;
  objc_sync_enter(obj);
  obj->signPostLevel = v3;
  HGLogger::setLevel("PVSignPost", v3);
  objc_sync_exit(obj);
}

- (void)setInstructionGraphDumpLevel:(int)level
{
  v3 = *&level;
  obj = self;
  objc_sync_enter(obj);
  obj->instructionGraphDumpLevel = v3;
  HGLogger::setLevel("kPVInstructionGraphToHeliumGraphLogContext", v3);
  objc_sync_exit(obj);
}

- (void)setTraceMetalLevel:(int)level
{
  v3 = *&level;
  obj = self;
  objc_sync_enter(obj);
  obj->traceMetalLevel = v3;
  HGLogger::setLevel("metal", v3);
  objc_sync_exit(obj);
}

- (void)setOutputColorSpace:(id)space
{
  spaceCopy = space;
  obj = self;
  objc_sync_enter(obj);
  outputColorSpace = obj->_outputColorSpace;
  obj->_outputColorSpace = spaceCopy;

  objc_sync_exit(obj);
}

- (void)setWorkingColorSpace:(id)space
{
  spaceCopy = space;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(PVColorSpace *)selfCopy->_workingColorSpace isEqual:spaceCopy])
  {
    objc_storeStrong(&selfCopy->_workingColorSpace, space);
    [(PVVideoCompositingContext *)selfCopy setIntermediateBufferFormatForWorkingColorSpace];
  }

  objc_sync_exit(selfCopy);
}

- (void)setIntermediateBufferFormatForWorkingColorSpace
{
  obj = self;
  objc_sync_enter(obj);
  workingColorSpace = [(PVVideoCompositingContext *)obj workingColorSpace];
  isWideGamutSpace = [workingColorSpace isWideGamutSpace];

  if (isWideGamutSpace)
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
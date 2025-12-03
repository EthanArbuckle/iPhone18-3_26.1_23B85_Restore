@interface PAEStyleTransfer
- (BOOL)addParameters;
- (BOOL)buildANERenderGraph:(id)graph withInput:(id)input withInfo:(id *)info modelName:(id)name qualityLevel:(int64_t)level;
- (BOOL)buildGPURenderGraph:(id)graph withInput:(id)input withInfo:(id *)info modelName:(id)name qualityLevel:(int64_t)level;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)loadANEModel:(id)model;
- (BOOL)loadGPUModel:(id)model;
- (PAEStyleTransfer)initWithAPIManager:(id)manager;
- (PAEStyleTransferResourceTestResult)renderResourceForQuality:(SEL)quality forModel:(int64_t)model;
- (id)_bundleForFilter;
- (id)_modelPath:(id)path;
- (id)aneModelPath:(id)path;
- (id)gpuModelPath:(id)path;
- (id)pathForGPUSettings;
- (id)properties;
- (void)dealloc;
- (void)registerGPUDefaults;
- (void)setupGPUNetwork;
@end

@implementation PAEStyleTransfer

- (id)_bundleForFilter
{
  v2 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B810];
  v4 = 0;
  [v2 getStringParameterValue:&v4 fromParm:3];
  result = [MEMORY[0x277CCA8D8] bundleWithIdentifier:v4];
  if (!result)
  {
    return [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  }

  return result;
}

- (id)_modelPath:(id)path
{
  _bundleForFilter = [(PAEStyleTransfer *)self _bundleForFilter];
  v6 = [_bundleForFilter pathForResource:path ofType:@"net"];
  if (v6 && ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) != 0)
  {
    if ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
    {
      if ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
      {
        return v6;
      }

      path = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: In %s %d, neural style transfer %@ weights file not found.", "/Library/Caches/com.apple.xbs/Sources/FiltersiOS/Filters/PAEStyleTransfer.mm", 149, path];
    }

    else
    {
      path = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: In %s %d, neural style transfer %@ shape file not found.", "/Library/Caches/com.apple.xbs/Sources/FiltersiOS/Filters/PAEStyleTransfer.mm", 145, path];
    }
  }

  else
  {
    path = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: In %s %d, neural style transfer %@ model file not found.", "/Library/Caches/com.apple.xbs/Sources/FiltersiOS/Filters/PAEStyleTransfer.mm", 141, path];
  }

  if (path)
  {
    if (self->_firstModelLoadLog)
    {
      v8 = 0;
    }

    else
    {
      v8 = 2;
    }

    if (kLogLevel >= v8)
    {
      NSLog(&stru_2872E15A0.isa, path);
    }

    v6 = 0;
    self->_firstModelLoadLog = 0;
  }

  return v6;
}

- (id)pathForGPUSettings
{
  v2 = [-[PAEStyleTransfer _bundleForFilter](self "_bundleForFilter")];
  if ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (void)registerGPUDefaults
{
  if (!self->_gpuDefaultsLoaded)
  {
    if ((kLogLevel & 0x80000000) == 0)
    {
      NSLog(&stru_2872E15A0.isa, a2, @"Loading defaults...");
    }

    self->_modelName = &stru_2872E16E0;
    block = MEMORY[0x277D85DD0];
    v4 = *"";
    v5 = __39__PAEStyleTransfer_registerGPUDefaults__block_invoke;
    v6 = &unk_279AA8060;
    selfCopy = self;
    if ([PAEStyleTransfer registerGPUDefaults]::onceToken != -1)
    {
      dispatch_once(&[PAEStyleTransfer registerGPUDefaults]::onceToken, &block);
    }

    self->_currentQualityLevel = 0;
    self->_currentAspectRatio = 1.0;
    self->_gpuDefaultsLoaded = 1;
    if (([PAEStyleTransfer registerGPUDefaults]::sLoadedDefaults & 1) == 0 && (kLogLevel & 0x80000000) == 0)
    {
      NSLog(&stru_2872E15A0.isa, @"WARNING: GPU defaults were  not actually loaded for Style Transfer. ", block, v4, v5, v6, selfCopy);
    }
  }
}

void __39__PAEStyleTransfer_registerGPUDefaults__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) pathForGPUSettings] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [MEMORY[0x277D077A0] performSelector:sel_loadStylesConfigAtPath_ withObject:{objc_msgSend(*(a1 + 32), "pathForGPUSettings")}];
    if ((kLogLevel & 0x80000000) == 0)
    {
      NSLog(&stru_2872E15A0.isa, @"GPU Defaults Loaded...");
    }

    [PAEStyleTransfer registerGPUDefaults]::sLoadedDefaults = 1;
  }
}

- (void)setupGPUNetwork
{
  v4 = MTLCreateSystemDefaultDevice();
  newCommandQueue = [v4 newCommandQueue];
  self->_gpuNetwork = [objc_alloc(MEMORY[0x277D077A0]) initWithQueue:newCommandQueue];
}

- (id)gpuModelPath:(id)path
{
  v4 = [path stringByAppendingString:@".espresso"];

  return [(PAEStyleTransfer *)self _modelPath:v4];
}

- (BOOL)loadGPUModel:(id)model
{
  aneNetwork = self->_aneNetwork;
  if (aneNetwork)
  {

    self->_aneNetwork = 0;
    HStyleTransfer_ANE::RenderContext::ReleaseRenderContext(&self->_aneRenderContext.m_Obj);
    self->_firstModelLoadLog = 1;
  }

  v6 = [(PAEStyleTransfer *)self gpuModelPath:model];
  if (v6)
  {
    v7 = v6;
    self->_modelName = model;
    if (!self->_gpuNetwork)
    {
      [(PAEStyleTransfer *)self setupGPUNetwork];
    }

    v8 = [(EspressoImage2Image *)[(PAEStyleTransfer *)self gpuNetwork] load:v7 resolutionPreset:[(PAEStyleTransfer *)self currentQualityLevel]];
    if (v8)
    {
      printf("Espresso error: %d at line %s:%d\n", v8, "/Library/Caches/com.apple.xbs/Sources/FiltersiOS/Filters/PAEStyleTransfer.mm", 273);
      model = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: In %s %d, neural style transfer %@ shape failed to load GPU Model.", "/Library/Caches/com.apple.xbs/Sources/FiltersiOS/Filters/PAEStyleTransfer.mm", 276, model];
      if ((kLogLevel & 0x80000000) == 0)
      {
        NSLog(&stru_2872E15A0.isa, model);
      }
    }
  }

  return 1;
}

- (id)aneModelPath:(id)path
{
  v4 = [path stringByAppendingString:@"_ANE_HQ.espresso"];

  return [(PAEStyleTransfer *)self _modelPath:v4];
}

- (BOOL)loadANEModel:(id)model
{
  gpuNetwork = self->_gpuNetwork;
  if (gpuNetwork)
  {

    self->_gpuNetwork = 0;
    self->_firstModelLoadLog = 1;
  }

  aneNetwork = self->_aneNetwork;
  if (aneNetwork)
  {

    self->_aneNetwork = 0;
    self->_firstModelLoadLog = 1;
  }

  if (!self->_aneRenderContext.m_Obj)
  {
    HStyleTransfer_ANE::RenderContext::GetRetainedRenderContext(&v14);
    m_Obj = self->_aneRenderContext.m_Obj;
    v8 = v14;
    if (m_Obj == v14)
    {
      if (m_Obj)
      {
        (*(*v14 + 24))(v14);
      }
    }

    else
    {
      if (m_Obj)
      {
        (*(*m_Obj + 24))(m_Obj);
        v8 = v14;
      }

      self->_aneRenderContext.m_Obj = v8;
    }
  }

  v9 = [(PAEStyleTransfer *)self aneModelPath:model];
  if (v9)
  {
    v10 = v9;
    self->_modelName = model;
    self->_aneNetwork = objc_alloc_init(MEMORY[0x277D077A8]);
    v11 = [(TwoNetsStyleTransfer *)[(PAEStyleTransfer *)self aneNetwork] load:v10 outputName:@"output-ane"];
    if (v11)
    {
      printf("Espresso error: %d at line %s:%d\n", v11, "/Library/Caches/com.apple.xbs/Sources/FiltersiOS/Filters/PAEStyleTransfer.mm", 334);
      model = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: In %s %d, neural style transfer %@ shape failed to load for ANE.", "/Library/Caches/com.apple.xbs/Sources/FiltersiOS/Filters/PAEStyleTransfer.mm", 337, model];
      if ((kLogLevel & 0x80000000) == 0)
      {
        NSLog(&stru_2872E15A0.isa, model);
      }
    }
  }

  return 1;
}

- (PAEStyleTransfer)initWithAPIManager:(id)manager
{
  v6.receiver = self;
  v6.super_class = PAEStyleTransfer;
  v3 = [(PAESharedDefaultBase *)&v6 initWithAPIManager:manager];
  v4 = v3;
  if (v3)
  {
    v3->_gpuDefaultsLoaded = 0;
    v3->_firstModelLoadLog = 1;
    if ([PAEStyleTransfer initWithAPIManager:]::onceToken != -1)
    {
      [PAEStyleTransfer initWithAPIManager:];
    }
  }

  return v4;
}

void *__39__PAEStyleTransfer_initWithAPIManager___block_invoke()
{
  result = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  if (result)
  {
    result = [result integerValue];
    kLogLevel = result;
  }

  return result;
}

- (void)dealloc
{
  HStyleTransfer_ANE::RenderContext::ReleaseRenderContext(&self->_aneRenderContext.m_Obj);
  v3.receiver = self;
  v3.super_class = PAEStyleTransfer;
  [(PAESharedDefaultBase *)&v3 dealloc];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:65792];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:590080];
  return [v2 dictionaryWithObjectsAndKeys:{&unk_28732D448, @"PixelTransformSupport", v3, @"MayRemapTime", v4, @"SupportsHeliumRendering", v5, @"PixelTransformSupport", v6, @"SDRWorkingSpace", v7, @"HDRWorkingSpace", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 1), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v8.receiver = self;
  v8.super_class = PAEStyleTransfer;
  [(PAESharedDefaultBase *)&v8 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735DF10];
  if (v3)
  {
    v4 = v3;
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    LODWORD(v3) = [v4 addStringParameterWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"PAEStyleTransferModelName" parmFlags:{0, 0), 1, &stru_2872E16E0, 1}];
    if (v3)
    {
      LODWORD(v7) = 17;
      LODWORD(v3) = [v4 addIntSliderWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"PAEStyleTransferQualityLevel" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:0 parmFlags:{6, 0, 0x100000006, v7}];
      if (v3)
      {
        LOBYTE(v3) = [v4 addStringParameterWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"PAEStyleTransferAppBundleID" parmFlags:{0, 0), 3, &stru_2872E16E0, 1}];
      }
    }
  }

  return v3;
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B780];
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    goto LABEL_10;
  }

  [(PAEStyleTransfer *)self registerGPUDefaults];
  v25 = 0;
  [v9 getIntValue:&v25 fromParm:2 atFxTime:info->var0.var1];
  v12 = v25;
  v24 = 0;
  [v9 getStringParameterValue:&v24 fromParm:1];
  v13 = [(PAESharedDefaultBase *)self getRenderMode:info->var0.var1];
  if (!v13)
  {
    return v13;
  }

  if ([input imageType] != 3)
  {
LABEL_10:
    LOBYTE(v13) = 0;
    return v13;
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  [(PAEStyleTransfer *)self renderResourceForQuality:v12 forModel:v24];
  v14 = MEMORY[0x277CCACA8];
  width = [input width];
  height = [input height];
  v17 = [v14 stringWithFormat:@"StyleTransfer: inputSize [%lu x %lu] | modelName %@ | quality %ld | aneModelExists %d | forceResource %@ | renderResource %d", width, height, v24, v12, 0, 0, 0];
  if (kLogLevel >= 1)
  {
    NSLog(&stru_2872E15A0.isa, v17);
  }

  v18 = *&info->var2;
  v20[0] = *&info->var0.var0;
  v20[1] = v18;
  v20[2] = *&info->var4;
  LOBYTE(v13) = [(PAEStyleTransfer *)self buildGPURenderGraph:output withInput:input withInfo:v20 modelName:v24 qualityLevel:v12];
  return v13;
}

- (PAEStyleTransferResourceTestResult)renderResourceForQuality:(SEL)quality forModel:(int64_t)model
{
  retstr->var0 = 0;
  if ((model & 0xFFFFFFFFFFFFFFFDLL) == 1 || ![MEMORY[0x277D077A8] supportsANE])
  {
    integerValue = 0;
  }

  else
  {
    integerValue = 1;
    retstr->var0 = 1;
  }

  v9 = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  retstr->var1 = v9;
  if (v9)
  {
    integerValue = [v9 integerValue];
    retstr->var0 = integerValue;
  }

  result = [(PAEStyleTransfer *)self aneModelPath:a5];
  retstr->var2 = result != 0;
  if (integerValue == 1 && !result)
  {
    retstr->var0 = 0;
  }

  return result;
}

- (BOOL)buildGPURenderGraph:(id)graph withInput:(id)input withInfo:(id *)info modelName:(id)name qualityLevel:(int64_t)level
{
  if ([PAEStyleTransfer hasEspressoVersion:graph]&& self->_gpuNetwork && [(NSString *)self->_modelName isEqualToString:name]|| [(PAEStyleTransfer *)self loadGPUModel:name])
  {
    if ([(PAEStyleTransfer *)self currentQualityLevel]!= level)
    {
      [(EspressoImage2Image *)[(PAEStyleTransfer *)self gpuNetwork] reshapeToResolutionPreset:level];
      [(PAEStyleTransfer *)self setCurrentQualityLevel:level];
    }

    self->_modelName = name;
    if (input)
    {
      [input heliumRef];
    }

    else
    {
      v16 = 0;
    }

    gpuNetwork = [(PAEStyleTransfer *)self gpuNetwork];
    v13 = HGObject::operator new(0x1B0uLL);
    HStyleTransfer_GPU::HStyleTransfer_GPU(v13, gpuNetwork);
    (*(*v13 + 120))(v13, 0, v16);
    v15 = v13;
    (*(*v13 + 16))(v13);
    [graph setHeliumRef:&v15];
    if (v15)
    {
      (*(*v15 + 24))(v15);
    }

    (*(*v13 + 24))(v13);
    if (v16)
    {
      (*(*v16 + 24))(v16);
    }
  }

  return 1;
}

- (BOOL)buildANERenderGraph:(id)graph withInput:(id)input withInfo:(id *)info modelName:(id)name qualityLevel:(int64_t)level
{
  if (self->_aneNetwork && [(NSString *)self->_modelName isEqualToString:name, input, info, name, level]|| (v11 = [(PAEStyleTransfer *)self loadANEModel:name, input, info, name, level]))
  {
    if (input)
    {
      [input heliumRef];
    }

    else
    {
      v16 = 0;
    }

    v12 = HGObject::operator new(0x1B0uLL);
    aneNetwork = self->_aneNetwork;
    m_Obj = self->_aneRenderContext.m_Obj;
    v17 = m_Obj;
    if (m_Obj)
    {
      (*(*m_Obj + 16))(m_Obj);
    }

    HStyleTransfer_ANE::HStyleTransfer_ANE(v12, aneNetwork, &v17);
    if (v17)
    {
      (*(*v17 + 24))(v17);
    }

    (*(*v12 + 120))(v12, 0, v16);
    v17 = v12;
    (*(*v12 + 16))(v12);
    [graph setHeliumRef:&v17];
    if (v17)
    {
      (*(*v17 + 24))(v17);
    }

    (*(*v12 + 24))(v12);
    if (v16)
    {
      (*(*v16 + 24))(v16);
    }

    LOBYTE(v11) = 1;
  }

  return v11;
}

@end
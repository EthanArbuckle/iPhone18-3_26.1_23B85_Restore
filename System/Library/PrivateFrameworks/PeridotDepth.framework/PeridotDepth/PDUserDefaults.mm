@interface PDUserDefaults
+ (id)defaults;
- (PDUserDefaults)init;
- (id)getObjectForKey:(id)key from:(id)from withDefaultValue:(id)value;
@end

@implementation PDUserDefaults

+ (id)defaults
{
  {
    +[PDUserDefaults defaults]::res = objc_alloc_init(PDUserDefaults);
  }

  v2 = +[PDUserDefaults defaults]::res;

  return v2;
}

- (id)getObjectForKey:(id)key from:(id)from withDefaultValue:(id)value
{
  keyCopy = key;
  fromCopy = from;
  valueCopy = value;
  v10 = [@"com.apple.PeridotDepth." stringByAppendingString:keyCopy];
  v11 = [fromCopy objectForKey:v10];
  v12 = v11;
  v13 = valueCopy;
  if (v11)
  {
    NSLog(&cfstr_WarningRunning.isa, keyCopy, v11);
    v13 = v12;
  }

  v14 = v13;

  return v14;
}

- (PDUserDefaults)init
{
  v32.receiver = self;
  v32.super_class = PDUserDefaults;
  v2 = [(PDUserDefaults *)&v32 init];
  if (v2)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [(PDUserDefaults *)v2 getObjectForKey:@"ReflectivityFilterThreshold" from:standardUserDefaults withDefaultValue:&unk_283811128];
    [v4 floatValue];
    v2->_reflectivityFilterThreshold = v5;

    v6 = [(PDUserDefaults *)v2 getObjectForKey:@"ReplayFirstFrame" from:standardUserDefaults withDefaultValue:MEMORY[0x277CBEC28]];
    v2->_replayFirstFrame = [v6 BOOLValue];

    v7 = [(PDUserDefaults *)v2 getObjectForKey:@"IgnoreWarperMesh" from:standardUserDefaults withDefaultValue:MEMORY[0x277CBEC28]];
    v2->_ignoreWarperMesh = [v7 BOOLValue];

    v8 = [(PDUserDefaults *)v2 getObjectForKey:@"DumpWarperMeshesPath" from:standardUserDefaults withDefaultValue:0];
    dumpWarperMeshesPath = v2->_dumpWarperMeshesPath;
    v2->_dumpWarperMeshesPath = v8;

    v10 = [(PDUserDefaults *)v2 getObjectForKey:@"DumpRawFramesPath" from:standardUserDefaults withDefaultValue:0];
    dumpRawFramesPath = v2->_dumpRawFramesPath;
    v2->_dumpRawFramesPath = v10;

    v12 = [(PDUserDefaults *)v2 getObjectForKey:@"DumpPointCloudsPath" from:standardUserDefaults withDefaultValue:0];
    dumpPointCloudsPath = v2->_dumpPointCloudsPath;
    v2->_dumpPointCloudsPath = v12;

    v14 = [(PDUserDefaults *)v2 getObjectForKey:@"DumpIspPeridotCalibPath" from:standardUserDefaults withDefaultValue:0];
    dumpIspPeridotCalibPath = v2->_dumpIspPeridotCalibPath;
    v2->_dumpIspPeridotCalibPath = v14;

    v16 = [(PDUserDefaults *)v2 getObjectForKey:@"StoreRawFramesInPointCloud" from:standardUserDefaults withDefaultValue:MEMORY[0x277CBEC28]];
    v2->_storeRawFramesInPointCloud = [v16 BOOLValue];

    v17 = [(PDUserDefaults *)v2 getObjectForKey:@"DisableDynamicHS2" from:standardUserDefaults withDefaultValue:MEMORY[0x277CBEC28]];
    v2->_disableDynamicHS2 = [v17 BOOLValue];

    v18 = [(PDUserDefaults *)v2 getObjectForKey:@"EnableDepthPerPixel" from:standardUserDefaults withDefaultValue:MEMORY[0x277CBEC28]];
    v2->_enableDepthPerPixel = [v18 BOOLValue];

    v19 = [(PDUserDefaults *)v2 getObjectForKey:@"EnableMacroRanges" from:standardUserDefaults withDefaultValue:MEMORY[0x277CBEC38]];
    v2->_enableMacroRanges = [v19 BOOLValue];

    v20 = [(PDUserDefaults *)v2 getObjectForKey:@"LoopDxpResults" from:standardUserDefaults withDefaultValue:MEMORY[0x277CBEC28]];
    v2->_loopDxpResults = [v20 BOOLValue];

    v21 = [(PDUserDefaults *)v2 getObjectForKey:@"DoubleBounceFlagOnly" from:standardUserDefaults withDefaultValue:MEMORY[0x277CBEC28]];
    v2->_doubleBounceFlagOnly = [v21 BOOLValue];

    v22 = [(PDUserDefaults *)v2 getObjectForKey:@"SpotClasificationEnabled" from:standardUserDefaults withDefaultValue:&unk_283811020];
    v2->_spotClasificationEnabled = [v22 intValue];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v24 = defaultManager;
    v25 = v2->_dumpWarperMeshesPath;
    if (v25)
    {
      [defaultManager createDirectoryAtPath:v25 withIntermediateDirectories:1 attributes:0 error:0];
    }

    v26 = v2->_dumpRawFramesPath;
    if (v26)
    {
      [v24 createDirectoryAtPath:v26 withIntermediateDirectories:1 attributes:0 error:0];
    }

    v27 = v2->_dumpPointCloudsPath;
    if (v27)
    {
      [v24 createDirectoryAtPath:v27 withIntermediateDirectories:1 attributes:0 error:0];
    }

    v28 = v2->_dumpIspPeridotCalibPath;
    if (v28)
    {
      [v24 createDirectoryAtPath:v28 withIntermediateDirectories:1 attributes:0 error:0];
    }

    v29 = [(PDUserDefaults *)v2 getObjectForKey:@"GmoFlowBits" from:standardUserDefaults withDefaultValue:&unk_283811038];
    v2->_gmoCfgBits = [v29 unsignedIntValue];

    v30 = [(PDUserDefaults *)v2 getObjectForKey:@"PerformanceOverridePath" from:standardUserDefaults withDefaultValue:0];
    if (v30)
    {
      [MEMORY[0x277CED0A0] setPerformanceOverrides:v30];
    }
  }

  return v2;
}

@end
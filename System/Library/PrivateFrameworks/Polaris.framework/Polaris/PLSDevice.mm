@interface PLSDevice
+ (unint64_t)getAriadneID:(id)d;
- (BOOL)hasSensor:(id)sensor;
- (BOOL)isTimer:(id)timer;
- (PLSDevice)initWithContext:(id)context isLocalReplay:(BOOL)replay;
- (id)getDomainForCameraKey:(id)key;
- (id)populateTimerContextForFrequency:(unint64_t)frequency;
- (unsigned)getRateForTimer:(id)timer;
- (void)initDataStream:(id)stream length:(unint64_t)length type:(unint64_t)type framerate:(unint64_t)framerate isShared:(BOOL)shared domain:(id)domain;
- (void)initIOSurfaceStream:(id)stream framerate:(unint64_t)framerate isShared:(BOOL)shared isExported:(BOOL)exported domain:(id)domain;
- (void)initializeIMU;
- (void)loadPlist:(id)plist;
- (void)loadSourceConfiguration:(id)configuration;
- (void)populateCameraContext;
- (void)populateProviderTypeForStream:(id)stream;
- (void)replaceSensors:(id)sensors;
- (void)resetSensors;
@end

@implementation PLSDevice

- (PLSDevice)initWithContext:(id)context isLocalReplay:(BOOL)replay
{
  contextCopy = context;
  v14.receiver = self;
  v14.super_class = PLSDevice;
  v8 = [(PLSDevice *)&v14 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    currentSensors = v8->_currentSensors;
    v8->_currentSensors = v9;

    objc_storeStrong(&v8->_context, context);
    if (!replay)
    {
      [(PLSDevice *)v8 initializeIMU];
      [(PLSDevice *)v8 initializeFastPath];
      [(PLSDevice *)v8 initializeEvents];
      [(PLSDevice *)v8 populateCameraContext];
    }

    v11 = [(NSMutableDictionary *)v8->_currentSensors copy];
    systemSourceNodes = v8->_systemSourceNodes;
    v8->_systemSourceNodes = v11;
  }

  return v8;
}

- (void)loadPlist:(id)plist
{
  v4 = MEMORY[0x277CCA8D8];
  plistCopy = plist;
  v9 = [v4 bundleForClass:objc_opt_class()];
  v6 = MEMORY[0x277CBEAC0];
  v7 = [v9 pathForResource:plistCopy ofType:@"plist"];

  v8 = [v6 dictionaryWithContentsOfFile:v7];

  [(PLSDevice *)self loadSourceConfiguration:v8];
}

- (void)initializeIMU
{
  v34 = objc_alloc_init(PLSSensorProperties);
  [(PLSSensorProperties *)v34 setKey:PLSResourceKeyGyro[0]];
  [(PLSSensorProperties *)v34 setType:1];
  [(PLSSensorProperties *)v34 setSensorFrameRate:100];
  currentSensors = self->_currentSensors;
  v4 = [(PLSSensorProperties *)v34 key];
  [(NSMutableDictionary *)currentSensors setObject:v34 forKeyedSubscript:v4];

  v5 = [(PLSSensorProperties *)v34 key];
  sensorFrameRate = [(PLSSensorProperties *)v34 sensorFrameRate];
  v7 = MEMORY[0x277D3E6C8];
  v8 = [(PLSSensorProperties *)v34 key];
  v9 = [v7 customDomain:v8];
  [(PLSDevice *)self initDataStream:v5 length:24 type:2 framerate:sensorFrameRate isShared:0 domain:v9];

  v10 = objc_alloc_init(PLSSensorProperties);
  [(PLSSensorProperties *)v10 setKey:PLSResourceKeyAccel[0]];
  [(PLSSensorProperties *)v10 setType:1];
  [(PLSSensorProperties *)v10 setSensorFrameRate:100];
  v11 = self->_currentSensors;
  v12 = [(PLSSensorProperties *)v10 key];
  [(NSMutableDictionary *)v11 setObject:v10 forKeyedSubscript:v12];

  v13 = [(PLSSensorProperties *)v10 key];
  sensorFrameRate2 = [(PLSSensorProperties *)v10 sensorFrameRate];
  v15 = MEMORY[0x277D3E6C8];
  v16 = [(PLSSensorProperties *)v10 key];
  v17 = [v15 customDomain:v16];
  [(PLSDevice *)self initDataStream:v13 length:24 type:1 framerate:sensorFrameRate2 isShared:0 domain:v17];

  v18 = objc_alloc_init(PLSSensorProperties);
  [(PLSSensorProperties *)v18 setKey:PLSResourceKeyBioMotion[0]];
  [(PLSSensorProperties *)v18 setType:1];
  [(PLSSensorProperties *)v18 setSensorFrameRate:100];
  v19 = self->_currentSensors;
  v20 = [(PLSSensorProperties *)v18 key];
  [(NSMutableDictionary *)v19 setObject:v18 forKeyedSubscript:v20];

  v21 = [(PLSSensorProperties *)v18 key];
  sensorFrameRate3 = [(PLSSensorProperties *)v18 sensorFrameRate];
  v23 = MEMORY[0x277D3E6C8];
  v24 = [(PLSSensorProperties *)v18 key];
  v25 = [v23 customDomain:v24];
  [(PLSDevice *)self initDataStream:v21 length:88 type:0 framerate:sensorFrameRate3 isShared:0 domain:v25];

  v26 = objc_alloc_init(PLSSensorProperties);
  [(PLSSensorProperties *)v26 setKey:PLSResourceKeyVIS[0]];
  [(PLSSensorProperties *)v26 setType:1];
  [(PLSSensorProperties *)v26 setSensorFrameRate:100];
  v27 = self->_currentSensors;
  v28 = [(PLSSensorProperties *)v26 key];
  [(NSMutableDictionary *)v27 setObject:v26 forKeyedSubscript:v28];

  v29 = [(PLSSensorProperties *)v26 key];
  sensorFrameRate4 = [(PLSSensorProperties *)v26 sensorFrameRate];
  v31 = MEMORY[0x277D3E6C8];
  v32 = [(PLSSensorProperties *)v26 key];
  v33 = [v31 customDomain:v32];
  [(PLSDevice *)self initDataStream:v29 length:40 type:0 framerate:sensorFrameRate4 isShared:0 domain:v33];
}

- (void)populateProviderTypeForStream:(id)stream
{
  streamCopy = stream;
  v4 = ([streamCopy resourceClass] - 7) > 2 || objc_msgSend(streamCopy, "provider") == 9;
  options = [streamCopy options];
  v7 = v6;
  v8 = [streamCopy key];
  v9 = [(PLSDevice *)self propertiesForKey:v8];

  if (options == 2 && v7 == 2 && [v9 type] == 4 && v4 && (objc_msgSend(streamCopy, "resourceClass") - 7) <= 2)
  {
    [streamCopy setProvider:0];
  }
}

- (id)populateTimerContextForFrequency:(unint64_t)frequency
{
  frequency = [MEMORY[0x277CCACA8] stringWithFormat:@"timer%03llu", frequency];
  v6 = [(PLSDevice *)self propertiesForKey:frequency];
  v7 = [(PSContext *)self->_context resourceStreamForKey:frequency];
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = objc_alloc_init(PLSSensorProperties);
    [(PLSSensorProperties *)v10 setKey:frequency];
    [(PLSSensorProperties *)v10 setType:7];
    [(PLSSensorProperties *)v10 setSensorFrameRate:frequency];
    [(NSMutableDictionary *)self->_currentSensors setObject:v10 forKeyedSubscript:frequency];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  v11 = [MEMORY[0x277D3E6C8] timerDomain:frequency];
  [(PLSDevice *)self initDataStream:frequency length:16 type:0 framerate:frequency isShared:0 domain:v11];

LABEL_3:

  return frequency;
}

- (void)populateCameraContext
{
  MGGetProductType();

  [(PLSDevice *)self loadPlist:@"PSSources_iOS"];
}

+ (unint64_t)getAriadneID:(id)d
{
  dCopy = d;
  if (getAriadneID__onceTokenCameraAriadne != -1)
  {
    +[PLSDevice getAriadneID:];
  }

  if (getAriadneID__onceTokenHIDAriadne != -1)
  {
    +[PLSDevice getAriadneID:];
  }

  if (getAriadneID__onceTokenSystemEventAriadne != -1)
  {
    +[PLSDevice getAriadneID:];
  }

  v4 = &getAriadneID__cameraAriadneIDs;
  v5 = [getAriadneID__cameraAriadneIDs objectForKey:dCopy];

  if (v5)
  {
    goto LABEL_10;
  }

  v4 = &getAriadneID__hidAriadneIDs;
  v6 = [getAriadneID__hidAriadneIDs objectForKey:dCopy];

  if (v6 || (v4 = &getAriadneID__systemEventAriadneIDs, [getAriadneID__systemEventAriadneIDs objectForKey:dCopy], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
LABEL_10:
    v8 = [*v4 objectForKeyedSubscript:dCopy];
    unsignedIntValue = [v8 unsignedIntValue];

    v10 = unsignedIntValue;
  }

  else
  {
    v10 = 0xFFFFFFFFLL;
  }

  return v10;
}

void __26__PLSDevice_getAriadneID___block_invoke()
{
  v0 = getAriadneID__cameraAriadneIDs;
  getAriadneID__cameraAriadneIDs = MEMORY[0x277CBEC10];
}

void __26__PLSDevice_getAriadneID___block_invoke_2()
{
  v4[3] = *MEMORY[0x277D85DE8];
  v3[0] = PLSResourceKeyAccel[0];
  v3[1] = PLSResourceKeyGyro[0];
  v4[0] = &unk_2870CBD00;
  v4[1] = &unk_2870CBD18;
  v3[2] = PLSResourceKeyBioMotion[0];
  v4[2] = &unk_2870CBD30;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:3];
  v1 = getAriadneID__hidAriadneIDs;
  getAriadneID__hidAriadneIDs = v0;

  v2 = *MEMORY[0x277D85DE8];
}

void __26__PLSDevice_getAriadneID___block_invoke_82()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = PLSResourceKeyTimer[0];
  v4[0] = &unk_2870CBD48;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v1 = getAriadneID__systemEventAriadneIDs;
  getAriadneID__systemEventAriadneIDs = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (void)loadSourceConfiguration:(id)configuration
{
  v52 = *MEMORY[0x277D85DE8];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = configuration;
  v38 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v38)
  {
    v36 = *v44;
    *&v3 = 136315394;
    v35 = v3;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v44 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v43 + 1) + 8 * i);
        v6 = [obj objectForKeyedSubscript:{v5, v35}];
        v7 = [v6 objectForKeyedSubscript:@"Width"];
        v8 = [v6 objectForKeyedSubscript:@"Height"];
        v9 = [v6 objectForKeyedSubscript:@"FrameRate"];
        v10 = [v6 objectForKeyedSubscript:@"PixelFormat"];
        v41 = v8;
        v42 = v7;
        if (v7)
        {
          v11 = v8 == 0;
        }

        else
        {
          v11 = 1;
        }

        v40 = v9;
        v12 = v11 || v9 == 0;
        v13 = v10;
        if (v12 || v10 == 0)
        {
          v15 = 0;
        }

        else
        {
          v15 = objc_alloc_init(PLSCameraStreamFormat);
          v16 = [v6 objectForKeyedSubscript:@"Width"];
          -[PLSCameraStreamFormat setWidth:](v15, "setWidth:", [v16 unsignedIntValue]);

          v17 = [v6 objectForKeyedSubscript:@"Height"];
          -[PLSCameraStreamFormat setHeight:](v15, "setHeight:", [v17 unsignedIntValue]);

          v18 = [v6 objectForKeyedSubscript:@"FrameRate"];
          -[PLSCameraStreamFormat setFrameRate:](v15, "setFrameRate:", [v18 unsignedIntValue]);

          v19 = [v6 objectForKeyedSubscript:@"PixelFormat"];
          -[PLSCameraStreamFormat setPixelFormat:](v15, "setPixelFormat:", [v19 unsignedIntValue]);
        }

        v20 = [v6 objectForKeyedSubscript:@"Type"];
        v21 = sourceTypeFromString(v20);

        v22 = objc_alloc_init(PLSSensorProperties);
        [(PLSSensorProperties *)v22 setKey:v5];
        v23 = +[PLSSettings currentSettings];
        synchronizeStreamPairs = [v23 synchronizeStreamPairs];

        if (synchronizeStreamPairs)
        {
          v25 = [v6 objectForKeyedSubscript:@"Sync"];
          [(PLSSensorProperties *)v22 setSyncedKey:v25];
        }

        else
        {
          [(PLSSensorProperties *)v22 setSyncedKey:0];
        }

        v26 = [v6 objectForKeyedSubscript:@"RCFrameID"];
        if (v26 && (v27 = v26, [v6 objectForKeyedSubscript:@"RCFrameID"], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "BOOLValue"), v28, v27, v29))
        {
          v30 = [v6 objectForKeyedSubscript:@"RCFrameID"];
          -[PLSSensorProperties setRcFrameID:](v22, "setRcFrameID:", [v30 BOOLValue]);

          v31 = __PLSLogSharedInstance();
          if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_28;
          }

          *buf = v35;
          v48 = "[PLSDevice loadSourceConfiguration:]";
          v49 = 2112;
          v50 = v5;
          v32 = v31;
          v33 = "%s resource %@ RC provides frameid";
        }

        else
        {
          v31 = __PLSLogSharedInstance();
          if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_28;
          }

          *buf = v35;
          v48 = "[PLSDevice loadSourceConfiguration:]";
          v49 = 2112;
          v50 = v5;
          v32 = v31;
          v33 = "%s resource %@ Polaris provides frameid";
        }

        _os_log_impl(&dword_25EA3A000, v32, OS_LOG_TYPE_DEBUG, v33, buf, 0x16u);
LABEL_28:

        [(PLSSensorProperties *)v22 setFormat:v15];
        [(PLSSensorProperties *)v22 setSensorFrameRate:[(PLSCameraStreamFormat *)v15 frameRate]];
        [(PLSSensorProperties *)v22 setType:v21];
        [(NSMutableDictionary *)self->_currentSensors setObject:v22 forKeyedSubscript:v5];
      }

      v38 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v38);
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)initDataStream:(id)stream length:(unint64_t)length type:(unint64_t)type framerate:(unint64_t)framerate isShared:(BOOL)shared domain:(id)domain
{
  sharedCopy = shared;
  streamCopy = stream;
  if (sharedCopy)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  v20 = v15;
  v21 = 1;
  v16 = MEMORY[0x277D3E690];
  domainCopy = domain;
  v18 = [v16 dataStreamWithResourceKey:streamCopy type:type options:&v20 length:length];
  [v18 setFramerate:{framerate, v20, v21}];
  [v18 setDomain:domainCopy];

  if (([streamCopy isEqualToString:PLSResourceKeyFastIMU800[0]] & 1) != 0 || objc_msgSend(streamCopy, "isEqualToString:", PLSResourceKeyFastMagnetometer[0]))
  {
    [v18 setTotalBufferCountHint:2000];
    [v18 setReservedForReaderBufferCountHint:1000];
  }

  context = self->_context;
  if (context)
  {
    [(PSContext *)context addBuiltInResourceStream:v18];
  }
}

- (void)initIOSurfaceStream:(id)stream framerate:(unint64_t)framerate isShared:(BOOL)shared isExported:(BOOL)exported domain:(id)domain
{
  exportedCopy = exported;
  v11 = 1;
  if (shared)
  {
    v11 = 2;
  }

  v16 = v11;
  v17 = 2;
  v12 = MEMORY[0x277D3E6A8];
  domainCopy = domain;
  v14 = [v12 ioSurfaceStreamWithResourceKey:stream options:&v16 properties:0];
  [v14 setFramerate:{framerate, v16, v17}];
  [v14 setDomain:domainCopy];

  context = self->_context;
  if (context)
  {
    if (exportedCopy)
    {
      [(PSContext *)context addResourceStream:v14];
    }

    else
    {
      [(PSContext *)context addBuiltInResourceStream:v14];
    }
  }
}

- (BOOL)isTimer:(id)timer
{
  timerCopy = timer;
  [timerCopy hasPrefix:PLSResourceKeyTimer[0]];
  v4 = [timerCopy length] == 8 && objc_msgSend(timerCopy, "characterAtIndex:", 5) - 58 >= 0xFFFFFFF6 && objc_msgSend(timerCopy, "characterAtIndex:", 6) - 58 >= 0xFFFFFFF6 && objc_msgSend(timerCopy, "characterAtIndex:", 7) - 48 < 0xA;

  return v4;
}

- (unsigned)getRateForTimer:(id)timer
{
  timerCopy = timer;
  if ([(PLSDevice *)self isTimer:timerCopy])
  {
    v5 = [timerCopy substringWithRange:{5, 3}];
    intValue = [v5 intValue];

    return intValue;
  }

  else
  {
    [(PLSDevice *)&v11 getRateForTimer:timerCopy];
    return [(PLSDevice *)v8 propertiesForKey:v9, v10];
  }
}

- (BOOL)hasSensor:(id)sensor
{
  sensorCopy = sensor;
  if ([(PLSDevice *)self isTimer:sensorCopy])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(NSMutableDictionary *)self->_currentSensors objectForKey:sensorCopy];
    v5 = v6 != 0;
  }

  return v5;
}

- (void)replaceSensors:(id)sensors
{
  v4 = [sensors mutableCopy];
  currentSensors = self->_currentSensors;
  self->_currentSensors = v4;

  MEMORY[0x2821F96F8]();
}

- (void)resetSensors
{
  v3 = [(NSDictionary *)self->_systemSourceNodes mutableCopy];
  currentSensors = self->_currentSensors;
  self->_currentSensors = v3;

  MEMORY[0x2821F96F8]();
}

- (id)getDomainForCameraKey:(id)key
{
  keyCopy = key;
  v5 = [(PLSDevice *)self propertiesForKey:keyCopy];
  v6 = v5;
  if (v5 && [v5 isCamera])
  {
    if ([v6 rcFrameID])
    {
      v7 = [MEMORY[0x277D3E6C8] customDomain:@"legacy-sd-cam"];
    }

    else
    {
      v9 = [MEMORY[0x277CBEB18] arrayWithObject:keyCopy];
      syncedKey = [v6 syncedKey];

      if (syncedKey)
      {
        syncedKey2 = [v6 syncedKey];
        [v9 addObject:syncedKey2];
      }

      [v9 sortUsingSelector:sel_compare_];
      v12 = [v9 componentsJoinedByString:@"-"];
      v7 = [MEMORY[0x277D3E6C8] customDomain:v12];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)getRateForTimer:(char *)a1 .cold.1(char **a1, id a2)
{
  v16 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = a2;
  asprintf(a1, "Tried to get a timer rate from a non-timer key %s", [a2 UTF8String]);
  v5 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315650;
    v11 = "[PLSDevice getRateForTimer:]";
    v12 = 1024;
    v13 = 803;
    v14 = 2080;
    v15 = [a2 UTF8String];
    _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_FAULT, "%s:%d Tried to get a timer rate from a non-timer key %s", buf, 0x1Cu);
  }

  v6 = OSLogFlushBuffers();
  if (v6)
  {
    v7 = v6;
    v8 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "[PLSDevice getRateForTimer:]";
      v12 = 1024;
      v13 = v7;
      _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v9 = *a1;
  abort_with_reason();
  __PLSLogSharedInstance_cold_1();
}

@end
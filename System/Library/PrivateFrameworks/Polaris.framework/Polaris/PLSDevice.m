@interface PLSDevice
+ (unint64_t)getAriadneID:(id)a3;
- (BOOL)hasSensor:(id)a3;
- (BOOL)isTimer:(id)a3;
- (PLSDevice)initWithContext:(id)a3 isLocalReplay:(BOOL)a4;
- (id)getDomainForCameraKey:(id)a3;
- (id)populateTimerContextForFrequency:(unint64_t)a3;
- (unsigned)getRateForTimer:(id)a3;
- (void)initDataStream:(id)a3 length:(unint64_t)a4 type:(unint64_t)a5 framerate:(unint64_t)a6 isShared:(BOOL)a7 domain:(id)a8;
- (void)initIOSurfaceStream:(id)a3 framerate:(unint64_t)a4 isShared:(BOOL)a5 isExported:(BOOL)a6 domain:(id)a7;
- (void)initializeIMU;
- (void)loadPlist:(id)a3;
- (void)loadSourceConfiguration:(id)a3;
- (void)populateCameraContext;
- (void)populateProviderTypeForStream:(id)a3;
- (void)replaceSensors:(id)a3;
- (void)resetSensors;
@end

@implementation PLSDevice

- (PLSDevice)initWithContext:(id)a3 isLocalReplay:(BOOL)a4
{
  v7 = a3;
  v14.receiver = self;
  v14.super_class = PLSDevice;
  v8 = [(PLSDevice *)&v14 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    currentSensors = v8->_currentSensors;
    v8->_currentSensors = v9;

    objc_storeStrong(&v8->_context, a3);
    if (!a4)
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

- (void)loadPlist:(id)a3
{
  v4 = MEMORY[0x277CCA8D8];
  v5 = a3;
  v9 = [v4 bundleForClass:objc_opt_class()];
  v6 = MEMORY[0x277CBEAC0];
  v7 = [v9 pathForResource:v5 ofType:@"plist"];

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
  v6 = [(PLSSensorProperties *)v34 sensorFrameRate];
  v7 = MEMORY[0x277D3E6C8];
  v8 = [(PLSSensorProperties *)v34 key];
  v9 = [v7 customDomain:v8];
  [(PLSDevice *)self initDataStream:v5 length:24 type:2 framerate:v6 isShared:0 domain:v9];

  v10 = objc_alloc_init(PLSSensorProperties);
  [(PLSSensorProperties *)v10 setKey:PLSResourceKeyAccel[0]];
  [(PLSSensorProperties *)v10 setType:1];
  [(PLSSensorProperties *)v10 setSensorFrameRate:100];
  v11 = self->_currentSensors;
  v12 = [(PLSSensorProperties *)v10 key];
  [(NSMutableDictionary *)v11 setObject:v10 forKeyedSubscript:v12];

  v13 = [(PLSSensorProperties *)v10 key];
  v14 = [(PLSSensorProperties *)v10 sensorFrameRate];
  v15 = MEMORY[0x277D3E6C8];
  v16 = [(PLSSensorProperties *)v10 key];
  v17 = [v15 customDomain:v16];
  [(PLSDevice *)self initDataStream:v13 length:24 type:1 framerate:v14 isShared:0 domain:v17];

  v18 = objc_alloc_init(PLSSensorProperties);
  [(PLSSensorProperties *)v18 setKey:PLSResourceKeyBioMotion[0]];
  [(PLSSensorProperties *)v18 setType:1];
  [(PLSSensorProperties *)v18 setSensorFrameRate:100];
  v19 = self->_currentSensors;
  v20 = [(PLSSensorProperties *)v18 key];
  [(NSMutableDictionary *)v19 setObject:v18 forKeyedSubscript:v20];

  v21 = [(PLSSensorProperties *)v18 key];
  v22 = [(PLSSensorProperties *)v18 sensorFrameRate];
  v23 = MEMORY[0x277D3E6C8];
  v24 = [(PLSSensorProperties *)v18 key];
  v25 = [v23 customDomain:v24];
  [(PLSDevice *)self initDataStream:v21 length:88 type:0 framerate:v22 isShared:0 domain:v25];

  v26 = objc_alloc_init(PLSSensorProperties);
  [(PLSSensorProperties *)v26 setKey:PLSResourceKeyVIS[0]];
  [(PLSSensorProperties *)v26 setType:1];
  [(PLSSensorProperties *)v26 setSensorFrameRate:100];
  v27 = self->_currentSensors;
  v28 = [(PLSSensorProperties *)v26 key];
  [(NSMutableDictionary *)v27 setObject:v26 forKeyedSubscript:v28];

  v29 = [(PLSSensorProperties *)v26 key];
  v30 = [(PLSSensorProperties *)v26 sensorFrameRate];
  v31 = MEMORY[0x277D3E6C8];
  v32 = [(PLSSensorProperties *)v26 key];
  v33 = [v31 customDomain:v32];
  [(PLSDevice *)self initDataStream:v29 length:40 type:0 framerate:v30 isShared:0 domain:v33];
}

- (void)populateProviderTypeForStream:(id)a3
{
  v10 = a3;
  v4 = ([v10 resourceClass] - 7) > 2 || objc_msgSend(v10, "provider") == 9;
  v5 = [v10 options];
  v7 = v6;
  v8 = [v10 key];
  v9 = [(PLSDevice *)self propertiesForKey:v8];

  if (v5 == 2 && v7 == 2 && [v9 type] == 4 && v4 && (objc_msgSend(v10, "resourceClass") - 7) <= 2)
  {
    [v10 setProvider:0];
  }
}

- (id)populateTimerContextForFrequency:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"timer%03llu", a3];
  v6 = [(PLSDevice *)self propertiesForKey:v5];
  v7 = [(PSContext *)self->_context resourceStreamForKey:v5];
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
    [(PLSSensorProperties *)v10 setKey:v5];
    [(PLSSensorProperties *)v10 setType:7];
    [(PLSSensorProperties *)v10 setSensorFrameRate:a3];
    [(NSMutableDictionary *)self->_currentSensors setObject:v10 forKeyedSubscript:v5];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  v11 = [MEMORY[0x277D3E6C8] timerDomain:a3];
  [(PLSDevice *)self initDataStream:v5 length:16 type:0 framerate:a3 isShared:0 domain:v11];

LABEL_3:

  return v5;
}

- (void)populateCameraContext
{
  MGGetProductType();

  [(PLSDevice *)self loadPlist:@"PSSources_iOS"];
}

+ (unint64_t)getAriadneID:(id)a3
{
  v3 = a3;
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
  v5 = [getAriadneID__cameraAriadneIDs objectForKey:v3];

  if (v5)
  {
    goto LABEL_10;
  }

  v4 = &getAriadneID__hidAriadneIDs;
  v6 = [getAriadneID__hidAriadneIDs objectForKey:v3];

  if (v6 || (v4 = &getAriadneID__systemEventAriadneIDs, [getAriadneID__systemEventAriadneIDs objectForKey:v3], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
LABEL_10:
    v8 = [*v4 objectForKeyedSubscript:v3];
    v9 = [v8 unsignedIntValue];

    v10 = v9;
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

- (void)loadSourceConfiguration:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = a3;
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
        v24 = [v23 synchronizeStreamPairs];

        if (v24)
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

- (void)initDataStream:(id)a3 length:(unint64_t)a4 type:(unint64_t)a5 framerate:(unint64_t)a6 isShared:(BOOL)a7 domain:(id)a8
{
  v9 = a7;
  v14 = a3;
  if (v9)
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
  v17 = a8;
  v18 = [v16 dataStreamWithResourceKey:v14 type:a5 options:&v20 length:a4];
  [v18 setFramerate:{a6, v20, v21}];
  [v18 setDomain:v17];

  if (([v14 isEqualToString:PLSResourceKeyFastIMU800[0]] & 1) != 0 || objc_msgSend(v14, "isEqualToString:", PLSResourceKeyFastMagnetometer[0]))
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

- (void)initIOSurfaceStream:(id)a3 framerate:(unint64_t)a4 isShared:(BOOL)a5 isExported:(BOOL)a6 domain:(id)a7
{
  v7 = a6;
  v11 = 1;
  if (a5)
  {
    v11 = 2;
  }

  v16 = v11;
  v17 = 2;
  v12 = MEMORY[0x277D3E6A8];
  v13 = a7;
  v14 = [v12 ioSurfaceStreamWithResourceKey:a3 options:&v16 properties:0];
  [v14 setFramerate:{a4, v16, v17}];
  [v14 setDomain:v13];

  context = self->_context;
  if (context)
  {
    if (v7)
    {
      [(PSContext *)context addResourceStream:v14];
    }

    else
    {
      [(PSContext *)context addBuiltInResourceStream:v14];
    }
  }
}

- (BOOL)isTimer:(id)a3
{
  v3 = a3;
  [v3 hasPrefix:PLSResourceKeyTimer[0]];
  v4 = [v3 length] == 8 && objc_msgSend(v3, "characterAtIndex:", 5) - 58 >= 0xFFFFFFF6 && objc_msgSend(v3, "characterAtIndex:", 6) - 58 >= 0xFFFFFFF6 && objc_msgSend(v3, "characterAtIndex:", 7) - 48 < 0xA;

  return v4;
}

- (unsigned)getRateForTimer:(id)a3
{
  v4 = a3;
  if ([(PLSDevice *)self isTimer:v4])
  {
    v5 = [v4 substringWithRange:{5, 3}];
    v6 = [v5 intValue];

    return v6;
  }

  else
  {
    [(PLSDevice *)&v11 getRateForTimer:v4];
    return [(PLSDevice *)v8 propertiesForKey:v9, v10];
  }
}

- (BOOL)hasSensor:(id)a3
{
  v4 = a3;
  if ([(PLSDevice *)self isTimer:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(NSMutableDictionary *)self->_currentSensors objectForKey:v4];
    v5 = v6 != 0;
  }

  return v5;
}

- (void)replaceSensors:(id)a3
{
  v4 = [a3 mutableCopy];
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

- (id)getDomainForCameraKey:(id)a3
{
  v4 = a3;
  v5 = [(PLSDevice *)self propertiesForKey:v4];
  v6 = v5;
  if (v5 && [v5 isCamera])
  {
    if ([v6 rcFrameID])
    {
      v7 = [MEMORY[0x277D3E6C8] customDomain:@"legacy-sd-cam"];
    }

    else
    {
      v9 = [MEMORY[0x277CBEB18] arrayWithObject:v4];
      v10 = [v6 syncedKey];

      if (v10)
      {
        v11 = [v6 syncedKey];
        [v9 addObject:v11];
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
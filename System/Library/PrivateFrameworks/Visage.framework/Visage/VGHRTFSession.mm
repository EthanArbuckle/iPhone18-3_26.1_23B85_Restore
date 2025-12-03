@interface VGHRTFSession
- (BOOL)_asyncProcessCaptureData:(id)data faceData:(id)faceData userData:(id)userData error:(id *)error;
- (BOOL)processCaptureData:(id)data faceData:(id)faceData userData:(id)userData error:(id *)error;
- (BOOL)waitWithError:(id *)error;
- (VGHRTFSession)initWithConfig:(id)config error:(id *)error;
@end

@implementation VGHRTFSession

- (VGHRTFSession)initWithConfig:(id)config error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  configCopy = config;
  v38.receiver = self;
  v38.super_class = VGHRTFSession;
  v8 = [(VGHRTFSession *)&v38 init];
  if (v8)
  {
    [configCopy overwriteWithDefaults];
    objc_storeStrong(&v8->_config, config);
    v9 = __VGLogSharedInstance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      writeDebugData = [(VGHRTFSessionConfig *)v8->_config writeDebugData];
      v11 = @"NO";
      if (writeDebugData)
      {
        v11 = @"YES";
      }

      *buf = 138412290;
      v40 = v11;
      _os_log_impl(&dword_270F06000, v9, OS_LOG_TYPE_DEBUG, " Write HRTF debug data: %@ ", buf, 0xCu);
    }

    if ([(VGHRTFSessionConfig *)v8->_config writeDebugData])
    {
      debugDataRootPath = [(VGHRTFSessionConfig *)v8->_config debugDataRootPath];
      if (!debugDataRootPath)
      {
        v13 = objc_opt_new();
        [v13 setDateFormat:@"yyyyMMdd_HHmmss_SSS"];
        date = [MEMORY[0x277CBEAA8] date];
        v15 = [v13 stringFromDate:date];

        debugDataRootPath = [@"/private/var/mobile/Library/Caches/VisageTestApp/HRTF/" stringByAppendingPathComponent:v15];
      }

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v17 = [defaultManager fileExistsAtPath:debugDataRootPath];

      if (v17)
      {
        NSLog(&cfstr_PathAlreadyExi.isa, debugDataRootPath);

LABEL_23:
        v18 = 0;
        goto LABEL_24;
      }

      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v37 = 0;
      [defaultManager2 createDirectoryAtPath:debugDataRootPath withIntermediateDirectories:1 attributes:0 error:&v37];
      v20 = v37;

      if (v20)
      {
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create debug path %@.", debugDataRootPath];
        vg::hrtf::setError(error, v21);

        goto LABEL_23;
      }

      [(VGHRTFSessionConfig *)v8->_config setDebugDataRootPath:debugDataRootPath];
      v22 = __VGLogSharedInstance();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        debugDataRootPath2 = [(VGHRTFSessionConfig *)v8->_config debugDataRootPath];
        *buf = 138412290;
        v40 = debugDataRootPath2;
        _os_log_impl(&dword_270F06000, v22, OS_LOG_TYPE_DEBUG, " Using path for dumping HRTF debug data: %@ ", buf, 0xCu);
      }
    }

    v24 = [[VGHRTFCaptureProcessor alloc] initWithConfig:v8->_config error:error];
    captureProcessor = v8->_captureProcessor;
    v8->_captureProcessor = v24;

    if (v8->_captureProcessor)
    {
      v26 = [[VGHRTFPostProcessor alloc] initWithConfig:v8->_config error:error];
      postProcessor = v8->_postProcessor;
      v8->_postProcessor = v26;

      if (v8->_postProcessor)
      {
        v28 = dispatch_queue_create("com.apple.visage.hrtf.processor", 0);
        processQueue = v8->_processQueue;
        v8->_processQueue = v28;

        v30 = dispatch_group_create();
        processGroup = v8->_processGroup;
        v8->_processGroup = v30;

        v32 = dispatch_queue_create("com.apple.visage.hrtf.timer", 0);
        timerQueue = v8->_timerQueue;
        v8->_timerQueue = v32;

        atomic_store(0, &v8->_processing);
        atomic_store(0, &v8->_captureFinished);
        v18 = v8;
        goto LABEL_24;
      }

      v34 = @"Failed to initialize post processor.";
    }

    else
    {
      v34 = @"Failed to initialize capture processor.";
    }

    vg::hrtf::setError(error, v34);
    goto LABEL_23;
  }

  vg::hrtf::setError(error, @"Failed to initialize VGHRTFSession.");
  v18 = 0;
LABEL_24:

  v35 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)_asyncProcessCaptureData:(id)data faceData:(id)faceData userData:(id)userData error:(id *)error
{
  dataCopy = data;
  faceDataCopy = faceData;
  v11 = atomic_load(&self->_captureFinished);
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    initEmpty = [[VGHRTFUpdateData alloc] initEmpty];
    [initEmpty setStep:0];
    v14 = [(VGHRTFCaptureProcessor *)self->_captureProcessor processCaptureData:dataCopy faceData:faceDataCopy error:error];
    state = [v14 state];
    if (state >= 2)
    {
      if (state == 2)
      {
        [initEmpty setStep:_os_feature_enabled_impl() ^ 1];
        atomic_store(1u, &self->_captureFinished);
      }
    }

    else
    {
      [initEmpty setStep:state];
    }

    [initEmpty setCaptureUpdateData:v14];
    delegate = [(VGHRTFSessionConfig *)self->_config delegate];
    [delegate updateWithData:initEmpty error:error];

    v17 = atomic_load(&self->_captureFinished);
    if ((v17 & 1) == 0)
    {
      goto LABEL_19;
    }

    v18 = __VGLogSharedInstance();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_270F06000, v18, OS_LOG_TYPE_DEBUG, " Capture finished, starting post-processing... ", buf, 2u);
    }

    captureProcessor = self->_captureProcessor;
    self->_captureProcessor = 0;

    v20 = dispatch_source_create(MEMORY[0x277D85D38], 0, 1uLL, self->_timerQueue);
    *buf = 0;
    v35 = buf;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy_;
    v38 = __Block_byref_object_dispose_;
    v39 = 0;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __66__VGHRTFSession__asyncProcessCaptureData_faceData_userData_error___block_invoke;
    handler[3] = &unk_279E28D28;
    v21 = v14;
    v31 = v21;
    selfCopy = self;
    v33 = buf;
    dispatch_source_set_event_handler(v20, handler);
    if (error)
    {
      *error = *(v35 + 5);
    }

    dispatch_source_set_timer(v20, 0, 0x3B9ACA00uLL, 0);
    dispatch_resume(v20);
    v22 = [(VGHRTFPostProcessor *)self->_postProcessor processCaptureUpdateData:v21 error:error];
    dispatch_suspend(v20);
    dispatch_source_cancel(v20);
    dispatch_resume(v20);
    if (v22)
    {
      initEmpty2 = [[VGHRTFUpdateData alloc] initEmpty];
      [initEmpty2 setCaptureUpdateData:v21];
      [initEmpty2 setStep:3];
      [initEmpty2 setPostProcessUpdateData:v22];
      delegate2 = [(VGHRTFSessionConfig *)self->_config delegate];
      [delegate2 updateWithData:initEmpty2 error:error];

      initEmpty3 = __VGLogSharedInstance();
      if (os_log_type_enabled(initEmpty3, OS_LOG_TYPE_DEBUG))
      {
        *v29 = 0;
        _os_log_impl(&dword_270F06000, initEmpty3, OS_LOG_TYPE_DEBUG, " Successfully completed post-processing ", v29, 2u);
      }
    }

    else
    {
      v26 = __VGLogSharedInstance();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *v29 = 0;
        _os_log_impl(&dword_270F06000, v26, OS_LOG_TYPE_ERROR, " Post-processing failed! ", v29, 2u);
      }

      vg::hrtf::setError(error, @"Failed to run post-processing.");
      initEmpty2 = [[VGHRTFUpdateData alloc] initEmpty];
      [initEmpty2 setCaptureUpdateData:v21];
      [initEmpty2 setStep:3];
      initEmpty3 = [[VGHRTFPostProcessUpdateData alloc] initEmpty];
      [initEmpty3 setState:1];
      [initEmpty3 setResult:0];
      [initEmpty2 setPostProcessUpdateData:initEmpty3];
      delegate3 = [(VGHRTFSessionConfig *)self->_config delegate];
      [delegate3 updateWithData:initEmpty2 error:error];
    }

    _Block_object_dispose(buf, 8);
    if (!v22)
    {
      v12 = 0;
    }

    else
    {
LABEL_19:
      v12 = 1;
    }
  }

  return v12;
}

void __66__VGHRTFSession__asyncProcessCaptureData_faceData_userData_error___block_invoke(void *a1)
{
  v2 = [[VGHRTFUpdateData alloc] initEmpty];
  [v2 setCaptureUpdateData:a1[4]];
  [v2 setStep:2];
  v3 = [[VGHRTFPostProcessUpdateData alloc] initEmpty];
  [v3 setState:0];
  [v3 setResult:0];
  [v2 setPostProcessUpdateData:v3];
  v4 = [*(a1[5] + 8) delegate];
  v5 = *(a1[6] + 8);
  obj = *(v5 + 40);
  [v4 updateWithData:v2 error:&obj];
  objc_storeStrong((v5 + 40), obj);
}

- (BOOL)processCaptureData:(id)data faceData:(id)faceData userData:(id)userData error:(id *)error
{
  dataCopy = data;
  faceDataCopy = faceData;
  userDataCopy = userData;
  v13 = atomic_exchange(&self->_processing.__a_.__a_value, 1u);
  if (v13)
  {
    vg::hrtf::setError(error, @"Dropped this frame while still processing a previous frame.");
  }

  else
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy_;
    v26 = __Block_byref_object_dispose_;
    v27 = 0;
    processQueue = self->_processQueue;
    processGroup = self->_processGroup;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__VGHRTFSession_processCaptureData_faceData_userData_error___block_invoke;
    block[3] = &unk_279E28D50;
    block[4] = self;
    v18 = dataCopy;
    v19 = faceDataCopy;
    v20 = userDataCopy;
    v21 = &v22;
    dispatch_group_async(processGroup, processQueue, block);
    if (error)
    {
      *error = v23[5];
    }

    _Block_object_dispose(&v22, 8);
  }

  return (v13 & 1) == 0;
}

void __60__VGHRTFSession_processCaptureData_faceData_userData_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = *(a1[8] + 8);
  obj = *(v6 + 40);
  [v2 _asyncProcessCaptureData:v3 faceData:v4 userData:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  atomic_store(0, (a1[4] + 56));
}

- (BOOL)waitWithError:(id *)error
{
  v4 = dispatch_group_wait(self->_processGroup, 0xFFFFFFFFFFFFFFFFLL);
  if (v4)
  {
    vg::hrtf::setError(error, @"HRTF session sync failed.");
  }

  return v4 == 0;
}

@end
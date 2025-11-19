@interface VGHRTFSession
- (BOOL)_asyncProcessCaptureData:(id)a3 faceData:(id)a4 userData:(id)a5 error:(id *)a6;
- (BOOL)processCaptureData:(id)a3 faceData:(id)a4 userData:(id)a5 error:(id *)a6;
- (BOOL)waitWithError:(id *)a3;
- (VGHRTFSession)initWithConfig:(id)a3 error:(id *)a4;
@end

@implementation VGHRTFSession

- (VGHRTFSession)initWithConfig:(id)a3 error:(id *)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v38.receiver = self;
  v38.super_class = VGHRTFSession;
  v8 = [(VGHRTFSession *)&v38 init];
  if (v8)
  {
    [v7 overwriteWithDefaults];
    objc_storeStrong(&v8->_config, a3);
    v9 = __VGLogSharedInstance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [(VGHRTFSessionConfig *)v8->_config writeDebugData];
      v11 = @"NO";
      if (v10)
      {
        v11 = @"YES";
      }

      *buf = 138412290;
      v40 = v11;
      _os_log_impl(&dword_270F06000, v9, OS_LOG_TYPE_DEBUG, " Write HRTF debug data: %@ ", buf, 0xCu);
    }

    if ([(VGHRTFSessionConfig *)v8->_config writeDebugData])
    {
      v12 = [(VGHRTFSessionConfig *)v8->_config debugDataRootPath];
      if (!v12)
      {
        v13 = objc_opt_new();
        [v13 setDateFormat:@"yyyyMMdd_HHmmss_SSS"];
        v14 = [MEMORY[0x277CBEAA8] date];
        v15 = [v13 stringFromDate:v14];

        v12 = [@"/private/var/mobile/Library/Caches/VisageTestApp/HRTF/" stringByAppendingPathComponent:v15];
      }

      v16 = [MEMORY[0x277CCAA00] defaultManager];
      v17 = [v16 fileExistsAtPath:v12];

      if (v17)
      {
        NSLog(&cfstr_PathAlreadyExi.isa, v12);

LABEL_23:
        v18 = 0;
        goto LABEL_24;
      }

      v19 = [MEMORY[0x277CCAA00] defaultManager];
      v37 = 0;
      [v19 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:0 error:&v37];
      v20 = v37;

      if (v20)
      {
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create debug path %@.", v12];
        vg::hrtf::setError(a4, v21);

        goto LABEL_23;
      }

      [(VGHRTFSessionConfig *)v8->_config setDebugDataRootPath:v12];
      v22 = __VGLogSharedInstance();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v23 = [(VGHRTFSessionConfig *)v8->_config debugDataRootPath];
        *buf = 138412290;
        v40 = v23;
        _os_log_impl(&dword_270F06000, v22, OS_LOG_TYPE_DEBUG, " Using path for dumping HRTF debug data: %@ ", buf, 0xCu);
      }
    }

    v24 = [[VGHRTFCaptureProcessor alloc] initWithConfig:v8->_config error:a4];
    captureProcessor = v8->_captureProcessor;
    v8->_captureProcessor = v24;

    if (v8->_captureProcessor)
    {
      v26 = [[VGHRTFPostProcessor alloc] initWithConfig:v8->_config error:a4];
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

    vg::hrtf::setError(a4, v34);
    goto LABEL_23;
  }

  vg::hrtf::setError(a4, @"Failed to initialize VGHRTFSession.");
  v18 = 0;
LABEL_24:

  v35 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)_asyncProcessCaptureData:(id)a3 faceData:(id)a4 userData:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = atomic_load(&self->_captureFinished);
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v13 = [[VGHRTFUpdateData alloc] initEmpty];
    [v13 setStep:0];
    v14 = [(VGHRTFCaptureProcessor *)self->_captureProcessor processCaptureData:v9 faceData:v10 error:a6];
    v15 = [v14 state];
    if (v15 >= 2)
    {
      if (v15 == 2)
      {
        [v13 setStep:_os_feature_enabled_impl() ^ 1];
        atomic_store(1u, &self->_captureFinished);
      }
    }

    else
    {
      [v13 setStep:v15];
    }

    [v13 setCaptureUpdateData:v14];
    v16 = [(VGHRTFSessionConfig *)self->_config delegate];
    [v16 updateWithData:v13 error:a6];

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
    v32 = self;
    v33 = buf;
    dispatch_source_set_event_handler(v20, handler);
    if (a6)
    {
      *a6 = *(v35 + 5);
    }

    dispatch_source_set_timer(v20, 0, 0x3B9ACA00uLL, 0);
    dispatch_resume(v20);
    v22 = [(VGHRTFPostProcessor *)self->_postProcessor processCaptureUpdateData:v21 error:a6];
    dispatch_suspend(v20);
    dispatch_source_cancel(v20);
    dispatch_resume(v20);
    if (v22)
    {
      v23 = [[VGHRTFUpdateData alloc] initEmpty];
      [v23 setCaptureUpdateData:v21];
      [v23 setStep:3];
      [v23 setPostProcessUpdateData:v22];
      v24 = [(VGHRTFSessionConfig *)self->_config delegate];
      [v24 updateWithData:v23 error:a6];

      v25 = __VGLogSharedInstance();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *v29 = 0;
        _os_log_impl(&dword_270F06000, v25, OS_LOG_TYPE_DEBUG, " Successfully completed post-processing ", v29, 2u);
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

      vg::hrtf::setError(a6, @"Failed to run post-processing.");
      v23 = [[VGHRTFUpdateData alloc] initEmpty];
      [v23 setCaptureUpdateData:v21];
      [v23 setStep:3];
      v25 = [[VGHRTFPostProcessUpdateData alloc] initEmpty];
      [v25 setState:1];
      [v25 setResult:0];
      [v23 setPostProcessUpdateData:v25];
      v27 = [(VGHRTFSessionConfig *)self->_config delegate];
      [v27 updateWithData:v23 error:a6];
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

- (BOOL)processCaptureData:(id)a3 faceData:(id)a4 userData:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = atomic_exchange(&self->_processing.__a_.__a_value, 1u);
  if (v13)
  {
    vg::hrtf::setError(a6, @"Dropped this frame while still processing a previous frame.");
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
    v18 = v10;
    v19 = v11;
    v20 = v12;
    v21 = &v22;
    dispatch_group_async(processGroup, processQueue, block);
    if (a6)
    {
      *a6 = v23[5];
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

- (BOOL)waitWithError:(id *)a3
{
  v4 = dispatch_group_wait(self->_processGroup, 0xFFFFFFFFFFFFFFFFLL);
  if (v4)
  {
    vg::hrtf::setError(a3, @"HRTF session sync failed.");
  }

  return v4 == 0;
}

@end
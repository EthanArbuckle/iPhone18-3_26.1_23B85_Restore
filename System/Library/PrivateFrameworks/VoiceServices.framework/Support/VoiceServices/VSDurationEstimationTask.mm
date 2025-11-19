@interface VSDurationEstimationTask
+ (id)shortTermCachedEngineForVoice:(id)a3 voiceResource:(id)a4;
+ (id)shortTermCachedEngines;
- (VSDurationEstimationTask)init;
- (VSDurationEstimationTask)initWithRequest:(id)a3;
- (void)cancel;
- (void)main;
@end

@implementation VSDurationEstimationTask

- (void)cancel
{
  v3 = [(VSDurationEstimationTask *)self deviceCore];
  [v3 cancel];

  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"VoiceServicesErrorDomain" code:400 userInfo:MEMORY[0x277CBEC10]];
  [(VSDurationEstimationTask *)self setError:v4];
}

- (void)main
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = [(VSDurationEstimationTask *)self deviceCore];
  v4 = [v3 selectedVoice];
  v5 = [(VSDurationEstimationTask *)self deviceCore];
  v6 = [v5 selectedVoiceResource];
  v7 = [VSDurationEstimationTask shortTermCachedEngineForVoice:v4 voiceResource:v6];
  v8 = [(VSDurationEstimationTask *)self deviceCore];
  [v8 setEngine:v7];

  v9 = [(VSDurationEstimationTask *)self deviceCore];
  v10 = [v9 engine];

  if (!v10)
  {
    v11 = [MEMORY[0x277D79950] sharedManager];
    v12 = [(VSDurationEstimationTask *)self request];
    v13 = [v12 languageCode];
    v14 = [(VSDurationEstimationTask *)self request];
    v15 = [v14 voiceName];
    v16 = [v11 selectVoiceForLang:v13 name:v15 type:1 gender:0 footprint:1];

    v17 = objc_alloc(MEMORY[0x277D79990]);
    v18 = [v16 voicePath];
    v19 = [v17 initWithVoicePath:v18 resourcePath:0];
    v20 = [(VSDurationEstimationTask *)self deviceCore];
    [v20 setEngine:v19];
  }

  v21 = [(VSDurationEstimationTask *)self deviceCore];
  v22 = [v21 engine];

  if (!v22)
  {
    v28 = VSGetLogDefault();
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
LABEL_10:

      goto LABEL_11;
    }

    v50 = [(VSDurationEstimationTask *)self request];
    *buf = 138412290;
    v54 = *&v50;
    _os_log_error_impl(&dword_2727E4000, v28, OS_LOG_TYPE_ERROR, "Unable to create engine for request %@", buf, 0xCu);
LABEL_20:

    goto LABEL_10;
  }

  v23 = [(VSDurationEstimationTask *)self deviceCore];
  [v23 start];

  if (([(VSDurationEstimationTask *)self isCancelled]& 1) != 0)
  {
LABEL_11:
    v29 = *MEMORY[0x277D85DE8];
    return;
  }

  v24 = [(VSDurationEstimationTask *)self deviceCore];
  v25 = [v24 error];

  if (!v25)
  {
    v30 = [(VSDurationEstimationTask *)self deviceCore];
    v31 = [v30 engine];

    if (v31)
    {
      v32 = MEMORY[0x277CCACA8];
      v33 = [(VSDurationEstimationTask *)self deviceCore];
      v34 = [v33 selectedVoice];
      v35 = [v34 key];
      v36 = [(VSDurationEstimationTask *)self deviceCore];
      v37 = [v36 selectedVoiceResource];
      v38 = [v37 key];
      v39 = [v32 stringWithFormat:@"cached_engine_%@_%@", v35, v38];

      v40 = +[VSDurationEstimationTask shortTermCachedEngines];
      v41 = [(VSDurationEstimationTask *)self deviceCore];
      v42 = [v41 engine];
      [v40 setObject:v42 forKey:v39 timeToLive:30.0];
    }

    v43 = [(VSDurationEstimationTask *)self deviceCore];
    v44 = [v43 streamAudio];
    v45 = [(VSDurationEstimationTask *)self deviceCore];
    v46 = v45;
    if (v44)
    {
      [v45 streamAudio];
    }

    else
    {
      [v45 compressedAudio];
    }
    v47 = ;
    [v47 duration];
    self->_estimatedDuration = v48;

    v28 = VSGetLogDefault();
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      goto LABEL_10;
    }

    estimatedDuration = self->_estimatedDuration;
    v50 = [(VSDurationEstimationTask *)self request];
    v51 = [v50 utterance];
    *buf = 134218242;
    v54 = estimatedDuration;
    v55 = 2112;
    v56 = v51;
    _os_log_impl(&dword_2727E4000, v28, OS_LOG_TYPE_INFO, "Estimated duration: %.2f, for utterance: %@", buf, 0x16u);

    goto LABEL_20;
  }

  self->_estimatedDuration = 0.0;
  v52 = [(VSDurationEstimationTask *)self deviceCore];
  v26 = [v52 error];
  [(VSDurationEstimationTask *)self setError:v26];

  v27 = *MEMORY[0x277D85DE8];
}

- (VSDurationEstimationTask)initWithRequest:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v19.receiver = self;
  v19.super_class = VSDurationEstimationTask;
  v6 = [(VSDurationEstimationTask *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, a3);
    v8 = objc_alloc_init(MEMORY[0x277D79938]);
    instrumentMetrics = v7->_instrumentMetrics;
    v7->_instrumentMetrics = v8;

    if ([v5 requestCreatedTimestamp])
    {
      v10 = [v5 requestCreatedTimestamp];
    }

    else
    {
      v11 = VSGetLogDefault();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2727E4000, v11, OS_LOG_TYPE_INFO, "Using timestamp inside voiced for Estimation task", buf, 2u);
      }

      v10 = mach_absolute_time();
    }

    [(VSInstrumentMetrics *)v7->_instrumentMetrics setRequestCreatedTimestamp:v10];
    v12 = VSGetLogDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [(VSDurationEstimationTask *)v7 instrumentMetrics];
      v14 = [v13 requestCreatedTimestamp];
      *buf = 134217984;
      v21 = v14;
      _os_log_impl(&dword_2727E4000, v12, OS_LOG_TYPE_INFO, "Created Estimation task %llu", buf, 0xCu);
    }

    v15 = [[VSDeviceTTSCore alloc] initWithRequest:v5];
    deviceCore = v7->_deviceCore;
    v7->_deviceCore = v15;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v7;
}

- (VSDurationEstimationTask)init
  v2 = {;
  objc_exception_throw(v2);
}

+ (id)shortTermCachedEngineForVoice:(id)a3 voiceResource:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[VSDurationEstimationTask shortTermCachedEngines];
  v8 = MEMORY[0x277CCACA8];
  v9 = [v6 key];

  v10 = [v5 key];

  v11 = [v8 stringWithFormat:@"cached_engine_%@_%@", v9, v10];

  v12 = [v7 objectForKey:v11];

  return v12;
}

+ (id)shortTermCachedEngines
{
  if (shortTermCachedEngines_onceToken != -1)
  {
    dispatch_once(&shortTermCachedEngines_onceToken, &__block_literal_global_135);
  }

  v3 = shortTermCachedEngines_shortTermCachedEngines;

  return v3;
}

uint64_t __50__VSDurationEstimationTask_shortTermCachedEngines__block_invoke()
{
  shortTermCachedEngines_shortTermCachedEngines = objc_alloc_init(VSShortTermCache);

  return MEMORY[0x2821F96F8]();
}

@end
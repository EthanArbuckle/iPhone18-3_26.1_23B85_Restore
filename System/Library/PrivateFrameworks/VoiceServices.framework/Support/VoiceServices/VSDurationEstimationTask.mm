@interface VSDurationEstimationTask
+ (id)shortTermCachedEngineForVoice:(id)voice voiceResource:(id)resource;
+ (id)shortTermCachedEngines;
- (VSDurationEstimationTask)initWithRequest:(id)request;
- (void)cancel;
- (void)main;
@end

@implementation VSDurationEstimationTask

- (void)cancel
{
  deviceCore = [(VSDurationEstimationTask *)self deviceCore];
  [deviceCore cancel];

  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"VoiceServicesErrorDomain" code:400 userInfo:MEMORY[0x277CBEC10]];
  [(VSDurationEstimationTask *)self setError:v4];
}

- (void)main
{
  v57 = *MEMORY[0x277D85DE8];
  deviceCore = [(VSDurationEstimationTask *)self deviceCore];
  selectedVoice = [deviceCore selectedVoice];
  deviceCore2 = [(VSDurationEstimationTask *)self deviceCore];
  selectedVoiceResource = [deviceCore2 selectedVoiceResource];
  v7 = [VSDurationEstimationTask shortTermCachedEngineForVoice:selectedVoice voiceResource:selectedVoiceResource];
  deviceCore3 = [(VSDurationEstimationTask *)self deviceCore];
  [deviceCore3 setEngine:v7];

  deviceCore4 = [(VSDurationEstimationTask *)self deviceCore];
  engine = [deviceCore4 engine];

  if (!engine)
  {
    mEMORY[0x277D79950] = [MEMORY[0x277D79950] sharedManager];
    request = [(VSDurationEstimationTask *)self request];
    languageCode = [request languageCode];
    request2 = [(VSDurationEstimationTask *)self request];
    voiceName = [request2 voiceName];
    v16 = [mEMORY[0x277D79950] selectVoiceForLang:languageCode name:voiceName type:1 gender:0 footprint:1];

    v17 = objc_alloc(MEMORY[0x277D79990]);
    voicePath = [v16 voicePath];
    v19 = [v17 initWithVoicePath:voicePath resourcePath:0];
    deviceCore5 = [(VSDurationEstimationTask *)self deviceCore];
    [deviceCore5 setEngine:v19];
  }

  deviceCore6 = [(VSDurationEstimationTask *)self deviceCore];
  engine2 = [deviceCore6 engine];

  if (!engine2)
  {
    v28 = VSGetLogDefault();
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
LABEL_10:

      goto LABEL_11;
    }

    request3 = [(VSDurationEstimationTask *)self request];
    *buf = 138412290;
    v54 = *&request3;
    _os_log_error_impl(&dword_2727E4000, v28, OS_LOG_TYPE_ERROR, "Unable to create engine for request %@", buf, 0xCu);
LABEL_20:

    goto LABEL_10;
  }

  deviceCore7 = [(VSDurationEstimationTask *)self deviceCore];
  [deviceCore7 start];

  if (([(VSDurationEstimationTask *)self isCancelled]& 1) != 0)
  {
LABEL_11:
    v29 = *MEMORY[0x277D85DE8];
    return;
  }

  deviceCore8 = [(VSDurationEstimationTask *)self deviceCore];
  error = [deviceCore8 error];

  if (!error)
  {
    deviceCore9 = [(VSDurationEstimationTask *)self deviceCore];
    engine3 = [deviceCore9 engine];

    if (engine3)
    {
      v32 = MEMORY[0x277CCACA8];
      deviceCore10 = [(VSDurationEstimationTask *)self deviceCore];
      selectedVoice2 = [deviceCore10 selectedVoice];
      v35 = [selectedVoice2 key];
      deviceCore11 = [(VSDurationEstimationTask *)self deviceCore];
      selectedVoiceResource2 = [deviceCore11 selectedVoiceResource];
      v38 = [selectedVoiceResource2 key];
      v39 = [v32 stringWithFormat:@"cached_engine_%@_%@", v35, v38];

      v40 = +[VSDurationEstimationTask shortTermCachedEngines];
      deviceCore12 = [(VSDurationEstimationTask *)self deviceCore];
      engine4 = [deviceCore12 engine];
      [v40 setObject:engine4 forKey:v39 timeToLive:30.0];
    }

    deviceCore13 = [(VSDurationEstimationTask *)self deviceCore];
    streamAudio = [deviceCore13 streamAudio];
    deviceCore14 = [(VSDurationEstimationTask *)self deviceCore];
    v46 = deviceCore14;
    if (streamAudio)
    {
      [deviceCore14 streamAudio];
    }

    else
    {
      [deviceCore14 compressedAudio];
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
    request3 = [(VSDurationEstimationTask *)self request];
    utterance = [request3 utterance];
    *buf = 134218242;
    v54 = estimatedDuration;
    v55 = 2112;
    v56 = utterance;
    _os_log_impl(&dword_2727E4000, v28, OS_LOG_TYPE_INFO, "Estimated duration: %.2f, for utterance: %@", buf, 0x16u);

    goto LABEL_20;
  }

  self->_estimatedDuration = 0.0;
  deviceCore15 = [(VSDurationEstimationTask *)self deviceCore];
  error2 = [deviceCore15 error];
  [(VSDurationEstimationTask *)self setError:error2];

  v27 = *MEMORY[0x277D85DE8];
}

- (VSDurationEstimationTask)initWithRequest:(id)request
{
  v22 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v19.receiver = self;
  v19.super_class = VSDurationEstimationTask;
  v6 = [(VSDurationEstimationTask *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, request);
    v8 = objc_alloc_init(MEMORY[0x277D79938]);
    instrumentMetrics = v7->_instrumentMetrics;
    v7->_instrumentMetrics = v8;

    if ([requestCopy requestCreatedTimestamp])
    {
      requestCreatedTimestamp = [requestCopy requestCreatedTimestamp];
    }

    else
    {
      v11 = VSGetLogDefault();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2727E4000, v11, OS_LOG_TYPE_INFO, "Using timestamp inside voiced for Estimation task", buf, 2u);
      }

      requestCreatedTimestamp = mach_absolute_time();
    }

    [(VSInstrumentMetrics *)v7->_instrumentMetrics setRequestCreatedTimestamp:requestCreatedTimestamp];
    v12 = VSGetLogDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      instrumentMetrics = [(VSDurationEstimationTask *)v7 instrumentMetrics];
      requestCreatedTimestamp2 = [instrumentMetrics requestCreatedTimestamp];
      *buf = 134217984;
      v21 = requestCreatedTimestamp2;
      _os_log_impl(&dword_2727E4000, v12, OS_LOG_TYPE_INFO, "Created Estimation task %llu", buf, 0xCu);
    }

    v15 = [[VSDeviceTTSCore alloc] initWithRequest:requestCopy];
    deviceCore = v7->_deviceCore;
    v7->_deviceCore = v15;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (id)shortTermCachedEngineForVoice:(id)voice voiceResource:(id)resource
{
  resourceCopy = resource;
  voiceCopy = voice;
  v7 = +[VSDurationEstimationTask shortTermCachedEngines];
  v8 = MEMORY[0x277CCACA8];
  v9 = [voiceCopy key];

  v10 = [resourceCopy key];

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
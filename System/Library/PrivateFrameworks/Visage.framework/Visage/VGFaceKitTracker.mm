@interface VGFaceKitTracker
- (BOOL)processWithCaptureData:(id)data callback:(id)callback;
- (VGFaceKitTracker)initWithOptions:(const VGFaceKitTrackerOptions *)options;
- (id)buildInputDictionaryWithCaptureData:(id)data callback:(id)callback;
- (void)dealloc;
@end

@implementation VGFaceKitTracker

- (VGFaceKitTracker)initWithOptions:(const VGFaceKitTrackerOptions *)options
{
  v15 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = VGFaceKitTracker;
  v4 = [(VGFaceKitTracker *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_options = *options;
    v6 = objc_opt_new();
    [v6 setObject:&unk_2880F5EC0 forKeyedSubscript:*MEMORY[0x277CECEA0]];
    [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277CECF00]];
    if (v5->_options.useInternalFaceDetector)
    {
      [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CECEF8]];
    }

    if (v5->_options.forceCPU)
    {
      [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CECE70]];
    }

    v7 = CVAFaceTrackingCreate();
    if (v7)
    {
      v8 = __VGLogSharedInstance();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v14 = v7;
        _os_log_impl(&dword_270F06000, v8, OS_LOG_TYPE_ERROR, " Error initializing FaceKit: %d ", buf, 8u);
      }
    }

    else if ([(VGFaceKitTracker *)v5 loadFaceKitSemantics]&& [(VGFaceKitTracker *)v5 loadQuadFaceKitSemantics])
    {
      v9 = v5;
LABEL_15:

      goto LABEL_16;
    }

    v9 = 0;
    goto LABEL_15;
  }

  v9 = 0;
LABEL_16:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)dealloc
{
  faceKit = self->_faceKit;
  if (faceKit)
  {
    CFRelease(faceKit);
    self->_faceKit = 0;
  }

  semantics = self->_semantics;
  if (semantics)
  {
    CFRelease(semantics);
    self->_semantics = 0;
  }

  quadSemantics = self->_quadSemantics;
  if (quadSemantics)
  {
    CFRelease(quadSemantics);
    self->_quadSemantics = 0;
  }

  v6.receiver = self;
  v6.super_class = VGFaceKitTracker;
  [(VGFaceKitTracker *)&v6 dealloc];
}

- (id)buildInputDictionaryWithCaptureData:(id)data callback:(id)callback
{
  v59[2] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  callbackCopy = callback;
  v58[0] = *MEMORY[0x277CECEA8];
  v7 = [MEMORY[0x277CBEA60] vg_arrayWithRowMajorNumbersFromFloat3x3:{*MEMORY[0x277D860B0], *(MEMORY[0x277D860B0] + 16), *(MEMORY[0x277D860B0] + 32)}];
  v58[1] = *MEMORY[0x277CECEE8];
  v59[0] = v7;
  v59[1] = &unk_2880F5D58;
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:2];

  v55 = *MEMORY[0x277CECE88];
  v8 = v55;
  v9 = MEMORY[0x277CBEA60];
  [dataCopy videoIntrinsics];
  v10 = [v9 vg_arrayWithRowMajorNumbersFromFloat3x3:?];
  v56 = *MEMORY[0x277CECE58];
  v11 = v56;
  v57[0] = v10;
  v57[1] = v46;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:&v55 count:2];

  v53[0] = v8;
  v12 = MEMORY[0x277CBEA60];
  [dataCopy depthIntrinsics];
  v13 = [v12 vg_arrayWithRowMajorNumbersFromFloat3x3:?];
  v53[1] = v11;
  v54[0] = v13;
  v54[1] = v46;
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:2];

  if (self->_options.useInternalFaceDetector)
  {
    faceID = 0;
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    v18 = 0.0;
  }

  else
  {
    face = [dataCopy face];
    [face bounds];
    v18 = v20;
    v17 = v21;
    v15 = v22;
    v16 = v23;

    face2 = [dataCopy face];
    faceID = [face2 faceID];
  }

  v61.origin.x = v18;
  v61.origin.y = v17;
  v61.size.width = v15;
  v61.size.height = v16;
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v61);
  v51[0] = *MEMORY[0x277CECEC8];
  if (dataCopy)
  {
    [dataCopy timestamp];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v26 = CMTimeCopyAsDictionary(&time, 0);
  v27 = *MEMORY[0x277CECDC0];
  v52[0] = v26;
  v52[1] = v44;
  v28 = *MEMORY[0x277CECDD0];
  v51[1] = v27;
  v51[2] = v28;
  yuvRectified = [dataCopy yuvRectified];
  v30 = *MEMORY[0x277CECDC8];
  v52[2] = yuvRectified;
  v52[3] = v43;
  v31 = *MEMORY[0x277CECDE8];
  v51[3] = v30;
  v51[4] = v31;
  depth = [dataCopy depth];
  v33 = *MEMORY[0x277CECE08];
  v52[4] = depth;
  v52[5] = &unk_2880F5CC8;
  v34 = *MEMORY[0x277CECE68];
  v35 = MEMORY[0x277CBEC38];
  v51[5] = v33;
  v51[6] = v34;
  v52[6] = MEMORY[0x277CBEC38];
  v51[7] = *MEMORY[0x277CECDB8];
  v36 = MEMORY[0x2743B9AA0](callbackCopy);
  v52[7] = v36;
  v51[8] = *MEMORY[0x277CECE30];
  v48[0] = *MEMORY[0x277CECE18];
  v37 = [MEMORY[0x277CCABB0] numberWithInteger:faceID];
  v48[1] = *MEMORY[0x277CECE28];
  v49[0] = v37;
  v49[1] = DictionaryRepresentation;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];
  v50 = v38;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
  v51[9] = *MEMORY[0x277CECD98];
  v52[8] = v39;
  v52[9] = v35;
  v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:10];

  v41 = *MEMORY[0x277D85DE8];

  return v40;
}

- (BOOL)processWithCaptureData:(id)data callback:(id)callback
{
  v20 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  callbackCopy = callback;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __52__VGFaceKitTracker_processWithCaptureData_callback___block_invoke;
  v16[3] = &unk_279E28E58;
  v8 = callbackCopy;
  v17 = v8;
  v9 = MEMORY[0x2743B9AA0](v16);
  v10 = [(VGFaceKitTracker *)self buildInputDictionaryWithCaptureData:dataCopy callback:v9];
  faceKit = self->_faceKit;
  v12 = CVAFaceTrackingProcess();
  if (v12)
  {
    v13 = __VGLogSharedInstance();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v19 = v12;
      _os_log_impl(&dword_270F06000, v13, OS_LOG_TYPE_ERROR, " Error running face kit: %d ", buf, 8u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12 == 0;
}

@end
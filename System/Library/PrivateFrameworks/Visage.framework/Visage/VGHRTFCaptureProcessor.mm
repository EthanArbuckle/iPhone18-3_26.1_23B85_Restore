@interface VGHRTFCaptureProcessor
- (VGHRTFCaptureProcessor)initWithConfig:(id)config error:(id *)error;
- (id)processCaptureData:(id)data faceData:(id)faceData error:(id *)error;
- (id)processSingleStepCaptureData:(id)data faceData:(id)faceData error:(id *)error;
@end

@implementation VGHRTFCaptureProcessor

- (VGHRTFCaptureProcessor)initWithConfig:(id)config error:(id *)error
{
  v48[2] = *MEMORY[0x277D85DE8];
  configCopy = config;
  v45.receiver = self;
  v45.super_class = VGHRTFCaptureProcessor;
  v8 = [(VGHRTFCaptureProcessor *)&v45 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_config, config);
    v10 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.visage"];
    if ([v10 BOOLForKey:@"useLocalHRTFModels"])
    {
      v11 = __VGLogSharedInstance();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_270F06000, v11, OS_LOG_TYPE_INFO, " Using hrtf models from the Visage framework ", buf, 2u);
      }

      vg_bundle = [MEMORY[0x277CCA8D8] vg_bundle];
      resourcePath = [vg_bundle resourcePath];
      modelsRootPath = v9->_modelsRootPath;
      v9->_modelsRootPath = resourcePath;
    }

    else
    {
      modelsRootPath = [(VGHRTFSessionConfig *)v9->_config modelsRootPath];
      v17 = modelsRootPath == 0;

      if (v17)
      {
        v42 = __VGLogSharedInstance();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_270F06000, v42, OS_LOG_TYPE_ERROR, " No ear detection models root path received! ", buf, 2u);
        }

        v34 = @"Failed to initialize VGHRTFCaptureProcessor with nil models path";
        goto LABEL_26;
      }

      v18 = MEMORY[0x277CCACA8];
      vg_bundle = [(VGHRTFSessionConfig *)v9->_config modelsRootPath];
      v48[0] = vg_bundle;
      v48[1] = @"EarDetectionModels";
      modelsRootPath = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
      v19 = [v18 pathWithComponents:modelsRootPath];
      v20 = v9->_modelsRootPath;
      v9->_modelsRootPath = v19;
    }

    v21 = __VGLogSharedInstance();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = v9->_modelsRootPath;
      *buf = 138412290;
      v47 = v22;
      _os_log_impl(&dword_270F06000, v21, OS_LOG_TYPE_INFO, " Using EarDetectionModels at path: %@ ", buf, 0xCu);
    }

    v23 = [VGHRTFFaceCaptureProcessor alloc];
    debugDataRootPath = [(VGHRTFSessionConfig *)v9->_config debugDataRootPath];
    v25 = [(VGHRTFFaceCaptureProcessor *)v23 initWithDebugDataPath:debugDataRootPath];
    faceCapture = v9->_faceCapture;
    v9->_faceCapture = v25;

    if (v9->_faceCapture)
    {
      faceResults = v9->_faceResults;
      v9->_faceResults = 0;

      v28 = _os_feature_enabled_impl();
      v9->_singleStepEnrollment = v28;
      if (v28)
      {
        v29 = __VGLogSharedInstance();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_270F06000, v29, OS_LOG_TYPE_DEFAULT, " HRTF enrollment with single step protocol ", buf, 2u);
        }

        v30 = [VGHRTFEarPCACaptureProcessor alloc];
        debugDataRootPath2 = [(VGHRTFSessionConfig *)v9->_config debugDataRootPath];
        v32 = [(VGHRTFEarPCACaptureProcessor *)v30 initWithDebugDataPath:debugDataRootPath2 withModelsRootPath:v9->_modelsRootPath];
        earPCACapture = v9->_earPCACapture;
        v9->_earPCACapture = v32;

        if (!v9->_earPCACapture)
        {
          v34 = @"Failed to initialize VGHRTFEarPCACaptureProcessor";
LABEL_26:
          vg::hrtf::setError(error, v34);
          v15 = 0;
          goto LABEL_27;
        }
      }

      else
      {
        v35 = __VGLogSharedInstance();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_270F06000, v35, OS_LOG_TYPE_DEFAULT, " HRTF enrollment with three step protocol ", buf, 2u);
        }

        v36 = [VGHRTFEarCaptureProcessor alloc];
        debugDataRootPath3 = [(VGHRTFSessionConfig *)v9->_config debugDataRootPath];
        v38 = [(VGHRTFEarCaptureProcessor *)v36 initWithDebugDataPath:debugDataRootPath3 withModelsRootPath:v9->_modelsRootPath];
        earCapture = v9->_earCapture;
        v9->_earCapture = v38;

        if (!v9->_earCapture)
        {
          v34 = @"Failed to initialize VGHRTFEarCaptureProcessor";
          goto LABEL_26;
        }
      }

      atomic_store(0, &v9->_faceCaptureFinished);
      initEmpty = [[VGHRTFCaptureUpdateData alloc] initEmpty];
      updateData = v9->_updateData;
      v9->_updateData = initEmpty;

      [(VGHRTFCaptureUpdateData *)v9->_updateData setFaceCaptureUpdateData:0];
      [(VGHRTFCaptureUpdateData *)v9->_updateData setEarCaptureUpdateData:0];
      v15 = v9;
LABEL_27:

      goto LABEL_28;
    }

    v34 = @"Failed to initialize VGHRTFFaceCaptureProcessor";
    goto LABEL_26;
  }

  vg::hrtf::setError(error, @"Failed to initialize VGHRTFCaptureProcessor.");
  v15 = 0;
LABEL_28:

  v43 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)processCaptureData:(id)data faceData:(id)faceData error:(id *)error
{
  dataCopy = data;
  faceDataCopy = faceData;
  if (self->_singleStepEnrollment)
  {
    initEmpty = [(VGHRTFCaptureProcessor *)self processSingleStepCaptureData:dataCopy faceData:faceDataCopy error:error];
  }

  else
  {
    initEmpty = [[VGHRTFCaptureUpdateData alloc] initEmpty];
    [initEmpty setCaptureData:dataCopy];
    [initEmpty setFaceData:faceDataCopy];
    [initEmpty setFaceCaptureUpdateData:0];
    [initEmpty setEarCaptureUpdateData:0];
    v12 = atomic_load(&self->_faceCaptureFinished);
    if (v12)
    {
      [initEmpty setState:1];
      [initEmpty setFaceCaptureUpdateData:self->_faceResults];
      v13 = [(VGHRTFEarCaptureProcessor *)self->_earCapture processCaptureData:dataCopy faceData:faceDataCopy];
      [initEmpty setEarCaptureUpdateData:v13];

      earCaptureUpdateData = [initEmpty earCaptureUpdateData];
      progressType = [earCaptureUpdateData progressType];

      if (progressType == 3)
      {
        [initEmpty setState:2];
      }
    }

    else
    {
      [initEmpty setState:0];
      v16 = [(VGHRTFFaceCaptureProcessor *)self->_faceCapture processCaptureData:dataCopy faceData:faceDataCopy];
      [initEmpty setFaceCaptureUpdateData:v16];

      faceCaptureUpdateData = [initEmpty faceCaptureUpdateData];
      progressType2 = [faceCaptureUpdateData progressType];

      if (progressType2 == 4)
      {
        faceCapture = self->_faceCapture;
        self->_faceCapture = 0;

        faceCaptureUpdateData2 = [initEmpty faceCaptureUpdateData];
        faceResults = self->_faceResults;
        self->_faceResults = faceCaptureUpdateData2;

        atomic_store(1u, &self->_faceCaptureFinished);
      }
    }
  }

  return initEmpty;
}

- (id)processSingleStepCaptureData:(id)data faceData:(id)faceData error:(id *)error
{
  v107 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  faceDataCopy = faceData;
  [(VGHRTFCaptureUpdateData *)self->_updateData setCaptureData:dataCopy];
  [(VGHRTFCaptureUpdateData *)self->_updateData setFaceData:faceDataCopy];
  v7 = atomic_load(&self->_faceCaptureFinished);
  selfCopy = self;
  updateData = self->_updateData;
  if (v7)
  {
    [(VGHRTFCaptureUpdateData *)updateData setState:2];
    selfCopy2 = self;
  }

  else
  {
    [(VGHRTFCaptureUpdateData *)updateData setState:0];
    v10 = [(VGHRTFFaceCaptureProcessor *)self->_faceCapture processCaptureData:dataCopy faceData:faceDataCopy];
    [(VGHRTFCaptureUpdateData *)self->_updateData setFaceCaptureUpdateData:v10];

    faceCaptureUpdateData = [(VGHRTFCaptureUpdateData *)self->_updateData faceCaptureUpdateData];
    trackedData = [faceCaptureUpdateData trackedData];
    yawAngle = [trackedData yawAngle];
    [faceDataCopy setYawAngle:yawAngle];

    v14 = [(VGHRTFEarPCACaptureProcessor *)selfCopy->_earPCACapture processCaptureData:dataCopy faceData:faceDataCopy];
    [(VGHRTFCaptureUpdateData *)selfCopy->_updateData setEarCaptureUpdateData:v14];

    v90 = objc_opt_new();
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    earCaptureUpdateData = [(VGHRTFCaptureUpdateData *)selfCopy->_updateData earCaptureUpdateData];
    rightEarStatusList = [earCaptureUpdateData rightEarStatusList];
    allKeys = [rightEarStatusList allKeys];
    v18 = [allKeys sortedArrayUsingSelector:?];

    obj = v18;
    v19 = [v18 countByEnumeratingWithState:&v100 objects:v106 count:16];
    v20 = 0;
    v21 = v19;
    if (v19)
    {
      v22 = *v101;
      v23 = 0.0;
      do
      {
        v24 = 0;
        do
        {
          if (*v101 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v100 + 1) + 8 * v24);
          earCaptureUpdateData2 = [(VGHRTFCaptureUpdateData *)selfCopy->_updateData earCaptureUpdateData];
          rightEarStatusList2 = [earCaptureUpdateData2 rightEarStatusList];
          v28 = [rightEarStatusList2 objectForKeyedSubscript:v25];
          bOOLValue = [v28 BOOLValue];

          earCaptureUpdateData3 = [(VGHRTFCaptureUpdateData *)selfCopy->_updateData earCaptureUpdateData];
          rightEarStatusList3 = [earCaptureUpdateData3 rightEarStatusList];
          v32 = [rightEarStatusList3 objectForKeyedSubscript:v25];
          v33 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
          [v90 setObject:v32 forKeyedSubscript:v33];

          v23 = v23 + 1.0;
          v20 += bOOLValue;
          ++v24;
        }

        while (v21 != v24);
        v21 = [obj countByEnumeratingWithState:&v100 objects:v106 count:16];
      }

      while (v21);
    }

    else
    {
      v23 = 0.0;
    }

    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    faceCaptureUpdateData2 = [(VGHRTFCaptureUpdateData *)selfCopy->_updateData faceCaptureUpdateData];
    poseStatusList = [faceCaptureUpdateData2 poseStatusList];
    v36 = [poseStatusList objectAtIndexedSubscript:0];
    allKeys2 = [v36 allKeys];
    obja = [allKeys2 sortedArrayUsingSelector:sel_compare_];

    v38 = [obja countByEnumeratingWithState:&v96 objects:v105 count:16];
    if (v38)
    {
      v39 = *v97;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v97 != v39)
          {
            objc_enumerationMutation(obja);
          }

          v41 = *(*(&v96 + 1) + 8 * i);
          faceCaptureUpdateData3 = [(VGHRTFCaptureUpdateData *)selfCopy->_updateData faceCaptureUpdateData];
          poseStatusList2 = [faceCaptureUpdateData3 poseStatusList];
          v44 = [poseStatusList2 objectAtIndexedSubscript:0];
          v45 = [v44 objectForKeyedSubscript:v41];
          bOOLValue2 = [v45 BOOLValue];

          faceCaptureUpdateData4 = [(VGHRTFCaptureUpdateData *)selfCopy->_updateData faceCaptureUpdateData];
          poseStatusList3 = [faceCaptureUpdateData4 poseStatusList];
          v49 = [poseStatusList3 objectAtIndexedSubscript:0];
          v50 = [v49 objectForKeyedSubscript:v41];
          v51 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
          [v90 setObject:v50 forKeyedSubscript:v51];

          v23 = v23 + 1.0;
          v20 += bOOLValue2;
        }

        v38 = [obja countByEnumeratingWithState:&v96 objects:v105 count:16];
      }

      while (v38);
    }

    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    earCaptureUpdateData4 = [(VGHRTFCaptureUpdateData *)selfCopy->_updateData earCaptureUpdateData];
    leftEarStatusList = [earCaptureUpdateData4 leftEarStatusList];
    allKeys3 = [leftEarStatusList allKeys];
    v55 = [allKeys3 sortedArrayUsingSelector:sel_compare_];

    v56 = [v55 countByEnumeratingWithState:&v92 objects:v104 count:16];
    if (v56)
    {
      v57 = *v93;
      do
      {
        for (j = 0; j != v56; ++j)
        {
          if (*v93 != v57)
          {
            objc_enumerationMutation(v55);
          }

          v59 = *(*(&v92 + 1) + 8 * j);
          earCaptureUpdateData5 = [(VGHRTFCaptureUpdateData *)selfCopy->_updateData earCaptureUpdateData];
          leftEarStatusList2 = [earCaptureUpdateData5 leftEarStatusList];
          v62 = [leftEarStatusList2 objectForKeyedSubscript:v59];
          bOOLValue3 = [v62 BOOLValue];

          earCaptureUpdateData6 = [(VGHRTFCaptureUpdateData *)selfCopy->_updateData earCaptureUpdateData];
          leftEarStatusList3 = [earCaptureUpdateData6 leftEarStatusList];
          v66 = [leftEarStatusList3 objectForKeyedSubscript:v59];
          v67 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
          [v90 setObject:v66 forKeyedSubscript:v67];

          v23 = v23 + 1.0;
          v20 += bOOLValue3;
        }

        v56 = [v55 countByEnumeratingWithState:&v92 objects:v104 count:16];
      }

      while (v56);
    }

    v68 = [v90 count];
    initEmpty = [[VGHRTFFaceCaptureUpdateData alloc] initEmpty];
    v70 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v90, 0}];
    [initEmpty setPoseStatusList:v70];

    faceCaptureUpdateData5 = [(VGHRTFCaptureUpdateData *)selfCopy->_updateData faceCaptureUpdateData];
    [initEmpty setProgressType:{objc_msgSend(faceCaptureUpdateData5, "progressType")}];

    *&v72 = v20 / v68;
    [initEmpty setProgress:v72];
    faceCaptureUpdateData6 = [(VGHRTFCaptureUpdateData *)selfCopy->_updateData faceCaptureUpdateData];
    trackedData2 = [faceCaptureUpdateData6 trackedData];
    [initEmpty setTrackedData:trackedData2];

    faceCaptureUpdateData7 = [(VGHRTFCaptureUpdateData *)selfCopy->_updateData faceCaptureUpdateData];
    result = [faceCaptureUpdateData7 result];
    [initEmpty setResult:result];

    [(VGHRTFCaptureUpdateData *)selfCopy->_updateData setFaceCaptureUpdateData:initEmpty];
    progressType = [initEmpty progressType];
    earCaptureUpdateData7 = [(VGHRTFCaptureUpdateData *)selfCopy->_updateData earCaptureUpdateData];
    progressType2 = [earCaptureUpdateData7 progressType];

    if (progressType == 4 && progressType2 == 3)
    {
      faceCapture = selfCopy->_faceCapture;
      selfCopy->_faceCapture = 0;

      earPCACapture = selfCopy->_earPCACapture;
      selfCopy->_earPCACapture = 0;

      objc_storeStrong(&selfCopy->_faceResults, initEmpty);
      atomic_store(1u, &selfCopy->_faceCaptureFinished);
    }

    selfCopy2 = selfCopy;
  }

  v82 = selfCopy2->_updateData;
  v83 = v82;

  v84 = *MEMORY[0x277D85DE8];
  return v82;
}

@end
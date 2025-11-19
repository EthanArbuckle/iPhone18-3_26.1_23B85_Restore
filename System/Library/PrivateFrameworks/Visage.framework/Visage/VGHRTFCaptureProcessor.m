@interface VGHRTFCaptureProcessor
- (VGHRTFCaptureProcessor)initWithConfig:(id)a3 error:(id *)a4;
- (id)processCaptureData:(id)a3 faceData:(id)a4 error:(id *)a5;
- (id)processSingleStepCaptureData:(id)a3 faceData:(id)a4 error:(id *)a5;
@end

@implementation VGHRTFCaptureProcessor

- (VGHRTFCaptureProcessor)initWithConfig:(id)a3 error:(id *)a4
{
  v48[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v45.receiver = self;
  v45.super_class = VGHRTFCaptureProcessor;
  v8 = [(VGHRTFCaptureProcessor *)&v45 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_config, a3);
    v10 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.visage"];
    if ([v10 BOOLForKey:@"useLocalHRTFModels"])
    {
      v11 = __VGLogSharedInstance();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_270F06000, v11, OS_LOG_TYPE_INFO, " Using hrtf models from the Visage framework ", buf, 2u);
      }

      v12 = [MEMORY[0x277CCA8D8] vg_bundle];
      v13 = [v12 resourcePath];
      modelsRootPath = v9->_modelsRootPath;
      v9->_modelsRootPath = v13;
    }

    else
    {
      v16 = [(VGHRTFSessionConfig *)v9->_config modelsRootPath];
      v17 = v16 == 0;

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
      v12 = [(VGHRTFSessionConfig *)v9->_config modelsRootPath];
      v48[0] = v12;
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
    v24 = [(VGHRTFSessionConfig *)v9->_config debugDataRootPath];
    v25 = [(VGHRTFFaceCaptureProcessor *)v23 initWithDebugDataPath:v24];
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
        v31 = [(VGHRTFSessionConfig *)v9->_config debugDataRootPath];
        v32 = [(VGHRTFEarPCACaptureProcessor *)v30 initWithDebugDataPath:v31 withModelsRootPath:v9->_modelsRootPath];
        earPCACapture = v9->_earPCACapture;
        v9->_earPCACapture = v32;

        if (!v9->_earPCACapture)
        {
          v34 = @"Failed to initialize VGHRTFEarPCACaptureProcessor";
LABEL_26:
          vg::hrtf::setError(a4, v34);
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
        v37 = [(VGHRTFSessionConfig *)v9->_config debugDataRootPath];
        v38 = [(VGHRTFEarCaptureProcessor *)v36 initWithDebugDataPath:v37 withModelsRootPath:v9->_modelsRootPath];
        earCapture = v9->_earCapture;
        v9->_earCapture = v38;

        if (!v9->_earCapture)
        {
          v34 = @"Failed to initialize VGHRTFEarCaptureProcessor";
          goto LABEL_26;
        }
      }

      atomic_store(0, &v9->_faceCaptureFinished);
      v40 = [[VGHRTFCaptureUpdateData alloc] initEmpty];
      updateData = v9->_updateData;
      v9->_updateData = v40;

      [(VGHRTFCaptureUpdateData *)v9->_updateData setFaceCaptureUpdateData:0];
      [(VGHRTFCaptureUpdateData *)v9->_updateData setEarCaptureUpdateData:0];
      v15 = v9;
LABEL_27:

      goto LABEL_28;
    }

    v34 = @"Failed to initialize VGHRTFFaceCaptureProcessor";
    goto LABEL_26;
  }

  vg::hrtf::setError(a4, @"Failed to initialize VGHRTFCaptureProcessor.");
  v15 = 0;
LABEL_28:

  v43 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)processCaptureData:(id)a3 faceData:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (self->_singleStepEnrollment)
  {
    v10 = [(VGHRTFCaptureProcessor *)self processSingleStepCaptureData:v8 faceData:v9 error:a5];
  }

  else
  {
    v10 = [[VGHRTFCaptureUpdateData alloc] initEmpty];
    [v10 setCaptureData:v8];
    [v10 setFaceData:v9];
    [v10 setFaceCaptureUpdateData:0];
    [v10 setEarCaptureUpdateData:0];
    v12 = atomic_load(&self->_faceCaptureFinished);
    if (v12)
    {
      [v10 setState:1];
      [v10 setFaceCaptureUpdateData:self->_faceResults];
      v13 = [(VGHRTFEarCaptureProcessor *)self->_earCapture processCaptureData:v8 faceData:v9];
      [v10 setEarCaptureUpdateData:v13];

      v14 = [v10 earCaptureUpdateData];
      v15 = [v14 progressType];

      if (v15 == 3)
      {
        [v10 setState:2];
      }
    }

    else
    {
      [v10 setState:0];
      v16 = [(VGHRTFFaceCaptureProcessor *)self->_faceCapture processCaptureData:v8 faceData:v9];
      [v10 setFaceCaptureUpdateData:v16];

      v17 = [v10 faceCaptureUpdateData];
      v18 = [v17 progressType];

      if (v18 == 4)
      {
        faceCapture = self->_faceCapture;
        self->_faceCapture = 0;

        v20 = [v10 faceCaptureUpdateData];
        faceResults = self->_faceResults;
        self->_faceResults = v20;

        atomic_store(1u, &self->_faceCaptureFinished);
      }
    }
  }

  return v10;
}

- (id)processSingleStepCaptureData:(id)a3 faceData:(id)a4 error:(id *)a5
{
  v107 = *MEMORY[0x277D85DE8];
  v86 = a3;
  v87 = a4;
  [(VGHRTFCaptureUpdateData *)self->_updateData setCaptureData:v86];
  [(VGHRTFCaptureUpdateData *)self->_updateData setFaceData:v87];
  v7 = atomic_load(&self->_faceCaptureFinished);
  v91 = self;
  updateData = self->_updateData;
  if (v7)
  {
    [(VGHRTFCaptureUpdateData *)updateData setState:2];
    v9 = self;
  }

  else
  {
    [(VGHRTFCaptureUpdateData *)updateData setState:0];
    v10 = [(VGHRTFFaceCaptureProcessor *)self->_faceCapture processCaptureData:v86 faceData:v87];
    [(VGHRTFCaptureUpdateData *)self->_updateData setFaceCaptureUpdateData:v10];

    v11 = [(VGHRTFCaptureUpdateData *)self->_updateData faceCaptureUpdateData];
    v12 = [v11 trackedData];
    v13 = [v12 yawAngle];
    [v87 setYawAngle:v13];

    v14 = [(VGHRTFEarPCACaptureProcessor *)v91->_earPCACapture processCaptureData:v86 faceData:v87];
    [(VGHRTFCaptureUpdateData *)v91->_updateData setEarCaptureUpdateData:v14];

    v90 = objc_opt_new();
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v15 = [(VGHRTFCaptureUpdateData *)v91->_updateData earCaptureUpdateData];
    v16 = [v15 rightEarStatusList];
    v17 = [v16 allKeys];
    v18 = [v17 sortedArrayUsingSelector:?];

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
          v26 = [(VGHRTFCaptureUpdateData *)v91->_updateData earCaptureUpdateData];
          v27 = [v26 rightEarStatusList];
          v28 = [v27 objectForKeyedSubscript:v25];
          v29 = [v28 BOOLValue];

          v30 = [(VGHRTFCaptureUpdateData *)v91->_updateData earCaptureUpdateData];
          v31 = [v30 rightEarStatusList];
          v32 = [v31 objectForKeyedSubscript:v25];
          v33 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
          [v90 setObject:v32 forKeyedSubscript:v33];

          v23 = v23 + 1.0;
          v20 += v29;
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
    v34 = [(VGHRTFCaptureUpdateData *)v91->_updateData faceCaptureUpdateData];
    v35 = [v34 poseStatusList];
    v36 = [v35 objectAtIndexedSubscript:0];
    v37 = [v36 allKeys];
    obja = [v37 sortedArrayUsingSelector:sel_compare_];

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
          v42 = [(VGHRTFCaptureUpdateData *)v91->_updateData faceCaptureUpdateData];
          v43 = [v42 poseStatusList];
          v44 = [v43 objectAtIndexedSubscript:0];
          v45 = [v44 objectForKeyedSubscript:v41];
          v46 = [v45 BOOLValue];

          v47 = [(VGHRTFCaptureUpdateData *)v91->_updateData faceCaptureUpdateData];
          v48 = [v47 poseStatusList];
          v49 = [v48 objectAtIndexedSubscript:0];
          v50 = [v49 objectForKeyedSubscript:v41];
          v51 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
          [v90 setObject:v50 forKeyedSubscript:v51];

          v23 = v23 + 1.0;
          v20 += v46;
        }

        v38 = [obja countByEnumeratingWithState:&v96 objects:v105 count:16];
      }

      while (v38);
    }

    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v52 = [(VGHRTFCaptureUpdateData *)v91->_updateData earCaptureUpdateData];
    v53 = [v52 leftEarStatusList];
    v54 = [v53 allKeys];
    v55 = [v54 sortedArrayUsingSelector:sel_compare_];

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
          v60 = [(VGHRTFCaptureUpdateData *)v91->_updateData earCaptureUpdateData];
          v61 = [v60 leftEarStatusList];
          v62 = [v61 objectForKeyedSubscript:v59];
          v63 = [v62 BOOLValue];

          v64 = [(VGHRTFCaptureUpdateData *)v91->_updateData earCaptureUpdateData];
          v65 = [v64 leftEarStatusList];
          v66 = [v65 objectForKeyedSubscript:v59];
          v67 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
          [v90 setObject:v66 forKeyedSubscript:v67];

          v23 = v23 + 1.0;
          v20 += v63;
        }

        v56 = [v55 countByEnumeratingWithState:&v92 objects:v104 count:16];
      }

      while (v56);
    }

    v68 = [v90 count];
    v69 = [[VGHRTFFaceCaptureUpdateData alloc] initEmpty];
    v70 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v90, 0}];
    [v69 setPoseStatusList:v70];

    v71 = [(VGHRTFCaptureUpdateData *)v91->_updateData faceCaptureUpdateData];
    [v69 setProgressType:{objc_msgSend(v71, "progressType")}];

    *&v72 = v20 / v68;
    [v69 setProgress:v72];
    v73 = [(VGHRTFCaptureUpdateData *)v91->_updateData faceCaptureUpdateData];
    v74 = [v73 trackedData];
    [v69 setTrackedData:v74];

    v75 = [(VGHRTFCaptureUpdateData *)v91->_updateData faceCaptureUpdateData];
    v76 = [v75 result];
    [v69 setResult:v76];

    [(VGHRTFCaptureUpdateData *)v91->_updateData setFaceCaptureUpdateData:v69];
    v77 = [v69 progressType];
    v78 = [(VGHRTFCaptureUpdateData *)v91->_updateData earCaptureUpdateData];
    v79 = [v78 progressType];

    if (v77 == 4 && v79 == 3)
    {
      faceCapture = v91->_faceCapture;
      v91->_faceCapture = 0;

      earPCACapture = v91->_earPCACapture;
      v91->_earPCACapture = 0;

      objc_storeStrong(&v91->_faceResults, v69);
      atomic_store(1u, &v91->_faceCaptureFinished);
    }

    v9 = v91;
  }

  v82 = v9->_updateData;
  v83 = v82;

  v84 = *MEMORY[0x277D85DE8];
  return v82;
}

@end
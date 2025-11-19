@interface PFCameraMetadataJSONDebugSerialization
+ (id)vnObjectPlaceholderForObject:(id)a3;
- (PFCameraMetadataJSONDebugSerialization)init;
- (id)JSONDebugData;
@end

@implementation PFCameraMetadataJSONDebugSerialization

- (id)JSONDebugData
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [PFJSONDebugDumpConverter alloc];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__PFCameraMetadataJSONDebugSerialization_JSONDebugData__block_invoke;
  v10[3] = &unk_1E7B65DE0;
  v10[4] = self;
  v4 = [(PFJSONDebugDumpConverter *)v3 initWithUnknownTypeHandler:v10];
  debugInfo = self->_debugInfo;
  v9 = 0;
  v6 = [(PFJSONDebugDumpConverter *)v4 JSONForObject:debugInfo error:&v9];
  v7 = v9;
  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v12 = v7;
    _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to serialize camera metadata to JSON: %@", buf, 0xCu);
  }

  return v6;
}

id __55__PFCameraMetadataJSONDebugSerialization_JSONDebugData__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  getVNObservationClass();
  if (objc_opt_isKindOfClass() & 1) != 0 || (getVNEspressoModelImageprintClass(), (objc_opt_isKindOfClass()))
  {
    v3 = [objc_opt_class() vnObjectPlaceholderForObject:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (PFCameraMetadataJSONDebugSerialization)init
{
  v6.receiver = self;
  v6.super_class = PFCameraMetadataJSONDebugSerialization;
  v2 = [(PFCameraMetadataJSONDebugSerialization *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    debugInfo = v2->_debugInfo;
    v2->_debugInfo = v3;
  }

  return v2;
}

+ (id)vnObjectPlaceholderForObject:(id)a3
{
  v122[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MEMORY[0x1E695DF90];
  v121[0] = @"ObjectDescription";
  v5 = [v3 description];
  v121[1] = @"ClassName";
  v122[0] = v5;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v122[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v122 forKeys:v121 count:2];
  v9 = [v4 dictionaryWithDictionary:v8];

  if ([v3 conformsToProtocol:&unk_1F2AC9D58])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "requestRevision")}];
    [v9 setObject:v10 forKeyedSubscript:@"requestRevision"];
  }

  getVNObservationClass();
  if (objc_opt_isKindOfClass())
  {
    v11 = v3;
    v12 = [v11 uuid];
    v13 = [v12 UUIDString];
    [v9 setObject:v13 forKeyedSubscript:@"uuid"];

    v14 = MEMORY[0x1E696AD98];
    [v11 confidence];
    v15 = [v14 numberWithFloat:?];
    [v9 setObject:v15 forKeyedSubscript:@"confidence"];

    v119[0] = @"start";
    v16 = MEMORY[0x1E696AD98];
    if (v11)
    {
      [v11 timeRange];
    }

    else
    {
      v99 = 0u;
      v100 = 0u;
      v98 = 0u;
    }

    *&time.value = v98;
    time.epoch = v99;
    v17 = [v16 numberWithDouble:CMTimeGetSeconds(&time)];
    v119[1] = @"duration";
    v120[0] = v17;
    v18 = MEMORY[0x1E696AD98];
    if (v11)
    {
      [v11 timeRange];
    }

    else
    {
      memset(v97, 0, sizeof(v97));
      v96 = 0u;
    }

    time = *(v97 + 8);
    v19 = [v18 numberWithDouble:CMTimeGetSeconds(&time)];
    v120[1] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v120 forKeys:v119 count:2];
    [v9 setObject:v20 forKeyedSubscript:@"timeRange"];
  }

  v104 = 0;
  v105 = &v104;
  v106 = 0x2050000000;
  v21 = getVNFeaturePrintObservationClass_softClass;
  v107 = getVNFeaturePrintObservationClass_softClass;
  if (!getVNFeaturePrintObservationClass_softClass)
  {
    time.value = MEMORY[0x1E69E9820];
    *&time.timescale = 3221225472;
    time.epoch = __getVNFeaturePrintObservationClass_block_invoke;
    v102 = &unk_1E7B65660;
    v103 = &v104;
    __getVNFeaturePrintObservationClass_block_invoke(&time);
    v21 = v105[3];
  }

  v22 = v21;
  _Block_object_dispose(&v104, 8);
  if (objc_opt_isKindOfClass())
  {
    v23 = MEMORY[0x1E696AD98];
    v24 = v3;
    v25 = [v23 numberWithUnsignedInteger:{objc_msgSend(v24, "elementType")}];
    [v9 setObject:v25 forKeyedSubscript:@"elementType"];

    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v24, "elementCount")}];
    [v9 setObject:v26 forKeyedSubscript:@"elementCount"];

    v27 = [v24 data];

    [v9 setObject:v27 forKeyedSubscript:@"data"];
  }

  getVNSceneObservationClass();
  if (objc_opt_isKindOfClass())
  {
    v28 = [v3 sceneprints];
    [v9 setObject:v28 forKeyedSubscript:@"sceneprints"];
  }

  getVNClassificationObservationClass();
  if (objc_opt_isKindOfClass())
  {
    v29 = [v3 identifier];
    [v9 setObject:v29 forKeyedSubscript:@"identifier"];
  }

  v104 = 0;
  v105 = &v104;
  v106 = 0x2050000000;
  v30 = getVNPixelBufferObservationClass_softClass;
  v107 = getVNPixelBufferObservationClass_softClass;
  if (!getVNPixelBufferObservationClass_softClass)
  {
    time.value = MEMORY[0x1E69E9820];
    *&time.timescale = 3221225472;
    time.epoch = __getVNPixelBufferObservationClass_block_invoke;
    v102 = &unk_1E7B65660;
    v103 = &v104;
    __getVNPixelBufferObservationClass_block_invoke(&time);
    v30 = v105[3];
  }

  v31 = v30;
  _Block_object_dispose(&v104, 8);
  if (objc_opt_isKindOfClass())
  {
    v32 = [v3 featureName];
    [v9 setObject:v32 forKeyedSubscript:@"featureName"];
  }

  getVNSaliencyImageObservationClass();
  if (objc_opt_isKindOfClass())
  {
    v33 = [v3 salientObjects];
    [v9 setObject:v33 forKeyedSubscript:@"salientObjects"];
  }

  v104 = 0;
  v105 = &v104;
  v106 = 0x2050000000;
  v34 = getVNDetectedObjectObservationClass_softClass;
  v107 = getVNDetectedObjectObservationClass_softClass;
  if (!getVNDetectedObjectObservationClass_softClass)
  {
    time.value = MEMORY[0x1E69E9820];
    *&time.timescale = 3221225472;
    time.epoch = __getVNDetectedObjectObservationClass_block_invoke;
    v102 = &unk_1E7B65660;
    v103 = &v104;
    __getVNDetectedObjectObservationClass_block_invoke(&time);
    v34 = v105[3];
  }

  v35 = v34;
  _Block_object_dispose(&v104, 8);
  if (objc_opt_isKindOfClass())
  {
    [v3 boundingBox];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v117[0] = @"origin.x";
    v42 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    v118[0] = v42;
    v117[1] = @"origin.y";
    v43 = [MEMORY[0x1E696AD98] numberWithDouble:v37];
    v118[1] = v43;
    v117[2] = @"size.width";
    v44 = [MEMORY[0x1E696AD98] numberWithDouble:v39];
    v118[2] = v44;
    v117[3] = @"size.height";
    v45 = [MEMORY[0x1E696AD98] numberWithDouble:v41];
    v118[3] = v45;
    v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v118 forKeys:v117 count:4];
    [v9 setObject:v46 forKeyedSubscript:@"boundingBox"];
  }

  v104 = 0;
  v105 = &v104;
  v106 = 0x2050000000;
  v47 = getVNRectangleObservationClass_softClass;
  v107 = getVNRectangleObservationClass_softClass;
  if (!getVNRectangleObservationClass_softClass)
  {
    time.value = MEMORY[0x1E69E9820];
    *&time.timescale = 3221225472;
    time.epoch = __getVNRectangleObservationClass_block_invoke;
    v102 = &unk_1E7B65660;
    v103 = &v104;
    __getVNRectangleObservationClass_block_invoke(&time);
    v47 = v105[3];
  }

  v48 = v47;
  _Block_object_dispose(&v104, 8);
  if (objc_opt_isKindOfClass())
  {
    v115[0] = @"x";
    v49 = MEMORY[0x1E696AD98];
    v50 = v3;
    [v50 topLeft];
    v51 = [v49 numberWithDouble:?];
    v115[1] = @"y";
    v116[0] = v51;
    v52 = MEMORY[0x1E696AD98];
    [v50 topLeft];
    v54 = [v52 numberWithDouble:v53];
    v116[1] = v54;
    v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v116 forKeys:v115 count:2];
    [v9 setObject:v55 forKeyedSubscript:@"topLeft"];

    v113[0] = @"x";
    v56 = MEMORY[0x1E696AD98];
    [v50 topRight];
    v57 = [v56 numberWithDouble:?];
    v113[1] = @"y";
    v114[0] = v57;
    v58 = MEMORY[0x1E696AD98];
    [v50 topRight];
    v60 = [v58 numberWithDouble:v59];
    v114[1] = v60;
    v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v114 forKeys:v113 count:2];
    [v9 setObject:v61 forKeyedSubscript:@"topRight"];

    v111[0] = @"x";
    v62 = MEMORY[0x1E696AD98];
    [v50 bottomLeft];
    v63 = [v62 numberWithDouble:?];
    v111[1] = @"y";
    v112[0] = v63;
    v64 = MEMORY[0x1E696AD98];
    [v50 bottomLeft];
    v66 = [v64 numberWithDouble:v65];
    v112[1] = v66;
    v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v112 forKeys:v111 count:2];
    [v9 setObject:v67 forKeyedSubscript:@"bottomLeft"];

    v109[0] = @"x";
    v68 = MEMORY[0x1E696AD98];
    [v50 bottomRight];
    v69 = [v68 numberWithDouble:?];
    v109[1] = @"y";
    v110[0] = v69;
    v70 = MEMORY[0x1E696AD98];
    [v50 bottomRight];
    v72 = v71;

    v73 = [v70 numberWithDouble:v72];
    v110[1] = v73;
    v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v110 forKeys:v109 count:2];
    [v9 setObject:v74 forKeyedSubscript:@"bottomRight"];
  }

  getVNRecognizedObjectObservationClass();
  if (objc_opt_isKindOfClass())
  {
    v75 = v3;
    v76 = [MEMORY[0x1E695DF70] array];
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v77 = [v75 labels];
    v78 = [v77 countByEnumeratingWithState:&v92 objects:v108 count:16];
    if (v78)
    {
      v79 = *v93;
      do
      {
        for (i = 0; i != v78; ++i)
        {
          if (*v93 != v79)
          {
            objc_enumerationMutation(v77);
          }

          [v76 addObject:*(*(&v92 + 1) + 8 * i)];
        }

        v78 = [v77 countByEnumeratingWithState:&v92 objects:v108 count:16];
      }

      while (v78);
    }

    [v9 setObject:v76 forKeyedSubscript:@"labels"];
  }

  getVNEspressoModelImageprintClass();
  if (objc_opt_isKindOfClass())
  {
    v81 = v3;
    v82 = [objc_opt_class() currentVersion];
    [v9 setObject:v82 forKeyedSubscript:@"currentVersion"];

    v83 = [v81 descriptorData];
    [v9 setObject:v83 forKeyedSubscript:@"descriptorData"];

    v84 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v81, "elementCount")}];
    [v9 setObject:v84 forKeyedSubscript:@"elementCount"];

    v85 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v81, "lengthInBytes")}];
    [v9 setObject:v85 forKeyedSubscript:@"lengthInBytes"];

    v86 = [v81 labelsAndConfidence];
    [v9 setObject:v86 forKeyedSubscript:@"labelsAndConfidence"];

    v87 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v81, "confidenceScoreType")}];
    [v9 setObject:v87 forKeyedSubscript:@"confidenceScoreType"];

    v88 = MEMORY[0x1E696AD98];
    v89 = [v81 requestRevision];

    v90 = [v88 numberWithUnsignedInteger:v89];
    [v9 setObject:v90 forKeyedSubscript:@"requestRevision"];
  }

  return v9;
}

@end
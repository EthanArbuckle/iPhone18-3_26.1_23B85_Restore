@interface VGMLSegmentationModel
- (VGMLSegmentationModel)init;
- (id)_performSegmentationRequest:(id)request onPixelBuffer:(__CVBuffer *)buffer segmentationRequestRevision:(unint64_t)revision error:(id *)error;
- (id)_resizePixelBuffer:(__CVBuffer *)buffer width:(unint64_t)width height:(unint64_t)height;
- (id)segmentationMaps:(__CVBuffer *)maps;
- (id)segmentationSurfaces:(__CVBuffer *)surfaces;
@end

@implementation VGMLSegmentationModel

- (VGMLSegmentationModel)init
{
  v31 = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = VGMLSegmentationModel;
  v2 = [(VGMLSegmentationModel *)&v28 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    humanAttributesMap();
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v4 = v25 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v5)
    {
      v6 = *v25;
      do
      {
        v7 = 0;
        do
        {
          if (*v25 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v24 + 1) + 8 * v7);
          v9 = [v4 objectForKeyedSubscript:v8];
          [v3 addObject:v9];

          ++v7;
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v5);
    }

    [v3 addObject:@"person"];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = personInstancesMapNames();
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v29 count:16];
    if (v11)
    {
      v12 = *v21;
      do
      {
        v13 = 0;
        do
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v20 + 1) + 8 * v13);
          [v3 addObject:{v14, v20}];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v10 countByEnumeratingWithState:&v20 objects:v29 count:16];
      }

      while (v11);
    }

    v15 = [MEMORY[0x277CBEB70] orderedSetWithArray:v3];
    outputSegmentationMaps = v2->_outputSegmentationMaps;
    v2->_outputSegmentationMaps = v15;

    v17 = v2;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v2;
}

- (id)_performSegmentationRequest:(id)request onPixelBuffer:(__CVBuffer *)buffer segmentationRequestRevision:(unint64_t)revision error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v10 = objc_alloc(MEMORY[0x277CE2D50]);
  v11 = [v10 initWithCVPixelBuffer:buffer options:MEMORY[0x277CBEC10]];
  if (!v11)
  {
    v15 = __VGLogSharedInstance();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v16 = " Vision request handler failed to instantiate ";
LABEL_23:
    v18 = v15;
    v19 = 2;
    goto LABEL_24;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = requestCopy;
    [v12 setQualityLevel:0];
    [v12 setOutputPixelFormat:1278226534];
    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = __VGLogSharedInstance();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v16 = " Unsupported type received for VNGenerateSegmentationRequest. ";
    goto LABEL_23;
  }

  v15 = requestCopy;
  [v15 setQualityLevel:0];
  if (([v15 setRevision:revision error:error]& 1) == 0)
  {
    v21 = __VGLogSharedInstance();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = *error;
      *buf = 138412290;
      v27 = v22;
      _os_log_impl(&dword_270F06000, v21, OS_LOG_TYPE_ERROR, " Error setting revision for person instance model %@ ", buf, 0xCu);
    }

    goto LABEL_25;
  }

  [v15 setMinimumConfidence:0.0];
  [v15 setOutputPixelFormat:1278226534];
LABEL_4:

  v25 = requestCopy;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  v14 = [v11 performRequests:v13 error:error];

  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      results = [requestCopy results];
      goto LABEL_26;
    }

    v15 = __VGLogSharedInstance();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v16 = " SegmentationRequest not of supported type. ";
      goto LABEL_23;
    }
  }

  else
  {
    v15 = __VGLogSharedInstance();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = *error;
      *buf = 138412290;
      v27 = v17;
      v16 = " Failed to process segmentation request %@ ";
      v18 = v15;
      v19 = 12;
LABEL_24:
      _os_log_impl(&dword_270F06000, v18, OS_LOG_TYPE_ERROR, v16, buf, v19);
    }
  }

LABEL_25:

  results = 0;
LABEL_26:

  v23 = *MEMORY[0x277D85DE8];

  return results;
}

- (id)_resizePixelBuffer:(__CVBuffer *)buffer width:(unint64_t)width height:(unint64_t)height
{
  v7 = CVPixelBufferGetIOSurface(buffer);
  v8 = resizeSurface(v7, width, height);

  return v8;
}

- (id)segmentationSurfaces:(__CVBuffer *)surfaces
{
  v61 = *MEMORY[0x277D85DE8];
  Width = CVPixelBufferGetWidth(surfaces);
  Height = CVPixelBufferGetHeight(surfaces);
  v45 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[NSOrderedSet count](self->_outputSegmentationMaps, "count")}];
  v56 = 0;
  v35 = objc_opt_new();
  surfacesCopy = surfaces;
  v37 = [VGMLSegmentationModel _performSegmentationRequest:"_performSegmentationRequest:onPixelBuffer:segmentationRequestRevision:error:" onPixelBuffer:? segmentationRequestRevision:? error:?];
  v36 = 0;
  if (v36)
  {
    v5 = __VGLogSharedInstance();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v60 = v36;
      _os_log_impl(&dword_270F06000, v5, OS_LOG_TYPE_ERROR, " Could not perform human attributes segmentation request. %@ ", buf, 0xCu);
    }
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v5 = v37;
    obj = v5;
    v6 = [v5 countByEnumeratingWithState:&v52 objects:v58 count:16];
    if (v6)
    {
      v7 = *v53;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v53 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v52 + 1) + 8 * i);
          v10 = humanAttributesMap();
          featureName = [v9 featureName];
          v12 = [v10 objectForKey:featureName];
          v13 = v12 == 0;

          if (v13)
          {
            v14 = __VGLogSharedInstance();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              featureName2 = [v9 featureName];
              *buf = 138412290;
              v60 = featureName2;
              _os_log_impl(&dword_270F06000, v14, OS_LOG_TYPE_ERROR, " Received an unexpected output map from VNGenerateHumanAttributesSegmentationRequest: %@ ", buf, 0xCu);
            }
          }

          else
          {
            v14 = -[VGMLSegmentationModel _resizePixelBuffer:width:height:](self, "_resizePixelBuffer:width:height:", [v9 pixelBuffer], Width, Height);
            featureName3 = [v9 featureName];
            v16 = [v10 objectForKeyedSubscript:featureName3];
            [v45 setObject:v14 forKey:v16];
          }
        }

        v5 = obj;
        v6 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
      }

      while (v6);
    }
  }

  v51 = v36;
  v38 = objc_opt_new();
  v40 = [VGMLSegmentationModel _performSegmentationRequest:"_performSegmentationRequest:onPixelBuffer:segmentationRequestRevision:error:" onPixelBuffer:? segmentationRequestRevision:? error:?];
  obja = v36;

  if (obja)
  {
    v18 = __VGLogSharedInstance();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v60 = obja;
      _os_log_impl(&dword_270F06000, v18, OS_LOG_TYPE_ERROR, " Could not perform person segmentation request. %@ ", buf, 0xCu);
    }
  }

  else
  {
    v18 = personInstancesMapNames();
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v19 = v40;
    v20 = [v19 countByEnumeratingWithState:&v47 objects:v57 count:16];
    if (v20)
    {
      v21 = 0;
      v22 = *v48;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v48 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v47 + 1) + 8 * j);
          v25 = -[VGMLSegmentationModel _resizePixelBuffer:width:height:](self, "_resizePixelBuffer:width:height:", [v24 pixelBuffer], Width, Height);
          v26 = [v18 objectAtIndexedSubscript:v21];
          [v45 setObject:v25 forKey:v26];

          ++v21;
        }

        v20 = [v19 countByEnumeratingWithState:&v47 objects:v57 count:16];
      }

      while (v20);
    }
  }

  v27 = objc_opt_new();
  v46 = obja;
  v28 = [(VGMLSegmentationModel *)self _performSegmentationRequest:v27 onPixelBuffer:surfacesCopy segmentationRequestRevision:1 error:&v46];
  v29 = v46;

  if (v29)
  {
    v30 = __VGLogSharedInstance();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v60 = v29;
      _os_log_impl(&dword_270F06000, v30, OS_LOG_TYPE_ERROR, " Could not perform person segmentation request. %@ ", buf, 0xCu);
    }

    goto LABEL_30;
  }

  if (![v28 count])
  {
LABEL_30:
    v31 = 0;
    goto LABEL_33;
  }

  v32 = [v28 objectAtIndexedSubscript:0];
  v31 = -[VGMLSegmentationModel _resizePixelBuffer:width:height:](self, "_resizePixelBuffer:width:height:", [v32 pixelBuffer], Width, Height);

  [v45 setObject:v31 forKey:@"person"];
LABEL_33:

  v33 = *MEMORY[0x277D85DE8];

  return v45;
}

- (id)segmentationMaps:(__CVBuffer *)maps
{
  v22 = *MEMORY[0x277D85DE8];
  v15 = [(VGMLSegmentationModel *)self segmentationSurfaces:maps];
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v15, "count")}];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = v15;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [v4 objectForKeyedSubscript:{v8, v15}];
        CVPixelBufferFromIOSurface = createCVPixelBufferFromIOSurface(v9);

        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __42__VGMLSegmentationModel_segmentationMaps___block_invoke;
        v16[3] = &__block_descriptor_40_e5_v8__0l;
        v16[4] = CVPixelBufferFromIOSurface;
        v11 = MEMORY[0x2743B9AA0](v16);
        v12 = [[VGMLImageIOData alloc] initWithCVPixelBufferRef:CVPixelBufferFromIOSurface];
        [v3 setObject:v12 forKey:v8];

        v11[2](v11);
      }

      v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v3;
}

@end
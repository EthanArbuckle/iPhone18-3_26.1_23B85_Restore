@interface SISceneSegmentationData
- (BOOL)saveToDisk:(id)a3 identifier:(id)a4;
- (CGSize)_resolutionByConfig:(id)a3;
- (CGSize)resolution;
- (SISceneSegmentationData)initWithConfig:(id)a3;
- (SISceneSegmentationData)initWithOutputResolution:(CGSize)a3;
- (SISceneSegmentationData)initWithOutputSemanticBuffer:(__CVBuffer *)a3 confidenceBuffer:(__CVBuffer *)a4 uncertaintyBuffer:(__CVBuffer *)a5;
- (void)dealloc;
@end

@implementation SISceneSegmentationData

- (SISceneSegmentationData)initWithConfig:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SISceneSegmentationData;
  v5 = [(SISceneSegmentationData *)&v14 init];
  v6 = v5;
  if (v5)
  {
    p_width = &v5->_resolution.width;
    [(SISceneSegmentationData *)v5 _resolutionByConfig:v4];
    *p_width = v8;
    v6->_resolution.height = v9;
    v10 = v8;
    v11 = v9;
    v6->_semantic = SICreateCVPixelBuffer(v8, v9, 0x4C303038u, 1);
    v6->_confidence = SICreateCVPixelBuffer(v10, v11, 0x4C303066u, 1);
    v6->_uncertainty = SICreateCVPixelBuffer(v10, v11, 0x4C303066u, 1);
    v12 = v6;
  }

  return v6;
}

- (SISceneSegmentationData)initWithOutputResolution:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = SISceneSegmentationData;
  v5 = [(SISceneSegmentationData *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v5->_resolution.width = width;
    v5->_resolution.height = height;
    v5->_semantic = SICreateCVPixelBuffer(width, height, 0x4C303038u, 1);
    v6->_confidence = SICreateCVPixelBuffer(width, height, 0x4C303066u, 1);
    v6->_uncertainty = SICreateCVPixelBuffer(width, height, 0x4C303066u, 1);
    v7 = v6;
  }

  return v6;
}

- (SISceneSegmentationData)initWithOutputSemanticBuffer:(__CVBuffer *)a3 confidenceBuffer:(__CVBuffer *)a4 uncertaintyBuffer:(__CVBuffer *)a5
{
  v12.receiver = self;
  v12.super_class = SISceneSegmentationData;
  v8 = [(SISceneSegmentationData *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_resolution.width = CVPixelBufferGetWidth(v8->_semantic);
    v9->_resolution.height = CVPixelBufferGetHeight(v9->_semantic);
    v9->_semantic = CVPixelBufferRetain(a3);
    v9->_confidence = CVPixelBufferRetain(a4);
    v9->_uncertainty = CVPixelBufferRetain(a5);
    v10 = v9;
  }

  return v9;
}

- (CGSize)_resolutionByConfig:(id)a3
{
  v3 = [a3 networkModeEnum];

  SupportedResolution = SISceneSegmentationGetSupportedResolution(v3);
  result.height = v5;
  result.width = SupportedResolution;
  return result;
}

- (BOOL)saveToDisk:(id)a3 identifier:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v24.receiver = self;
  v24.super_class = SISceneSegmentationData;
  if ([-[SISceneSegmentationData class](&v24 class)])
  {
    v8 = SICreateSemanticColorizedResult(self->_semantic);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v21 = __49__SISceneSegmentationData_saveToDisk_identifier___block_invoke;
    v22 = &__block_descriptor_40_e5_v8__0l;
    v23 = v8;
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/color_semantic_%@.png", v6, v7];
    if (SISavePixelBufferPNG(v8, v9))
    {
      semantic = self->_semantic;
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/semantic_%@.png", v6, v7];
      if (SISavePixelBufferPNG(semantic, v11))
      {
        confidence = self->_confidence;
        v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/semantic_confidence_%@.tiff", v6, v7];
        if (SISavePixelBufferTIFF(confidence, v13))
        {
          uncertainty = self->_uncertainty;
          v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/semantic_uncertainty_%@.tiff", v6, v7];
          v16 = SISavePixelBufferTIFF(uncertainty, v15);
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    v21(v20);
  }

  else
  {
    v17 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136381187;
      v26 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneSegmentation/SISceneSegmentationDataType.m";
      v27 = 1025;
      v28 = 86;
      v29 = 2112;
      v30 = v6;
      _os_log_impl(&dword_21DE0D000, v17, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** %@ is not a directory, or failed to create a directory ***", buf, 0x1Cu);
    }

    v16 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_semantic);
  CVPixelBufferRelease(self->_confidence);
  CVPixelBufferRelease(self->_uncertainty);
  v3.receiver = self;
  v3.super_class = SISceneSegmentationData;
  [(SISceneSegmentationData *)&v3 dealloc];
}

- (CGSize)resolution
{
  objc_copyStruct(v4, &self->_resolution, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end
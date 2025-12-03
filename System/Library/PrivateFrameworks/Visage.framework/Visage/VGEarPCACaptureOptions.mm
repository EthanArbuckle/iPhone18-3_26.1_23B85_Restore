@interface VGEarPCACaptureOptions
- (VGEarPCACaptureOptions)init;
- (VGEarPCACaptureOptions)initWithSuiteName:(id)name;
- (id)description;
- (void)setDefaultsWithSuiteName:(id)name;
@end

@implementation VGEarPCACaptureOptions

- (VGEarPCACaptureOptions)init
{
  v14.receiver = self;
  v14.super_class = VGEarPCACaptureOptions;
  v2 = [(VGEarPCACaptureOptions *)&v14 init];
  if (v2)
  {
    v2->_imageWidth = [objc_opt_class() defaultImageWidth];
    v2->_imageHeight = [objc_opt_class() defaultImageHeight];
    [objc_opt_class() defaultEarPresenceThreshold];
    v2->_earPresenceThreshold = v3;
    [objc_opt_class() defaultEarOcclusionThreshold];
    v2->_earOcclusionThreshold = v4;
    [objc_opt_class() defaultBboxVisibilityThreshold];
    v2->_bboxVisibilityThreshold = v5;
    v2->_useMotionBlurFilter = [objc_opt_class() defaultUseMotionBlurFilter];
    [objc_opt_class() defaultMotionBlurFilterThreshold];
    v2->_motionBlurFilterThreshold = v6;
    v2->_frameCountThreshold = [objc_opt_class() frameCountThreshold];
    [objc_opt_class() defaultLandmarkVisibilityThreshold];
    v2->_landmarkVisibilityThreshold = v7;
    v2->_useEarSideSmoothPredictor = [objc_opt_class() defaultUseEarSideSmoothPredictor];
    v2->_earSideSmoothPredictorBufferCapacity = [objc_opt_class() defaultEarSideSmoothPredictorBufferCapacity];
    [objc_opt_class() defaultEarSideSmoothPredictorConfidenceThreshold];
    v2->_earSideSmoothPredictorConfidenceThreshold = v8;
    [objc_opt_class() defaultFaceYawLimit];
    v2->_faceYawLimit = v9;
    v2->_writeDebugData = 0;
    debugDataPath = v2->_debugDataPath;
    v2->_debugDataPath = 0;

    modelsRootPath = v2->_modelsRootPath;
    v2->_modelsRootPath = 0;

    v12 = v2;
  }

  return v2;
}

- (VGEarPCACaptureOptions)initWithSuiteName:(id)name
{
  nameCopy = name;
  v5 = [(VGEarPCACaptureOptions *)self init];
  v6 = v5;
  if (v5)
  {
    [(VGEarPCACaptureOptions *)v5 setDefaultsWithSuiteName:nameCopy];
    v7 = v6;
  }

  return v6;
}

- (void)setDefaultsWithSuiteName:(id)name
{
  nameCopy = name;
  v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:nameCopy];
  v5 = [v4 objectForKey:@"earPresenceThreshold"];

  if (v5)
  {
    [v4 floatForKey:@"earPresenceThreshold"];
    self->_earPresenceThreshold = v6;
  }

  v7 = [v4 objectForKey:@"earOcclusionThreshold"];

  if (v7)
  {
    [v4 floatForKey:@"earOcclusionThreshold"];
    self->_earOcclusionThreshold = v8;
  }

  v9 = [v4 objectForKey:@"earBoxVisibilityThreshold"];

  if (v9)
  {
    [v4 floatForKey:@"earBoxVisibilityThreshold"];
    self->_bboxVisibilityThreshold = v10;
  }

  v11 = [v4 objectForKey:@"useEarMotionBlurFilter"];

  if (v11)
  {
    self->_useMotionBlurFilter = [v4 BOOLForKey:@"useEarMotionBlurFilter"];
  }

  v12 = [v4 objectForKey:@"earMotionBlurFilterThreshold"];

  if (v12)
  {
    self->_motionBlurFilterThreshold = [v4 BOOLForKey:@"earMotionBlurFilterThreshold"];
  }

  v13 = [v4 objectForKey:@"numberOfEarFrame"];

  if (v13)
  {
    self->_frameCountThreshold = [v4 integerForKey:@"numberOfEarFrame"];
  }

  v14 = [v4 objectForKey:@"earLandmarkVisibility"];

  if (v14)
  {
    [v4 floatForKey:@"earLandmarkVisibility"];
    self->_landmarkVisibilityThreshold = v15;
  }

  v16 = [v4 objectForKey:@"useEarSideSmoothPredictor"];

  if (v16)
  {
    self->_useEarSideSmoothPredictor = [v4 BOOLForKey:@"useEarSideSmoothPredictor"];
  }

  v17 = [v4 objectForKey:@"earSideSmoothPredictorBufferCapacity"];

  if (v17)
  {
    self->_earSideSmoothPredictorBufferCapacity = [v4 integerForKey:@"earSideSmoothPredictorBufferCapacity"];
  }

  v18 = [v4 objectForKey:@"earSideSmoothPredictorConfidenceThreshold"];

  if (v18)
  {
    [v4 floatForKey:@"earSideSmoothPredictorConfidenceThreshold"];
    self->_earSideSmoothPredictorConfidenceThreshold = v19;
  }

  v20 = [v4 objectForKey:@"faceYawLimitForEarPose"];

  if (v20)
  {
    [v4 floatForKey:@"faceYawLimitForEarPose"];
    self->_faceYawLimit = v21;
  }
}

- (id)description
{
  v2 = @"NO";
  if (self->_useEarSideSmoothPredictor)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  if (self->_useMotionBlurFilter)
  {
    v2 = @"YES";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"Input image size (%u x %u) Frame count threshold %u Ear bbox detection visibility threshold %f Ear landmark detection visibility threshold %f Use ear side smooth predictor %@ (buffer capacity: %u, confidence threshold: %f) Use motion blur filter %@ Motion blur filter threshold %fFace yaw limit %f", self->_imageWidth, self->_imageHeight, self->_frameCountThreshold, self->_bboxVisibilityThreshold, self->_landmarkVisibilityThreshold, v3, self->_earSideSmoothPredictorBufferCapacity, self->_earSideSmoothPredictorConfidenceThreshold, v2, self->_motionBlurFilterThreshold, self->_faceYawLimit];
}

@end
@interface VGFaceCapture
+ (id)getFaceMetadata:(id)metadata;
- (BOOL)processWithCaptureData:(id)data callback:(id)callback;
- (VGFaceCapture)initWithOptions:(id)options;
- (id)enrolledPoses;
- (void)dealloc;
@end

@implementation VGFaceCapture

- (VGFaceCapture)initWithOptions:(id)options
{
  optionsCopy = options;
  v19.receiver = self;
  v19.super_class = VGFaceCapture;
  v6 = [(VGFaceCapture *)&v19 init];
  v7 = v6;
  if (!v6)
  {
LABEL_8:
    v14 = v7;
    goto LABEL_12;
  }

  objc_storeStrong(&v6->_options, options);
  v18[0] = [(VGFaceCaptureOptions *)v7->_options useFKInternalFaceDetector];
  v18[1] = [(VGFaceCaptureOptions *)v7->_options useFKForceCPU];
  v8 = [[VGFaceKitTracker alloc] initWithOptions:v18];
  faceTracker = v7->_faceTracker;
  v7->_faceTracker = v8;

  if (v7->_faceTracker)
  {
    v10 = [[VGFaceFittingFrameSelector alloc] initWithOptions:v7->_options faceKitSemantics:[(VGFaceKitTracker *)v7->_faceTracker semantics]];
    faceFrameSelector = v7->_faceFrameSelector;
    v7->_faceFrameSelector = v10;

    useFaceTrackingDictionary = [(VGFaceCaptureOptions *)v7->_options useFaceTrackingDictionary];
    if (useFaceTrackingDictionary)
    {
      v13 = v7->_faceTracker;
      v7->_faceTracker = 0;
    }

    if (vg::frame_selection::metrics::isSupported(useFaceTrackingDictionary) && [(VGFaceCaptureOptions *)v7->_options sendMetrics])
    {
      operator new();
    }

    goto LABEL_8;
  }

  v15 = __VGLogSharedInstance();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&dword_270F06000, v15, OS_LOG_TYPE_ERROR, " Failed to initialize FaceKit Tracker ", &v17, 2u);
  }

  v14 = 0;
LABEL_12:

  return v14;
}

- (void)dealloc
{
  ptr = self->_metricsData.__ptr_;
  if (ptr)
  {
    vg::frame_selection::metrics::sendCompleteEvent(ptr, a2);
  }

  v4.receiver = self;
  v4.super_class = VGFaceCapture;
  [(VGFaceCapture *)&v4 dealloc];
}

- (id)enrolledPoses
{
  faceFrameSelector = self->_faceFrameSelector;
  if (faceFrameSelector)
  {
    faceFrameSelector = [faceFrameSelector enrolledPoses];
    v2 = vars8;
  }

  return faceFrameSelector;
}

- (BOOL)processWithCaptureData:(id)data callback:(id)callback
{
  dataCopy = data;
  callbackCopy = callback;
  v8 = vg::shared::Time(callbackCopy);
  v9 = v8;
  if (self->_metricsData.__ptr_)
  {
    v10 = vg::shared::MemoryUsage(v8);
    v11 = v10;
    ptr = self->_metricsData.__ptr_;
    v13 = *(ptr + 1);
    if (!v13)
    {
      vg::frame_selection::metrics::sendStartEvent(v10);
      ptr = self->_metricsData.__ptr_;
      *(ptr + 50) = v9;
      *(ptr + 61) = v11;
      v13 = *(ptr + 1);
    }

    *(ptr + 1) = v13 + 1;
    *(ptr + 51) = v9;
    *(ptr + 62) = v11;
  }

  if (callbackCopy)
  {
    objc_initWeak(&location, self);
    getFaceCaptureData = [dataCopy getFaceCaptureData];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __49__VGFaceCapture_processWithCaptureData_callback___block_invoke;
    v27[3] = &unk_279E28E08;
    objc_copyWeak(v30, &location);
    v30[1] = v9;
    v15 = dataCopy;
    v28 = v15;
    v29 = callbackCopy;
    v16 = MEMORY[0x2743B9AA0](v27);
    if ([(VGFaceCaptureOptions *)self->_options useFaceTrackingDictionary])
    {
      faceTrackingResult = [v15 faceTrackingResult];

      if (faceTrackingResult)
      {
        faceTrackingResult2 = [v15 faceTrackingResult];
        (v16)[2](v16, faceTrackingResult2, [(VGFaceCaptureOptions *)self->_options useFaceTrackingDictionary]);

        v19 = 1;
      }

      else
      {
        v21 = __VGLogSharedInstance();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_270F06000, v21, OS_LOG_TYPE_ERROR, " useFaceTrackingDictionary is set to TRUE, but faceTrackingResult is empty in capture data. ", buf, 2u);
        }

        v19 = 0;
      }
    }

    else
    {
      faceTracker = self->_faceTracker;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __49__VGFaceCapture_processWithCaptureData_callback___block_invoke_4;
      v23[3] = &unk_279E28E30;
      v23[4] = self;
      v24 = v15;
      v25 = v16;
      v19 = [(VGFaceKitTracker *)faceTracker processWithCaptureData:getFaceCaptureData callback:v23];
    }

    objc_destroyWeak(v30);
    objc_destroyWeak(&location);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

void __49__VGFaceCapture_processWithCaptureData_callback___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = vg::shared::Time(WeakRetained);
    v9 = v8;
    v10 = *(v7 + 4);
    if (v10)
    {
      *(v10 + 424) += v8 - *(a1 + 56);
    }

    v11 = [*(v7 + 1) addPoseWithCaptureData:*(a1 + 32) tracking:v5 externalTracking:a3 metricsData:?];
    v12 = v11;
    if (*(v7 + 4))
    {
      v13 = vg::shared::Time(v11);
      v14 = *(v7 + 4);
      *(v14 + 432) += v13 - v9;
      *(v14 + 416) += v13 - *(a1 + 56);
    }

    v15 = [*(a1 + 32) faceTrackingResult];
    [(vg::shared *)v12 setFaceTrackingResultCurrentFrame:v15];

    if ([(vg::shared *)v12 updated])
    {
      if ([(vg::shared *)v12 completed])
      {
        v16 = *(v7 + 4);
        if (v16)
        {
          *v16 = 1;
        }

        v17 = __VGLogSharedInstance();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_270F06000, v17, OS_LOG_TYPE_DEBUG, " Pose capture fully complete and updated. ", buf, 2u);
        }

        v18 = [*(v7 + 1) finish];
        (*(*(a1 + 40) + 16))();
LABEL_17:

LABEL_19:
        goto LABEL_20;
      }

      [(vg::shared *)v12 completionScore];
      if (v19 > 0.0)
      {
        v20 = __VGLogSharedInstance();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *v21 = 0;
          _os_log_impl(&dword_270F06000, v20, OS_LOG_TYPE_DEBUG, " Pose capture partially complete and updated. ", v21, 2u);
        }

        v18 = [*(v7 + 1) enrolledPoses];
        (*(*(a1 + 40) + 16))();
        goto LABEL_17;
      }
    }

    (*(*(a1 + 40) + 16))();
    goto LABEL_19;
  }

LABEL_20:
}

void __49__VGFaceCapture_processWithCaptureData_callback___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ([*(*(a1 + 32) + 16) convertFKTrackingDictToARKitDict])
  {
    Width = CVPixelBufferGetWidth([*(a1 + 40) yuvRectified]);
    Height = CVPixelBufferGetHeight([*(a1 + 40) yuvRectified]);
    v10.f64[0] = Width;
    v10.f64[1] = Height;
    v4 = vg::frame_selection::face_tracker::createARKitDictFromFaceKitDict(v3, &v10, v7);
  }

  [*(a1 + 40) setFaceTrackingResult:v4];
  if ([*(*(a1 + 32) + 16) useFKInternalFaceDetector])
  {
    v8 = [*(a1 + 40) face];

    if (!v8)
    {
      v9 = [VGFaceCapture getFaceMetadata:v4];
      [*(a1 + 40) setFace:v9];
    }
  }

  (*(*(a1 + 48) + 16))();
}

+ (id)getFaceMetadata:(id)metadata
{
  metadataCopy = metadata;
  v4 = metadataCopy;
  if (!metadataCopy)
  {
    v12 = 0;
    goto LABEL_23;
  }

  v5 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x277CECED8]];
  v6 = v5;
  if (!v5 || ![v5 count])
  {
    v7 = __VGLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(rect.origin.x) = 0;
      _os_log_impl(&dword_270F06000, v7, OS_LOG_TYPE_ERROR, " No tracked faces found in tracking dictionary ", &rect, 2u);
    }

    v12 = 0;
    goto LABEL_22;
  }

  v7 = [v6 objectAtIndexedSubscript:0];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CECEB8]];
  if (!v8)
  {
    v10 = __VGLogSharedInstance();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(rect.origin.x) = 0;
      _os_log_impl(&dword_270F06000, v10, OS_LOG_TYPE_ERROR, " No smooth data found in tracking dictionary ", &rect, 2u);
    }

    goto LABEL_20;
  }

  v9 = [v7 objectForKeyedSubscript:*MEMORY[0x277CECE28]];
  v10 = v9;
  if (!v9)
  {
    v13 = __VGLogSharedInstance();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(rect.origin.x) = 0;
      v14 = " No face rect found in tracking dictionary ";
      p_rect = &rect;
LABEL_18:
      _os_log_impl(&dword_270F06000, v13, OS_LOG_TYPE_ERROR, v14, p_rect, 2u);
    }

LABEL_19:

LABEL_20:
    v12 = 0;
    goto LABEL_21;
  }

  if (!CGRectMakeWithDictionaryRepresentation(v9, &rect))
  {
    v13 = __VGLogSharedInstance();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v17 = 0;
      v14 = " Unable to construct bbox rect from tracking dictionary ";
      p_rect = &v17;
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v11 = [VGFaceMetadata alloc];
  v12 = [(VGFaceMetadata *)v11 initWithFaceId:0 bounds:rect.origin.x yawAngle:rect.origin.y rollAngle:rect.size.width, rect.size.height, 0.0, 0.0];
LABEL_21:

LABEL_22:
LABEL_23:

  return v12;
}

@end
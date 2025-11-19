@interface VISProcessorV2
- (VISProcessorDelegate)delegate;
- (VISProcessorV2)init;
- (int)enqueueBufferForProcessing:(opaqueCMSampleBuffer *)a3;
- (int)finishProcessing;
- (int)prepareToProcess:(unsigned int)a3;
- (int)prewarm;
- (int)purgeResources;
- (uint64_t)finishProcessing;
- (uint64_t)purgeResources;
- (void)dealloc;
- (void)didCompleteProcessingOfBuffer:(opaqueCMSampleBuffer *)a3 withStatus:(int)a4;
- (void)setDelegate:(id)a3;
- (void)willStartProcessingBuffer:(opaqueCMSampleBuffer *)a3 withStatus:(int)a4;
@end

@implementation VISProcessorV2

- (void)dealloc
{
  [(VISProcessorV2 *)self finishProcessing];
  [(VISProcessorV2 *)self purgeResources];
  v3.receiver = self;
  v3.super_class = VISProcessorV2;
  [(VISProcessorV2 *)&v3 dealloc];
}

- (int)finishProcessing
{
  v3 = [(VISWrapper *)self->_visWrapper finishProcessing];
  if (v3)
  {
    [VISProcessorV2 finishProcessing];
  }

  else
  {
    self->_buffersEnqueued = 0;
  }

  return v3;
}

- (int)purgeResources
{
  v2 = [(VISWrapper *)self->_visWrapper purgeResources];
  if (v2)
  {
    [VISProcessorV2 purgeResources];
  }

  return v2;
}

- (int)prewarm
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  [v3 classNamed:@"VISConfigurationV2"];
  v4 = objc_opt_new();
  configuration = self->_configuration;
  self->_configuration = v4;

  [(VISConfiguration *)self->_configuration setTransformPlatform:0];
  [(VISConfiguration *)self->_configuration setSmoothingMethod:1];
  v6 = kCVPixelBufferWidthKey;
  v7 = kCVPixelBufferHeightKey;
  v17[0] = kCVPixelBufferWidthKey;
  v17[1] = kCVPixelBufferHeightKey;
  v18[0] = &off_55BD0;
  v18[1] = &off_55BD0;
  v17[2] = kCVPixelBufferPixelFormatTypeKey;
  v8 = [NSNumber numberWithUnsignedInt:875704422];
  v18[2] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:3];
  [(VISConfiguration *)self->_configuration setInputPixelBufferAttributes:v9];

  v15[0] = v6;
  v15[1] = v7;
  v16[0] = &off_55BD0;
  v16[1] = &off_55BD0;
  v10 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
  [(VISConfiguration *)self->_configuration setOutputPixelBufferAttributes:v10];

  [(VISConfiguration *)self->_configuration setBlurBorderPixels:1];
  v13 = kFigCaptureSensorIDDictionaryKey_VideoStabilizationRenderMethod;
  v14 = &off_55BE8;
  v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  [(VISConfiguration *)self->_configuration setSensorIDDict:v11];

  [(VISConfiguration *)self->_configuration setMetalCommandQueue:self->_metalCommandQueue];
  [(VISProcessorV2 *)self prepareToProcess:0];

  return 0;
}

- (void)willStartProcessingBuffer:(opaqueCMSampleBuffer *)a3 withStatus:(int)a4
{
  if (self->_shouldCallStartProcessingBufferDelegate)
  {
    v5 = *&a4;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained willStartProcessingBuffer:a3 withStatus:v5];
  }
}

- (void)didCompleteProcessingOfBuffer:(opaqueCMSampleBuffer *)a3 withStatus:(int)a4
{
  v4 = *&a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didCompleteProcessingOfBuffer:a3 withStatus:v4];
}

- (void)setDelegate:(id)a3
{
  v6 = a3;
  v4 = objc_storeWeak(&self->_delegate, v6);
  v5 = objc_opt_respondsToSelector();

  self->_shouldCallStartProcessingBufferDelegate = v5 & 1;
}

- (VISProcessorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (VISProcessorV2)init
{
  v7.receiver = self;
  v7.super_class = VISProcessorV2;
  v2 = [(VISProcessorV2 *)&v7 init];
  if (v2 && (v3 = objc_alloc_init(VISWrapper), visWrapper = v2->_visWrapper, v2->_visWrapper = v3, visWrapper, v2->_visWrapper))
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int)prepareToProcess:(unsigned int)a3
{
  if (self->_buffersEnqueued)
  {
    return -12782;
  }

  if (!self->_configuration)
  {
    return -12780;
  }

  [(VISWrapper *)self->_visWrapper setConfiguration:?];
  [(VISWrapper *)self->_visWrapper setDelegate:self];
  v4 = [(VISWrapper *)self->_visWrapper prepareToProcess];
  if (v4)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
  }

  return v4;
}

- (int)enqueueBufferForProcessing:(opaqueCMSampleBuffer *)a3
{
  if (!self->_visWrapper)
  {
    return -12780;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v6 = -12780;
  if (a3 && WeakRetained)
  {
    [(VISWrapper *)self->_visWrapper setLongPressModeEnabled:self->_longPressModeEnabled];
    [(VISWrapper *)self->_visWrapper setFlipHorizontalOrientationEnabled:self->_flipHorizontalOrientationEnabled];
    [(VISWrapper *)self->_visWrapper setSmartStyleReversibilityProcessingEnabled:self->_smartStyleReversibilityProcessingEnabled];
    v6 = [(VISWrapper *)self->_visWrapper enqueueBufferForProcessing:a3];
    if (v6)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_0();
      FigDebugAssert3();
    }

    else
    {
      self->_buffersEnqueued = 1;
    }
  }

  return v6;
}

- (uint64_t)finishProcessing
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_0();
  return FigDebugAssert3();
}

- (uint64_t)purgeResources
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_0();
  return FigDebugAssert3();
}

@end
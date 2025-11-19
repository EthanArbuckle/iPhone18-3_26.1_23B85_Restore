@interface NUNIQuad
- (BOOL)prepareForTime:(double)a3;
- (NUNIQuad)initWithScreenScale:(double)a3 renderer:(id)a4;
- (NUNIViewport)_nuniViewport;
- (void)performOffscreenPassesWithCommandBuffer:(id)a3;
- (void)renderFailedForReason:(unint64_t)a3;
- (void)renderWithCommandBuffer:(id)a3 passDescriptor:(id)a4;
@end

@implementation NUNIQuad

- (NUNIQuad)initWithScreenScale:(double)a3 renderer:(id)a4
{
  v7 = a4;
  v13.receiver = self;
  v13.super_class = NUNIQuad;
  v8 = [(CLKUIQuad *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_screenScale = a3;
    objc_storeStrong(&v8->_renderer, a4);
    v10 = dispatch_semaphore_create(3);
    renderSemaphore = v9->_renderSemaphore;
    v9->_renderSemaphore = v10;
  }

  return v9;
}

- (NUNIViewport)_nuniViewport
{
  v3 = [(CLKUIQuad *)self quadView];
  [v3 frame];
  v5 = v4;
  v7 = v6;

  return ((v5 * self->_screenScale) | ((v7 * self->_screenScale) << 32));
}

- (void)performOffscreenPassesWithCommandBuffer:(id)a3
{
  v5 = a3;
  v4 = [(NUNIQuad *)self scene];
  if (v4)
  {
    [(NUNIRenderer *)self->_renderer renderOffscreenWithScene:v4 viewport:[(NUNIQuad *)self _nuniViewport] commandBuffer:v5];
  }
}

- (BOOL)prepareForTime:(double)a3
{
  v4 = [(NUNIQuad *)self scene];
  if (v4)
  {
    renderSemaphore = self->_renderSemaphore;
    v6 = dispatch_time(0, 3000000000);
    if (!dispatch_semaphore_wait(renderSemaphore, v6))
    {
      [v4 updateFromDateIfNeeded];
      v9 = CACurrentMediaTime() - self->_baseTime;
      *&v9 = v9;
      [v4 update:v9];
      v8 = 1;
      goto LABEL_8;
    }

    v7 = NUNILoggingObjectForDomain(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [NUNIQuad prepareForTime:v7];
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (void)renderWithCommandBuffer:(id)a3 passDescriptor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NUNIQuad *)self scene];
  if (v8)
  {
    [(NUNIRenderer *)self->_renderer renderWithScene:v8 viewport:[(NUNIQuad *)self _nuniViewport] commandBuffer:v6 passDescriptor:v7];
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x3032000000;
    v10[3] = __Block_byref_object_copy__0;
    v10[4] = __Block_byref_object_dispose__0;
    v11 = self->_renderSemaphore;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __51__NUNIQuad_renderWithCommandBuffer_passDescriptor___block_invoke;
    v9[3] = &unk_1E7FF8F40;
    v9[4] = v10;
    [v6 addCompletedHandler:v9];
    _Block_object_dispose(v10, 8);
  }
}

- (void)renderFailedForReason:(unint64_t)a3
{
  v3 = a3;
  v5 = NUNILoggingObjectForDomain(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(NUNIQuad *)v3 renderFailedForReason:v5];
  }

  dispatch_semaphore_signal(self->_renderSemaphore);
}

- (void)renderFailedForReason:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1BC940000, a2, OS_LOG_TYPE_ERROR, "NUNIQuad render failed (reason=%d).", v2, 8u);
}

@end
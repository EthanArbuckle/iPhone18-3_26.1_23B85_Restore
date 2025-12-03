@interface PLThumbnailCascadingDownscaleContext
- (BOOL)downscaleImageSurface:(__IOSurface *)surface destinationCount:(int)count sizes:(id *)sizes cropModes:(int *)modes pixelFormat:(unsigned int)format bytesPerRowAlignment:(int)alignment destinationData:(id)data;
- (PLThumbnailCascadingDownscaleContext)init;
- (void)dealloc;
- (void)discardContexts;
@end

@implementation PLThumbnailCascadingDownscaleContext

- (PLThumbnailCascadingDownscaleContext)init
{
  v15.receiver = self;
  v15.super_class = PLThumbnailCascadingDownscaleContext;
  v2 = [(PLThumbnailCascadingDownscaleContext *)&v15 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD10]);
    lock = v2->_lock;
    v2->_lock = v3;

    objc_initWeak(&location, v2);
    v5 = [PLThumbnailContextCleanupTimer alloc];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __44__PLThumbnailCascadingDownscaleContext_init__block_invoke;
    v12 = &unk_1E75788C0;
    objc_copyWeak(&v13, &location);
    v6 = [(PLThumbnailContextCleanupTimer *)v5 initWithHandler:&v9];
    idleCleanupTimer = v2->_idleCleanupTimer;
    v2->_idleCleanupTimer = v6;

    [(PLThumbnailContextCleanupTimer *)v2->_idleCleanupTimer activate:v9];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (BOOL)downscaleImageSurface:(__IOSurface *)surface destinationCount:(int)count sizes:(id *)sizes cropModes:(int *)modes pixelFormat:(unsigned int)format bytesPerRowAlignment:(int)alignment destinationData:(id)data
{
  v13 = *&count;
  v46 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (surface)
  {
    alignmentCopy = alignment;
    v17 = PLBackendGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v45 = v13;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEBUG, "Downscale context: downscaleImageSurface with destinationCount: %d", buf, 8u);
    }

    [(PLThumbnailContextCleanupTimer *)self->_idleCleanupTimer startOrRestartTimer];
    IOSurfaceGetWidth(surface);
    IOSurfaceGetHeight(surface);
    v32[1] = PLSizeMake() >> 32;
    [(NSLock *)self->_lock lock];
    if (!self->_portraitContext)
    {
      v18 = PLBackendGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEBUG, "Downscale context: Creating CMPhotoCascadeContexts", buf, 2u);
      }

      IOSurfaceGetPixelFormat(surface);
      self->_portraitContext = CMPhotoCascadingDownscaleCreate();
      IOSurfaceGetPixelFormat(surface);
      self->_landscapeContext = CMPhotoCascadingDownscaleCreate();
    }

    formatCopy = format;
    sizesCopy = sizes;
    modesCopy = modes;
    [(NSLock *)self->_lock unlock];
    v32[0] = v32;
    v35 = v13;
    v19 = 8 * v13;
    v20 = v32 - ((v19 + 15) & 0xFFFFFFFF0);
    if (v19 >= 0x200)
    {
      v21 = 512;
    }

    else
    {
      v21 = 8 * v13;
    }

    bzero(v32 - ((v19 + 15) & 0xFFFFFFFF0), v21);
    v42 = 0u;
    v41 = 0u;
    v40 = 0u;
    v39 = 0u;
    v38 = dataCopy;
    v22 = dataCopy;
    v23 = [v22 countByEnumeratingWithState:&v39 objects:v43 count:{16, v32[0]}];
    if (v23)
    {
      v24 = v23;
      v25 = 0;
      v26 = *v40;
      do
      {
        v27 = 0;
        v28 = v25;
        do
        {
          if (*v40 != v26)
          {
            objc_enumerationMutation(v22);
          }

          v25 = v28 + 1;
          *&v20[8 * v28++] = [*(*(&v39 + 1) + 8 * v27++) mutableBytes];
        }

        while (v24 != v27);
        v24 = [v22 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v24);
    }

    [(NSLock *)self->_lock lock];
    v29 = CMPhotoCascadingDownscale();
    [(NSLock *)self->_lock unlock];
    v30 = v29 == 0;
    dataCopy = v38;
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (void)discardContexts
{
  v3 = PLBackendGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "Downscale context: Destroying CMPhotoCascadeContexts", v4, 2u);
  }

  [(NSLock *)self->_lock lock];
  if (self->_portraitContext)
  {
    CMPhotoCascadingDownscaleDestroy();
    self->_portraitContext = 0;
  }

  if (self->_landscapeContext)
  {
    CMPhotoCascadingDownscaleDestroy();
    self->_landscapeContext = 0;
  }

  [(NSLock *)self->_lock unlock];
}

- (void)dealloc
{
  [(PLThumbnailContextCleanupTimer *)self->_idleCleanupTimer invalidate];
  if (self->_portraitContext)
  {
    CMPhotoCascadingDownscaleDestroy();
  }

  if (self->_landscapeContext)
  {
    CMPhotoCascadingDownscaleDestroy();
  }

  lock = self->_lock;
  self->_lock = 0;

  v4.receiver = self;
  v4.super_class = PLThumbnailCascadingDownscaleContext;
  [(PLThumbnailCascadingDownscaleContext *)&v4 dealloc];
}

void __44__PLThumbnailCascadingDownscaleContext_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cleanupTimerFired];
}

@end
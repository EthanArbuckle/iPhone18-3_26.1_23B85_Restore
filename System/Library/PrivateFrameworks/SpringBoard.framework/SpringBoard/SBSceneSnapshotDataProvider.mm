@interface SBSceneSnapshotDataProvider
- (BOOL)hasProtectedContent;
- (SBSceneSnapshotDataProvider)initWithSceneSnapshot:(id)a3 scaleFactor:(double)a4;
- (id)IOSurfaceForFormat:(int64_t)a3;
- (id)fallbackSnapshotDataProvider;
- (id)fetchImageForFormat:(int64_t)a3;
- (void)_invalidateSnapshotData;
- (void)invalidateImage;
@end

@implementation SBSceneSnapshotDataProvider

- (SBSceneSnapshotDataProvider)initWithSceneSnapshot:(id)a3 scaleFactor:(double)a4
{
  v8 = a3;
  if (!v8)
  {
    [SBSceneSnapshotDataProvider initWithSceneSnapshot:a2 scaleFactor:self];
  }

  v21.receiver = self;
  v21.super_class = SBSceneSnapshotDataProvider;
  v9 = [(SBSceneSnapshotDataProvider *)&v21 init];
  v10 = v9;
  if (v9)
  {
    v9->_scaleFactor = a4;
    objc_storeStrong(&v9->_snapshot, a3);
    v11 = objc_alloc_init(SBSnapshotDataProviderContext);
    context = v10->_context;
    v10->_context = v11;

    v13 = v10->_context;
    v14 = [v8 scene];
    v15 = [v14 identifier];
    [(SBSnapshotDataProviderContext *)v13 setSceneID:v15];

    v16 = v10->_context;
    v17 = [v8 configuration];
    [v17 scale];
    [(XBSnapshotDataProviderContext *)v16 setScale:?];

    v18 = v10->_context;
    v19 = [v8 configuration];
    -[XBSnapshotDataProviderContext setOpaque:](v18, "setOpaque:", [v19 isOpaque]);
  }

  return v10;
}

- (id)IOSurfaceForFormat:(int64_t)a3
{
  v5 = [(FBSceneSnapshot *)self->_snapshot IOSurface];
  v6 = self;
  objc_sync_enter(v6);
  if (v5 && (BSFloatIsOne() & 1) == 0)
  {
    processedSurface = v6->_processedSurface;
    if (!processedSurface)
    {
      v8 = SBCreateScaledIOSurface(v5, (a3 - 1) < 2, v6->_scaleFactor);
      v9 = v6->_processedSurface;
      v6->_processedSurface = v8;

      processedSurface = v6->_processedSurface;
    }

    v10 = processedSurface;

    v5 = v10;
  }

  objc_sync_exit(v6);

  return v5;
}

- (id)fallbackSnapshotDataProvider
{
  fallbackSnapshotDataProvider = self->_fallbackSnapshotDataProvider;
  if (!fallbackSnapshotDataProvider)
  {
    v4 = [[SBFallbackSnapshotDataProvider alloc] initWithSceneSnapshot:self->_snapshot scaleFactor:self->_scaleFactor];
    v5 = self->_fallbackSnapshotDataProvider;
    self->_fallbackSnapshotDataProvider = v4;

    fallbackSnapshotDataProvider = self->_fallbackSnapshotDataProvider;
  }

  return fallbackSnapshotDataProvider;
}

- (BOOL)hasProtectedContent
{
  snapshot = self->_snapshot;
  if (snapshot)
  {
    hasProtectedContent = [(FBSceneSnapshot *)snapshot hasProtectedContent];
    self->_hasProtectedContent = hasProtectedContent;
  }

  else
  {
    hasProtectedContent = self->_hasProtectedContent;
  }

  return hasProtectedContent & 1;
}

- (id)fetchImageForFormat:(int64_t)a3
{
  v35 = *MEMORY[0x277D85DE8];
  cachedImage = self->_cachedImage;
  if (!cachedImage)
  {
    v6 = [(SBSceneSnapshotDataProvider *)self IOSurfaceForFormat:?];
    if (v6)
    {
      v7 = [(SBSceneSnapshotDataProvider *)self hasProtectedContent];
      [(XBSnapshotDataProviderContext *)self->_context scale];
      v9 = SBCreateUIImageFromIOSurfaceResizingIfNecessary(v6, 0, v7, [(XBSnapshotDataProviderContext *)self->_context isOpaque], (a3 - 1) < 2, v8, 1.0);
    }

    else
    {
      v12 = MEMORY[0x277D755B8];
      v13 = [(FBSceneSnapshot *)self->_snapshot CGImage];
      [(XBSnapshotDataProviderContext *)self->_context scale];
      v9 = [v12 imageWithCGImage:v13 scale:0 orientation:?];
      if (v9 && (BSFloatIsOne() & 1) == 0)
      {
        memset(&v33, 0, sizeof(v33));
        CGAffineTransformMakeScale(&v33, self->_scaleFactor, self->_scaleFactor);
        [(UIImage *)v9 size];
        BSRectWithSize();
        *v34 = v33;
        CGRectApplyAffineTransform(v39, v34);
        [(XBSnapshotDataProviderContext *)self->_context scale];
        UIRectIntegralWithScale();
        v17 = v16;
        v19 = v18;
        v20 = *(MEMORY[0x277CBF3A8] + 8);
        if (*MEMORY[0x277CBF3A8] == v14 && v20 == v15)
        {
          v28 = SBLogSceneSnapshots();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = [(SBSnapshotDataProviderContext *)self->_context sceneID];
            [(UIImage *)v9 size];
            v30 = NSStringFromSize(v38);
            scaleFactor = self->_scaleFactor;
            [(XBSnapshotDataProviderContext *)self->_context scale];
            *v34 = 138544386;
            *&v34[4] = v29;
            *&v34[12] = 2048;
            *&v34[14] = v9;
            *&v34[22] = 2114;
            *&v34[24] = v30;
            *&v34[32] = 2048;
            *&v34[34] = scaleFactor;
            *&v34[42] = 2048;
            *&v34[44] = v32;
            _os_log_impl(&dword_21ED4E000, v28, OS_LOG_TYPE_DEFAULT, "Can't create 0-size image for '%{public}@' (image %p, %{public}@, scaleFactor %f, context scale %f) ", v34, 0x34u);
          }

          v9 = 0;
        }

        else
        {
          v22 = v14;
          v23 = v15;
          v24 = [(XBSnapshotDataProviderContext *)self->_context isOpaque:*MEMORY[0x277CBF3A8]];
          [(XBSnapshotDataProviderContext *)self->_context scale];
          v26 = v25;
          v37.width = v22;
          v37.height = v23;
          UIGraphicsBeginImageContextWithOptions(v37, v24, v26);
          [(UIImage *)v9 drawInRect:v17, v19, v22, v23];
          v27 = UIGraphicsGetImageFromCurrentImageContext();

          UIGraphicsEndImageContext();
          v9 = v27;
        }
      }
    }

    v10 = self->_cachedImage;
    self->_cachedImage = v9;

    [(SBSceneSnapshotDataProvider *)self _invalidateSnapshotData];
    cachedImage = self->_cachedImage;
  }

  return cachedImage;
}

- (void)invalidateImage
{
  cachedImage = self->_cachedImage;
  self->_cachedImage = 0;
}

- (void)_invalidateSnapshotData
{
  processedSurface = self->_processedSurface;
  self->_processedSurface = 0;

  snapshot = self->_snapshot;
  self->_snapshot = 0;

  context = self->_context;
  self->_context = 0;

  fallbackSnapshotDataProvider = self->_fallbackSnapshotDataProvider;
  self->_fallbackSnapshotDataProvider = 0;
}

- (void)initWithSceneSnapshot:(uint64_t)a1 scaleFactor:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSnapshotDataProvider.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"snapshot"}];
}

@end
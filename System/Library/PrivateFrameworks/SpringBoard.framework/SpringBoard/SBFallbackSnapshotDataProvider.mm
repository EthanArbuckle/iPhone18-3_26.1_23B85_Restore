@interface SBFallbackSnapshotDataProvider
- (SBFallbackSnapshotDataProvider)initWithSceneSnapshot:(id)a3 scaleFactor:(double)a4;
- (id)IOSurfaceForFormat:(int64_t)a3;
- (id)fetchImageForFormat:(int64_t)a3;
- (void)_invalidateSnapshotData;
- (void)invalidateImage;
@end

@implementation SBFallbackSnapshotDataProvider

- (SBFallbackSnapshotDataProvider)initWithSceneSnapshot:(id)a3 scaleFactor:(double)a4
{
  v8 = a3;
  if (!v8)
  {
    [SBFallbackSnapshotDataProvider initWithSceneSnapshot:a2 scaleFactor:self];
  }

  v21.receiver = self;
  v21.super_class = SBFallbackSnapshotDataProvider;
  v9 = [(SBFallbackSnapshotDataProvider *)&v21 init];
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
  v5 = [(FBSceneSnapshot *)self->_snapshot fallbackIOSurface];
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

- (id)fetchImageForFormat:(int64_t)a3
{
  cachedImage = self->_cachedImage;
  if (!cachedImage)
  {
    v6 = [(SBFallbackSnapshotDataProvider *)self IOSurfaceForFormat:?];
    v7 = v6;
    if (v6)
    {
      [(XBSnapshotDataProviderContext *)self->_context scale];
      v6 = SBCreateUIImageFromIOSurfaceResizingIfNecessary(v7, 0, 0, [(XBSnapshotDataProviderContext *)self->_context isOpaque], (a3 - 1) < 2, v8, 1.0);
    }

    v9 = self->_cachedImage;
    self->_cachedImage = v6;

    [(SBFallbackSnapshotDataProvider *)self _invalidateSnapshotData];
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
}

- (void)initWithSceneSnapshot:(uint64_t)a1 scaleFactor:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSnapshotDataProvider.m" lineNumber:217 description:{@"Invalid parameter not satisfying: %@", @"snapshot"}];
}

@end
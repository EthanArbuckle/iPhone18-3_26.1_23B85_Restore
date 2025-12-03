@interface SBFallbackSnapshotDataProvider
- (SBFallbackSnapshotDataProvider)initWithSceneSnapshot:(id)snapshot scaleFactor:(double)factor;
- (id)IOSurfaceForFormat:(int64_t)format;
- (id)fetchImageForFormat:(int64_t)format;
- (void)_invalidateSnapshotData;
- (void)invalidateImage;
@end

@implementation SBFallbackSnapshotDataProvider

- (SBFallbackSnapshotDataProvider)initWithSceneSnapshot:(id)snapshot scaleFactor:(double)factor
{
  snapshotCopy = snapshot;
  if (!snapshotCopy)
  {
    [SBFallbackSnapshotDataProvider initWithSceneSnapshot:a2 scaleFactor:self];
  }

  v21.receiver = self;
  v21.super_class = SBFallbackSnapshotDataProvider;
  v9 = [(SBFallbackSnapshotDataProvider *)&v21 init];
  v10 = v9;
  if (v9)
  {
    v9->_scaleFactor = factor;
    objc_storeStrong(&v9->_snapshot, snapshot);
    v11 = objc_alloc_init(SBSnapshotDataProviderContext);
    context = v10->_context;
    v10->_context = v11;

    v13 = v10->_context;
    scene = [snapshotCopy scene];
    identifier = [scene identifier];
    [(SBSnapshotDataProviderContext *)v13 setSceneID:identifier];

    v16 = v10->_context;
    configuration = [snapshotCopy configuration];
    [configuration scale];
    [(XBSnapshotDataProviderContext *)v16 setScale:?];

    v18 = v10->_context;
    configuration2 = [snapshotCopy configuration];
    -[XBSnapshotDataProviderContext setOpaque:](v18, "setOpaque:", [configuration2 isOpaque]);
  }

  return v10;
}

- (id)IOSurfaceForFormat:(int64_t)format
{
  fallbackIOSurface = [(FBSceneSnapshot *)self->_snapshot fallbackIOSurface];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (fallbackIOSurface && (BSFloatIsOne() & 1) == 0)
  {
    processedSurface = selfCopy->_processedSurface;
    if (!processedSurface)
    {
      v8 = SBCreateScaledIOSurface(fallbackIOSurface, (format - 1) < 2, selfCopy->_scaleFactor);
      v9 = selfCopy->_processedSurface;
      selfCopy->_processedSurface = v8;

      processedSurface = selfCopy->_processedSurface;
    }

    v10 = processedSurface;

    fallbackIOSurface = v10;
  }

  objc_sync_exit(selfCopy);

  return fallbackIOSurface;
}

- (id)fetchImageForFormat:(int64_t)format
{
  cachedImage = self->_cachedImage;
  if (!cachedImage)
  {
    v6 = [(SBFallbackSnapshotDataProvider *)self IOSurfaceForFormat:?];
    v7 = v6;
    if (v6)
    {
      [(XBSnapshotDataProviderContext *)self->_context scale];
      v6 = SBCreateUIImageFromIOSurfaceResizingIfNecessary(v7, 0, 0, [(XBSnapshotDataProviderContext *)self->_context isOpaque], (format - 1) < 2, v8, 1.0);
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
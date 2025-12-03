@interface PBFPosterSnapshotContainer
- (PBFPosterSnapshotContainer)initWithPosterSnapshot:(id)snapshot imageBlockSet:(CGImageBlockSet *)set;
- (void)dealloc;
@end

@implementation PBFPosterSnapshotContainer

- (PBFPosterSnapshotContainer)initWithPosterSnapshot:(id)snapshot imageBlockSet:(CGImageBlockSet *)set
{
  snapshotCopy = snapshot;
  v11.receiver = self;
  v11.super_class = PBFPosterSnapshotContainer;
  v8 = [(PBFPosterSnapshotContainer *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_posterSnapshot, snapshot);
    if (set)
    {
      CGImageBlockSetRetain();
      v9->_imageBlockSet = set;
    }
  }

  return v9;
}

- (void)dealloc
{
  if (self->_imageBlockSet)
  {
    CGImageBlockSetRelease();
  }

  v3.receiver = self;
  v3.super_class = PBFPosterSnapshotContainer;
  [(PBFPosterSnapshotContainer *)&v3 dealloc];
}

@end
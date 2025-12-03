@interface _PXSnapshottableImageView
- (id)snapshotViewAfterScreenUpdates:(BOOL)updates;
@end

@implementation _PXSnapshottableImageView

- (id)snapshotViewAfterScreenUpdates:(BOOL)updates
{
  v5.receiver = self;
  v5.super_class = _PXSnapshottableImageView;
  v3 = [(_PXSnapshottableImageView *)&v5 snapshotViewAfterScreenUpdates:1];

  return v3;
}

@end
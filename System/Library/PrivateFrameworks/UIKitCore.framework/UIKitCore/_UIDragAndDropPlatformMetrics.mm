@interface _UIDragAndDropPlatformMetrics
- (CGSize)previewMinimumSize;
- (_UIDragAndDropPlatformMetrics)init;
@end

@implementation _UIDragAndDropPlatformMetrics

- (_UIDragAndDropPlatformMetrics)init
{
  v5.receiver = self;
  v5.super_class = _UIDragAndDropPlatformMetrics;
  v2 = [(_UIDragAndDropPlatformMetrics *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_UIDragAndDropPlatformMetrics *)v2 setDefaultPreviewOutlineProvider:&__block_literal_global_282];
    [(_UIDragAndDropPlatformMetrics *)v3 setPreviewMinimumSize:16.0, 16.0];
  }

  return v3;
}

- (CGSize)previewMinimumSize
{
  width = self->_previewMinimumSize.width;
  height = self->_previewMinimumSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
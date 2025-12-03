@interface PXPhotosDetailsActionsSpec
- (PXPhotosDetailsActionsSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options;
@end

@implementation PXPhotosDetailsActionsSpec

- (PXPhotosDetailsActionsSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options
{
  v7.receiver = self;
  v7.super_class = PXPhotosDetailsActionsSpec;
  v4 = [(PXPhotosDetailsActionsSpec *)&v7 initWithExtendedTraitCollection:collection options:options];
  v5 = v4;
  if (v4)
  {
    v4->_shouldShowSeparators = 0;
    v4->_shouldInsetAllSeparators = [(PXPhotosDetailsActionsSpec *)v4 shouldInsetAllPhotoDetailsContent];
  }

  return v5;
}

@end
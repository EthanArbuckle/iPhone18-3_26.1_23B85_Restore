@interface PXPhotosDetailsActionsSpec
- (PXPhotosDetailsActionsSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4;
@end

@implementation PXPhotosDetailsActionsSpec

- (PXPhotosDetailsActionsSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = PXPhotosDetailsActionsSpec;
  v4 = [(PXPhotosDetailsActionsSpec *)&v7 initWithExtendedTraitCollection:a3 options:a4];
  v5 = v4;
  if (v4)
  {
    v4->_shouldShowSeparators = 0;
    v4->_shouldInsetAllSeparators = [(PXPhotosDetailsActionsSpec *)v4 shouldInsetAllPhotoDetailsContent];
  }

  return v5;
}

@end
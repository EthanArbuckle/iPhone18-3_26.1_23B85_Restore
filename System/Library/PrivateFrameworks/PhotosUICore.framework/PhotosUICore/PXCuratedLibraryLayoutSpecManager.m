@interface PXCuratedLibraryLayoutSpecManager
- (BOOL)shouldUpdateSpecForExtendedTraitCollection:(id)a3 change:(unint64_t)a4;
- (PXCuratedLibraryLayoutSpecManager)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 variant:(int64_t)a5;
- (id)createSpec;
- (void)setVariant:(int64_t)a3;
@end

@implementation PXCuratedLibraryLayoutSpecManager

- (id)createSpec
{
  v3 = [PXCuratedLibraryLayoutSpec alloc];
  v4 = [(PXFeatureSpecManager *)self extendedTraitCollection];
  v5 = [(PXCuratedLibraryLayoutSpec *)v3 initWithExtendedTraitCollection:v4 options:[(PXFeatureSpecManager *)self options] variant:[(PXCuratedLibraryLayoutSpecManager *)self variant]];

  return v5;
}

- (BOOL)shouldUpdateSpecForExtendedTraitCollection:(id)a3 change:(unint64_t)a4
{
  v4 = a4;
  v5 = a3;
  v6 = v5;
  v7 = (v4 & 0x10) != 0 && [v5 layoutSizeClass] == 2 && objc_msgSend(v6, "userInterfaceIdiom") != 5 || (*&v4 & 0x41D0ALL) != 0;

  return v7;
}

- (void)setVariant:(int64_t)a3
{
  if (self->_variant != a3)
  {
    self->_variant = a3;
    [(PXFeatureSpecManager *)self invalidateSpec];
  }
}

- (PXCuratedLibraryLayoutSpecManager)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 variant:(int64_t)a5
{
  v7.receiver = self;
  v7.super_class = PXCuratedLibraryLayoutSpecManager;
  result = [(PXFeatureSpecManager *)&v7 initWithExtendedTraitCollection:a3 options:a4];
  if (result)
  {
    result->_variant = a5;
  }

  return result;
}

@end
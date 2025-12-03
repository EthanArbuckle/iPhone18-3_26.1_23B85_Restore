@interface PXCuratedLibraryLayoutSpecManager
- (BOOL)shouldUpdateSpecForExtendedTraitCollection:(id)collection change:(unint64_t)change;
- (PXCuratedLibraryLayoutSpecManager)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options variant:(int64_t)variant;
- (id)createSpec;
- (void)setVariant:(int64_t)variant;
@end

@implementation PXCuratedLibraryLayoutSpecManager

- (id)createSpec
{
  v3 = [PXCuratedLibraryLayoutSpec alloc];
  extendedTraitCollection = [(PXFeatureSpecManager *)self extendedTraitCollection];
  v5 = [(PXCuratedLibraryLayoutSpec *)v3 initWithExtendedTraitCollection:extendedTraitCollection options:[(PXFeatureSpecManager *)self options] variant:[(PXCuratedLibraryLayoutSpecManager *)self variant]];

  return v5;
}

- (BOOL)shouldUpdateSpecForExtendedTraitCollection:(id)collection change:(unint64_t)change
{
  changeCopy = change;
  collectionCopy = collection;
  v6 = collectionCopy;
  v7 = (changeCopy & 0x10) != 0 && [collectionCopy layoutSizeClass] == 2 && objc_msgSend(v6, "userInterfaceIdiom") != 5 || (*&changeCopy & 0x41D0ALL) != 0;

  return v7;
}

- (void)setVariant:(int64_t)variant
{
  if (self->_variant != variant)
  {
    self->_variant = variant;
    [(PXFeatureSpecManager *)self invalidateSpec];
  }
}

- (PXCuratedLibraryLayoutSpecManager)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options variant:(int64_t)variant
{
  v7.receiver = self;
  v7.super_class = PXCuratedLibraryLayoutSpecManager;
  result = [(PXFeatureSpecManager *)&v7 initWithExtendedTraitCollection:collection options:options];
  if (result)
  {
    result->_variant = variant;
  }

  return result;
}

@end
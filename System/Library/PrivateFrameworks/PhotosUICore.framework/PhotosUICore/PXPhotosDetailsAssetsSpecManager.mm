@interface PXPhotosDetailsAssetsSpecManager
- (PXPhotosDetailsAssetsSpecManager)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options detailsOptions:(unint64_t)detailsOptions;
- (id)createSpec;
@end

@implementation PXPhotosDetailsAssetsSpecManager

- (id)createSpec
{
  extendedTraitCollection = [(PXFeatureSpecManager *)self extendedTraitCollection];
  v4 = [[PXPhotosDetailsAssetsSpec alloc] initWithExtendedTraitCollection:extendedTraitCollection detailsOptions:[(PXPhotosDetailsAssetsSpecManager *)self detailsOptions]];

  return v4;
}

- (PXPhotosDetailsAssetsSpecManager)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options detailsOptions:(unint64_t)detailsOptions
{
  v7.receiver = self;
  v7.super_class = PXPhotosDetailsAssetsSpecManager;
  result = [(PXFeatureSpecManager *)&v7 initWithExtendedTraitCollection:collection options:options];
  if (result)
  {
    result->_detailsOptions = detailsOptions;
  }

  return result;
}

@end
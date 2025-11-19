@interface PXPhotosDetailsAssetsSpecManager
- (PXPhotosDetailsAssetsSpecManager)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 detailsOptions:(unint64_t)a5;
- (id)createSpec;
@end

@implementation PXPhotosDetailsAssetsSpecManager

- (id)createSpec
{
  v3 = [(PXFeatureSpecManager *)self extendedTraitCollection];
  v4 = [[PXPhotosDetailsAssetsSpec alloc] initWithExtendedTraitCollection:v3 detailsOptions:[(PXPhotosDetailsAssetsSpecManager *)self detailsOptions]];

  return v4;
}

- (PXPhotosDetailsAssetsSpecManager)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 detailsOptions:(unint64_t)a5
{
  v7.receiver = self;
  v7.super_class = PXPhotosDetailsAssetsSpecManager;
  result = [(PXFeatureSpecManager *)&v7 initWithExtendedTraitCollection:a3 options:a4];
  if (result)
  {
    result->_detailsOptions = a5;
  }

  return result;
}

@end
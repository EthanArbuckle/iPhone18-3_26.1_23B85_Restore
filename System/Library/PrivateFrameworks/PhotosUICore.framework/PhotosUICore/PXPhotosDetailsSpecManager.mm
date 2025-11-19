@interface PXPhotosDetailsSpecManager
- (PXPhotosDetailsSpecManager)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 detailsOptions:(unint64_t)a5;
- (id)createSpec;
@end

@implementation PXPhotosDetailsSpecManager

- (id)createSpec
{
  v3 = [(PXFeatureSpecManager *)self extendedTraitCollection];
  v4 = [[PXPhotosDetailsSpec alloc] initWithExtendedTraitCollection:v3 options:[(PXFeatureSpecManager *)self options] detailsOptions:[(PXPhotosDetailsSpecManager *)self detailsOptions]];

  return v4;
}

- (PXPhotosDetailsSpecManager)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 detailsOptions:(unint64_t)a5
{
  self->_detailsOptions = a5;
  v6.receiver = self;
  v6.super_class = PXPhotosDetailsSpecManager;
  return [(PXFeatureSpecManager *)&v6 initWithExtendedTraitCollection:a3 options:a4];
}

@end
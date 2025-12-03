@interface PXPhotosDetailsSpecManager
- (PXPhotosDetailsSpecManager)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options detailsOptions:(unint64_t)detailsOptions;
- (id)createSpec;
@end

@implementation PXPhotosDetailsSpecManager

- (id)createSpec
{
  extendedTraitCollection = [(PXFeatureSpecManager *)self extendedTraitCollection];
  v4 = [[PXPhotosDetailsSpec alloc] initWithExtendedTraitCollection:extendedTraitCollection options:[(PXFeatureSpecManager *)self options] detailsOptions:[(PXPhotosDetailsSpecManager *)self detailsOptions]];

  return v4;
}

- (PXPhotosDetailsSpecManager)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options detailsOptions:(unint64_t)detailsOptions
{
  self->_detailsOptions = detailsOptions;
  v6.receiver = self;
  v6.super_class = PXPhotosDetailsSpecManager;
  return [(PXFeatureSpecManager *)&v6 initWithExtendedTraitCollection:collection options:options];
}

@end
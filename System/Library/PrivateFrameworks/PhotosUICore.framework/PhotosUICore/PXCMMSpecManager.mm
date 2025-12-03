@interface PXCMMSpecManager
- (PXCMMSpecManager)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options activityType:(unint64_t)type;
- (id)createSpec;
@end

@implementation PXCMMSpecManager

- (id)createSpec
{
  extendedTraitCollection = [(PXFeatureSpecManager *)self extendedTraitCollection];
  v4 = [[PXCMMSpec alloc] initWithExtendedTraitCollection:extendedTraitCollection options:[(PXFeatureSpecManager *)self options] activityType:[(PXCMMSpecManager *)self activityType]];

  return v4;
}

- (PXCMMSpecManager)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options activityType:(unint64_t)type
{
  v7.receiver = self;
  v7.super_class = PXCMMSpecManager;
  result = [(PXFeatureSpecManager *)&v7 initWithExtendedTraitCollection:collection options:options];
  if (result)
  {
    result->_activityType = type;
  }

  return result;
}

@end
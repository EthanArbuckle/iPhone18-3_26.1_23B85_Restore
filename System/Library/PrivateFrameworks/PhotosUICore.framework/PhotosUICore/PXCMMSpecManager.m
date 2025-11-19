@interface PXCMMSpecManager
- (PXCMMSpecManager)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 activityType:(unint64_t)a5;
- (id)createSpec;
@end

@implementation PXCMMSpecManager

- (id)createSpec
{
  v3 = [(PXFeatureSpecManager *)self extendedTraitCollection];
  v4 = [[PXCMMSpec alloc] initWithExtendedTraitCollection:v3 options:[(PXFeatureSpecManager *)self options] activityType:[(PXCMMSpecManager *)self activityType]];

  return v4;
}

- (PXCMMSpecManager)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 activityType:(unint64_t)a5
{
  v7.receiver = self;
  v7.super_class = PXCMMSpecManager;
  result = [(PXFeatureSpecManager *)&v7 initWithExtendedTraitCollection:a3 options:a4];
  if (result)
  {
    result->_activityType = a5;
  }

  return result;
}

@end
@interface PXMemoriesSpecManager
- (BOOL)shouldUpdateSpecForExtendedTraitCollection:(id)a3 change:(unint64_t)a4;
- (PXMemoriesSpecManager)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 style:(unint64_t)a5;
- (id)createSpec;
@end

@implementation PXMemoriesSpecManager

- (id)createSpec
{
  v3 = [(PXFeatureSpecManager *)self extendedTraitCollection];
  v4 = [[PXMemoriesSpec alloc] initWithExtendedTraitCollection:v3 options:[(PXFeatureSpecManager *)self options] style:[(PXMemoriesSpecManager *)self style]];

  return v4;
}

- (BOOL)shouldUpdateSpecForExtendedTraitCollection:(id)a3 change:(unint64_t)a4
{
  v6 = a3;
  if ((a4 & 0x100) != 0)
  {
    v7 = [(PXFeatureSpecManager *)self extendedTraitCollection];
    if ([v7 userInterfaceIdiom] != 3)
    {
      [(PXFeatureSpecManager *)self spec];
      [objc_claimAutoreleasedReturnValue() safeAreaInsets];
      sub_1A524D1D4();
    }
  }

  v10.receiver = self;
  v10.super_class = PXMemoriesSpecManager;
  v8 = [(PXFeatureSpecManager *)&v10 shouldUpdateSpecForExtendedTraitCollection:v6 change:a4];

  return v8;
}

- (PXMemoriesSpecManager)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 style:(unint64_t)a5
{
  v7.receiver = self;
  v7.super_class = PXMemoriesSpecManager;
  result = [(PXFeatureSpecManager *)&v7 initWithExtendedTraitCollection:a3 options:a4];
  if (result)
  {
    result->_style = a5;
  }

  return result;
}

@end
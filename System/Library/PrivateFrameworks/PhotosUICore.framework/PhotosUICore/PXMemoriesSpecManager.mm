@interface PXMemoriesSpecManager
- (BOOL)shouldUpdateSpecForExtendedTraitCollection:(id)collection change:(unint64_t)change;
- (PXMemoriesSpecManager)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options style:(unint64_t)style;
- (id)createSpec;
@end

@implementation PXMemoriesSpecManager

- (id)createSpec
{
  extendedTraitCollection = [(PXFeatureSpecManager *)self extendedTraitCollection];
  v4 = [[PXMemoriesSpec alloc] initWithExtendedTraitCollection:extendedTraitCollection options:[(PXFeatureSpecManager *)self options] style:[(PXMemoriesSpecManager *)self style]];

  return v4;
}

- (BOOL)shouldUpdateSpecForExtendedTraitCollection:(id)collection change:(unint64_t)change
{
  collectionCopy = collection;
  if ((change & 0x100) != 0)
  {
    extendedTraitCollection = [(PXFeatureSpecManager *)self extendedTraitCollection];
    if ([extendedTraitCollection userInterfaceIdiom] != 3)
    {
      [(PXFeatureSpecManager *)self spec];
      [objc_claimAutoreleasedReturnValue() safeAreaInsets];
      sub_1A524D1D4();
    }
  }

  v10.receiver = self;
  v10.super_class = PXMemoriesSpecManager;
  v8 = [(PXFeatureSpecManager *)&v10 shouldUpdateSpecForExtendedTraitCollection:collectionCopy change:change];

  return v8;
}

- (PXMemoriesSpecManager)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options style:(unint64_t)style
{
  v7.receiver = self;
  v7.super_class = PXMemoriesSpecManager;
  result = [(PXFeatureSpecManager *)&v7 initWithExtendedTraitCollection:collection options:options];
  if (result)
  {
    result->_style = style;
  }

  return result;
}

@end
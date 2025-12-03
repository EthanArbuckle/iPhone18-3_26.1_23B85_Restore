@interface PUImportOneUpViewControllerSpecManager
- (PUImportOneUpViewControllerSpecManager)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options style:(unint64_t)style;
- (id)createSpec;
@end

@implementation PUImportOneUpViewControllerSpecManager

- (id)createSpec
{
  extendedTraitCollection = [(PXFeatureSpecManager *)self extendedTraitCollection];
  v4 = [[PUImportOneUpViewControllerSpec alloc] initWithExtendedTraitCollection:extendedTraitCollection options:[(PXFeatureSpecManager *)self options] style:[(PUImportOneUpViewControllerSpecManager *)self style]];

  return v4;
}

- (PUImportOneUpViewControllerSpecManager)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options style:(unint64_t)style
{
  v7.receiver = self;
  v7.super_class = PUImportOneUpViewControllerSpecManager;
  result = [(PXFeatureSpecManager *)&v7 initWithExtendedTraitCollection:collection options:options];
  if (result)
  {
    result->_style = style;
  }

  return result;
}

@end
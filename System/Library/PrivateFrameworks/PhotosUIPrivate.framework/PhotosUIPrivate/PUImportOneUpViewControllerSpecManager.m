@interface PUImportOneUpViewControllerSpecManager
- (PUImportOneUpViewControllerSpecManager)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 style:(unint64_t)a5;
- (id)createSpec;
@end

@implementation PUImportOneUpViewControllerSpecManager

- (id)createSpec
{
  v3 = [(PXFeatureSpecManager *)self extendedTraitCollection];
  v4 = [[PUImportOneUpViewControllerSpec alloc] initWithExtendedTraitCollection:v3 options:[(PXFeatureSpecManager *)self options] style:[(PUImportOneUpViewControllerSpecManager *)self style]];

  return v4;
}

- (PUImportOneUpViewControllerSpecManager)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 style:(unint64_t)a5
{
  v7.receiver = self;
  v7.super_class = PUImportOneUpViewControllerSpecManager;
  result = [(PXFeatureSpecManager *)&v7 initWithExtendedTraitCollection:a3 options:a4];
  if (result)
  {
    result->_style = a5;
  }

  return result;
}

@end
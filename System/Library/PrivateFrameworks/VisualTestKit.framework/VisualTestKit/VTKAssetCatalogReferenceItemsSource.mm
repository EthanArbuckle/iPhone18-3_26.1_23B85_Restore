@interface VTKAssetCatalogReferenceItemsSource
- (id)referenceImageWithID:(id)a3 testCase:(id)a4 error:(id *)a5;
@end

@implementation VTKAssetCatalogReferenceItemsSource

- (id)referenceImageWithID:(id)a3 testCase:(id)a4 error:(id *)a5
{
  v5 = a3;
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v5 vtkAssertName];
  v8 = [v5 vtkIDDecorationsMask];

  if ((v8 & 0x10) != 0)
  {
    v10 = +[UIContentSizeCategoryPreference system];
    v11 = [v10 preferredContentSizeCategory];
    v9 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:v11];
  }

  else
  {
    v9 = 0;
  }

  if ((v8 & 8) == 0 || (_StringExtensionForMask(8), v12 = objc_claimAutoreleasedReturnValue(), [NSString stringWithFormat:@"%@-%@", v7, v12], v13 = objc_claimAutoreleasedReturnValue(), [UIImage imageNamed:v13 inBundle:v6 compatibleWithTraitCollection:v9], v14 = objc_claimAutoreleasedReturnValue(), v13, v12, !v14))
  {
    v14 = [UIImage imageNamed:v7 inBundle:v6 compatibleWithTraitCollection:v9];
  }

  return v14;
}

@end
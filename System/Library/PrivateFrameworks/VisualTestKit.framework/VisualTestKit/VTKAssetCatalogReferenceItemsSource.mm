@interface VTKAssetCatalogReferenceItemsSource
- (id)referenceImageWithID:(id)d testCase:(id)case error:(id *)error;
@end

@implementation VTKAssetCatalogReferenceItemsSource

- (id)referenceImageWithID:(id)d testCase:(id)case error:(id *)error
{
  dCopy = d;
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  vtkAssertName = [dCopy vtkAssertName];
  vtkIDDecorationsMask = [dCopy vtkIDDecorationsMask];

  if ((vtkIDDecorationsMask & 0x10) != 0)
  {
    v10 = +[UIContentSizeCategoryPreference system];
    preferredContentSizeCategory = [v10 preferredContentSizeCategory];
    v9 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:preferredContentSizeCategory];
  }

  else
  {
    v9 = 0;
  }

  if ((vtkIDDecorationsMask & 8) == 0 || (_StringExtensionForMask(8), v12 = objc_claimAutoreleasedReturnValue(), [NSString stringWithFormat:@"%@-%@", vtkAssertName, v12], v13 = objc_claimAutoreleasedReturnValue(), [UIImage imageNamed:v13 inBundle:v6 compatibleWithTraitCollection:v9], v14 = objc_claimAutoreleasedReturnValue(), v13, v12, !v14))
  {
    v14 = [UIImage imageNamed:vtkAssertName inBundle:v6 compatibleWithTraitCollection:v9];
  }

  return v14;
}

@end
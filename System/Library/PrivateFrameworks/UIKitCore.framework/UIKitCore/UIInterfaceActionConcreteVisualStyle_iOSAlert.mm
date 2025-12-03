@interface UIInterfaceActionConcreteVisualStyle_iOSAlert
- (CGSize)minimumActionContentSize;
- (id)_preferredActionFont;
- (id)_regularActionFont;
@end

@implementation UIInterfaceActionConcreteVisualStyle_iOSAlert

- (CGSize)minimumActionContentSize
{
  v2 = _UISolariumEnabled();
  v3 = 48.0;
  if (!v2)
  {
    v3 = 44.0;
  }

  v4 = 0.0;
  result.height = v3;
  result.width = v4;
  return result;
}

- (id)_regularActionFont
{
  traitCollection = [(UIInterfaceActionConcreteVisualStyle_iOS *)self traitCollection];
  v4 = _traitCollectionByFlooringContentSizeCategoryToLarge(traitCollection);
  v5 = [off_1E70ECC20 _preferredFontDescriptorWithTextStyle:@"UICTFontTextStyleBody" addingSymbolicTraits:0x8000 compatibleWithTraitCollection:v4];

  if (_UISolariumEnabled())
  {
    v6 = *off_1E70ECD20;
    traitCollection2 = [(UIInterfaceActionConcreteVisualStyle_iOS *)self traitCollection];
    v8 = _traitCollectionByFlooringContentSizeCategoryToLarge(traitCollection2);
    v9 = [off_1E70ECC20 _preferredFontDescriptorWithTextStyle:@"UICTFontTextStyleBody" design:0 weight:v8 compatibleWithTraitCollection:v6];

    v5 = v9;
  }

  v10 = [off_1E70ECC18 fontWithDescriptor:v5 size:0.0];

  return v10;
}

- (id)_preferredActionFont
{
  traitCollection = [(UIInterfaceActionConcreteVisualStyle_iOS *)self traitCollection];
  v4 = _traitCollectionByFlooringContentSizeCategoryToLarge(traitCollection);
  v5 = [off_1E70ECC20 _preferredFontDescriptorWithTextStyle:@"UICTFontTextStyleHeadline" addingSymbolicTraits:0x8000 compatibleWithTraitCollection:v4];

  if (_UISolariumEnabled())
  {
    v6 = *off_1E70ECD30;
    traitCollection2 = [(UIInterfaceActionConcreteVisualStyle_iOS *)self traitCollection];
    v8 = _traitCollectionByFlooringContentSizeCategoryToLarge(traitCollection2);
    v9 = [off_1E70ECC20 _preferredFontDescriptorWithTextStyle:@"UICTFontTextStyleBody" design:0 weight:v8 compatibleWithTraitCollection:v6];

    v5 = v9;
  }

  v10 = [off_1E70ECC18 fontWithDescriptor:v5 size:0.0];

  return v10;
}

@end
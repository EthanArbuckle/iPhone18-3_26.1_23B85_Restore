@interface UIKBKeyDisplayContents
+ (id)displayContents;
- (id)description;
- (void)setDisplayPathType:(int64_t)type;
- (void)setDisplayString:(id)string;
@end

@implementation UIKBKeyDisplayContents

+ (id)displayContents
{
  v2 = objc_alloc_init(UIKBKeyDisplayContents);

  return v2;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  displayString = [(UIKBKeyDisplayContents *)self displayString];

  if (displayString)
  {
    displayString2 = [(UIKBKeyDisplayContents *)self displayString];
    [v3 appendFormat:@"; displayString = %@", displayString2];
  }

  displayStringImage = [(UIKBKeyDisplayContents *)self displayStringImage];

  if (displayStringImage)
  {
    displayStringImage2 = [(UIKBKeyDisplayContents *)self displayStringImage];
    [v3 appendFormat:@"; displayStringImage = %@", displayStringImage2];
  }

  secondaryDisplayStrings = [(UIKBKeyDisplayContents *)self secondaryDisplayStrings];

  if (secondaryDisplayStrings)
  {
    secondaryDisplayStrings2 = [(UIKBKeyDisplayContents *)self secondaryDisplayStrings];
    [v3 appendFormat:@"; secondaryDisplayStrings = %@", secondaryDisplayStrings2];
  }

  secondaryDisplayStringImages = [(UIKBKeyDisplayContents *)self secondaryDisplayStringImages];

  if (secondaryDisplayStringImages)
  {
    secondaryDisplayStringImages2 = [(UIKBKeyDisplayContents *)self secondaryDisplayStringImages];
    [v3 appendFormat:@"; secondaryDisplayStrings = %@", secondaryDisplayStringImages2];
  }

  variantDisplayContents = [(UIKBKeyDisplayContents *)self variantDisplayContents];

  if (variantDisplayContents)
  {
    variantDisplayContents2 = [(UIKBKeyDisplayContents *)self variantDisplayContents];
    [v3 appendFormat:@"; variantDisplayContents = %@", variantDisplayContents2];
  }

  highlightedVariantsList = [(UIKBKeyDisplayContents *)self highlightedVariantsList];

  if (highlightedVariantsList)
  {
    highlightedVariantsList2 = [(UIKBKeyDisplayContents *)self highlightedVariantsList];
    [v3 appendFormat:@"; highlightedVariantList = %@", highlightedVariantsList2];
  }

  if ([(UIKBKeyDisplayContents *)self displayPathType])
  {
    displayPathType = [(UIKBKeyDisplayContents *)self displayPathType];
    v17 = @"Delete";
    if (displayPathType == 1)
    {
      v17 = @"Shift";
    }

    [v3 appendFormat:@"; displayPathType = %@", v17];
    fillPath = [(UIKBKeyDisplayContents *)self fillPath];
    v19 = "NO";
    if (fillPath)
    {
      v19 = "YES";
    }

    [v3 appendFormat:@"; fillPath = %s", v19];
  }

  if ([(UIKBKeyDisplayContents *)self force1xImages])
  {
    [v3 appendString:@"; force1xImages"];
  }

  fallbackContents = [(UIKBKeyDisplayContents *)self fallbackContents];

  if (fallbackContents)
  {
    fallbackContents2 = [(UIKBKeyDisplayContents *)self fallbackContents];
    [v3 appendFormat:@"; fallbackContents = %@", fallbackContents2];
  }

  if ([(UIKBKeyDisplayContents *)self stringKeycapOverImage])
  {
    [v3 appendFormat:@"; stringKeycapOverImage"];
  }

  if ([(UIKBKeyDisplayContents *)self flipImageHorizontally])
  {
    [v3 appendFormat:@"; flipImageHorizontally"];
  }

  bundlePathOverride = [(UIKBKeyDisplayContents *)self bundlePathOverride];

  if (bundlePathOverride)
  {
    bundlePathOverride2 = [(UIKBKeyDisplayContents *)self bundlePathOverride];
    [v3 appendFormat:@"; bundlePathOverride = %@", bundlePathOverride2];
  }

  [v3 appendString:@">"];

  return v3;
}

- (void)setDisplayString:(id)string
{
  objc_storeStrong(&self->_displayString, string);
  self->_displayPathType = 0;
  self->_fillPath = 0;
}

- (void)setDisplayPathType:(int64_t)type
{
  self->_displayPathType = type;
  displayString = self->_displayString;
  self->_displayString = 0;

  secondaryDisplayStrings = self->_secondaryDisplayStrings;
  self->_secondaryDisplayStrings = 0;
}

@end
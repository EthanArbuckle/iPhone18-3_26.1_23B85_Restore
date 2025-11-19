@interface UIKBKeyDisplayContents
+ (id)displayContents;
- (id)description;
- (void)setDisplayPathType:(int64_t)a3;
- (void)setDisplayString:(id)a3;
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
  v4 = [(UIKBKeyDisplayContents *)self displayString];

  if (v4)
  {
    v5 = [(UIKBKeyDisplayContents *)self displayString];
    [v3 appendFormat:@"; displayString = %@", v5];
  }

  v6 = [(UIKBKeyDisplayContents *)self displayStringImage];

  if (v6)
  {
    v7 = [(UIKBKeyDisplayContents *)self displayStringImage];
    [v3 appendFormat:@"; displayStringImage = %@", v7];
  }

  v8 = [(UIKBKeyDisplayContents *)self secondaryDisplayStrings];

  if (v8)
  {
    v9 = [(UIKBKeyDisplayContents *)self secondaryDisplayStrings];
    [v3 appendFormat:@"; secondaryDisplayStrings = %@", v9];
  }

  v10 = [(UIKBKeyDisplayContents *)self secondaryDisplayStringImages];

  if (v10)
  {
    v11 = [(UIKBKeyDisplayContents *)self secondaryDisplayStringImages];
    [v3 appendFormat:@"; secondaryDisplayStrings = %@", v11];
  }

  v12 = [(UIKBKeyDisplayContents *)self variantDisplayContents];

  if (v12)
  {
    v13 = [(UIKBKeyDisplayContents *)self variantDisplayContents];
    [v3 appendFormat:@"; variantDisplayContents = %@", v13];
  }

  v14 = [(UIKBKeyDisplayContents *)self highlightedVariantsList];

  if (v14)
  {
    v15 = [(UIKBKeyDisplayContents *)self highlightedVariantsList];
    [v3 appendFormat:@"; highlightedVariantList = %@", v15];
  }

  if ([(UIKBKeyDisplayContents *)self displayPathType])
  {
    v16 = [(UIKBKeyDisplayContents *)self displayPathType];
    v17 = @"Delete";
    if (v16 == 1)
    {
      v17 = @"Shift";
    }

    [v3 appendFormat:@"; displayPathType = %@", v17];
    v18 = [(UIKBKeyDisplayContents *)self fillPath];
    v19 = "NO";
    if (v18)
    {
      v19 = "YES";
    }

    [v3 appendFormat:@"; fillPath = %s", v19];
  }

  if ([(UIKBKeyDisplayContents *)self force1xImages])
  {
    [v3 appendString:@"; force1xImages"];
  }

  v20 = [(UIKBKeyDisplayContents *)self fallbackContents];

  if (v20)
  {
    v21 = [(UIKBKeyDisplayContents *)self fallbackContents];
    [v3 appendFormat:@"; fallbackContents = %@", v21];
  }

  if ([(UIKBKeyDisplayContents *)self stringKeycapOverImage])
  {
    [v3 appendFormat:@"; stringKeycapOverImage"];
  }

  if ([(UIKBKeyDisplayContents *)self flipImageHorizontally])
  {
    [v3 appendFormat:@"; flipImageHorizontally"];
  }

  v22 = [(UIKBKeyDisplayContents *)self bundlePathOverride];

  if (v22)
  {
    v23 = [(UIKBKeyDisplayContents *)self bundlePathOverride];
    [v3 appendFormat:@"; bundlePathOverride = %@", v23];
  }

  [v3 appendString:@">"];

  return v3;
}

- (void)setDisplayString:(id)a3
{
  objc_storeStrong(&self->_displayString, a3);
  self->_displayPathType = 0;
  self->_fillPath = 0;
}

- (void)setDisplayPathType:(int64_t)a3
{
  self->_displayPathType = a3;
  displayString = self->_displayString;
  self->_displayString = 0;

  secondaryDisplayStrings = self->_secondaryDisplayStrings;
  self->_secondaryDisplayStrings = 0;
}

@end
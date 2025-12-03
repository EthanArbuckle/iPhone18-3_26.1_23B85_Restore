@interface PUIStyleVibrantMaterial
- (BOOL)isEqual:(id)equal ignoringVariation:(BOOL)variation;
- (BOOL)isEqualToStyle:(id)style ignoringVariation:(BOOL)variation;
- (NSString)nonVariatedIdentifier;
@end

@implementation PUIStyleVibrantMaterial

- (BOOL)isEqual:(id)equal ignoringVariation:(BOOL)variation
{
  variationCopy = variation;
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    v7 = (objc_opt_isKindOfClass() & 1) != 0 && [(PUIStyleVibrantMaterial *)self isEqualToStyle:equalCopy ignoringVariation:variationCopy];
  }

  return v7;
}

- (BOOL)isEqualToStyle:(id)style ignoringVariation:(BOOL)variation
{
  variationCopy = variation;
  styleCopy = style;
  v7 = styleCopy;
  if (self == styleCopy)
  {
    v8 = 1;
  }

  else if (styleCopy)
  {
    v8 = _PUIStyleCompareUsingIdentifiers(self, styleCopy, variationCopy);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)nonVariatedIdentifier
{
  type = [(PUIStyleVibrantMaterial *)self type];

  return NSStringFromPUIStyleType(type);
}

@end
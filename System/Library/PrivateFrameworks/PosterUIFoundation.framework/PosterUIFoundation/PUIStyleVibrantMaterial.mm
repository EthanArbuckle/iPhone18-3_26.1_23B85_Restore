@interface PUIStyleVibrantMaterial
- (BOOL)isEqual:(id)a3 ignoringVariation:(BOOL)a4;
- (BOOL)isEqualToStyle:(id)a3 ignoringVariation:(BOOL)a4;
- (NSString)nonVariatedIdentifier;
@end

@implementation PUIStyleVibrantMaterial

- (BOOL)isEqual:(id)a3 ignoringVariation:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (self == v6)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    v7 = (objc_opt_isKindOfClass() & 1) != 0 && [(PUIStyleVibrantMaterial *)self isEqualToStyle:v6 ignoringVariation:v4];
  }

  return v7;
}

- (BOOL)isEqualToStyle:(id)a3 ignoringVariation:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (self == v6)
  {
    v8 = 1;
  }

  else if (v6)
  {
    v8 = _PUIStyleCompareUsingIdentifiers(self, v6, v4);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)nonVariatedIdentifier
{
  v2 = [(PUIStyleVibrantMaterial *)self type];

  return NSStringFromPUIStyleType(v2);
}

@end
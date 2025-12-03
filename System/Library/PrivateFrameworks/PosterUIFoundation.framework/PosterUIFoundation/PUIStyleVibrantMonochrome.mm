@interface PUIStyleVibrantMonochrome
- (BOOL)isEqual:(id)equal ignoringVariation:(BOOL)variation;
- (BOOL)isEqualToStyle:(id)style ignoringVariation:(BOOL)variation;
- (NSArray)colors;
- (NSString)nonVariatedIdentifier;
- (PUIStyleVibrantMonochrome)initWithBackgroundType:(unint64_t)type;
- (PUIStyleVibrantMonochrome)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation PUIStyleVibrantMonochrome

- (PUIStyleVibrantMonochrome)initWithBackgroundType:(unint64_t)type
{
  v9.receiver = self;
  v9.super_class = PUIStyleVibrantMonochrome;
  v4 = [(PUIStyleVibrantMonochrome *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_backgroundType = type;
    if (type == 1)
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] blackColor];
    }
    v6 = ;
    effectiveColor = v5->_effectiveColor;
    v5->_effectiveColor = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal ignoringVariation:(BOOL)variation
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    v6 = (objc_opt_isKindOfClass() & 1) != 0 && [(PUIStyleVibrantMonochrome *)self isEqualToStyle:equalCopy];
  }

  return v6;
}

- (BOOL)isEqualToStyle:(id)style ignoringVariation:(BOOL)variation
{
  variationCopy = variation;
  styleCopy = style;
  if (styleCopy == self)
  {
    v7 = 1;
  }

  else if (_PUIStyleCompareUsingIdentifiers(self, styleCopy, variationCopy))
  {
    v7 = self->_backgroundType == styleCopy->_backgroundType;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E698E6B8]);
  v4 = [v3 appendUnsignedInteger:self->_backgroundType];
  v5 = [v3 hash];

  return v5;
}

- (NSString)nonVariatedIdentifier
{
  type = [(PUIStyleVibrantMonochrome *)self type];

  return NSStringFromPUIStyleType(type);
}

- (NSArray)colors
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = self->_effectiveColor;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (PUIStyleVibrantMonochrome)initWithCoder:(id)coder
{
  v4 = [coder decodeIntegerForKey:@"_backgroundType"];

  return [(PUIStyleVibrantMonochrome *)self initWithBackgroundType:v4];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  backgroundType = self->_backgroundType;

  return [v4 initWithBackgroundType:backgroundType];
}

@end
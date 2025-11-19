@interface PUIStyleVibrantMonochrome
- (BOOL)isEqual:(id)a3 ignoringVariation:(BOOL)a4;
- (BOOL)isEqualToStyle:(id)a3 ignoringVariation:(BOOL)a4;
- (NSArray)colors;
- (NSString)nonVariatedIdentifier;
- (PUIStyleVibrantMonochrome)initWithBackgroundType:(unint64_t)a3;
- (PUIStyleVibrantMonochrome)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation PUIStyleVibrantMonochrome

- (PUIStyleVibrantMonochrome)initWithBackgroundType:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = PUIStyleVibrantMonochrome;
  v4 = [(PUIStyleVibrantMonochrome *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_backgroundType = a3;
    if (a3 == 1)
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

- (BOOL)isEqual:(id)a3 ignoringVariation:(BOOL)a4
{
  v5 = a3;
  if (v5 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    v6 = (objc_opt_isKindOfClass() & 1) != 0 && [(PUIStyleVibrantMonochrome *)self isEqualToStyle:v5];
  }

  return v6;
}

- (BOOL)isEqualToStyle:(id)a3 ignoringVariation:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6 == self)
  {
    v7 = 1;
  }

  else if (_PUIStyleCompareUsingIdentifiers(self, v6, v4))
  {
    v7 = self->_backgroundType == v6->_backgroundType;
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
  v2 = [(PUIStyleVibrantMonochrome *)self type];

  return NSStringFromPUIStyleType(v2);
}

- (NSArray)colors
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = self->_effectiveColor;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (PUIStyleVibrantMonochrome)initWithCoder:(id)a3
{
  v4 = [a3 decodeIntegerForKey:@"_backgroundType"];

  return [(PUIStyleVibrantMonochrome *)self initWithBackgroundType:v4];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  backgroundType = self->_backgroundType;

  return [v4 initWithBackgroundType:backgroundType];
}

@end
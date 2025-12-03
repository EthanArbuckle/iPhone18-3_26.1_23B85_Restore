@interface PUIStyleLUT
- (BOOL)isEqual:(id)equal ignoringVariation:(BOOL)variation;
- (BOOL)isEqualToStyle:(id)style ignoringVariation:(BOOL)variation;
- (NSString)nonVariatedIdentifier;
- (PUIStyleLUT)initWithCoder:(id)coder;
- (PUIStyleLUT)initWithLUTIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation PUIStyleLUT

- (PUIStyleLUT)initWithLUTIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = PUIStyleLUT;
  v6 = [(PUIStyleLUT *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lutIdentifier, identifier);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal ignoringVariation:(BOOL)variation
{
  variationCopy = variation;
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    v7 = (objc_opt_isKindOfClass() & 1) != 0 && [(PUIStyleLUT *)self isEqualToStyle:equalCopy ignoringVariation:variationCopy];
  }

  return v7;
}

- (BOOL)isEqualToStyle:(id)style ignoringVariation:(BOOL)variation
{
  variationCopy = variation;
  styleCopy = style;
  v7 = styleCopy;
  if (styleCopy == self)
  {
    v10 = 1;
  }

  else if (styleCopy && _PUIStyleCompareUsingIdentifiers(self, styleCopy, variationCopy))
  {
    lutIdentifier = [(PUIStyleLUT *)v7 lutIdentifier];
    lutIdentifier2 = [(PUIStyleLUT *)self lutIdentifier];
    v10 = [lutIdentifier isEqual:lutIdentifier2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E698E6B8]);
  v4 = [v3 appendString:self->_lutIdentifier];
  v5 = [v3 hash];

  return v5;
}

- (NSString)nonVariatedIdentifier
{
  v3 = NSStringFromPUIStyleType([(PUIStyleLUT *)self type]);
  v4 = [v3 stringByAppendingFormat:@"-%@", self->_lutIdentifier];

  return v4;
}

- (PUIStyleLUT)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lutIdentifier"];

  v6 = [(PUIStyleLUT *)self initWithLUTIdentifier:v5];
  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PUIStyleLUT alloc];
  lutIdentifier = self->_lutIdentifier;

  return [(PUIStyleLUT *)v4 initWithLUTIdentifier:lutIdentifier];
}

@end
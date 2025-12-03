@interface PUIStyleCustom
- (BOOL)isEqual:(id)equal ignoringVariation:(BOOL)variation;
- (BOOL)isEqualToStyle:(id)style ignoringVariation:(BOOL)variation;
- (PUIStyleCustom)initWithCoder:(id)coder;
- (PUIStyleCustom)initWithIdentifier:(id)identifier localizedName:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PUIStyleCustom

- (PUIStyleCustom)initWithIdentifier:(id)identifier localizedName:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = PUIStyleCustom;
  v8 = [(PUIStyleCustom *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [nameCopy copy];
    localizedName = v8->_localizedName;
    v8->_localizedName = v11;
  }

  return v8;
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
    v7 = (objc_opt_isKindOfClass() & 1) != 0 && [(PUIStyleCustom *)self isEqualToStyle:equalCopy ignoringVariation:variationCopy];
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
    v8 = 1;
  }

  else
  {
    v8 = styleCopy && _PUIStyleCompareUsingIdentifiers(self, styleCopy, variationCopy) && [(NSString *)self->_localizedName isEqualToString:v7->_localizedName]&& [(NSString *)self->_identifier isEqualToString:v7->_identifier];
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E698E6B8]);
  v4 = [v3 appendString:self->_identifier];
  v5 = [v3 appendString:self->_localizedName];
  v6 = [v3 hash];

  return v6;
}

- (PUIStyleCustom)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedName"];

  v7 = [(PUIStyleCustom *)self initWithIdentifier:v5 localizedName:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_localizedName forKey:@"localizedName"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PUIStyleCustom allocWithZone:zone];
  identifier = self->_identifier;
  localizedName = self->_localizedName;

  return [(PUIStyleCustom *)v4 initWithIdentifier:identifier localizedName:localizedName];
}

@end
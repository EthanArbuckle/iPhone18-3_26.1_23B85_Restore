@interface PUIStyleCustom
- (BOOL)isEqual:(id)a3 ignoringVariation:(BOOL)a4;
- (BOOL)isEqualToStyle:(id)a3 ignoringVariation:(BOOL)a4;
- (PUIStyleCustom)initWithCoder:(id)a3;
- (PUIStyleCustom)initWithIdentifier:(id)a3 localizedName:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PUIStyleCustom

- (PUIStyleCustom)initWithIdentifier:(id)a3 localizedName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = PUIStyleCustom;
  v8 = [(PUIStyleCustom *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [v7 copy];
    localizedName = v8->_localizedName;
    v8->_localizedName = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3 ignoringVariation:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    v7 = (objc_opt_isKindOfClass() & 1) != 0 && [(PUIStyleCustom *)self isEqualToStyle:v6 ignoringVariation:v4];
  }

  return v7;
}

- (BOOL)isEqualToStyle:(id)a3 ignoringVariation:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v6 == self)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 && _PUIStyleCompareUsingIdentifiers(self, v6, v4) && [(NSString *)self->_localizedName isEqualToString:v7->_localizedName]&& [(NSString *)self->_identifier isEqualToString:v7->_identifier];
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

- (PUIStyleCustom)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedName"];

  v7 = [(PUIStyleCustom *)self initWithIdentifier:v5 localizedName:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_localizedName forKey:@"localizedName"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PUIStyleCustom allocWithZone:a3];
  identifier = self->_identifier;
  localizedName = self->_localizedName;

  return [(PUIStyleCustom *)v4 initWithIdentifier:identifier localizedName:localizedName];
}

@end
@interface PUIStyleLUT
- (BOOL)isEqual:(id)a3 ignoringVariation:(BOOL)a4;
- (BOOL)isEqualToStyle:(id)a3 ignoringVariation:(BOOL)a4;
- (NSString)nonVariatedIdentifier;
- (PUIStyleLUT)initWithCoder:(id)a3;
- (PUIStyleLUT)initWithLUTIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation PUIStyleLUT

- (PUIStyleLUT)initWithLUTIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PUIStyleLUT;
  v6 = [(PUIStyleLUT *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lutIdentifier, a3);
  }

  return v7;
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
    v7 = (objc_opt_isKindOfClass() & 1) != 0 && [(PUIStyleLUT *)self isEqualToStyle:v6 ignoringVariation:v4];
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
    v10 = 1;
  }

  else if (v6 && _PUIStyleCompareUsingIdentifiers(self, v6, v4))
  {
    v8 = [(PUIStyleLUT *)v7 lutIdentifier];
    v9 = [(PUIStyleLUT *)self lutIdentifier];
    v10 = [v8 isEqual:v9];
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

- (PUIStyleLUT)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lutIdentifier"];

  v6 = [(PUIStyleLUT *)self initWithLUTIdentifier:v5];
  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PUIStyleLUT alloc];
  lutIdentifier = self->_lutIdentifier;

  return [(PUIStyleLUT *)v4 initWithLUTIdentifier:lutIdentifier];
}

@end
@interface WBSNamedColorOption
+ (id)colorWithData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (WBSNamedColorOption)initWithCoder:(id)a3;
- (WBSNamedColorOption)initWithColorName:(id)a3 red:(double)a4 green:(double)a5 blue:(double)a6 alpha:(double)a7 accessibilityName:(id)a8;
- (id)dataRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WBSNamedColorOption

- (WBSNamedColorOption)initWithColorName:(id)a3 red:(double)a4 green:(double)a5 blue:(double)a6 alpha:(double)a7 accessibilityName:(id)a8
{
  v15 = a3;
  v16 = a8;
  v21.receiver = self;
  v21.super_class = WBSNamedColorOption;
  v17 = [(WBSNamedColorOption *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_colorName, a3);
    v18->_redComponent = a4;
    v18->_greenComponent = a5;
    v18->_blueComponent = a6;
    v18->_alphaComponent = a7;
    objc_storeStrong(&v18->_accessibilityName, a8);
    v19 = v18;
  }

  return v18;
}

+ (id)colorWithData:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 0;
    v4 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v7];
    if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v5 = 0;
    }

    else
    {
      v5 = v4;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)dataRepresentation
{
  v6 = 0;
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v6];
  v3 = v2;
  v4 = 0;
  if (!v6)
  {
    v4 = v2;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  colorName = self->_colorName;
  v5 = a3;
  [v5 encodeObject:colorName forKey:@"colorName"];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_redComponent];
  [v5 encodeObject:v6 forKey:@"redComponent"];

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_greenComponent];
  [v5 encodeObject:v7 forKey:@"greenComponent"];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_blueComponent];
  [v5 encodeObject:v8 forKey:@"blueComponent"];

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_alphaComponent];
  [v5 encodeObject:v9 forKey:@"alphaComponent"];
}

- (WBSNamedColorOption)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"colorName"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"redComponent"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"greenComponent"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"blueComponent"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"alphaComponent"];

  [v6 floatValue];
  v11 = v10;
  [v7 floatValue];
  v13 = v12;
  [v8 floatValue];
  v15 = v14;
  [v9 floatValue];
  v17 = [(WBSNamedColorOption *)self initWithColorName:v5 red:0 green:v11 blue:v13 alpha:v15 accessibilityName:v16];

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      colorName = self->_colorName;
      v7 = [(WBSNamedColorOption *)v5 colorName];
      if (WBSIsEqual(colorName, v7) && (redComponent = self->_redComponent, [(WBSNamedColorOption *)v5 redComponent], redComponent == v9) && (greenComponent = self->_greenComponent, [(WBSNamedColorOption *)v5 greenComponent], greenComponent == v11) && (blueComponent = self->_blueComponent, [(WBSNamedColorOption *)v5 blueComponent], blueComponent == v13))
      {
        alphaComponent = self->_alphaComponent;
        [(WBSNamedColorOption *)v5 alphaComponent];
        v16 = alphaComponent == v15;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_colorName hash];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_redComponent];
  v5 = [v4 hash] ^ v3;
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_greenComponent];
  v7 = [v6 hash];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_blueComponent];
  v9 = v5 ^ v7 ^ [v8 hash];
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_alphaComponent];
  v11 = [v10 hash];

  return v9 ^ v11;
}

@end
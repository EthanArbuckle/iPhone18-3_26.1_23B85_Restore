@interface WBSNamedColorOption
+ (id)colorWithData:(id)data;
- (BOOL)isEqual:(id)equal;
- (WBSNamedColorOption)initWithCoder:(id)coder;
- (WBSNamedColorOption)initWithColorName:(id)name red:(double)red green:(double)green blue:(double)blue alpha:(double)alpha accessibilityName:(id)accessibilityName;
- (id)dataRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBSNamedColorOption

- (WBSNamedColorOption)initWithColorName:(id)name red:(double)red green:(double)green blue:(double)blue alpha:(double)alpha accessibilityName:(id)accessibilityName
{
  nameCopy = name;
  accessibilityNameCopy = accessibilityName;
  v21.receiver = self;
  v21.super_class = WBSNamedColorOption;
  v17 = [(WBSNamedColorOption *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_colorName, name);
    v18->_redComponent = red;
    v18->_greenComponent = green;
    v18->_blueComponent = blue;
    v18->_alphaComponent = alpha;
    objc_storeStrong(&v18->_accessibilityName, accessibilityName);
    v19 = v18;
  }

  return v18;
}

+ (id)colorWithData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 0;
    v4 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v7];
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

- (void)encodeWithCoder:(id)coder
{
  colorName = self->_colorName;
  coderCopy = coder;
  [coderCopy encodeObject:colorName forKey:@"colorName"];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_redComponent];
  [coderCopy encodeObject:v6 forKey:@"redComponent"];

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_greenComponent];
  [coderCopy encodeObject:v7 forKey:@"greenComponent"];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_blueComponent];
  [coderCopy encodeObject:v8 forKey:@"blueComponent"];

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_alphaComponent];
  [coderCopy encodeObject:v9 forKey:@"alphaComponent"];
}

- (WBSNamedColorOption)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"colorName"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"redComponent"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"greenComponent"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"blueComponent"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"alphaComponent"];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      colorName = self->_colorName;
      colorName = [(WBSNamedColorOption *)v5 colorName];
      if (WBSIsEqual(colorName, colorName) && (redComponent = self->_redComponent, [(WBSNamedColorOption *)v5 redComponent], redComponent == v9) && (greenComponent = self->_greenComponent, [(WBSNamedColorOption *)v5 greenComponent], greenComponent == v11) && (blueComponent = self->_blueComponent, [(WBSNamedColorOption *)v5 blueComponent], blueComponent == v13))
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
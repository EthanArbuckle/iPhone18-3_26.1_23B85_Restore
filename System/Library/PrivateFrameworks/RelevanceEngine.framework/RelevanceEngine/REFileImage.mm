@interface REFileImage
- (BOOL)isEqual:(id)a3;
- (REFileImage)initWithCoder:(id)a3;
- (REFileImage)initWithPath:(id)a3 scale:(double)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REFileImage

- (REFileImage)initWithPath:(id)a3 scale:(double)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = REFileImage;
  v7 = [(REFileImage *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    path = v7->_path;
    v7->_path = v8;

    v7->_scale = a4;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  path = self->_path;
  scale = self->_scale;

  return [v4 initWithPath:path scale:scale];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 path];
    v7 = v6;
    if (v6 == self->_path || [(NSString *)v6 isEqual:?])
    {
      [v5 scale];
      *&v8 = v8 - self->_scale;
      v9 = fabsf(*&v8) < 0.00000011921;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (REFileImage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"path"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"scale"];

  [v6 doubleValue];
  v7 = [(REFileImage *)self initWithPath:v5 scale:?];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  path = self->_path;
  v5 = a3;
  [v5 encodeObject:path forKey:@"path"];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_scale];
  [v5 encodeObject:v6 forKey:@"scale"];
}

@end
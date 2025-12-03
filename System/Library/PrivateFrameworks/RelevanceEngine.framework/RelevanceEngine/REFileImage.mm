@interface REFileImage
- (BOOL)isEqual:(id)equal;
- (REFileImage)initWithCoder:(id)coder;
- (REFileImage)initWithPath:(id)path scale:(double)scale;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REFileImage

- (REFileImage)initWithPath:(id)path scale:(double)scale
{
  pathCopy = path;
  v11.receiver = self;
  v11.super_class = REFileImage;
  v7 = [(REFileImage *)&v11 init];
  if (v7)
  {
    v8 = [pathCopy copy];
    path = v7->_path;
    v7->_path = v8;

    v7->_scale = scale;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  path = self->_path;
  scale = self->_scale;

  return [v4 initWithPath:path scale:scale];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    path = [v5 path];
    v7 = path;
    if (path == self->_path || [(NSString *)path isEqual:?])
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

- (REFileImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"path"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"scale"];

  [v6 doubleValue];
  v7 = [(REFileImage *)self initWithPath:v5 scale:?];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  path = self->_path;
  coderCopy = coder;
  [coderCopy encodeObject:path forKey:@"path"];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_scale];
  [coderCopy encodeObject:v6 forKey:@"scale"];
}

@end
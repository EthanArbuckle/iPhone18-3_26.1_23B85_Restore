@interface RENamedImage
- (BOOL)isEqual:(id)equal;
- (RENamedImage)initWithCoder:(id)coder;
- (RENamedImage)initWithName:(id)name inBundle:(id)bundle;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RENamedImage

- (RENamedImage)initWithName:(id)name inBundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  v12.receiver = self;
  v12.super_class = RENamedImage;
  v8 = [(RENamedImage *)&v12 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    objc_storeStrong(&v8->_bundle, bundle);
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  name = self->_name;
  bundle = self->_bundle;

  return [v4 initWithName:name inBundle:bundle];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    name = [v5 name];
    v7 = name;
    if (name == self->_name || [(NSString *)name isEqual:?])
    {
      bundle = [v5 bundle];
      v9 = bundle;
      if (bundle == self->_bundle)
      {
        v10 = 1;
      }

      else
      {
        v10 = [(NSBundle *)bundle isEqual:?];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (RENamedImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundle"];

  v7 = [MEMORY[0x277CCA8D8] bundleWithPath:v6];
  v8 = [(RENamedImage *)self initWithName:v5 inBundle:v7];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  bundle = self->_bundle;
  coderCopy = coder;
  bundlePath = [(NSBundle *)bundle bundlePath];
  [coderCopy encodeObject:bundlePath forKey:@"bundle"];

  [coderCopy encodeObject:self->_name forKey:@"name"];
}

@end
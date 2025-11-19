@interface RENamedImage
- (BOOL)isEqual:(id)a3;
- (RENamedImage)initWithCoder:(id)a3;
- (RENamedImage)initWithName:(id)a3 inBundle:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RENamedImage

- (RENamedImage)initWithName:(id)a3 inBundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = RENamedImage;
  v8 = [(RENamedImage *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    name = v8->_name;
    v8->_name = v9;

    objc_storeStrong(&v8->_bundle, a4);
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  name = self->_name;
  bundle = self->_bundle;

  return [v4 initWithName:name inBundle:bundle];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 name];
    v7 = v6;
    if (v6 == self->_name || [(NSString *)v6 isEqual:?])
    {
      v8 = [v5 bundle];
      v9 = v8;
      if (v8 == self->_bundle)
      {
        v10 = 1;
      }

      else
      {
        v10 = [(NSBundle *)v8 isEqual:?];
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

- (RENamedImage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundle"];

  v7 = [MEMORY[0x277CCA8D8] bundleWithPath:v6];
  v8 = [(RENamedImage *)self initWithName:v5 inBundle:v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  bundle = self->_bundle;
  v6 = a3;
  v5 = [(NSBundle *)bundle bundlePath];
  [v6 encodeObject:v5 forKey:@"bundle"];

  [v6 encodeObject:self->_name forKey:@"name"];
}

@end
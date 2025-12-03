@interface PXGNamedImageViewConfiguration
- (BOOL)isEqual:(id)equal;
- (PXGNamedImageViewConfiguration)initWithImageName:(id)name contentMode:(int64_t)mode bundle:(id)bundle;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation PXGNamedImageViewConfiguration

- (unint64_t)hash
{
  imageName = [(PXGNamedImageViewConfiguration *)self imageName];
  v4 = [imageName hash];
  v5 = v4 ^ (2 * [(PXGNamedImageViewConfiguration *)self contentMode]);
  bundle = [(PXGNamedImageViewConfiguration *)self bundle];
  v7 = [bundle hash];

  return v5 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      imageName = [(PXGNamedImageViewConfiguration *)self imageName];
      imageName2 = [(PXGNamedImageViewConfiguration *)v5 imageName];
      if ((imageName == imageName2 || [imageName isEqualToString:imageName2]) && (v8 = -[PXGNamedImageViewConfiguration contentMode](self, "contentMode"), v8 == -[PXGNamedImageViewConfiguration contentMode](v5, "contentMode")))
      {
        bundle = [(PXGNamedImageViewConfiguration *)self bundle];
        bundle2 = [(PXGNamedImageViewConfiguration *)v5 bundle];
        v11 = bundle == bundle2;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  imageName = [(PXGNamedImageViewConfiguration *)self imageName];
  [v4 setImageName:imageName];

  [v4 setContentMode:{-[PXGNamedImageViewConfiguration contentMode](self, "contentMode")}];
  [v4 setFloatingAxis:{-[PXGNamedImageViewConfiguration floatingAxis](self, "floatingAxis")}];
  bundle = [(PXGNamedImageViewConfiguration *)self bundle];
  [v4 setBundle:bundle];

  return v4;
}

- (PXGNamedImageViewConfiguration)initWithImageName:(id)name contentMode:(int64_t)mode bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  v14.receiver = self;
  v14.super_class = PXGNamedImageViewConfiguration;
  v11 = [(PXGNamedImageViewConfiguration *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_imageName, name);
    v12->_contentMode = mode;
    objc_storeStrong(&v12->_bundle, bundle);
  }

  return v12;
}

@end
@interface PXGNamedImageViewConfiguration
- (BOOL)isEqual:(id)a3;
- (PXGNamedImageViewConfiguration)initWithImageName:(id)a3 contentMode:(int64_t)a4 bundle:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation PXGNamedImageViewConfiguration

- (unint64_t)hash
{
  v3 = [(PXGNamedImageViewConfiguration *)self imageName];
  v4 = [v3 hash];
  v5 = v4 ^ (2 * [(PXGNamedImageViewConfiguration *)self contentMode]);
  v6 = [(PXGNamedImageViewConfiguration *)self bundle];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PXGNamedImageViewConfiguration *)self imageName];
      v7 = [(PXGNamedImageViewConfiguration *)v5 imageName];
      if ((v6 == v7 || [v6 isEqualToString:v7]) && (v8 = -[PXGNamedImageViewConfiguration contentMode](self, "contentMode"), v8 == -[PXGNamedImageViewConfiguration contentMode](v5, "contentMode")))
      {
        v9 = [(PXGNamedImageViewConfiguration *)self bundle];
        v10 = [(PXGNamedImageViewConfiguration *)v5 bundle];
        v11 = v9 == v10;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(PXGNamedImageViewConfiguration *)self imageName];
  [v4 setImageName:v5];

  [v4 setContentMode:{-[PXGNamedImageViewConfiguration contentMode](self, "contentMode")}];
  [v4 setFloatingAxis:{-[PXGNamedImageViewConfiguration floatingAxis](self, "floatingAxis")}];
  v6 = [(PXGNamedImageViewConfiguration *)self bundle];
  [v4 setBundle:v6];

  return v4;
}

- (PXGNamedImageViewConfiguration)initWithImageName:(id)a3 contentMode:(int64_t)a4 bundle:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = PXGNamedImageViewConfiguration;
  v11 = [(PXGNamedImageViewConfiguration *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_imageName, a3);
    v12->_contentMode = a4;
    objc_storeStrong(&v12->_bundle, a5);
  }

  return v12;
}

@end
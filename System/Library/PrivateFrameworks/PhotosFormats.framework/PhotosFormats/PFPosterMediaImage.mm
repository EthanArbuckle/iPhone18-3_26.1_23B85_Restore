@interface PFPosterMediaImage
- (BOOL)isEqual:(id)a3;
- (PFPosterMediaImage)initWithCoder:(id)a3;
- (PFPosterMediaImage)initWithImageName:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PFPosterMediaImage

- (PFPosterMediaImage)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PFPosterMediaImage;
  v5 = [(PFPosterMedia *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageName"];
    imageName = v5->_imageName;
    v5->_imageName = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PFPosterMediaImage;
  v4 = a3;
  [(PFPosterMedia *)&v6 encodeWithCoder:v4];
  v5 = [(PFPosterMediaImage *)self imageName:v6.receiver];
  [v4 encodeObject:v5 forKey:@"imageName"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v10.receiver = self;
      v10.super_class = PFPosterMediaImage;
      if ([(PFPosterMedia *)&v10 isEqual:v5])
      {
        v6 = [(PFPosterMediaImage *)self imageName];
        v7 = [(PFPosterMediaImage *)v5 imageName];
        if (v6 == v7)
        {
          v8 = 1;
        }

        else
        {
          v8 = [v6 isEqual:v7];
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = PFPosterMediaImage;
  v3 = [(PFPosterMedia *)&v7 hash];
  v4 = [(PFPosterMediaImage *)self imageName];
  v5 = v3 ^ (2 * [v4 hash]);

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PFPosterMediaImage allocWithZone:a3];
  imageName = self->_imageName;

  return [(PFPosterMediaImage *)v4 initWithImageName:imageName];
}

- (PFPosterMediaImage)initWithImageName:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PFPosterMediaImage;
  v5 = [(PFPosterMedia *)&v8 initWithAssetUUID:v4];
  v6 = v5;
  if (v5)
  {
    [(PFPosterMedia *)v5 setMediaType:3];
    [(PFPosterMediaImage *)v6 setImageName:v4];
  }

  return v6;
}

@end
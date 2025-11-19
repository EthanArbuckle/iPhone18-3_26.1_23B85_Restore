@interface PFPosterMediaURLImage
- (BOOL)isEqual:(id)a3;
- (PFPosterMediaURLImage)initWithCoder:(id)a3;
- (PFPosterMediaURLImage)initWithImageAtURL:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PFPosterMediaURLImage

- (PFPosterMediaURLImage)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PFPosterMediaURLImage;
  v5 = [(PFPosterMedia *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageURL"];
    imageURL = v5->_imageURL;
    v5->_imageURL = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PFPosterMediaURLImage;
  v4 = a3;
  [(PFPosterMedia *)&v6 encodeWithCoder:v4];
  v5 = [(PFPosterMediaURLImage *)self imageURL:v6.receiver];
  [v4 encodeObject:v5 forKey:@"imageURL"];
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
      v10.super_class = PFPosterMediaURLImage;
      if ([(PFPosterMedia *)&v10 isEqual:v5])
      {
        v6 = [(PFPosterMediaURLImage *)self imageURL];
        v7 = [(PFPosterMediaURLImage *)v5 imageURL];
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
  v7.super_class = PFPosterMediaURLImage;
  v3 = [(PFPosterMedia *)&v7 hash];
  v4 = [(PFPosterMediaURLImage *)self imageURL];
  v5 = v3 ^ (2 * [v4 hash]);

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PFPosterMediaURLImage allocWithZone:a3];
  imageURL = self->_imageURL;

  return [(PFPosterMediaURLImage *)v4 initWithImageAtURL:imageURL];
}

- (PFPosterMediaURLImage)initWithImageAtURL:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PFPosterMediaURLImage;
  v5 = [(PFPosterMedia *)&v8 initWithAssetUUID:0];
  v6 = v5;
  if (v5)
  {
    [(PFPosterMedia *)v5 setMediaType:4];
    [(PFPosterMediaURLImage *)v6 setImageURL:v4];
  }

  return v6;
}

@end
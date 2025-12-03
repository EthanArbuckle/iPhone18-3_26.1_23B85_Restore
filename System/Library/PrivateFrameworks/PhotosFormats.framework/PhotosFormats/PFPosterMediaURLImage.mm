@interface PFPosterMediaURLImage
- (BOOL)isEqual:(id)equal;
- (PFPosterMediaURLImage)initWithCoder:(id)coder;
- (PFPosterMediaURLImage)initWithImageAtURL:(id)l;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PFPosterMediaURLImage

- (PFPosterMediaURLImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PFPosterMediaURLImage;
  v5 = [(PFPosterMedia *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageURL"];
    imageURL = v5->_imageURL;
    v5->_imageURL = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PFPosterMediaURLImage;
  coderCopy = coder;
  [(PFPosterMedia *)&v6 encodeWithCoder:coderCopy];
  v5 = [(PFPosterMediaURLImage *)self imageURL:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"imageURL"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v10.receiver = self;
      v10.super_class = PFPosterMediaURLImage;
      if ([(PFPosterMedia *)&v10 isEqual:v5])
      {
        imageURL = [(PFPosterMediaURLImage *)self imageURL];
        imageURL2 = [(PFPosterMediaURLImage *)v5 imageURL];
        if (imageURL == imageURL2)
        {
          v8 = 1;
        }

        else
        {
          v8 = [imageURL isEqual:imageURL2];
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
  imageURL = [(PFPosterMediaURLImage *)self imageURL];
  v5 = v3 ^ (2 * [imageURL hash]);

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PFPosterMediaURLImage allocWithZone:zone];
  imageURL = self->_imageURL;

  return [(PFPosterMediaURLImage *)v4 initWithImageAtURL:imageURL];
}

- (PFPosterMediaURLImage)initWithImageAtURL:(id)l
{
  lCopy = l;
  v8.receiver = self;
  v8.super_class = PFPosterMediaURLImage;
  v5 = [(PFPosterMedia *)&v8 initWithAssetUUID:0];
  v6 = v5;
  if (v5)
  {
    [(PFPosterMedia *)v5 setMediaType:4];
    [(PFPosterMediaURLImage *)v6 setImageURL:lCopy];
  }

  return v6;
}

@end
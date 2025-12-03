@interface PFPosterMediaImage
- (BOOL)isEqual:(id)equal;
- (PFPosterMediaImage)initWithCoder:(id)coder;
- (PFPosterMediaImage)initWithImageName:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PFPosterMediaImage

- (PFPosterMediaImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PFPosterMediaImage;
  v5 = [(PFPosterMedia *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageName"];
    imageName = v5->_imageName;
    v5->_imageName = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PFPosterMediaImage;
  coderCopy = coder;
  [(PFPosterMedia *)&v6 encodeWithCoder:coderCopy];
  v5 = [(PFPosterMediaImage *)self imageName:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"imageName"];
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
      v10.super_class = PFPosterMediaImage;
      if ([(PFPosterMedia *)&v10 isEqual:v5])
      {
        imageName = [(PFPosterMediaImage *)self imageName];
        imageName2 = [(PFPosterMediaImage *)v5 imageName];
        if (imageName == imageName2)
        {
          v8 = 1;
        }

        else
        {
          v8 = [imageName isEqual:imageName2];
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
  imageName = [(PFPosterMediaImage *)self imageName];
  v5 = v3 ^ (2 * [imageName hash]);

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PFPosterMediaImage allocWithZone:zone];
  imageName = self->_imageName;

  return [(PFPosterMediaImage *)v4 initWithImageName:imageName];
}

- (PFPosterMediaImage)initWithImageName:(id)name
{
  nameCopy = name;
  v8.receiver = self;
  v8.super_class = PFPosterMediaImage;
  v5 = [(PFPosterMedia *)&v8 initWithAssetUUID:nameCopy];
  v6 = v5;
  if (v5)
  {
    [(PFPosterMedia *)v5 setMediaType:3];
    [(PFPosterMediaImage *)v6 setImageName:nameCopy];
  }

  return v6;
}

@end
@interface VUIPlistMediaEntityImageLoadParams
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (NSString)imageIdentifier;
- (VUIPlistMediaEntityImageLoadParams)init;
- (VUIPlistMediaEntityImageLoadParams)initWithImageURL:(id)l baseImageIdentifier:(id)identifier imageType:(unint64_t)type;
- (unint64_t)hash;
@end

@implementation VUIPlistMediaEntityImageLoadParams

- (VUIPlistMediaEntityImageLoadParams)initWithImageURL:(id)l baseImageIdentifier:(id)identifier imageType:(unint64_t)type
{
  lCopy = l;
  identifierCopy = identifier;
  v10 = identifierCopy;
  if (lCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"imageURL"}];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"baseImageIdentifier"}];
LABEL_3:
  v17.receiver = self;
  v17.super_class = VUIPlistMediaEntityImageLoadParams;
  v11 = [(VUIPlistMediaEntityImageLoadParams *)&v17 init];
  if (v11)
  {
    v12 = [lCopy copy];
    imageURL = v11->_imageURL;
    v11->_imageURL = v12;

    v14 = [v10 copy];
    baseImageIdentifier = v11->_baseImageIdentifier;
    v11->_baseImageIdentifier = v14;

    v11->_imageType = type;
  }

  return v11;
}

- (VUIPlistMediaEntityImageLoadParams)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (NSString)imageIdentifier
{
  imageIdentifier = self->_imageIdentifier;
  if (!imageIdentifier)
  {
    imageType = [(VUIPlistMediaEntityImageLoadParams *)self imageType];
    v5 = @"previewFrame";
    if (imageType != 1)
    {
      v5 = 0;
    }

    if (imageType)
    {
      v6 = v5;
    }

    else
    {
      v6 = @"covertArt";
    }

    v7 = MEMORY[0x1E696AEC0];
    baseImageIdentifier = [(VUIPlistMediaEntityImageLoadParams *)self baseImageIdentifier];
    v9 = [v7 stringWithFormat:@"%@_%@", baseImageIdentifier, v6];
    v10 = self->_imageIdentifier;
    self->_imageIdentifier = v9;

    imageIdentifier = self->_imageIdentifier;
  }

  return imageIdentifier;
}

- (unint64_t)hash
{
  imageType = [(VUIPlistMediaEntityImageLoadParams *)self imageType];
  baseImageIdentifier = [(VUIPlistMediaEntityImageLoadParams *)self baseImageIdentifier];
  v5 = [baseImageIdentifier hash] ^ imageType;

  imageURL = [(VUIPlistMediaEntityImageLoadParams *)self imageURL];
  v7 = [imageURL hash];

  return v5 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        imageType = [(VUIPlistMediaEntityImageLoadParams *)self imageType];
        if (imageType != [(VUIPlistMediaEntityImageLoadParams *)v6 imageType])
        {
LABEL_9:
          v13 = 0;
LABEL_19:

          goto LABEL_20;
        }

        baseImageIdentifier = [(VUIPlistMediaEntityImageLoadParams *)self baseImageIdentifier];
        baseImageIdentifier2 = [(VUIPlistMediaEntityImageLoadParams *)v6 baseImageIdentifier];
        v10 = baseImageIdentifier;
        v11 = baseImageIdentifier2;
        v12 = v11;
        if (v10 == v11)
        {
        }

        else
        {
          v13 = 0;
          if (!v10 || !v11)
          {
LABEL_18:

            goto LABEL_19;
          }

          v14 = [v10 isEqual:v11];

          if ((v14 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        imageURL = [(VUIPlistMediaEntityImageLoadParams *)self imageURL];
        imageURL2 = [(VUIPlistMediaEntityImageLoadParams *)v6 imageURL];
        v10 = imageURL;
        v17 = imageURL2;
        v12 = v17;
        if (v10 == v17)
        {
          v13 = 1;
        }

        else
        {
          v13 = 0;
          if (v10 && v17)
          {
            v13 = [v10 isEqual:v17];
          }
        }

        goto LABEL_18;
      }
    }

    v13 = 0;
  }

LABEL_20:

  return v13;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18.receiver = self;
  v18.super_class = VUIPlistMediaEntityImageLoadParams;
  v4 = [(VUIPlistMediaEntityImageLoadParams *)&v18 description];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  v6 = VUIImageTypeLogString([(VUIPlistMediaEntityImageLoadParams *)self imageType]);
  v7 = [v5 stringWithFormat:@"%@=%@", @"imageType", v6];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  baseImageIdentifier = [(VUIPlistMediaEntityImageLoadParams *)self baseImageIdentifier];
  v10 = [v8 stringWithFormat:@"%@=%@", @"baseImageIdentifier", baseImageIdentifier];
  [v3 addObject:v10];

  v11 = MEMORY[0x1E696AEC0];
  imageURL = [(VUIPlistMediaEntityImageLoadParams *)self imageURL];
  v13 = [v11 stringWithFormat:@"%@=%@", @"imageURL", imageURL];
  [v3 addObject:v13];

  v14 = MEMORY[0x1E696AEC0];
  v15 = [v3 componentsJoinedByString:{@", "}];
  v16 = [v14 stringWithFormat:@"<%@>", v15];

  return v16;
}

@end
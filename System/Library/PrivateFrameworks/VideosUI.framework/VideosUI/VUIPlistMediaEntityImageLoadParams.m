@interface VUIPlistMediaEntityImageLoadParams
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (NSString)imageIdentifier;
- (VUIPlistMediaEntityImageLoadParams)init;
- (VUIPlistMediaEntityImageLoadParams)initWithImageURL:(id)a3 baseImageIdentifier:(id)a4 imageType:(unint64_t)a5;
- (unint64_t)hash;
@end

@implementation VUIPlistMediaEntityImageLoadParams

- (VUIPlistMediaEntityImageLoadParams)initWithImageURL:(id)a3 baseImageIdentifier:(id)a4 imageType:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
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
    v12 = [v8 copy];
    imageURL = v11->_imageURL;
    v11->_imageURL = v12;

    v14 = [v10 copy];
    baseImageIdentifier = v11->_baseImageIdentifier;
    v11->_baseImageIdentifier = v14;

    v11->_imageType = a5;
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
    v4 = [(VUIPlistMediaEntityImageLoadParams *)self imageType];
    v5 = @"previewFrame";
    if (v4 != 1)
    {
      v5 = 0;
    }

    if (v4)
    {
      v6 = v5;
    }

    else
    {
      v6 = @"covertArt";
    }

    v7 = MEMORY[0x1E696AEC0];
    v8 = [(VUIPlistMediaEntityImageLoadParams *)self baseImageIdentifier];
    v9 = [v7 stringWithFormat:@"%@_%@", v8, v6];
    v10 = self->_imageIdentifier;
    self->_imageIdentifier = v9;

    imageIdentifier = self->_imageIdentifier;
  }

  return imageIdentifier;
}

- (unint64_t)hash
{
  v3 = [(VUIPlistMediaEntityImageLoadParams *)self imageType];
  v4 = [(VUIPlistMediaEntityImageLoadParams *)self baseImageIdentifier];
  v5 = [v4 hash] ^ v3;

  v6 = [(VUIPlistMediaEntityImageLoadParams *)self imageURL];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v13 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v7 = [(VUIPlistMediaEntityImageLoadParams *)self imageType];
        if (v7 != [(VUIPlistMediaEntityImageLoadParams *)v6 imageType])
        {
LABEL_9:
          v13 = 0;
LABEL_19:

          goto LABEL_20;
        }

        v8 = [(VUIPlistMediaEntityImageLoadParams *)self baseImageIdentifier];
        v9 = [(VUIPlistMediaEntityImageLoadParams *)v6 baseImageIdentifier];
        v10 = v8;
        v11 = v9;
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

        v15 = [(VUIPlistMediaEntityImageLoadParams *)self imageURL];
        v16 = [(VUIPlistMediaEntityImageLoadParams *)v6 imageURL];
        v10 = v15;
        v17 = v16;
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
  v9 = [(VUIPlistMediaEntityImageLoadParams *)self baseImageIdentifier];
  v10 = [v8 stringWithFormat:@"%@=%@", @"baseImageIdentifier", v9];
  [v3 addObject:v10];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [(VUIPlistMediaEntityImageLoadParams *)self imageURL];
  v13 = [v11 stringWithFormat:@"%@=%@", @"imageURL", v12];
  [v3 addObject:v13];

  v14 = MEMORY[0x1E696AEC0];
  v15 = [v3 componentsJoinedByString:{@", "}];
  v16 = [v14 stringWithFormat:@"<%@>", v15];

  return v16;
}

@end
@interface UNCSectionIconVariant
+ (id)variantWithFormat:(int64_t)a3 applicationIdentifier:(id)a4;
+ (id)variantWithFormat:(int64_t)a3 imageData:(id)a4;
+ (id)variantWithFormat:(int64_t)a3 imageName:(id)a4 inBundle:(id)a5;
+ (id)variantWithFormat:(int64_t)a3 imageName:(id)a4 inBundleAtPath:(id)a5;
+ (id)variantWithFormat:(int64_t)a3 imagePath:(id)a4;
+ (id)variantWithFormat:(int64_t)a3 systemImageName:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSData)imageData;
- (NSString)applicationIdentifier;
- (NSString)imageName;
- (NSString)imagePath;
- (NSString)systemImageName;
- (UNCSectionIconVariant)initWithCoder:(id)a3;
- (UNCSectionIconVariant)initWithFormat:(int64_t)a3 imageInfo:(id)a4 imageInfoType:(int64_t)a5 bundlePath:(id)a6 precomposed:(BOOL)a7;
- (id)_processImageInfo:(id)a3 imageInfoType:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)_setImageInfo:(id)a3 ofType:(int64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UNCSectionIconVariant

+ (id)variantWithFormat:(int64_t)a3 imageData:(id)a4
{
  v5 = a4;
  v6 = [[UNCSectionIconVariant alloc] initWithFormat:a3 imageInfo:v5 imageInfoType:1 bundlePath:0 precomposed:0];

  return v6;
}

+ (id)variantWithFormat:(int64_t)a3 applicationIdentifier:(id)a4
{
  v5 = a4;
  v6 = [[UNCSectionIconVariant alloc] initWithFormat:a3 imageInfo:v5 imageInfoType:4 bundlePath:0 precomposed:0];

  return v6;
}

+ (id)variantWithFormat:(int64_t)a3 imagePath:(id)a4
{
  v5 = a4;
  v6 = [[UNCSectionIconVariant alloc] initWithFormat:a3 imageInfo:v5 imageInfoType:2 bundlePath:0 precomposed:0];

  return v6;
}

+ (id)variantWithFormat:(int64_t)a3 imageName:(id)a4 inBundle:(id)a5
{
  v8 = a4;
  v9 = [a5 bundlePath];
  v10 = [a1 variantWithFormat:a3 imageName:v8 inBundleAtPath:v9];

  return v10;
}

+ (id)variantWithFormat:(int64_t)a3 imageName:(id)a4 inBundleAtPath:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [[UNCSectionIconVariant alloc] initWithFormat:a3 imageInfo:v8 imageInfoType:3 bundlePath:v7 precomposed:0];

  return v9;
}

+ (id)variantWithFormat:(int64_t)a3 systemImageName:(id)a4
{
  v5 = a4;
  v6 = [[UNCSectionIconVariant alloc] initWithFormat:a3 imageInfo:v5 imageInfoType:5 bundlePath:0 precomposed:0];

  return v6;
}

- (NSData)imageData
{
  if (self->_imageInfoType == 1)
  {
    imageInfo = self->_imageInfo;
    v3 = objc_opt_class();
    v4 = imageInfo;
    if (v3)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)imagePath
{
  if (self->_imageInfoType == 2)
  {
    imageInfo = self->_imageInfo;
    v3 = objc_opt_class();
    v4 = imageInfo;
    if (v3)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)imageName
{
  if (self->_imageInfoType == 3)
  {
    imageInfo = self->_imageInfo;
    v3 = objc_opt_class();
    v4 = imageInfo;
    if (v3)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)applicationIdentifier
{
  if (self->_imageInfoType == 4)
  {
    imageInfo = self->_imageInfo;
    v3 = objc_opt_class();
    v4 = imageInfo;
    if (v3)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)systemImageName
{
  if (self->_imageInfoType == 5)
  {
    imageInfo = self->_imageInfo;
    v3 = objc_opt_class();
    v4 = imageInfo;
    if (v3)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(UNCSectionIconVariant *)self format];
  v4 = [self->_imageInfo hash] ^ v3 ^ self->_imageInfoType;
  v5 = [(UNCSectionIconVariant *)self bundlePath];
  v6 = [v5 hash];
  v7 = v6 ^ [(UNCSectionIconVariant *)self isPrecomposed];

  return v4 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(UNCSectionIconVariant *)self format];
      if (v6 == [(UNCSectionIconVariant *)v5 format]&& (imageInfo = self->_imageInfo, v8 = v5->_imageInfo, BSEqualObjects()) && self->_imageInfoType == v5->_imageInfoType)
      {
        v9 = [(UNCSectionIconVariant *)self bundlePath];
        v10 = [(UNCSectionIconVariant *)v5 bundlePath];
        if (BSEqualObjects())
        {
          v11 = [(UNCSectionIconVariant *)self isPrecomposed];
          v12 = v11 ^ [(UNCSectionIconVariant *)v5 isPrecomposed]^ 1;
        }

        else
        {
          LOBYTE(v12) = 0;
        }
      }

      else
      {
        LOBYTE(v12) = 0;
      }
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  imageInfo = self->_imageInfo;
  imageInfoType = self->_imageInfoType;
  format = self->_format;
  bundlePath = self->_bundlePath;
  precomposed = self->_precomposed;

  return [v4 initWithFormat:format imageInfo:imageInfo imageInfoType:imageInfoType bundlePath:bundlePath precomposed:precomposed];
}

- (UNCSectionIconVariant)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UNCSectionIconVariant *)self init];
  if (v5)
  {
    if ([v4 decodeIntegerForKey:@"codingVersion"] == 2)
    {
      v6 = [v4 decodeIntegerForKey:@"imageInfoType"];
      v7 = 0x1E695DEF0;
      v5->_imageInfoType = v6;
      if (v6 != 1)
      {
        v7 = 0x1E696AEC0;
      }

      v8 = *v7;
      v9 = objc_opt_class();
      v10 = v9;
      v11 = [v4 decodeObjectOfClass:v9 forKey:@"imageInfo"];
      imageInfo = v5->_imageInfo;
      v5->_imageInfo = v11;
    }

    else
    {
      imageInfo = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageData"];
      if (imageInfo)
      {
        [(UNCSectionIconVariant *)v5 setImageData:imageInfo];
      }

      v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imagePath"];
      if (v13)
      {
        [(UNCSectionIconVariant *)v5 setImageName:v13];
      }

      v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
      if (v13)
      {
        [(UNCSectionIconVariant *)v5 setApplicationIdentifier:v14];
      }
    }

    v5->_format = [v4 decodeIntegerForKey:@"format"];
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundlePath"];
    bundlePath = v5->_bundlePath;
    v5->_bundlePath = v15;

    v5->_precomposed = [v4 decodeBoolForKey:@"precomposed"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:2 forKey:@"codingVersion"];
  [v4 encodeInteger:self->_format forKey:@"format"];
  [v4 encodeInteger:self->_imageInfoType forKey:@"imageInfoType"];
  [v4 encodeObject:self->_imageInfo forKey:@"imageInfo"];
  [v4 encodeObject:self->_bundlePath forKey:@"bundlePath"];
  [v4 encodeBool:self->_precomposed forKey:@"precomposed"];
}

- (UNCSectionIconVariant)initWithFormat:(int64_t)a3 imageInfo:(id)a4 imageInfoType:(int64_t)a5 bundlePath:(id)a6 precomposed:(BOOL)a7
{
  v12 = a4;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = UNCSectionIconVariant;
  v14 = [(UNCSectionIconVariant *)&v21 init];
  v15 = v14;
  if (v14)
  {
    v14->_format = a3;
    v16 = [(UNCSectionIconVariant *)v14 _processImageInfo:v12 imageInfoType:a5];
    imageInfo = v15->_imageInfo;
    v15->_imageInfo = v16;

    v15->_imageInfoType = a5;
    v18 = [v13 copy];
    bundlePath = v15->_bundlePath;
    v15->_bundlePath = v18;

    v15->_precomposed = a7;
  }

  return v15;
}

- (id)_processImageInfo:(id)a3 imageInfoType:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  v8 = v6;
  if (a4 == 1)
  {
    v9 = [v6 copy];
    v10 = [self unc_objectCache];
    v8 = [v10 cacheObject:v9];
  }

  return v8;
}

- (void)_setImageInfo:(id)a3 ofType:(int64_t)a4
{
  v6 = a3;
  if (v6)
  {
    self->_imageInfoType = a4;
    v7 = [(UNCSectionIconVariant *)self _processImageInfo:v6 imageInfoType:a4];
  }

  else
  {
    if (self->_imageInfoType != a4)
    {
      goto LABEL_6;
    }

    v7 = 0;
    self->_imageInfoType = 0;
  }

  imageInfo = self->_imageInfo;
  self->_imageInfo = v7;

LABEL_6:

  MEMORY[0x1EEE66BB8]();
}

@end
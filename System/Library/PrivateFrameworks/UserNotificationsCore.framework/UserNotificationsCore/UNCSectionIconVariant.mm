@interface UNCSectionIconVariant
+ (id)variantWithFormat:(int64_t)format applicationIdentifier:(id)identifier;
+ (id)variantWithFormat:(int64_t)format imageData:(id)data;
+ (id)variantWithFormat:(int64_t)format imageName:(id)name inBundle:(id)bundle;
+ (id)variantWithFormat:(int64_t)format imageName:(id)name inBundleAtPath:(id)path;
+ (id)variantWithFormat:(int64_t)format imagePath:(id)path;
+ (id)variantWithFormat:(int64_t)format systemImageName:(id)name;
- (BOOL)isEqual:(id)equal;
- (NSData)imageData;
- (NSString)applicationIdentifier;
- (NSString)imageName;
- (NSString)imagePath;
- (NSString)systemImageName;
- (UNCSectionIconVariant)initWithCoder:(id)coder;
- (UNCSectionIconVariant)initWithFormat:(int64_t)format imageInfo:(id)info imageInfoType:(int64_t)type bundlePath:(id)path precomposed:(BOOL)precomposed;
- (id)_processImageInfo:(id)info imageInfoType:(int64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_setImageInfo:(id)info ofType:(int64_t)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UNCSectionIconVariant

+ (id)variantWithFormat:(int64_t)format imageData:(id)data
{
  dataCopy = data;
  v6 = [[UNCSectionIconVariant alloc] initWithFormat:format imageInfo:dataCopy imageInfoType:1 bundlePath:0 precomposed:0];

  return v6;
}

+ (id)variantWithFormat:(int64_t)format applicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [[UNCSectionIconVariant alloc] initWithFormat:format imageInfo:identifierCopy imageInfoType:4 bundlePath:0 precomposed:0];

  return v6;
}

+ (id)variantWithFormat:(int64_t)format imagePath:(id)path
{
  pathCopy = path;
  v6 = [[UNCSectionIconVariant alloc] initWithFormat:format imageInfo:pathCopy imageInfoType:2 bundlePath:0 precomposed:0];

  return v6;
}

+ (id)variantWithFormat:(int64_t)format imageName:(id)name inBundle:(id)bundle
{
  nameCopy = name;
  bundlePath = [bundle bundlePath];
  v10 = [self variantWithFormat:format imageName:nameCopy inBundleAtPath:bundlePath];

  return v10;
}

+ (id)variantWithFormat:(int64_t)format imageName:(id)name inBundleAtPath:(id)path
{
  pathCopy = path;
  nameCopy = name;
  v9 = [[UNCSectionIconVariant alloc] initWithFormat:format imageInfo:nameCopy imageInfoType:3 bundlePath:pathCopy precomposed:0];

  return v9;
}

+ (id)variantWithFormat:(int64_t)format systemImageName:(id)name
{
  nameCopy = name;
  v6 = [[UNCSectionIconVariant alloc] initWithFormat:format imageInfo:nameCopy imageInfoType:5 bundlePath:0 precomposed:0];

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
  format = [(UNCSectionIconVariant *)self format];
  v4 = [self->_imageInfo hash] ^ format ^ self->_imageInfoType;
  bundlePath = [(UNCSectionIconVariant *)self bundlePath];
  v6 = [bundlePath hash];
  v7 = v6 ^ [(UNCSectionIconVariant *)self isPrecomposed];

  return v4 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      format = [(UNCSectionIconVariant *)self format];
      if (format == [(UNCSectionIconVariant *)v5 format]&& (imageInfo = self->_imageInfo, v8 = v5->_imageInfo, BSEqualObjects()) && self->_imageInfoType == v5->_imageInfoType)
      {
        bundlePath = [(UNCSectionIconVariant *)self bundlePath];
        bundlePath2 = [(UNCSectionIconVariant *)v5 bundlePath];
        if (BSEqualObjects())
        {
          isPrecomposed = [(UNCSectionIconVariant *)self isPrecomposed];
          v12 = isPrecomposed ^ [(UNCSectionIconVariant *)v5 isPrecomposed]^ 1;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  imageInfo = self->_imageInfo;
  imageInfoType = self->_imageInfoType;
  format = self->_format;
  bundlePath = self->_bundlePath;
  precomposed = self->_precomposed;

  return [v4 initWithFormat:format imageInfo:imageInfo imageInfoType:imageInfoType bundlePath:bundlePath precomposed:precomposed];
}

- (UNCSectionIconVariant)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(UNCSectionIconVariant *)self init];
  if (v5)
  {
    if ([coderCopy decodeIntegerForKey:@"codingVersion"] == 2)
    {
      v6 = [coderCopy decodeIntegerForKey:@"imageInfoType"];
      v7 = 0x1E695DEF0;
      v5->_imageInfoType = v6;
      if (v6 != 1)
      {
        v7 = 0x1E696AEC0;
      }

      v8 = *v7;
      v9 = objc_opt_class();
      v10 = v9;
      v11 = [coderCopy decodeObjectOfClass:v9 forKey:@"imageInfo"];
      imageInfo = v5->_imageInfo;
      v5->_imageInfo = v11;
    }

    else
    {
      imageInfo = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageData"];
      if (imageInfo)
      {
        [(UNCSectionIconVariant *)v5 setImageData:imageInfo];
      }

      v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imagePath"];
      if (v13)
      {
        [(UNCSectionIconVariant *)v5 setImageName:v13];
      }

      v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
      if (v13)
      {
        [(UNCSectionIconVariant *)v5 setApplicationIdentifier:v14];
      }
    }

    v5->_format = [coderCopy decodeIntegerForKey:@"format"];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundlePath"];
    bundlePath = v5->_bundlePath;
    v5->_bundlePath = v15;

    v5->_precomposed = [coderCopy decodeBoolForKey:@"precomposed"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:2 forKey:@"codingVersion"];
  [coderCopy encodeInteger:self->_format forKey:@"format"];
  [coderCopy encodeInteger:self->_imageInfoType forKey:@"imageInfoType"];
  [coderCopy encodeObject:self->_imageInfo forKey:@"imageInfo"];
  [coderCopy encodeObject:self->_bundlePath forKey:@"bundlePath"];
  [coderCopy encodeBool:self->_precomposed forKey:@"precomposed"];
}

- (UNCSectionIconVariant)initWithFormat:(int64_t)format imageInfo:(id)info imageInfoType:(int64_t)type bundlePath:(id)path precomposed:(BOOL)precomposed
{
  infoCopy = info;
  pathCopy = path;
  v21.receiver = self;
  v21.super_class = UNCSectionIconVariant;
  v14 = [(UNCSectionIconVariant *)&v21 init];
  v15 = v14;
  if (v14)
  {
    v14->_format = format;
    v16 = [(UNCSectionIconVariant *)v14 _processImageInfo:infoCopy imageInfoType:type];
    imageInfo = v15->_imageInfo;
    v15->_imageInfo = v16;

    v15->_imageInfoType = type;
    v18 = [pathCopy copy];
    bundlePath = v15->_bundlePath;
    v15->_bundlePath = v18;

    v15->_precomposed = precomposed;
  }

  return v15;
}

- (id)_processImageInfo:(id)info imageInfoType:(int64_t)type
{
  infoCopy = info;
  v7 = infoCopy;
  v8 = infoCopy;
  if (type == 1)
  {
    v9 = [infoCopy copy];
    unc_objectCache = [self unc_objectCache];
    v8 = [unc_objectCache cacheObject:v9];
  }

  return v8;
}

- (void)_setImageInfo:(id)info ofType:(int64_t)type
{
  infoCopy = info;
  if (infoCopy)
  {
    self->_imageInfoType = type;
    v7 = [(UNCSectionIconVariant *)self _processImageInfo:infoCopy imageInfoType:type];
  }

  else
  {
    if (self->_imageInfoType != type)
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
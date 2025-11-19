@interface QLCachedThumbnailDescriptor
- (BOOL)isEqual:(id)a3;
- (QLCachedThumbnailDescriptor)initWithSize:(float)a3 iconMode:(BOOL)a4 badgeType:(unint64_t)a5 externalGeneratorDataHash:(unint64_t)a6;
- (QLCachedThumbnailDescriptor)initWithThumbnailRequest:(id)a3;
- (unint64_t)hash;
@end

@implementation QLCachedThumbnailDescriptor

- (unint64_t)hash
{
  size = self->_size;
  externalGeneratorDataHash = self->_externalGeneratorDataHash;
  if (self->_iconMode)
  {
    return self->_badgeType ^ externalGeneratorDataHash ^ size;
  }

  else
  {
    return -(self->_badgeType ^ externalGeneratorDataHash ^ size);
  }
}

- (QLCachedThumbnailDescriptor)initWithThumbnailRequest:(id)a3
{
  v4 = a3;
  [v4 maximumPixelSize];
  v6 = v5;
  v7 = [v4 iconMode];
  v8 = [v4 badgeType];
  v9 = [v4 externalThumbnailGeneratorDataHash];

  LODWORD(v10) = v6;

  return [(QLCachedThumbnailDescriptor *)self initWithSize:v7 iconMode:v8 badgeType:v9 externalGeneratorDataHash:v10];
}

- (QLCachedThumbnailDescriptor)initWithSize:(float)a3 iconMode:(BOOL)a4 badgeType:(unint64_t)a5 externalGeneratorDataHash:(unint64_t)a6
{
  v11.receiver = self;
  v11.super_class = QLCachedThumbnailDescriptor;
  result = [(QLCachedThumbnailDescriptor *)&v11 init];
  if (result)
  {
    result->_size = a3;
    result->_iconMode = a4;
    result->_badgeType = a5;
    result->_externalGeneratorDataHash = a6;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      size = self->_size;
      [(QLCachedThumbnailDescriptor *)v5 size];
      if (size == v7 && (iconMode = self->_iconMode, iconMode == [(QLCachedThumbnailDescriptor *)v5 iconMode]) && (badgeType = self->_badgeType, badgeType == [(QLCachedThumbnailDescriptor *)v5 badgeType]) && (iconVariant = self->_iconVariant, iconVariant == [(QLCachedThumbnailDescriptor *)v5 iconVariant]))
      {
        interpolationQuality = self->_interpolationQuality;
        v12 = interpolationQuality == [(QLCachedThumbnailDescriptor *)v5 interpolationQuality];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

@end
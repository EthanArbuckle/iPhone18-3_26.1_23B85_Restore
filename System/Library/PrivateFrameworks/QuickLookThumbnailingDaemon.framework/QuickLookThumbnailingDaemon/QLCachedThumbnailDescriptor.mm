@interface QLCachedThumbnailDescriptor
- (BOOL)isEqual:(id)equal;
- (QLCachedThumbnailDescriptor)initWithSize:(float)size iconMode:(BOOL)mode badgeType:(unint64_t)type externalGeneratorDataHash:(unint64_t)hash;
- (QLCachedThumbnailDescriptor)initWithThumbnailRequest:(id)request;
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

- (QLCachedThumbnailDescriptor)initWithThumbnailRequest:(id)request
{
  requestCopy = request;
  [requestCopy maximumPixelSize];
  v6 = v5;
  iconMode = [requestCopy iconMode];
  badgeType = [requestCopy badgeType];
  externalThumbnailGeneratorDataHash = [requestCopy externalThumbnailGeneratorDataHash];

  LODWORD(v10) = v6;

  return [(QLCachedThumbnailDescriptor *)self initWithSize:iconMode iconMode:badgeType badgeType:externalThumbnailGeneratorDataHash externalGeneratorDataHash:v10];
}

- (QLCachedThumbnailDescriptor)initWithSize:(float)size iconMode:(BOOL)mode badgeType:(unint64_t)type externalGeneratorDataHash:(unint64_t)hash
{
  v11.receiver = self;
  v11.super_class = QLCachedThumbnailDescriptor;
  result = [(QLCachedThumbnailDescriptor *)&v11 init];
  if (result)
  {
    result->_size = size;
    result->_iconMode = mode;
    result->_badgeType = type;
    result->_externalGeneratorDataHash = hash;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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
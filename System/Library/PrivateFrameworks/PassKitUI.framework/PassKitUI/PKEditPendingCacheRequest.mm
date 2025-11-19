@interface PKEditPendingCacheRequest
- (BOOL)isEqual:(id)a3;
- (CGSize)imageSize;
- (unint64_t)hash;
@end

@implementation PKEditPendingCacheRequest

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = PKEqualObjects();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)hash
{
  [(NSString *)self->_cacheKey hash];

  return PKIntegerHash();
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
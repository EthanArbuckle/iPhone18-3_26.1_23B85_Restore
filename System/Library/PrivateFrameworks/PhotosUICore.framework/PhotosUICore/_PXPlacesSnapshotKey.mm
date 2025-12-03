@interface _PXPlacesSnapshotKey
- (BOOL)isEqual:(id)equal;
- (CGSize)_imageSize;
- (_PXPlacesSnapshotKey)initWithImageSize:(CGSize)size userInterfaceStyle:(int64_t)style;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _PXPlacesSnapshotKey

- (CGSize)_imageSize
{
  width = self->__imageSize.width;
  height = self->__imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      [(_PXPlacesSnapshotKey *)self _imageSize];
      [(_PXPlacesSnapshotKey *)v5 _imageSize];
      PXSizeApproximatelyEqualToSize();
    }

    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_PXPlacesSnapshotKey alloc];
  [(_PXPlacesSnapshotKey *)self _imageSize];
  v6 = v5;
  v8 = v7;
  _userInterfaceStyle = [(_PXPlacesSnapshotKey *)self _userInterfaceStyle];

  return [(_PXPlacesSnapshotKey *)v4 initWithImageSize:_userInterfaceStyle userInterfaceStyle:v6, v8];
}

- (_PXPlacesSnapshotKey)initWithImageSize:(CGSize)size userInterfaceStyle:(int64_t)style
{
  height = size.height;
  width = size.width;
  v8.receiver = self;
  v8.super_class = _PXPlacesSnapshotKey;
  result = [(_PXPlacesSnapshotKey *)&v8 init];
  if (result)
  {
    result->__imageSize.width = width;
    result->__imageSize.height = height;
    result->__userInterfaceStyle = style;
  }

  return result;
}

@end
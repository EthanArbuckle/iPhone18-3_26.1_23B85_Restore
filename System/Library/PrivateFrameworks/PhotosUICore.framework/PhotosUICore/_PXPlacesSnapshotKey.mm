@interface _PXPlacesSnapshotKey
- (BOOL)isEqual:(id)a3;
- (CGSize)_imageSize;
- (_PXPlacesSnapshotKey)initWithImageSize:(CGSize)a3 userInterfaceStyle:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      [(_PXPlacesSnapshotKey *)self _imageSize];
      [(_PXPlacesSnapshotKey *)v5 _imageSize];
      PXSizeApproximatelyEqualToSize();
    }

    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_PXPlacesSnapshotKey alloc];
  [(_PXPlacesSnapshotKey *)self _imageSize];
  v6 = v5;
  v8 = v7;
  v9 = [(_PXPlacesSnapshotKey *)self _userInterfaceStyle];

  return [(_PXPlacesSnapshotKey *)v4 initWithImageSize:v9 userInterfaceStyle:v6, v8];
}

- (_PXPlacesSnapshotKey)initWithImageSize:(CGSize)a3 userInterfaceStyle:(int64_t)a4
{
  height = a3.height;
  width = a3.width;
  v8.receiver = self;
  v8.super_class = _PXPlacesSnapshotKey;
  result = [(_PXPlacesSnapshotKey *)&v8 init];
  if (result)
  {
    result->__imageSize.width = width;
    result->__imageSize.height = height;
    result->__userInterfaceStyle = a4;
  }

  return result;
}

@end
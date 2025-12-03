@interface VGFaceMetadata
- (BOOL)isEqual:(id)equal;
- (CGRect)bounds;
- (VGFaceMetadata)initWithCoder:(id)coder;
- (VGFaceMetadata)initWithFaceId:(int64_t)id bounds:(CGRect)bounds yawAngle:(double)angle rollAngle:(double)rollAngle;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VGFaceMetadata

- (VGFaceMetadata)initWithFaceId:(int64_t)id bounds:(CGRect)bounds yawAngle:(double)angle rollAngle:(double)rollAngle
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v14.receiver = self;
  v14.super_class = VGFaceMetadata;
  result = [(VGFaceMetadata *)&v14 init];
  if (result)
  {
    result->_bounds.origin.x = x;
    result->_bounds.origin.y = y;
    result->_bounds.size.width = width;
    result->_bounds.size.height = height;
    result->_faceID = id;
    result->_rollAngle = rollAngle;
    result->_yawAngle = angle;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[VGFaceMetadata faceID](self forKey:{"faceID"), @"faceID"}];
  [(VGFaceMetadata *)self bounds];
  [coderCopy encodeDouble:@"boundsOriginX" forKey:?];
  [(VGFaceMetadata *)self bounds];
  [coderCopy encodeDouble:@"boundsOriginY" forKey:v4];
  [(VGFaceMetadata *)self bounds];
  [coderCopy encodeDouble:@"boundsSizeH" forKey:v5];
  [(VGFaceMetadata *)self bounds];
  [coderCopy encodeDouble:@"boundsSizeW" forKey:v6];
  [(VGFaceMetadata *)self rollAngle];
  [coderCopy encodeDouble:@"rollAngle" forKey:?];
  [(VGFaceMetadata *)self yawAngle];
  [coderCopy encodeDouble:@"yawAngle" forKey:?];
}

- (VGFaceMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntForKey:@"faceID"];
  [coderCopy decodeDoubleForKey:@"boundsOriginX"];
  v7 = v6;
  [coderCopy decodeDoubleForKey:@"boundsOriginY"];
  v9 = v8;
  [coderCopy decodeDoubleForKey:@"boundsSizeH"];
  v11 = v10;
  [coderCopy decodeDoubleForKey:@"boundsSizeW"];
  v13 = v12;
  [coderCopy decodeDoubleForKey:@"rollAngle"];
  v15 = v14;
  [coderCopy decodeDoubleForKey:@"yawAngle"];
  v17 = v16;

  return [(VGFaceMetadata *)self initWithFaceId:v5 bounds:v7 yawAngle:v9 rollAngle:v13, v11, v17, v15];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    faceID = self->_faceID;
    if (faceID == [v5 faceID] && (objc_msgSend(v5, "bounds"), v17.origin.x = v7, v17.origin.y = v8, v17.size.width = v9, v17.size.height = v10, CGRectEqualToRect(self->_bounds, v17)) && (yawAngle = self->_yawAngle, objc_msgSend(v5, "yawAngle"), yawAngle == v12))
    {
      rollAngle = self->_rollAngle;
      [v5 rollAngle];
      v15 = rollAngle == v14;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end
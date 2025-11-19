@interface VGFaceMetadata
- (BOOL)isEqual:(id)a3;
- (CGRect)bounds;
- (VGFaceMetadata)initWithCoder:(id)a3;
- (VGFaceMetadata)initWithFaceId:(int64_t)a3 bounds:(CGRect)a4 yawAngle:(double)a5 rollAngle:(double)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VGFaceMetadata

- (VGFaceMetadata)initWithFaceId:(int64_t)a3 bounds:(CGRect)a4 yawAngle:(double)a5 rollAngle:(double)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v14.receiver = self;
  v14.super_class = VGFaceMetadata;
  result = [(VGFaceMetadata *)&v14 init];
  if (result)
  {
    result->_bounds.origin.x = x;
    result->_bounds.origin.y = y;
    result->_bounds.size.width = width;
    result->_bounds.size.height = height;
    result->_faceID = a3;
    result->_rollAngle = a6;
    result->_yawAngle = a5;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  [v7 encodeInt64:-[VGFaceMetadata faceID](self forKey:{"faceID"), @"faceID"}];
  [(VGFaceMetadata *)self bounds];
  [v7 encodeDouble:@"boundsOriginX" forKey:?];
  [(VGFaceMetadata *)self bounds];
  [v7 encodeDouble:@"boundsOriginY" forKey:v4];
  [(VGFaceMetadata *)self bounds];
  [v7 encodeDouble:@"boundsSizeH" forKey:v5];
  [(VGFaceMetadata *)self bounds];
  [v7 encodeDouble:@"boundsSizeW" forKey:v6];
  [(VGFaceMetadata *)self rollAngle];
  [v7 encodeDouble:@"rollAngle" forKey:?];
  [(VGFaceMetadata *)self yawAngle];
  [v7 encodeDouble:@"yawAngle" forKey:?];
}

- (VGFaceMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntForKey:@"faceID"];
  [v4 decodeDoubleForKey:@"boundsOriginX"];
  v7 = v6;
  [v4 decodeDoubleForKey:@"boundsOriginY"];
  v9 = v8;
  [v4 decodeDoubleForKey:@"boundsSizeH"];
  v11 = v10;
  [v4 decodeDoubleForKey:@"boundsSizeW"];
  v13 = v12;
  [v4 decodeDoubleForKey:@"rollAngle"];
  v15 = v14;
  [v4 decodeDoubleForKey:@"yawAngle"];
  v17 = v16;

  return [(VGFaceMetadata *)self initWithFaceId:v5 bounds:v7 yawAngle:v9 rollAngle:v13, v11, v17, v15];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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
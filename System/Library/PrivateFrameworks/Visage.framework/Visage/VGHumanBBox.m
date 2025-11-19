@interface VGHumanBBox
- (BOOL)isEqual:(id)a3;
- (CGRect)bbox;
- (VGHumanBBox)initWithBBox:(CGRect)a3 confidence:(double)a4;
- (VGHumanBBox)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VGHumanBBox

- (VGHumanBBox)initWithBBox:(CGRect)a3 confidence:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = VGHumanBBox;
  result = [(VGHumanBBox *)&v10 init];
  if (result)
  {
    result->_bbox.origin.y = y;
    result->_bbox.size.width = width;
    result->_bbox.size.height = height;
    result->_confidence = a4;
    result->_bbox.origin.x = x;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  [(VGHumanBBox *)self bbox];
  [v7 encodeDouble:@"bboxOriginX" forKey:?];
  [(VGHumanBBox *)self bbox];
  [v7 encodeDouble:@"bboxOriginY" forKey:v4];
  [(VGHumanBBox *)self bbox];
  [v7 encodeDouble:@"bboxSizeH" forKey:v5];
  [(VGHumanBBox *)self bbox];
  [v7 encodeDouble:@"bboxSizeW" forKey:v6];
  [(VGHumanBBox *)self confidence];
  [v7 encodeDouble:@"confidence" forKey:?];
}

- (VGHumanBBox)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"bboxOriginX"];
  v6 = v5;
  [v4 decodeDoubleForKey:@"bboxOriginY"];
  v8 = v7;
  [v4 decodeDoubleForKey:@"bboxSizeH"];
  v10 = v9;
  [v4 decodeDoubleForKey:@"bboxSizeW"];
  v12 = v11;
  [v4 decodeDoubleForKey:@"confidence"];
  v14 = v13;

  return [(VGHumanBBox *)self initWithBBox:v6 confidence:v8, v12, v10, v14];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    [v5 bbox];
    v14.origin.x = v6;
    v14.origin.y = v7;
    v14.size.width = v8;
    v14.size.height = v9;
    if (CGRectEqualToRect(self->_bbox, v14))
    {
      confidence = self->_confidence;
      [v5 confidence];
      v12 = confidence == v11;
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

  return v12;
}

- (CGRect)bbox
{
  x = self->_bbox.origin.x;
  y = self->_bbox.origin.y;
  width = self->_bbox.size.width;
  height = self->_bbox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end
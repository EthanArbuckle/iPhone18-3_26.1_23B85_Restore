@interface VGHumanBBox
- (BOOL)isEqual:(id)equal;
- (CGRect)bbox;
- (VGHumanBBox)initWithBBox:(CGRect)box confidence:(double)confidence;
- (VGHumanBBox)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VGHumanBBox

- (VGHumanBBox)initWithBBox:(CGRect)box confidence:(double)confidence
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  v10.receiver = self;
  v10.super_class = VGHumanBBox;
  result = [(VGHumanBBox *)&v10 init];
  if (result)
  {
    result->_bbox.origin.y = y;
    result->_bbox.size.width = width;
    result->_bbox.size.height = height;
    result->_confidence = confidence;
    result->_bbox.origin.x = x;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(VGHumanBBox *)self bbox];
  [coderCopy encodeDouble:@"bboxOriginX" forKey:?];
  [(VGHumanBBox *)self bbox];
  [coderCopy encodeDouble:@"bboxOriginY" forKey:v4];
  [(VGHumanBBox *)self bbox];
  [coderCopy encodeDouble:@"bboxSizeH" forKey:v5];
  [(VGHumanBBox *)self bbox];
  [coderCopy encodeDouble:@"bboxSizeW" forKey:v6];
  [(VGHumanBBox *)self confidence];
  [coderCopy encodeDouble:@"confidence" forKey:?];
}

- (VGHumanBBox)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"bboxOriginX"];
  v6 = v5;
  [coderCopy decodeDoubleForKey:@"bboxOriginY"];
  v8 = v7;
  [coderCopy decodeDoubleForKey:@"bboxSizeH"];
  v10 = v9;
  [coderCopy decodeDoubleForKey:@"bboxSizeW"];
  v12 = v11;
  [coderCopy decodeDoubleForKey:@"confidence"];
  v14 = v13;

  return [(VGHumanBBox *)self initWithBBox:v6 confidence:v8, v12, v10, v14];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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
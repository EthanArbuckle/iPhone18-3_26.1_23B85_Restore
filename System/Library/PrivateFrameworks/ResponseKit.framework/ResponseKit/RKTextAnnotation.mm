@interface RKTextAnnotation
- (BOOL)isEqual:(id)equal;
- (RKTextAnnotation)initWithRange:(_NSRange)range andType:(unint64_t)type machineGenerated:(BOOL)generated;
- (_NSRange)range;
- (unint64_t)hash;
@end

@implementation RKTextAnnotation

- (RKTextAnnotation)initWithRange:(_NSRange)range andType:(unint64_t)type machineGenerated:(BOOL)generated
{
  length = range.length;
  location = range.location;
  v10.receiver = self;
  v10.super_class = RKTextAnnotation;
  result = [(RKTextAnnotation *)&v10 init];
  if (result)
  {
    result->_range.location = location;
    result->_range.length = length;
    result->_type = type;
    result->_machineGenerated = generated;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    range = [(RKTextAnnotation *)self range];
    v8 = v7;
    v10 = 0;
    if (range == [v5 range] && v8 == v9)
    {
      type = [(RKTextAnnotation *)self type];
      v10 = type == [v5 type];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  range = [(RKTextAnnotation *)self range];
  [(RKTextAnnotation *)self range];
  return v4 ^ range ^ [(RKTextAnnotation *)self type];
}

- (_NSRange)range
{
  objc_copyStruct(v4, &self->_range, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.length = v3;
  result.location = v2;
  return result;
}

@end
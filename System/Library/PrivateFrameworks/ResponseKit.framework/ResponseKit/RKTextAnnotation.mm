@interface RKTextAnnotation
- (BOOL)isEqual:(id)a3;
- (RKTextAnnotation)initWithRange:(_NSRange)a3 andType:(unint64_t)a4 machineGenerated:(BOOL)a5;
- (_NSRange)range;
- (unint64_t)hash;
@end

@implementation RKTextAnnotation

- (RKTextAnnotation)initWithRange:(_NSRange)a3 andType:(unint64_t)a4 machineGenerated:(BOOL)a5
{
  length = a3.length;
  location = a3.location;
  v10.receiver = self;
  v10.super_class = RKTextAnnotation;
  result = [(RKTextAnnotation *)&v10 init];
  if (result)
  {
    result->_range.location = location;
    result->_range.length = length;
    result->_type = a4;
    result->_machineGenerated = a5;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(RKTextAnnotation *)self range];
    v8 = v7;
    v10 = 0;
    if (v6 == [v5 range] && v8 == v9)
    {
      v11 = [(RKTextAnnotation *)self type];
      v10 = v11 == [v5 type];
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
  v3 = [(RKTextAnnotation *)self range];
  [(RKTextAnnotation *)self range];
  return v4 ^ v3 ^ [(RKTextAnnotation *)self type];
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
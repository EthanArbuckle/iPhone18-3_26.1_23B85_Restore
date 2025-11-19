@interface TSCH3DRange
+ (id)rangeWithIntercept:(float)a3 begin:(float)a4 end:(float)a5;
- (TSCH3DRange)initWithIntercept:(float)a3 begin:(float)a4 end:(float)a5;
- (float)scale;
- (id).cxx_construct;
@end

@implementation TSCH3DRange

+ (id)rangeWithIntercept:(float)a3 begin:(float)a4 end:(float)a5
{
  v8 = [a1 alloc];
  *&v9 = a3;
  *&v10 = a4;
  *&v11 = a5;
  v13 = objc_msgSend_initWithIntercept_begin_end_(v8, v12, v9, v10, v11);

  return v13;
}

- (TSCH3DRange)initWithIntercept:(float)a3 begin:(float)a4 end:(float)a5
{
  v9.receiver = self;
  v9.super_class = TSCH3DRange;
  result = [(TSCH3DRange *)&v9 init];
  if (result)
  {
    result->_range.var0.var0 = a4;
    result->_range.var1.var0 = a5;
    result->_above = a5 >= a3;
  }

  return result;
}

- (float)scale
{
  objc_msgSend_signedScale(self, a2, v2, v3, v4);
  if (result < 0.0)
  {
    return -result;
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

@end
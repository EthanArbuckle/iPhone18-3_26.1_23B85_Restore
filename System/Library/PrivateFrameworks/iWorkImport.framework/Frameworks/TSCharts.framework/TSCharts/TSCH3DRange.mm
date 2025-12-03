@interface TSCH3DRange
+ (id)rangeWithIntercept:(float)intercept begin:(float)begin end:(float)end;
- (TSCH3DRange)initWithIntercept:(float)intercept begin:(float)begin end:(float)end;
- (float)scale;
- (id).cxx_construct;
@end

@implementation TSCH3DRange

+ (id)rangeWithIntercept:(float)intercept begin:(float)begin end:(float)end
{
  v8 = [self alloc];
  *&v9 = intercept;
  *&v10 = begin;
  *&v11 = end;
  v13 = objc_msgSend_initWithIntercept_begin_end_(v8, v12, v9, v10, v11);

  return v13;
}

- (TSCH3DRange)initWithIntercept:(float)intercept begin:(float)begin end:(float)end
{
  v9.receiver = self;
  v9.super_class = TSCH3DRange;
  result = [(TSCH3DRange *)&v9 init];
  if (result)
  {
    result->_range.var0.var0 = begin;
    result->_range.var1.var0 = end;
    result->_above = end >= intercept;
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
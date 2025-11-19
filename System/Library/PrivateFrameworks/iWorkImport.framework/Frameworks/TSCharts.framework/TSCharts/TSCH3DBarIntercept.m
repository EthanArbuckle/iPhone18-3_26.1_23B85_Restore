@interface TSCH3DBarIntercept
+ (id)interceptWithValueAxis:(id)a3 value:(double)a4;
- (TSCH3DBarIntercept)initWithValueAxis:(id)a3 value:(double)a4;
@end

@implementation TSCH3DBarIntercept

+ (id)interceptWithValueAxis:(id)a3 value:(double)a4
{
  v6 = a3;
  v7 = [a1 alloc];
  v11 = objc_msgSend_initWithValueAxis_value_(v7, v8, a4, v9, v10, v6);

  return v11;
}

- (TSCH3DBarIntercept)initWithValueAxis:(id)a3 value:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = TSCH3DBarIntercept;
  v8 = [(TSCH3DBarIntercept *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_valueAxis, a3);
    v9->_value = a4;
  }

  return v9;
}

@end
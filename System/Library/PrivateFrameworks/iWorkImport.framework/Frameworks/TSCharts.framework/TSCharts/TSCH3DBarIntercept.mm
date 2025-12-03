@interface TSCH3DBarIntercept
+ (id)interceptWithValueAxis:(id)axis value:(double)value;
- (TSCH3DBarIntercept)initWithValueAxis:(id)axis value:(double)value;
@end

@implementation TSCH3DBarIntercept

+ (id)interceptWithValueAxis:(id)axis value:(double)value
{
  axisCopy = axis;
  v7 = [self alloc];
  v11 = objc_msgSend_initWithValueAxis_value_(v7, v8, value, v9, v10, axisCopy);

  return v11;
}

- (TSCH3DBarIntercept)initWithValueAxis:(id)axis value:(double)value
{
  axisCopy = axis;
  v11.receiver = self;
  v11.super_class = TSCH3DBarIntercept;
  v8 = [(TSCH3DBarIntercept *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_valueAxis, axis);
    v9->_value = value;
  }

  return v9;
}

@end
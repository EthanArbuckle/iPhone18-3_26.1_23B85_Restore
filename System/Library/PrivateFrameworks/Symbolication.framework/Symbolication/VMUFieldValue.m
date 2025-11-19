@interface VMUFieldValue
- (VMUFieldValue)initWithField:(id)a3 value:(unint64_t)a4;
@end

@implementation VMUFieldValue

- (VMUFieldValue)initWithField:(id)a3 value:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = VMUFieldValue;
  v8 = [(VMUFieldValue *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_field, a3);
    v9->_value = a4;
  }

  return v9;
}

@end
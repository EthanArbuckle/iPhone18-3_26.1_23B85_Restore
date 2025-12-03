@interface VMUFieldValue
- (VMUFieldValue)initWithField:(id)field value:(unint64_t)value;
@end

@implementation VMUFieldValue

- (VMUFieldValue)initWithField:(id)field value:(unint64_t)value
{
  fieldCopy = field;
  v11.receiver = self;
  v11.super_class = VMUFieldValue;
  v8 = [(VMUFieldValue *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_field, field);
    v9->_value = value;
  }

  return v9;
}

@end
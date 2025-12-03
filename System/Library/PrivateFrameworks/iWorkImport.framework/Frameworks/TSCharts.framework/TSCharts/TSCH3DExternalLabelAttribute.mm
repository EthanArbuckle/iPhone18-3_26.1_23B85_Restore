@interface TSCH3DExternalLabelAttribute
+ (id)attributeWithVariable:(id)variable value:(tvec2<float>)value;
- (TSCH3DExternalLabelAttribute)initWithVariable:(id)variable value:(tvec2<float>)value;
@end

@implementation TSCH3DExternalLabelAttribute

+ (id)attributeWithVariable:(id)variable value:(tvec2<float>)value
{
  variableCopy = variable;
  v7 = [self alloc];
  v13 = **&value;
  v11 = objc_msgSend_initWithVariable_value_(v7, v8, v13, v9, v10, variableCopy, &v13);

  return v11;
}

- (TSCH3DExternalLabelAttribute)initWithVariable:(id)variable value:(tvec2<float>)value
{
  variableCopy = variable;
  v11.receiver = self;
  v11.super_class = TSCH3DExternalLabelAttribute;
  v8 = [(TSCH3DExternalLabelAttribute *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_variable, variable);
    v9->_value.var0.var0 = **&value;
    v9->_value.var1.var0 = *(*&value + 4);
  }

  return v9;
}

@end
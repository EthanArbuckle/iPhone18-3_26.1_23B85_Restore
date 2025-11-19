@interface TSCH3DExternalLabelAttribute
+ (id)attributeWithVariable:(id)a3 value:(tvec2<float>)a4;
- (TSCH3DExternalLabelAttribute)initWithVariable:(id)a3 value:(tvec2<float>)a4;
@end

@implementation TSCH3DExternalLabelAttribute

+ (id)attributeWithVariable:(id)a3 value:(tvec2<float>)a4
{
  v6 = a3;
  v7 = [a1 alloc];
  v13 = **&a4;
  v11 = objc_msgSend_initWithVariable_value_(v7, v8, v13, v9, v10, v6, &v13);

  return v11;
}

- (TSCH3DExternalLabelAttribute)initWithVariable:(id)a3 value:(tvec2<float>)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = TSCH3DExternalLabelAttribute;
  v8 = [(TSCH3DExternalLabelAttribute *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_variable, a3);
    v9->_value.var0.var0 = **&a4;
    v9->_value.var1.var0 = *(*&a4 + 4);
  }

  return v9;
}

@end
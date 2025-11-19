@interface TSCEFunction_op_NE
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_op_NE

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v7 = **a5;
  v8 = *(*a5 + 8);
  v17 = 0;
  v10 = objc_msgSend_valuesAreEqualLeft_right_context_outError_(TSCEValue, v9, v7, v8, a3, &v17);
  v14 = v17;
  if (v14)
  {
    objc_msgSend_raiseErrorOrConvert_(a3, v11, v14, v12, v13);
  }

  else
  {
    objc_msgSend_BOOLValue_(TSCEBooleanValue, v11, v10 ^ 1u, v12, v13);
  }
  v15 = ;

  return v15;
}

@end
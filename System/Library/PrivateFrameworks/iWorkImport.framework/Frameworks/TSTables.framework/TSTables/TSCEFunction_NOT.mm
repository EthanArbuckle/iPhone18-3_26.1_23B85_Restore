@interface TSCEFunction_NOT
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_NOT

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v7 = **a5;
  v18 = 0;
  v9 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v7, v8, a3, a4, 0, &v18);
  v13 = v18;
  if (v13)
  {
    v14 = objc_msgSend_raiseErrorOrConvert_(a3, v10, v13, v11, v12);
  }

  else
  {
    if (v7)
    {
      objc_msgSend_formatWithContext_(v7, v10, a3, v11, v12);
    }

    else
    {
      memset(v17, 0, sizeof(v17));
    }

    v14 = objc_msgSend_BOOLValue_format_(TSCEBooleanValue, v10, v9 ^ 1u, v17, v12);
  }

  v15 = v14;

  return v15;
}

@end
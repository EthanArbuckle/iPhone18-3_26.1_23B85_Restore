@interface TSCEFunction_op_Percent
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_op_Percent

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v7 = **a5;
  v30 = 0;
  v9 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v7, v8, a3, a4, 0, &v30);
  v14 = v30;
  if (v14)
  {
    v15 = objc_msgSend_raiseErrorOrConvert_(a3, v10, v14, v12, v13);
  }

  else if (objc_msgSend_hasUnits(v9, v10, v11, v12, v13))
  {
    v20 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v16, v9, a3, a4, 0);
    v15 = objc_msgSend_raiseErrorOrConvert_(a3, v21, v20, v22, v23);
  }

  else
  {
    v15 = objc_msgSend_percent(v9, v16, v17, v18, v19);
    TSCEFormat::TSCEFormat(&v28, 258);
    TSCEFormat::TSCEFormat(&v29, &v28);
    objc_msgSend_setFormat_(v15, v24, &v29, v25, v26);
  }

  return v15;
}

@end
@interface TSCEFunction_EXP
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_EXP

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v7 = **a5;
  v25 = 0;
  v9 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v7, v8, a3, a4, 0, &v25);
  v14 = v25;
  if (v14)
  {
    v15 = objc_msgSend_raiseErrorOrConvert_(a3, v10, v14, v12, v13);
  }

  else
  {
    v15 = objc_msgSend_exp(v9, v10, v11, v12, v13);
    if (v7)
    {
      objc_msgSend_formatWithContext_(v7, v16, a3, v17, v18);
    }

    else
    {
      memset(&v23, 0, sizeof(v23));
    }

    TSCEFormat::TSCEFormat(&v24, &v23);
    objc_msgSend_setFormat_(v15, v19, &v24, v20, v21);
  }

  return v15;
}

@end
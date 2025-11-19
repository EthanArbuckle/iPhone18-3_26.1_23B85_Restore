@interface TSCEFunction_ACOSH
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_ACOSH

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v7 = **a5;
  v36 = 0;
  v9 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v7, v8, a3, a4, 0, &v36);
  v14 = v36;
  if (v14)
  {
    v15 = objc_msgSend_raiseErrorOrConvert_(a3, v10, v14, v12, v13);
  }

  else if (objc_msgSend_hasUnits(v9, v10, v11, v12, v13))
  {
    v20 = objc_msgSend_functionName(a4, v16, v17, v18, v19);
    v23 = objc_msgSend_unitsNotAllowedErrorForFunctionName_argumentNumber_(TSCEError, v21, v20, 1, v22);
    v15 = objc_msgSend_raiseErrorOrConvert_(a3, v24, v23, v25, v26);
  }

  else
  {
    v15 = objc_msgSend_acosh(v9, v16, v17, v18, v19);
    if (v7)
    {
      objc_msgSend_formatWithContext_(v7, v27, a3, v28, v29);
    }

    else
    {
      memset(&v34, 0, sizeof(v34));
    }

    TSCEFormat::TSCEFormat(&v35, &v34);
    objc_msgSend_setFormat_(v15, v30, &v35, v31, v32);
  }

  return v15;
}

@end
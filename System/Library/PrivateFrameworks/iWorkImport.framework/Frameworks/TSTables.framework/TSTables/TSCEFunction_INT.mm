@interface TSCEFunction_INT
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_INT

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v7 = **a5;
  v29 = 0;
  v9 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v7, v8, a3, a4, 0, &v29);
  v13 = v29;
  if (v13)
  {
    v14 = objc_msgSend_raiseErrorOrConvert_(a3, v10, v13, v11, v12);
  }

  else
  {
    v19 = objc_msgSend_errorForDuration_argumentIndex_(v9, v10, a4, 0, v12);
    if (v19)
    {
      v14 = objc_msgSend_raiseErrorOrConvert_(a3, v15, v19, v17, v18);
    }

    else
    {
      v14 = objc_msgSend_floor(v9, v15, v16, v17, v18);
      if (v7)
      {
        objc_msgSend_formatWithContext_(v7, v20, a3, v21, v22);
      }

      else
      {
        memset(&v27, 0, sizeof(v27));
      }

      TSCEFormat::TSCEFormat(&v28, &v27);
      objc_msgSend_setFormat_(v14, v23, &v28, v24, v25);
    }
  }

  return v14;
}

@end
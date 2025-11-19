@interface TSCEFunction_ATAN2
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_ATAN2

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v9 = *(*a5 + 8);
  v49 = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v10, a3, a4, 0, &v49);
  v12 = v49;
  if (v12)
  {
    v16 = v12;
    v17 = objc_msgSend_raiseErrorOrConvert_(a3, v13, v12, v14, v15);
  }

  else
  {
    v48 = 0;
    v18 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v13, a3, a4, 1, &v48);
    v16 = v48;
    if (v16)
    {
      v17 = objc_msgSend_raiseErrorOrConvert_(a3, v19, v16, v20, v21);
    }

    else
    {
      if (objc_msgSend_dimensionsMatchModuloCurrency_(v11, v19, v18, v20, v21))
      {
        v47 = 0;
        v26 = objc_msgSend_atan2_outError_(v18, v22, v11, &v47, v25);
        v16 = v47;
        if (v16)
        {
          v31 = objc_msgSend_raiseErrorOrConvert_(a3, v27, v16, v29, v30);
        }

        else
        {
          if (v8)
          {
            objc_msgSend_formatWithContext_(v8, v27, a3, v29, v30);
          }

          else
          {
            memset(&v45, 0, sizeof(v45));
          }

          if (v9)
          {
            objc_msgSend_formatWithContext_(v9, v27, a3, v29, v30);
          }

          else
          {
            memset(&v44, 0, sizeof(v44));
          }

          TSCEFormat::formatByMergingWithFormat(&v45, &v44, v28, v29, v30, &v43);
          TSCEFormat::TSCEFormat(&v46, &v43);
          objc_msgSend_setFormat_(v26, v39, &v46, v40, v41);
          v31 = v26;
        }

        v17 = v31;
      }

      else
      {
        v26 = objc_msgSend_functionName(a4, v22, v23, v24, v25);
        v35 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v32, v26, v33, v34);
        v17 = objc_msgSend_raiseErrorOrConvert_(a3, v36, v35, v37, v38);

        v16 = 0;
      }
    }
  }

  return v17;
}

@end
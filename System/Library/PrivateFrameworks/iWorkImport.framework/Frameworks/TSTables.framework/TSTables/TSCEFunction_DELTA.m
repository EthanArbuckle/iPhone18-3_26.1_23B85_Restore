@interface TSCEFunction_DELTA
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_DELTA

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v47 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, a3, a4, 0, &v47);
  v11 = v47;
  if (v11)
  {
    v15 = v11;
    v16 = objc_msgSend_raiseErrorOrConvert_(a3, v12, v11, v13, v14);
    goto LABEL_13;
  }

  v17 = *(*a5 + 8);
  v46 = 0;
  v19 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v17, v18, a3, a4, 1, &v46);
  v15 = v46;
  if (!v15)
  {
    if (objc_msgSend_dimensionsMatchModuloCurrency_(v10, v20, v19, v21, v22))
    {
      v45 = 0;
      objc_msgSend_eq_outError_(v10, v24, v19, &v45, v27);
      v28 = v45;
      if (v28)
      {
        v15 = v28;
        v23 = objc_msgSend_raiseErrorOrConvert_(a3, v29, v28, v30, v31);
        goto LABEL_5;
      }

      TSUDecimal::operator=();
      TSCEFormat::TSCEFormat(v43, 256);
      v16 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v40, v44, v43, v41);
    }

    else
    {
      v32 = objc_msgSend_functionName(a4, v24, v25, v26, v27);
      v36 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v33, v32, v34, v35);
      v16 = objc_msgSend_raiseErrorOrConvert_(a3, v37, v36, v38, v39);
    }

    v15 = 0;
    goto LABEL_12;
  }

  v23 = objc_msgSend_raiseErrorOrConvert_(a3, v20, v15, v21, v22);
LABEL_5:
  v16 = v23;
LABEL_12:

LABEL_13:

  return v16;
}

@end
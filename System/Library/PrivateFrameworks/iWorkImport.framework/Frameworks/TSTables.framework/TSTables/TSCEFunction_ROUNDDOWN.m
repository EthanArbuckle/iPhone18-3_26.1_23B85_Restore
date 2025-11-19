@interface TSCEFunction_ROUNDDOWN
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_ROUNDDOWN

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v59 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, a3, a4, 0, &v59);
  v14 = v59;
  if (v14)
  {
    v15 = objc_msgSend_raiseErrorOrConvert_(a3, v11, v14, v12, v13);
    goto LABEL_18;
  }

  v20 = objc_msgSend_errorForDuration_argumentIndex_(v10, v11, a4, 0, v13);
  if (v20)
  {
    v15 = objc_msgSend_raiseErrorOrConvert_(a3, v16, v20, v18, v19);
    v14 = v20;
    goto LABEL_18;
  }

  v24 = objc_msgSend_zero(TSCENumberValue, v16, v17, v18, v19);
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v21, a3, v22, v23);
  }

  else
  {
    memset(&v58, 0, sizeof(v58));
  }

  if (*(a5 + 1) - *a5 < 9uLL)
  {
    goto LABEL_11;
  }

  v25 = *(*a5 + 8);
  if ((objc_msgSend_isTokenOrEmptyArg(v25, v26, v27, v28, v29) & 1) == 0)
  {
    v57 = 0;
    v35 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v25, v30, a3, a4, 1, &v57);
    v14 = v57;
    v34 = objc_msgSend_floor(v35, v36, v37, v38, v39);

    if (v14)
    {
      v15 = objc_msgSend_raiseErrorOrConvert_(a3, v40, v14, v42, v43);
    }

    else
    {
      if (!objc_msgSend_hasUnits(v34, v40, v41, v42, v43))
      {
        v24 = v34;
        goto LABEL_10;
      }

      v48 = objc_msgSend_functionName(a4, v44, v45, v46, v47);
      v51 = objc_msgSend_unitsNotAllowedErrorForFunctionName_argumentNumber_(TSCEError, v49, v48, 2, v50);
      v15 = objc_msgSend_raiseErrorOrConvert_(a3, v52, v51, v53, v54);
    }

    goto LABEL_17;
  }

LABEL_10:

LABEL_11:
  v15 = sub_2212B1D7C(v10, v24, NSRoundDown, NSRoundUp);
  TSCEFormat::TSCEFormat(&v56, &v58);
  objc_msgSend_setFormat_(v15, v31, &v56, v32, v33);
  v14 = 0;
  v34 = v24;
LABEL_17:

LABEL_18:

  return v15;
}

@end
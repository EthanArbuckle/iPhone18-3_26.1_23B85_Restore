@interface TSCEFunction_TRUNC
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_TRUNC

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v65 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, a3, a4, 0, &v65);
  v14 = v65;
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

  v25 = objc_msgSend_zero(TSCENumberValue, v16, v17, v18, v19);
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v21, a3, v23, v24);
  }

  else
  {
    memset(&v64, 0, sizeof(v64));
  }

  if (*(a5 + 1) - *a5 < 9uLL)
  {
    goto LABEL_11;
  }

  v26 = *(*a5 + 8);
  if ((objc_msgSend_isTokenOrEmptyArg(v26, v27, v28, v29, v30) & 1) == 0)
  {
    v63 = 0;
    v44 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v26, v31, a3, a4, 1, &v63);
    v43 = v63;

    if (v43)
    {
      v15 = objc_msgSend_raiseErrorOrConvert_(a3, v45, v43, v47, v48);
    }

    else
    {
      if (!objc_msgSend_hasUnits(v44, v45, v46, v47, v48))
      {
        v25 = v44;
        goto LABEL_10;
      }

      v53 = objc_msgSend_functionName(a4, v49, v50, v51, v52);
      v56 = objc_msgSend_unitsNotAllowedErrorForFunctionName_argumentNumber_(TSCEError, v54, v53, 2, v55);
      v15 = objc_msgSend_raiseErrorOrConvert_(a3, v57, v56, v58, v59);
    }

    goto LABEL_17;
  }

LABEL_10:

LABEL_11:
  v62._decimal.w[0] = objc_msgSend_decimalRepresentation(v10, v21, v22, v23, v24);
  v62._decimal.w[1] = v32;
  v61._tskFormat = objc_msgSend_decimalRepresentation(v25, v32, v33, v34, v35);
  *&v61._formatType = v36;
  TSUDecimal::truncateWithRounding(&v61);
  TSUDecimal::shift10Places(&v62);
  TSUDecimal::trunc(&v62);
  TSUDecimal::shift10Places(&v62);
  v15 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v37, &v62, v38, v39);
  TSCEFormat::TSCEFormat(&v61, &v64);
  objc_msgSend_setFormat_(v15, v40, &v61, v41, v42);
  v43 = 0;
  v44 = v25;
LABEL_17:

  v14 = v43;
LABEL_18:

  return v15;
}

@end
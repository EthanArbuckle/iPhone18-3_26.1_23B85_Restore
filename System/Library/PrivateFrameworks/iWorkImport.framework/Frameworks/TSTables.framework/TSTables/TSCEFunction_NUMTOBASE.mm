@interface TSCEFunction_NUMTOBASE
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_NUMTOBASE

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v68 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, a3, a4, 0, &v68);
  v11 = v68;
  v16 = objc_msgSend_trunc(v10, v12, v13, v14, v15);

  if (v11)
  {
    v21 = objc_msgSend_raiseErrorOrConvert_(a3, v17, v11, v19, v20);
    goto LABEL_18;
  }

  if (!objc_msgSend_isDuration(v16, v17, v18, v19, v20))
  {
    v29 = *(*a5 + 8);
    v67 = 0;
    v34 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v29, v33, a3, a4, 1, &v67);
    v26 = v67;
    v39 = objc_msgSend_trunc(v34, v35, v36, v37, v38);

    if (v26)
    {
      v21 = objc_msgSend_raiseErrorOrConvert_(a3, v40, v26, v42, v43);
LABEL_16:

      goto LABEL_17;
    }

    if (*(a5 + 1) - *a5 < 0x11uLL)
    {
      v50 = 0;
    }

    else
    {
      v44 = *(*a5 + 16);
      if (objc_msgSend_isTokenOrEmptyArg(v44, v45, v46, v47, v48))
      {
        v50 = 0;
      }

      else
      {
        v66 = 0;
        v51 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v44, v49, a3, a4, 2, &v66);
        v26 = v66;
        v56 = objc_msgSend_trunc(v51, v52, v53, v54, v55);

        if (v26)
        {
          v21 = objc_msgSend_raiseErrorOrConvert_(a3, v57, v26, v59, v60);

          goto LABEL_16;
        }

        v65._decimal.w[0] = objc_msgSend_decimalRepresentation(v56, v57, v58, v59, v60);
        v65._decimal.w[1] = v61;
        v50 = TSUDecimal::truncateWithRounding(&v65);
      }
    }

    v65._decimal.w[0] = objc_msgSend_decimalRepresentation(v39, v40, v41, v42, v43);
    v65._decimal.w[1] = v62;
    v63 = TSUDecimal::truncateWithRounding(&v65);
    v21 = sub_2211F8024(a3, a4, v16, v63, v50, 1);
    v26 = 0;
    goto LABEL_16;
  }

  v26 = objc_msgSend_functionName(a4, v22, v23, v24, v25);
  v29 = objc_msgSend_durationNotAllowedError_argumentNumber_(TSCEError, v27, v26, 1, v28);
  v21 = objc_msgSend_raiseErrorOrConvert_(a3, v30, v29, v31, v32);
LABEL_17:

  v11 = v26;
LABEL_18:

  return v21;
}

@end
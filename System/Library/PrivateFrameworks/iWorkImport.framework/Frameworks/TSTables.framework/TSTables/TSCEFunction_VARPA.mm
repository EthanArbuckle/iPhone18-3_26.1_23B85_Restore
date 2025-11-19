@interface TSCEFunction_VARPA
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_VARPA

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v7 = **a5;
  v61 = 0;
  v8 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, a2, a3, a4, 0, 1, &v61);
  v9 = v61;
  if (v9)
  {
    v14 = v9;
    v15 = objc_msgSend_raiseErrorOrConvert_(a3, v10, v9, v12, v13);
    goto LABEL_18;
  }

  v16 = objc_msgSend_nilValue(TSCENilValue, v10, v11, v12, v13);
  v58 = 0;
  v59 = v16;
  v17 = sub_22121C524(a3, a4, 0, v8, 1, 1, &v59, 0, 0, &v58);
  v19 = v18;
  v20 = v59;

  v14 = v58;
  v60[0] = v17;
  v60[1] = v19;
  v25 = objc_msgSend_zero(TSCENumberValue, v21, v22, v23, v24);
  v30 = v25;
  if (v14)
  {
    v31 = v25;
    goto LABEL_5;
  }

  v31 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v26, v60, v28, v29);

  if (objc_msgSend_deepType_(v20, v44, a3, v45, v46) != 5)
  {
    goto LABEL_12;
  }

  v57 = 0;
  v47 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v20, v26, a3, a4, 0, &v57);
  v48 = v57;
  if (v48)
  {
    v14 = v48;

    goto LABEL_5;
  }

  v14 = objc_msgSend_errorForDuration_argumentIndex_(v47, v49, a4, 0, v50);

  if (!v14)
  {
LABEL_12:
    if (v8)
    {
      objc_msgSend_formatWithContext_(v8, v26, a3, v28, v29);
    }

    else
    {
      memset(&v55, 0, sizeof(v55));
    }

    TSCEFormat::TSCEFormat(&v56, &v55);
    objc_msgSend_setFormat_(v31, v51, &v56, v52, v53);
    v43 = v31;
    v31 = v43;
    v14 = 0;
    goto LABEL_16;
  }

LABEL_5:
  if (!objc_msgSend_isMismatchedUnitsError(v14, v26, v27, v28, v29))
  {
    v43 = objc_msgSend_raiseErrorOrConvert_(a3, v32, v14, v34, v35);
LABEL_16:
    v15 = v43;
    goto LABEL_17;
  }

  v36 = objc_msgSend_functionName(a4, v32, v33, v34, v35);
  v39 = objc_msgSend_durationNotAllowedError_argumentNumber_(TSCEError, v37, v36, 1, v38);
  v15 = objc_msgSend_raiseErrorOrConvert_(a3, v40, v39, v41, v42);

LABEL_17:
LABEL_18:

  return v15;
}

@end
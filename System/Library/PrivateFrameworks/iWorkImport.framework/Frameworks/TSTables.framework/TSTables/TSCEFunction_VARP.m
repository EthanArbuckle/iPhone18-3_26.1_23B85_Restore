@interface TSCEFunction_VARP
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
+ (id)getResultWithVector:(id)a3 context:(id)a4 functionSpec:(id)a5 index:(int)a6;
@end

@implementation TSCEFunction_VARP

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v7 = **a5;
  v23 = 0;
  v8 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, a2, a3, a4, 0, 1, &v23);
  v12 = v23;
  if (v12)
  {
    v13 = objc_msgSend_raiseErrorOrConvert_(a3, v9, v12, v10, v11);
  }

  else
  {
    v13 = objc_msgSend_getResultWithVector_context_functionSpec_index_(TSCEFunction_VARP, v9, v8, a3, a4, 0);
    if (v8)
    {
      objc_msgSend_formatWithContext_(v8, v14, a3, v15, v16);
    }

    else
    {
      memset(&v21, 0, sizeof(v21));
    }

    TSCEFormat::TSCEFormat(&v22, &v21);
    objc_msgSend_setFormat_(v13, v17, &v22, v18, v19);
  }

  return v13;
}

+ (id)getResultWithVector:(id)a3 context:(id)a4 functionSpec:(id)a5 index:(int)a6
{
  v6 = *&a6;
  v9 = a3;
  v10 = a4;
  v15 = objc_msgSend_nilValue(TSCENilValue, v11, v12, v13, v14);
  v43 = 0;
  v44 = v15;
  v16 = sub_22121C524(v10, a5, v6, v9, 1, 0, &v44, 0, 0, &v43);
  v18 = v17;
  v19 = v44;

  v24 = v43;
  v45[0] = v16;
  v45[1] = v18;
  if (v24)
  {
LABEL_2:
    if (objc_msgSend_isMismatchedUnitsError(v24, v20, v21, v22, v23))
    {
      v29 = objc_msgSend_functionName(a5, v25, v26, v27, v28);
      v32 = objc_msgSend_durationNotAllowedError_argumentNumber_(TSCEError, v30, v29, 1, v31);
      v36 = objc_msgSend_raiseErrorOrConvert_(v10, v33, v32, v34, v35);
    }

    else
    {
      v36 = objc_msgSend_raiseErrorOrConvert_(v10, v25, v24, v27, v28);
    }

    goto LABEL_11;
  }

  if (objc_msgSend_deepType_(v19, v20, v10, v22, v23) == 5)
  {
    v42 = 0;
    v37 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v19, v20, v10, a5, v6, &v42);
    v38 = v42;
    if (v38)
    {
      v24 = v38;

      goto LABEL_2;
    }

    v24 = objc_msgSend_errorForDuration_argumentIndex_(v37, v39, a5, v6, v40);

    if (v24)
    {
      goto LABEL_2;
    }
  }

  v36 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v20, v45, v22, v23);
LABEL_11:

  return v36;
}

@end
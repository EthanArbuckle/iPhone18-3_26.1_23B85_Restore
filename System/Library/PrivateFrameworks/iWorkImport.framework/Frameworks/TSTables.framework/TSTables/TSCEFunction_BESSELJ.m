@interface TSCEFunction_BESSELJ
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_BESSELJ

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v69 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, a3, a4, 0, &v69);
  v11 = v69;
  if (v11)
  {
    v15 = v11;
    v16 = objc_msgSend_raiseErrorOrConvert_(a3, v12, v11, v13, v14);
  }

  else
  {
    v17 = *(*a5 + 8);
    v68 = 0;
    v19 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v17, v18, a3, a4, 1, &v68);
    v15 = v68;
    v24 = objc_msgSend_trunc(v19, v20, v21, v22, v23);

    if (v15)
    {
      v16 = objc_msgSend_raiseErrorOrConvert_(a3, v25, v15, v27, v28);
    }

    else
    {
      v63._decimal.w[0] = objc_msgSend_decimalRepresentation(v24, v25, v26, v27, v28);
      v63._decimal.w[1] = v29;
      TSUDecimal::doubleValue(&v63);
      if (v34 < -2147483650.0 || v34 > 2147483650.0)
      {
        v46 = objc_msgSend_functionName(a4, v30, v31, v32, v33);
        v48 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v47, 2, v46, 1, 1, -2147483650.0, 2147483650.0);
        v16 = objc_msgSend_raiseErrorOrConvert_(a3, v49, v48, v50, v51);
      }

      else
      {
        v63._decimal.w[0] = 0;
        v63._decimal.w[1] = &v63;
        v64 = 0x3032000000;
        v65 = sub_22126D0F4;
        v66 = sub_22126D104;
        v67 = 0;
        v59[0] = MEMORY[0x277D85DD0];
        v59[1] = 3221225472;
        v59[2] = sub_22126D10C;
        v59[3] = &unk_278461A90;
        v62 = &v63;
        v60 = v10;
        v61 = v24;
        objc_msgSend_runBlockUnlessAborted_(a3, v35, v59, v36, v37);
        v42 = *(v63._decimal.w[1] + 40);
        if (v42)
        {
          TSCEFormat::TSCEFormat(&v57, 256);
          TSCEFormat::TSCEFormat(&v58, &v57);
          objc_msgSend_setFormat_(v42, v43, &v58, v44, v45);
          v16 = *(v63._decimal.w[1] + 40);
        }

        else
        {
          v52 = objc_msgSend_abortError(TSCEError, v38, v39, v40, v41);
          v16 = objc_msgSend_errorValue_(TSCEErrorValue, v53, v52, v54, v55);
        }

        _Block_object_dispose(&v63, 8);
      }
    }
  }

  return v16;
}

@end
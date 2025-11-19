@interface TSCEFunction_SUMSQ
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_SUMSQ

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v7 = **a5;
  v93[0] = 0;
  v78 = v7;
  v81 = a4;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, v8, a3, a4, 0, 1, v93);
  v10 = v93[0];
  v79 = v9;
  if (v10)
  {
    v15 = v10;
    v16 = objc_msgSend_raiseErrorOrConvert_(a3, v11, v10, v13, v14);
    goto LABEL_26;
  }

  v17 = objc_msgSend_zero(TSCENumberValue, v11, v12, v13, v14);
  v22 = objc_msgSend_count(v9, v18, v19, v20, v21);
  v26 = a3;
  v87[0] = v26;
  v87[1] = v81;
  v88 = 0;
  v89[0] = 0;
  *(v89 + 7) = 0;
  v90 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v91 = 0;
  v92 = 0;
  if (v22)
  {
    for (i = 0; i != v22; ++i)
    {
      v28 = objc_msgSend_valueAtIndex_accessContext_(v9, v23, i, v87, v25);
      v36 = objc_msgSend_errorWithContext_(v28, v29, v26, v30, v31);
      if (v36)
      {
        v16 = objc_msgSend_raiseErrorOrConvert_(v26, v32, v36, v34, v35);
        v15 = 0;
        goto LABEL_24;
      }

      if (objc_msgSend_isNil(v28, v32, v33, v34, v35))
      {
        v39 = v17;
      }

      else
      {
        v86 = 0;
        v40 = objc_msgSend_asNumber_outError_(v28, v37, v26, &v86, v38);
        v41 = v86;
        v80 = v40;
        if (v41)
        {
          v15 = v41;
          v16 = objc_msgSend_raiseErrorOrConvert_(v26, v42, v41, v44, v45);
          goto LABEL_23;
        }

        if (objc_msgSend_hasUnits(v40, v42, v43, v44, v45) && !objc_msgSend_dimension(v40, v46, v47, v48, v49))
        {
          v70 = objc_msgSend_functionName(v81, v50, v51, v52, v53);
          v73 = objc_msgSend_durationNotAllowedError_argumentNumber_(TSCEError, v71, v70, 1, v72);
          v16 = objc_msgSend_raiseErrorOrConvert_(v26, v74, v73, v75, v76);

          v15 = 0;
LABEL_23:

LABEL_24:
          goto LABEL_25;
        }

        v54 = v22;
        TSUDecimal::operator=();
        v58 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v55, &v83, v56, v57);
        v85 = 0;
        v61 = objc_msgSend_power_outError_(v40, v59, v58, &v85, v60);
        v62 = v85;
        v84 = v62;
        v39 = objc_msgSend_add_functionSpec_outError_(v17, v63, v61, v81, &v84);
        v15 = v84;

        if (v15)
        {
          v9 = v79;
          v36 = 0;
          v16 = objc_msgSend_raiseErrorOrConvert_(v26, v64, v15, v65, v66);
          v17 = v39;
          goto LABEL_23;
        }

        v17 = v39;
        v9 = v79;
        v22 = v54;
      }
    }

    if (!v9)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v39 = v17;
  if (v9)
  {
LABEL_15:
    objc_msgSend_formatWithContext_(v9, v23, v26, v24, v25);
    goto LABEL_18;
  }

LABEL_17:
  memset(&v82, 0, sizeof(v82));
LABEL_18:
  TSCEFormat::TSCEFormat(&v83, &v82);
  objc_msgSend_setFormat_(v39, v67, &v83, v68, v69);
  v17 = v39;
  v15 = 0;
  v16 = v17;
LABEL_25:

LABEL_26:

  return v16;
}

@end
@interface TSCEFunction_DEVSQ
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_DEVSQ

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v127[0] = 0;
  specCopy = spec;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, v8, context, spec, 0, 1, v127);
  v10 = v127[0];
  if (v10)
  {
    v15 = v10;
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v11, v10, v13, v14);
  }

  else
  {
    v17 = objc_msgSend_count(v9, v11, v12, v13, v14);
    contextCopy = context;
    v121[0] = contextCopy;
    v121[1] = spec;
    v122 = 0;
    v123[0] = 0;
    *(v123 + 7) = 0;
    v124 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v125 = 0;
    v126 = 0;
    if (v17)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 1;
      do
      {
        v26 = objc_msgSend_valueAtIndex_accessContext_(v9, v18, v23, v121, v21);
        if ((objc_msgSend_isNil(v26, v27, v28, v29, v30) & 1) == 0)
        {
          v120 = 0;
          v32 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v26, v31, contextCopy, specCopy, 0, &v120);
          v33 = v120;
          if (v33)
          {
            v15 = v33;
            v64 = v22;
            v70 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v34, v33, v35, v36);
LABEL_25:
            v16 = v70;
            goto LABEL_40;
          }

          if (v25)
          {
            v37 = v32;
          }

          else
          {
            if ((objc_msgSend_dimensionsMatchModuloCurrency_(v22, v34, v32, v35, v36) & 1) == 0)
            {
              v64 = v22;
              v65 = objc_msgSend_functionName(specCopy, v40, v41, v42, v43);
              v74 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v71, v65, v72, v73);
              v16 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v75, v74, v76, v77);

              v15 = 0;
              goto LABEL_39;
            }

            v119 = 0;
            v37 = objc_msgSend_add_functionSpec_outError_(v22, v40, v32, specCopy, &v119);
            v15 = v119;

            if (v15)
            {
              v16 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v38, v15, v44, v39);
              v64 = v37;
              goto LABEL_40;
            }
          }

          v22 = v37;
          v15 = objc_msgSend_errorForDuration_argumentIndex_(v37, v38, specCopy, 0, v39);
          if (v15)
          {
            v64 = v37;
            v70 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v45, v15, v46, v47);
            goto LABEL_25;
          }

          ++v24;

          v25 = 0;
        }

        ++v23;
      }

      while (v17 != v23);
      if (!v24)
      {
        v64 = v22;
        goto LABEL_22;
      }

      v107 = v9;
      v104 = v7;
      TSUDecimal::operator=();
      v26 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v48, &v113, v49, v50);
      v109 = v17;
      v118 = 0;
      v32 = objc_msgSend_divide_outError_(v22, v51, v26, &v118, v52);
      v15 = v118;
      v105 = v32;
      TSUDecimal::operator=();
      v106 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v53, &v113, v54, v55);
      v60 = objc_msgSend_zero(TSCENumberValue, v56, v57, v58, v59);

      if (!v15)
      {
        v78 = 1;
        v64 = v60;
        while (1)
        {
          v79 = objc_msgSend_valueAtIndex_accessContext_(v9, v61, v78 - 1, v121, v63, v104);
          if (objc_msgSend_isNil(v79, v80, v81, v82, v83))
          {
            v15 = 0;
          }

          else
          {
            v117 = 0;
            v85 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v79, v84, contextCopy, specCopy, 0, &v117);
            v86 = v117;
            v108 = v85;
            if (v86)
            {
              v15 = v86;
              v16 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v87, v86, v88, v89);

              v7 = v104;
              v65 = v106;
              goto LABEL_39;
            }

            v90 = v64;
            v116 = 0;
            v91 = objc_msgSend_subtract_functionSpec_outError_(v85, v87, v32, specCopy, &v116);
            v92 = v116;
            v115 = v92;
            v93 = v91;
            v96 = objc_msgSend_power_outError_(v91, v94, v106, &v115, v95);
            v97 = v115;

            v114 = v97;
            v99 = objc_msgSend_add_functionSpec_outError_(v90, v98, v96, specCopy, &v114);
            v15 = v114;

            v64 = v99;
            v9 = v107;
            v32 = v105;
          }

          if (v78 < v109)
          {
            ++v78;
            if (!v15)
            {
              continue;
            }
          }

          goto LABEL_17;
        }
      }

      v64 = v60;
LABEL_17:
      v7 = v104;
      v65 = v106;
      if (v15)
      {
        v66 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v61, v15, v62, v63);
      }

      if (v9)
      {
        objc_msgSend_formatWithContext_(v9, v61, contextCopy, v62, v63);
      }

      else
      {
        memset(&v112, 0, sizeof(v112));
      }

      TSCEFormat::TSCEFormat(&v113, &v112);
      objc_msgSend_setFormat_(v64, v100, &v113, v101, v102);
      v64 = v64;
      v16 = v64;
LABEL_39:

LABEL_40:
    }

    else
    {
      v64 = 0;
LABEL_22:
      v26 = objc_msgSend_divideByZeroError(TSCEError, v18, v19, v20, v21);
      v16 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v67, v26, v68, v69);
      v15 = 0;
    }
  }

  return v16;
}

@end
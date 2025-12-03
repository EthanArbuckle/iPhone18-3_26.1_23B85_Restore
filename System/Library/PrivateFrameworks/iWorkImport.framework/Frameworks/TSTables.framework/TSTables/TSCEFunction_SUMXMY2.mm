@interface TSCEFunction_SUMXMY2
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_SUMXMY2

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  argumentsCopy = arguments;
  v8 = **arguments;
  v124[0] = 0;
  v10 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, v9, context, spec, 0, 1, v124);
  v11 = v124[0];
  if (v11)
  {
    v16 = v11;
    argumentsCopy = objc_msgSend_raiseErrorOrConvert_(context, v12, v11, v14, v15);
    goto LABEL_36;
  }

  v108 = objc_msgSend_count(v10, v12, v13, v14, v15);
  v17 = *(*argumentsCopy + 8);
  v123 = 0;
  v109 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v17, v18, context, spec, 1, 1, &v123);
  v19 = v123;
  if (v19)
  {
    v16 = v19;
    argumentsCopy = objc_msgSend_raiseErrorOrConvert_(context, v20, v19, v22, v23);
    goto LABEL_35;
  }

  if (v108 != objc_msgSend_count(v109, v20, v21, v22, v23))
  {
    v78 = objc_msgSend_functionName(spec, v24, v25, v26, v27);
    v106 = objc_msgSend_differentNumberOfElementsErrorForFunctionName_(TSCEError, v79, v78, v80, v81);
    argumentsCopy = objc_msgSend_raiseErrorOrConvert_(context, v82, v106, v83, v84);
    v16 = 0;
    goto LABEL_34;
  }

  v102 = objc_msgSend_zero(TSCENumberValue, v24, v25, v26, v27);
  v28 = [TSCENumberValue alloc];
  TSUDecimal::operator=();
  v106 = objc_msgSend_initWithDecimal_(v28, v29, v117, v30, v31);
  contextCopy = context;
  v117[0] = contextCopy;
  v117[1] = spec;
  v118 = 0;
  v119[0] = 0;
  *(v119 + 7) = 0;
  v120 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v121 = 0;
  v122 = 0;
  if (!v108)
  {
    v16 = 0;
LABEL_30:
    specCopy = spec;
    v78 = v102;
    v86 = objc_msgSend_functionName(specCopy, v32, v33, v34, v35);
    v89 = objc_msgSend_noSuitableArgumentsFoundErrorForFunctionName_requiredType_(TSCEError, v87, v86, 5, v88);
    argumentsCopy = objc_msgSend_raiseErrorOrConvert_(contextCopy, v90, v89, v91, v92);

    goto LABEL_33;
  }

  v98 = v17;
  v99 = v8;
  v16 = 0;
  v37 = 0;
  v104 = 1;
  v107 = v10;
  do
  {
    v38 = objc_msgSend_valueAtIndex_accessContext_(v10, v32, v37, v117, v35);
    v41 = objc_msgSend_valueAtIndex_accessContext_(v109, v39, v37, v117, v40);
    v45 = objc_msgSend_errorWithContext_(v38, v42, contextCopy, v43, v44);
    v49 = objc_msgSend_errorWithContext_(v41, v46, contextCopy, v47, v48);
    v54 = v49;
    if (v45 | v49)
    {
      if (v45)
      {
        v55 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v50, v45, v52, v53);
LABEL_13:
        argumentsCopy = v55;
        v56 = 0;
        goto LABEL_24;
      }

      if (v49)
      {
        v55 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v50, v49, v52, v53);
        goto LABEL_13;
      }
    }

    if (objc_msgSend_isNil(v38, v50, v51, v52, v53) & 1) != 0 || (objc_msgSend_isNil(v41, v57, v58, v59, v60))
    {
      v56 = 1;
    }

    else
    {
      v116 = v16;
      v105 = objc_msgSend_asNumber_outError_(v38, v61, contextCopy, &v116, v62);
      v63 = v116;

      v115 = v63;
      v103 = objc_msgSend_asNumber_outError_(v41, v64, contextCopy, &v115, v65);
      v16 = v115;

      if (v16)
      {
        argumentsCopy = objc_msgSend_raiseErrorOrConvert_(contextCopy, v66, v16, v67, v68);
        v56 = 0;
      }

      else
      {
        v114 = 0;
        v69 = objc_msgSend_subtract_functionSpec_outError_(v105, v66, v103, spec, &v114);
        v70 = v114;
        v113 = v70;
        v97 = v69;
        v101 = objc_msgSend_power_outError_(v69, v71, v106, &v113, v72);
        v73 = v113;

        v112 = v73;
        v100 = objc_msgSend_add_functionSpec_outError_(v102, v74, v101, spec, &v112);
        v16 = v112;

        if (v16)
        {
          argumentsCopy = objc_msgSend_raiseErrorOrConvert_(contextCopy, v75, v16, v76, v77);
          v56 = 0;
        }

        else
        {
          v56 = 1;
        }

        v102 = v100;
      }

      v104 = 0;
    }

LABEL_24:

    if ((v56 & 1) == 0)
    {
      v17 = v98;
      v8 = v99;
      v10 = v107;
      v78 = v102;
      goto LABEL_33;
    }

    ++v37;
    v10 = v107;
  }

  while (v108 != v37);
  if (v104)
  {
    v17 = v98;
    v8 = v99;
    goto LABEL_30;
  }

  v110._tskFormat = 0;
  v110._formatType = 0;
  v110._formatState = 0;
  *&v110._durationFormat = *&v110._durationFormat & 0xC080 | 0x421;
  *(&v110._durationFormat + 2) = *(&v110._durationFormat + 2) & 0xF8 | 1;
  *&v110._baseFormat.base = -50266102;
  v110._numberFormat.decimalPlaces = -3;
  *(&v110._numberFormat + 1) &= 0xE0u;
  v110._numberFormat.currencyCodeIndex = 0;
  v17 = v98;
  v8 = v99;
  TSCEFormat::TSCEFormat(&v111, &v110);
  objc_msgSend_setFormat_(v102, v93, &v111, v94, v95);
  v78 = v102;
  argumentsCopy = v78;
LABEL_33:

LABEL_34:
LABEL_35:

LABEL_36:

  return argumentsCopy;
}

@end
@interface TSCEFunction_SUMX2PY2
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_SUMX2PY2

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v134[0] = 0;
  v10 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, v9, a3, a4, 0, 1, v134);
  v11 = v134[0];
  if (v11)
  {
    v16 = v11;
    a4 = objc_msgSend_raiseErrorOrConvert_(a3, v12, v11, v14, v15);
    goto LABEL_39;
  }

  v118 = objc_msgSend_count(v10, v12, v13, v14, v15);
  v17 = *(*a5 + 8);
  v133 = 0;
  v19 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v17, v18, a3, a4, 1, 1, &v133);
  v20 = v133;
  if (v20)
  {
    v16 = v20;
    a4 = objc_msgSend_raiseErrorOrConvert_(a3, v21, v20, v23, v24);
    goto LABEL_38;
  }

  if (v118 != objc_msgSend_count(v19, v21, v22, v23, v24))
  {
    v29 = objc_msgSend_functionName(a4, v25, v26, v27, v28);
    v113 = objc_msgSend_differentNumberOfElementsErrorForFunctionName_(TSCEError, v88, v29, v89, v90);
    a4 = objc_msgSend_raiseErrorOrConvert_(a3, v91, v113, v92, v93);
    v16 = 0;
    goto LABEL_37;
  }

  v29 = objc_msgSend_zero(TSCENumberValue, v25, v26, v27, v28);
  v30 = [TSCENumberValue alloc];
  TSUDecimal::operator=();
  v113 = objc_msgSend_initWithDecimal_(v30, v31, v127, v32, v33);
  v34 = a3;
  v39 = v34;
  v127[0] = v34;
  v127[1] = a4;
  v128 = 0;
  v129[0] = 0;
  *(v129 + 7) = 0;
  v130 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v131 = 0;
  v132 = 0;
  if (!v118)
  {
    v16 = 0;
    goto LABEL_34;
  }

  v111 = a4;
  v116 = v29;
  v117 = v19;
  v108 = v17;
  v109 = v8;
  v16 = 0;
  v40 = 0;
  v41 = 1;
  v114 = v34;
  v115 = v10;
  do
  {
    v42 = objc_msgSend_valueAtIndex_accessContext_(v10, v35, v40, v127, v38);
    v45 = objc_msgSend_valueAtIndex_accessContext_(v117, v43, v40, v127, v44);
    v49 = objc_msgSend_errorWithContext_(v42, v46, v39, v47, v48);
    v53 = objc_msgSend_errorWithContext_(v45, v50, v39, v51, v52);
    v58 = v53;
    if (v49 | v53)
    {
      if (v49)
      {
        v59 = objc_msgSend_raiseErrorOrConvert_(v39, v54, v49, v56, v57);
LABEL_13:
        a4 = v59;
        v60 = v41;
LABEL_14:
        v61 = 0;
        goto LABEL_19;
      }

      if (v53)
      {
        v59 = objc_msgSend_raiseErrorOrConvert_(v39, v54, v53, v56, v57);
        goto LABEL_13;
      }
    }

    if (objc_msgSend_isNil(v42, v54, v55, v56, v57) & 1) != 0 || (objc_msgSend_isNil(v45, v62, v63, v64, v65))
    {
      v60 = v41;
      v68 = v116;
LABEL_18:
      v61 = 1;
      v116 = v68;
      goto LABEL_19;
    }

    v126 = v16;
    v69 = objc_msgSend_asNumber_outError_(v42, v66, v39, &v126, v67);
    v70 = v126;

    v125 = v70;
    v112 = objc_msgSend_asNumber_outError_(v45, v71, v39, &v125, v72);
    v16 = v125;

    if (v16)
    {
      a4 = objc_msgSend_raiseErrorOrConvert_(v39, v73, v16, v74, v75);

      v60 = 0;
      goto LABEL_14;
    }

    v124 = 0;
    v107 = v69;
    v110 = objc_msgSend_power_outError_(v69, v73, v113, &v124, v75);
    v76 = v124;
    v123 = v76;
    v79 = objc_msgSend_power_outError_(v112, v77, v113, &v123, v78);
    v80 = v123;

    v122 = v80;
    v106 = v79;
    v82 = objc_msgSend_add_functionSpec_outError_(v110, v81, v79, v111, &v122);
    v83 = v122;

    v105 = v82;
    v121 = v83;
    v68 = objc_msgSend_add_functionSpec_outError_(v116, v84, v82, v111, &v121);
    v16 = v121;

    if (v16)
    {
      a4 = objc_msgSend_raiseErrorOrConvert_(v39, v85, v16, v86, v87);
    }

    v61 = 0;
    if (!v16)
    {
      v60 = 0;
      goto LABEL_18;
    }

    v116 = v68;
    v60 = 0;
LABEL_19:

    if ((v61 & 1) == 0)
    {
      v17 = v108;
      v8 = v109;
      v10 = v115;
      v29 = v116;
      v19 = v117;
      goto LABEL_36;
    }

    ++v40;
    v41 = v60;
    v39 = v114;
    v10 = v115;
  }

  while (v118 != v40);
  v29 = v116;
  if (v41)
  {
    v17 = v108;
    v8 = v109;
    v19 = v117;
    a4 = v111;
LABEL_34:
    v94 = objc_msgSend_functionName(a4, v35, v36, v37, v38);
    v97 = objc_msgSend_noSuitableArgumentsFoundErrorForFunctionName_requiredType_(TSCEError, v95, v94, 5, v96);
    a4 = objc_msgSend_raiseErrorOrConvert_(v39, v98, v97, v99, v100);
  }

  else
  {
    v119._tskFormat = 0;
    v119._formatType = 0;
    v119._formatState = 0;
    *&v119._durationFormat = *&v119._durationFormat & 0xC080 | 0x421;
    *(&v119._durationFormat + 2) = *(&v119._durationFormat + 2) & 0xF8 | 1;
    *&v119._baseFormat.base = -50266102;
    v119._numberFormat.decimalPlaces = -3;
    *(&v119._numberFormat + 1) &= 0xE0u;
    v119._numberFormat.currencyCodeIndex = 0;
    v17 = v108;
    v8 = v109;
    v19 = v117;
    TSCEFormat::TSCEFormat(&v120, &v119);
    objc_msgSend_setFormat_(v116, v101, &v120, v102, v103);
    v29 = v116;
    a4 = v29;
  }

LABEL_36:

LABEL_37:
LABEL_38:

LABEL_39:

  return a4;
}

@end
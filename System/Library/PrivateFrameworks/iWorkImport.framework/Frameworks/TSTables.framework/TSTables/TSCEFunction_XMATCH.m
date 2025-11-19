@interface TSCEFunction_XMATCH
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_XMATCH

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v9 = *(*a5 + 8);
  if (objc_msgSend_isReferenceValue(v9, v10, v11, v12, v13))
  {
    v119 = 0;
    v15 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v9, v14, a3, a4, 1, &v119);
    v16 = v119;
    if (v16)
    {
      v21 = v16;

      goto LABEL_9;
    }

    if (v15)
    {
      objc_msgSend_rangeRef(v15, v17, v18, v19, v20);
    }

    else
    {
      memset(v118, 0, sizeof(v118));
    }

    v22 = objc_msgSend_calcEngine(a3, v17, v18, v19, v20);
    IsValidIncludingSheet = objc_msgSend_referenceIsValidIncludingSheet_(v22, v23, v118, v24, v25);

    if ((IsValidIncludingSheet & 1) == 0)
    {
      v30 = objc_msgSend_invalidReferenceError(TSCEError, v14, v27, v28, v29);
      v66 = objc_msgSend_raiseErrorOrConvert_(a3, v67, v30, v68, v69);
      goto LABEL_28;
    }
  }

  v21 = 0;
LABEL_9:
  v117 = v21;
  v30 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v9, v14, a3, a4, 1, 1, &v117);
  v31 = v117;

  if (v31)
  {
    v35 = objc_msgSend_raiseErrorOrConvert_(a3, v32, v31, v33, v34);
LABEL_11:

    goto LABEL_43;
  }

  if (*(a5 + 1) - *a5 < 0x11uLL)
  {
    v45 = 0;
    goto LABEL_22;
  }

  v36 = *(*a5 + 16);
  if ((objc_msgSend_isTokenOrEmptyArg(v36, v37, v38, v39, v40) & 1) != 0 || objc_msgSend_deepType_(v36, v41, a3, v42, v43) == 10)
  {
    v45 = 0;
    goto LABEL_16;
  }

  v116 = 0;
  v70 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v36, v44, a3, a4, 2, &v116);
  v31 = v116;
  v75 = objc_msgSend_integer(v70, v71, v72, v73, v74);

  if (v31)
  {
    v35 = objc_msgSend_raiseErrorOrConvert_(a3, v76, v31, v78, v79);
LABEL_36:

    goto LABEL_11;
  }

  if ((v75 - 3) <= 0xFFFFFFFB)
  {
    v99 = objc_msgSend_functionName(a4, v76, v77, v78, v79);
    v102 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v100, v99, 3, v101);
    v35 = objc_msgSend_raiseErrorOrConvert_(a3, v103, v102, v104, v105);

    goto LABEL_36;
  }

  v45 = v75;
LABEL_16:

  if (*(a5 + 1) - *a5 < 0x19uLL)
  {
LABEL_22:
    v55 = 1;
    goto LABEL_23;
  }

  v46 = *(*a5 + 24);
  if ((objc_msgSend_isTokenOrEmptyArg(v46, v47, v48, v49, v50) & 1) == 0 && objc_msgSend_deepType_(v46, v51, a3, v52, v53) != 10)
  {
    v115 = 0;
    v88 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v46, v54, a3, a4, 3, &v115);
    v89 = v115;
    v94 = objc_msgSend_integer(v88, v90, v91, v92, v93);

    if (v89)
    {
      v35 = objc_msgSend_raiseErrorOrConvert_(a3, v95, v89, v97, v98);
    }

    else
    {
      if (v94 && (v94 - 3) > 0xFFFFFFFA)
      {
        v55 = v94;
        goto LABEL_20;
      }

      v106 = objc_msgSend_functionName(a4, v95, v96, v97, v98);
      v109 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v107, v106, 4, v108);
      v35 = objc_msgSend_raiseErrorOrConvert_(a3, v110, v109, v111, v112);
    }

    goto LABEL_43;
  }

  v55 = 1;
LABEL_20:

LABEL_23:
  v114 = 0;
  matched = objc_msgSend_lookupValue_functionSpec_userNodeValue_lookupVector_matchModeArgIndex_matchMode_searchMode_outError_(TSCEFunction_XLOOKUP, v32, a3, a4, v8, v30, 2, v45, v55, &v114);
  v57 = v114;
  if (v57)
  {
    v62 = v57;
    v35 = objc_msgSend_raiseErrorOrConvert_(a3, v58, v57, v60, v61);

    goto LABEL_43;
  }

  if (matched != -1)
  {
    TSUDecimal::operator=();
    v66 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v63, v118, v64, v65);
LABEL_28:
    v35 = v66;
    goto LABEL_43;
  }

  v80 = objc_msgSend_functionName(a4, v58, v59, v60, v61);
  v84 = objc_msgSend_valueNotAvailableErrorForFunctionName_(TSCEError, v81, v80, v82, v83);
  v35 = objc_msgSend_raiseErrorOrConvert_(a3, v85, v84, v86, v87);

LABEL_43:

  return v35;
}

@end
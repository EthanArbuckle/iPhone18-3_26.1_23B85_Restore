@interface TSCEFunction_SERIESSUM
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_SERIESSUM

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v9 = *(*arguments + 8);
  v10 = *(*arguments + 16);
  v11 = *(*arguments + 24);
  v112[0] = 0;
  v13 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v11, v12, context, spec, 3, 1, v112);
  v14 = v112[0];
  if (v14)
  {
    v18 = v14;
    v19 = objc_msgSend_raiseErrorOrConvert_(context, v15, v14, v16, v17);
    goto LABEL_34;
  }

  v111 = 0;
  v20 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v15, context, spec, 0, &v111);
  v21 = v111;
  if (v21)
  {
    v18 = v21;
    v19 = objc_msgSend_raiseErrorOrConvert_(context, v22, v21, v23, v24);
    goto LABEL_33;
  }

  v110 = 0;
  v99 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v22, context, spec, 1, &v110);
  v25 = v110;
  if (v25)
  {
    v18 = v25;
    v19 = objc_msgSend_raiseErrorOrConvert_(context, v26, v25, v27, v28);
    goto LABEL_32;
  }

  v109 = 0;
  v96 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v10, v26, context, spec, 2, &v109);
  v29 = v109;
  if (v29)
  {
    v18 = v29;
    v19 = objc_msgSend_raiseErrorOrConvert_(context, v30, v29, v32, v33);
    goto LABEL_31;
  }

  v108._decimal.w[0] = objc_msgSend_decimalRepresentation(v20, v30, v31, v32, v33);
  v108._decimal.w[1] = v34;
  v107._decimal.w[0] = objc_msgSend_decimalRepresentation(v99, v34, v35, v36, v37);
  v107._decimal.w[1] = v38;
  v106._decimal.w[0] = objc_msgSend_decimalRepresentation(v96, v38, v39, v40, v41);
  v106._decimal.w[1] = v42;
  TSUDecimal::operator=();
  v104._decimal.w[0] = sub_2212B2BA4(&v108, &v106);
  v104._decimal.w[1] = v43;
  v47 = objc_msgSend_count(v13, v43, v44, v45, v46);
  if (!v47)
  {
    v97 = 0;
LABEL_27:
    *&v102 = sub_2212B2BA4(&v108, &v107);
    *(&v102 + 1) = v79;
    TSUDecimal::operator*=();
    if (v13)
    {
      objc_msgSend_formatWithContext_(v13, v80, context, v81, v82);
    }

    else
    {
      v102 = 0u;
      *v103 = 0u;
    }

    v19 = objc_msgSend_numberWithDecimal_format_baseUnit_(TSCENumberValue, v80, &v105, &v102, v97);
    v18 = 0;
    goto LABEL_31;
  }

  contextCopy = context;
  *&v102 = contextCopy;
  *(&v102 + 1) = spec;
  v103[0] = 0;
  v103[1] = 3;
  *(&v103[1] + 7) = 0;
  *&v103[3] = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v103[5] = 0;
  v103[6] = 0;
  if (v47 - 1 < 0)
  {
    v78 = 0;
    v97 = 0;
LABEL_26:

    goto LABEL_27;
  }

  v92 = v20;
  v50 = 0;
  v97 = 0;
  v94 = v10;
  while (1)
  {
    v51 = objc_msgSend_valueAtIndex_accessContext_(v13, v48, --v47, &v102, v49);
    if ((objc_msgSend_isNil(v51, v52, v53, v54, v55) & 1) == 0)
    {
      break;
    }

LABEL_22:

    if (v47 < 1)
    {
      v78 = v103[0];
      v20 = v92;
      goto LABEL_26;
    }
  }

  v57 = v50;
  v101 = 0;
  v98 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v51, v56, contextCopy, spec, 3, &v101);
  v18 = v101;
  if (v18)
  {
    v10 = v94;
    v19 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v58, v18, v60, v61);
    goto LABEL_39;
  }

  if ((v57 & 1) == 0)
  {
    v10 = v94;
    v105 = *objc_msgSend_rawDecimalValue(v98, v58, v59, v60, v61);
    v97 = objc_msgSend_unit(v98, v74, v75, v76, v77);
    goto LABEL_21;
  }

  v10 = v94;
  if (objc_msgSend_unit(v98, v58, v59, v60, v61) == v97 || v97 && objc_msgSend_unit(v98, v62, v63, v64, v65) && (v93 = objc_msgSend_dimensionForUnit_(TSCEUnitRegistry, v62, v97, v64, v65), v70 = objc_msgSend_unit(v98, v66, v67, v68, v69), v93 == objc_msgSend_dimensionForUnit_(TSCEUnitRegistry, v71, v70, v72, v73)))
  {
    v100 = *objc_msgSend_rawDecimalValue(v98, v62, v63, v64, v65);
    TSUDecimal::fma(&v105, &v104, &v100, &v105);
LABEL_21:

    v50 = 1;
    goto LABEL_22;
  }

  v84 = objc_msgSend_functionName(spec, v62, v63, v64, v65);
  v88 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v85, v84, v86, v87);
  v19 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v89, v88, v90, v91);

LABEL_39:
  v20 = v92;
LABEL_31:

LABEL_32:
LABEL_33:

LABEL_34:

  return v19;
}

@end
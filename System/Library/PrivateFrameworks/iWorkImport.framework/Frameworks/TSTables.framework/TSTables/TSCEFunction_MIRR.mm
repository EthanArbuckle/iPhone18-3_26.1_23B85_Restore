@interface TSCEFunction_MIRR
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_MIRR

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v121[0] = 0;
  v10 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, v9, context, spec, 0, 1, v121);
  v11 = v121[0];
  if (v11)
  {
    v16 = v11;
    v17 = objc_msgSend_raiseErrorOrConvert_(context, v12, v11, v14, v15);
    goto LABEL_37;
  }

  v18 = objc_msgSend_count(v10, v12, v13, v14, v15);
  v19 = *(*arguments + 8);
  v120 = 0;
  v101 = v19;
  v21 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v19, v20, context, spec, 1, &v120);
  v16 = v120;
  v100 = v21;
  v119[1] = objc_msgSend_decimalRepresentation(v21, v22, v23, v24, v25);
  v119[2] = v26;
  if (v16)
  {
    v17 = objc_msgSend_raiseErrorOrConvert_(context, v26, v16, v27, v28);
    goto LABEL_36;
  }

  v29 = *(*arguments + 16);
  v119[0] = 0;
  v98 = v29;
  v31 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v29, v30, context, spec, 2, v119);
  v16 = v119[0];
  v97 = v31;
  v117 = objc_msgSend_decimalRepresentation(v31, v32, v33, v34, v35);
  v118 = v36;
  if (v16)
  {
    v17 = objc_msgSend_raiseErrorOrConvert_(context, v36, v16, v37, v38);
    goto LABEL_35;
  }

  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  contextCopy = context;
  v109[0] = contextCopy;
  v109[1] = spec;
  v110 = 0;
  v111[0] = 0;
  *(v111 + 7) = 0;
  v112 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v113 = 0;
  v114 = 0;
  if (!v18)
  {
LABEL_32:
    v87 = objc_msgSend_functionName(spec, v39, v40, v41, v42, v96);
    v91 = objc_msgSend_onlyPositiveOrNegativeErrorForFunctionName_(TSCEError, v88, v87, v89, v90);
    v17 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v92, v91, v93, v94);

    goto LABEL_33;
  }

  v44 = 0;
  v99 = 0;
  HIDWORD(v96) = 0;
  while (1)
  {
    v45 = objc_msgSend_valueAtIndex_accessContext_(v10, v39, v44, v109, v42);
    if (objc_msgSend_isNil(v45, v46, v47, v48, v49))
    {
      goto LABEL_14;
    }

    v108 = 0;
    v51 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v45, v50, contextCopy, spec, 0, &v108);
    v16 = v108;
    v102._decimal.w[0] = objc_msgSend_decimalRepresentation(v51, v52, v53, v54, v55);
    v102._decimal.w[1] = v56;

    if (v16)
    {
      v17 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v57, v16, v58, v59);

      goto LABEL_34;
    }

    TSUDecimal::operator=();
    if (!TSUDecimal::operator<())
    {
      goto LABEL_14;
    }

    if (v44)
    {
      break;
    }

    v115 = v102;
    HIDWORD(v96) = 1;
    v99 = 1;
LABEL_14:

    if (v18 == ++v44)
    {
      goto LABEL_15;
    }
  }

  v99 = 0;
LABEL_15:
  v60 = 0;
  v61 = 0;
  LODWORD(v96) = 0;
  do
  {
    v62 = objc_msgSend_valueAtIndex_accessContext_(v10, v39, v60, v109, v42, v96);
    if ((objc_msgSend_isNil(v62, v63, v64, v65, v66) & 1) == 0)
    {
      v106 = 0;
      v68 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v62, v67, contextCopy, spec, 0, &v106);
      v16 = v106;
      v107._decimal.w[0] = objc_msgSend_decimalRepresentation(v68, v69, v70, v71, v72);
      v107._decimal.w[1] = v73;

      if (v16)
      {
        v17 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v74, v16, v75, v76);

        goto LABEL_34;
      }

      TSUDecimal::operator=();
      TSUDecimal::operator+=();
      TSUDecimal::operator*=();
      TSUDecimal::operator=();
      v102 = v104;
      TSUDecimal::operator+=();
      v105 = v104;
      TSUDecimal::operator*=();
      TSUDecimal::operator=();
      if (TSUDecimal::operator<=())
      {
        TSUDecimal::operator=();
        if (!(v99 & 1 | ((TSUDecimal::operator<() & 1) == 0)))
        {
          v102 = v107;
          TSUDecimal::operator/=();
          v105 = v102;
          TSUDecimal::operator+=();
          HIDWORD(v96) = 1;
        }
      }

      else
      {
        v102 = v107;
        TSUDecimal::operator/=();
        v105 = v102;
        TSUDecimal::operator+=();
        LODWORD(v96) = 1;
      }

      ++v61;
    }

    ++v60;
  }

  while (v18 != v60);
  if ((v96 & HIDWORD(v96) & 1) == 0)
  {
    goto LABEL_32;
  }

  v77 = TSUDecimal::operator-();
  v79 = v78;
  TSUDecimal::operator=();
  TSUDecimal::operator+=();
  v105 = v104;
  TSUDecimal::operator=();
  v107._decimal.w[0] = sub_2212B2BA4(&v105, &v103);
  v107._decimal.w[1] = v80;
  v102._decimal.w[0] = v77;
  v102._decimal.w[1] = v79;
  TSUDecimal::operator*=();
  v81 = v102;
  TSUDecimal::operator=();
  v102 = v104;
  TSUDecimal::operator+=();
  v105 = v102;
  v102 = v116;
  TSUDecimal::operator*=();
  v107 = v102;
  if (v99)
  {
    v107 = v115;
  }

  v102 = v81;
  TSUDecimal::operator/=();
  v104 = v81;
  TSUDecimal::operator=();
  v82 = sub_2212B2BA4(&v104, &v103);
  v84 = v83;
  TSUDecimal::operator=();
  v102._decimal.w[0] = v82;
  v102._decimal.w[1] = v84;
  TSUDecimal::operator-=();
  v105 = v102;
  TSCEFormat::TSCEFormat(&v102, 258);
  v17 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v85, &v105, &v102, v86);
LABEL_33:
  v16 = 0;
LABEL_34:

LABEL_35:
LABEL_36:

LABEL_37:

  return v17;
}

@end
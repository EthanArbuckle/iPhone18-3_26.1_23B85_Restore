@interface TSCEFunction_ACCRINTM
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_ACCRINTM

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v128[0] = 0;
  v10 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, v128);
  v15 = v128[0];
  if (v15)
  {
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v11, v15, v13, v14);
    goto LABEL_35;
  }

  if (v10)
  {
    v17 = objc_msgSend_gregorianCalendar(TSCECalendar, v11, v12, v13, v14);
    v21 = objc_msgSend_clearOffTime_(v17, v18, v10, v19, v20);
    v22 = *(*arguments + 8);
    v127 = 0;
    v24 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v22, v23, context, spec, 1, &v127);
    v29 = v127;
    if (v29)
    {
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v25, v29, v27, v28);
LABEL_33:

      goto LABEL_34;
    }

    if (!v24)
    {
      v116 = objc_msgSend_functionName(spec, v25, v26, v27, v28);
      v47 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v45, v116, 2, v46);
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v48, v47, v49, v50);
      v29 = 0;
LABEL_32:

      goto LABEL_33;
    }

    v116 = objc_msgSend_clearOffTime_(v17, v25, v24, v27, v28);
    v35 = *(*arguments + 16);
    v126 = 0;
    v115 = v35;
    v37 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v35, v36, context, spec, 2, &v126);
    v29 = v126;
    v114 = v37;
    v124 = objc_msgSend_decimalRepresentation(v37, v38, v39, v40, v41);
    v125 = v42;
    if (v29)
    {
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v42, v29, v43, v44);
LABEL_31:
      v47 = v115;

      goto LABEL_32;
    }

    TSUDecimal::operator=();
    if (*(arguments + 1) - *arguments < 0x19uLL)
    {
      goto LABEL_20;
    }

    v54 = *(*arguments + 24);
    if ((objc_msgSend_isTokenOrEmptyArg(v54, v55, v56, v57, v58) & 1) == 0 && objc_msgSend_nativeType(v54, v59, v60, v61, v62) != 10)
    {
      v122 = 0;
      v112 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v54, v63, context, spec, 3, &v122);
      v29 = v122;
      v123._decimal.w[0] = objc_msgSend_decimalRepresentation(v112, v64, v65, v66, v67);
      v123._decimal.w[1] = v68;
      if (v29)
      {
        v16 = objc_msgSend_raiseErrorOrConvert_(context, v68, v29, v69, v70);
        v71 = v112;
LABEL_28:

        goto LABEL_31;
      }
    }

    if (*(arguments + 1) - *arguments < 0x21uLL)
    {
LABEL_20:
      v77 = 0;
    }

    else
    {
      v54 = *(*arguments + 32);
      if (objc_msgSend_isTokenOrEmptyArg(v54, v72, v73, v74, v75))
      {
        v77 = 0;
      }

      else
      {
        v121 = 0;
        v113 = v54;
        v93 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v54, v76, context, spec, 4, &v121);
        v29 = v121;
        v98 = objc_msgSend_trunc(v93, v94, v95, v96, v97);

        v111 = v98;
        v117._decimal.w[0] = objc_msgSend_decimalRepresentation(v98, v99, v100, v101, v102);
        v117._decimal.w[1] = v103;
        v104 = TSUDecimal::truncateWithRounding(&v117);
        v54 = v113;
        if (v29)
        {
          v16 = objc_msgSend_raiseErrorOrConvert_(context, v105, v29, v106, v107);
          v71 = v111;
          goto LABEL_28;
        }

        v77 = v104;
      }
    }

    if (objc_msgSend_compare_(v21, v51, v116, v52, v53) == 1 || !objc_msgSend_compare_(v21, v78, v116, v80, v81))
    {
      v87 = objc_msgSend_functionName(spec, v78, v79, v80, v81);
      v89 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v88, v87, 1, 2, 1, 0);
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v90, v89, v91, v92);

      v29 = 0;
    }

    else
    {
      v120 = 0;
      sub_2214A452C(v21, v116, v77, &v120);
      v82 = v120;
      TSUDecimal::operator=();
      v119 = v82;
      sub_2214A45C0(v21, v116, v77, &v119);
      v83 = v119;

      TSUDecimal::operator=();
      if (v83)
      {
        objc_msgSend_raiseErrorOrConvert_(context, v84, v83, v85, v86);
      }

      else
      {
        v117 = v123;
        TSUDecimal::operator*=();
        TSUDecimal::operator*=();
        TSUDecimal::operator/=();
        v118 = v117;
        TSCEFormat::TSCEFormat(&v117, 256);
        objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v108, &v118, &v117, v109);
      }
      v16 = ;
      v29 = v83;
    }

    goto LABEL_31;
  }

  v29 = objc_msgSend_functionName(spec, v11, v12, v13, v14);
  v21 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v30, v29, 1, v31);
  v16 = objc_msgSend_raiseErrorOrConvert_(context, v32, v21, v33, v34);
LABEL_34:

  v15 = v29;
LABEL_35:

  return v16;
}

@end
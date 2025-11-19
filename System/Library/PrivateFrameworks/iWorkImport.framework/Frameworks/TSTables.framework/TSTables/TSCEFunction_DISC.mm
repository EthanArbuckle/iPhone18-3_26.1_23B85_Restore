@interface TSCEFunction_DISC
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_DISC

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v125[0] = 0;
  v10 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v8, v9, a3, a4, 0, v125);
  v15 = v125[0];
  if (v15)
  {
    v16 = objc_msgSend_raiseErrorOrConvert_(a3, v11, v15, v13, v14);
    goto LABEL_33;
  }

  if (v10)
  {
    v17 = objc_msgSend_gregorianCalendar(TSCECalendar, v11, v12, v13, v14);
    v21 = objc_msgSend_clearOffTime_(v17, v18, v10, v19, v20);
    v22 = *(*a5 + 8);
    v124 = 0;
    v24 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v22, v23, a3, a4, 1, &v124);
    v29 = v124;
    if (v29)
    {
      v16 = objc_msgSend_raiseErrorOrConvert_(a3, v25, v29, v27, v28);
LABEL_31:

      goto LABEL_32;
    }

    if (!v24)
    {
      v47 = objc_msgSend_functionName(a4, v25, v26, v27, v28);
      v39 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v48, v47, 2, v49);
      v16 = objc_msgSend_raiseErrorOrConvert_(a3, v50, v39, v51, v52);
      v29 = 0;
LABEL_30:

      goto LABEL_31;
    }

    v112 = objc_msgSend_clearOffTime_(v17, v25, v24, v27, v28);
    v35 = *(*a5 + 16);
    v123 = 0;
    v113 = v35;
    v37 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v35, v36, a3, a4, 2, &v123);
    v29 = v123;
    v111 = v37;
    v38 = v37;
    v39 = v113;
    v122[1] = objc_msgSend_decimalRepresentation(v38, v40, v41, v42, v43);
    v122[2] = v44;
    if (v29)
    {
      v16 = objc_msgSend_raiseErrorOrConvert_(a3, v44, v29, v45, v46);
      v47 = v112;
LABEL_29:

      goto LABEL_30;
    }

    v53 = *(*a5 + 24);
    v122[0] = 0;
    v110 = v53;
    v55 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v53, v54, a3, a4, 3, v122);
    v29 = v122[0];
    v109 = v55;
    v60 = objc_msgSend_decimalRepresentation(v55, v56, v57, v58, v59);
    v39 = v113;
    v121._decimal.w[0] = v60;
    v121._decimal.w[1] = v61;
    if (v29)
    {
      v64 = objc_msgSend_raiseErrorOrConvert_(a3, v61, v29, v62, v63);
    }

    else
    {
      if (*(a5 + 1) - *a5 < 0x21uLL)
      {
        v71 = 0;
      }

      else
      {
        v65 = *(*a5 + 32);
        v108 = v65;
        if (objc_msgSend_isTokenOrEmptyArg(v65, v66, v67, v68, v69))
        {
          v71 = 0;
        }

        else
        {
          v120 = 0;
          v72 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v65, v70, a3, a4, 4, &v120);
          v29 = v120;
          v106 = v72;
          v77 = objc_msgSend_trunc(v72, v73, v74, v75, v76);

          v107 = v77;
          v114._decimal.w[0] = objc_msgSend_decimalRepresentation(v77, v78, v79, v80, v81);
          v114._decimal.w[1] = v82;
          v83 = TSUDecimal::truncateWithRounding(&v114);
          if (v29)
          {
            v16 = objc_msgSend_raiseErrorOrConvert_(a3, v84, v29, v85, v86);

            goto LABEL_28;
          }

          v71 = v83;
        }
      }

      if (objc_msgSend_compare_(v21, v61, v112, v62, v63) == 1 || !objc_msgSend_compare_(v21, v87, v112, v89, v90))
      {
        v95 = objc_msgSend_functionName(a4, v87, v88, v89, v90);
        v97 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v96, v95, 1, 2, 1, 0);
        v16 = objc_msgSend_raiseErrorOrConvert_(a3, v98, v97, v99, v100);

        v29 = 0;
        goto LABEL_28;
      }

      v118 = 0;
      sub_2214A45C0(v21, v112, v71, &v118);
      v91 = v118;
      TSUDecimal::operator=();
      v117 = v91;
      sub_2214A452C(v21, v112, v71, &v117);
      v29 = v117;

      TSUDecimal::operator=();
      if (v29)
      {
        objc_msgSend_raiseErrorOrConvert_(a3, v92, v29, v93, v94);
      }

      else
      {
        v114 = v121;
        TSUDecimal::operator-=();
        TSUDecimal::operator/=();
        v103 = v114._decimal.w[0];
        v102 = v114._decimal.w[1];
        v114 = v119;
        TSUDecimal::operator/=();
        v115 = v114;
        v114._decimal.w[0] = v103;
        v114._decimal.w[1] = v102;
        TSUDecimal::operator*=();
        v116 = v114;
        TSCEFormat::TSCEFormat(&v114, 258);
        objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v104, &v116, &v114, v105);
      }
      v64 = ;
    }

    v16 = v64;
LABEL_28:
    v47 = v112;

    goto LABEL_29;
  }

  v29 = objc_msgSend_functionName(a4, v11, v12, v13, v14);
  v21 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v30, v29, 1, v31);
  v16 = objc_msgSend_raiseErrorOrConvert_(a3, v32, v21, v33, v34);
LABEL_32:

  v15 = v29;
LABEL_33:

  return v16;
}

@end
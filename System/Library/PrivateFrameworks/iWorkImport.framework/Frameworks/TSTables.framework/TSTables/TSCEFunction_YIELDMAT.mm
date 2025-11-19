@interface TSCEFunction_YIELDMAT
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_YIELDMAT

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v162[0] = 0;
  v10 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v8, v9, a3, a4, 0, v162);
  v15 = v162[0];
  if (v15)
  {
    v16 = objc_msgSend_raiseErrorOrConvert_(a3, v11, v15, v13, v14);
    goto LABEL_46;
  }

  if (v10)
  {
    v17 = objc_msgSend_gregorianCalendar(TSCECalendar, v11, v12, v13, v14);
    v21 = objc_msgSend_clearOffTime_(v17, v18, v10, v19, v20);
    v22 = *(*a5 + 8);
    v161 = 0;
    v24 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v22, v23, a3, a4, 1, &v161);
    v29 = v161;
    if (v29)
    {
      v16 = objc_msgSend_raiseErrorOrConvert_(a3, v25, v29, v27, v28);
LABEL_44:

      goto LABEL_45;
    }

    if (!v24)
    {
      v40 = objc_msgSend_functionName(a4, v25, v26, v27, v28);
      v41 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v42, v40, 2, v43);
      v16 = objc_msgSend_raiseErrorOrConvert_(a3, v44, v41, v45, v46);
      v29 = 0;
LABEL_43:

      goto LABEL_44;
    }

    v145 = objc_msgSend_clearOffTime_(v17, v25, v24, v27, v28);
    v35 = *(*a5 + 16);
    v160 = 0;
    v144 = v35;
    v146 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v35, v36, a3, a4, 2, &v160);
    v29 = v160;
    if (v29)
    {
      v16 = objc_msgSend_raiseErrorOrConvert_(a3, v37, v29, v38, v39);
      v41 = v144;
      v40 = v145;
LABEL_42:

      goto LABEL_43;
    }

    if (!v146)
    {
      v143 = objc_msgSend_functionName(a4, v37, 0, v38, v39);
      v41 = v144;
      v40 = v145;
      v142 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v57, v143, 3, v58);
      v16 = objc_msgSend_raiseErrorOrConvert_(a3, v59, v142, v60, v61);
      v29 = 0;
LABEL_41:

      goto LABEL_42;
    }

    v143 = objc_msgSend_clearOffTime_(v17, v37, v146, v38, v39);
    v47 = *(*a5 + 24);
    v159 = 0;
    v142 = v47;
    v49 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v47, v48, a3, a4, 3, &v159);
    v29 = v159;
    v141 = v49;
    v158[1] = objc_msgSend_decimalRepresentation(v49, v50, v51, v52, v53);
    v158[2] = v54;
    if (v29)
    {
      v16 = objc_msgSend_raiseErrorOrConvert_(a3, v54, v29, v55, v56);
      v41 = v144;
      v40 = v145;
LABEL_40:

      goto LABEL_41;
    }

    v62 = *(*a5 + 32);
    v158[0] = 0;
    v140 = v62;
    v64 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v62, v63, a3, a4, 4, v158);
    v29 = v158[0];
    v139 = v64;
    v69 = objc_msgSend_decimalRepresentation(v64, v65, v66, v67, v68);
    if (v29)
    {
      v73 = objc_msgSend_raiseErrorOrConvert_(a3, v70, v29, v71, v72);
LABEL_17:
      v16 = v73;
LABEL_39:
      v41 = v144;
      v40 = v145;

      goto LABEL_40;
    }

    v74 = v69;
    v138 = v70;
    if (*(a5 + 1) - *a5 < 0x29uLL)
    {
      v81 = 0;
    }

    else
    {
      v75 = *(*a5 + 40);
      v137 = v75;
      if (objc_msgSend_isTokenOrEmptyArg(v75, v76, v77, v78, v79))
      {
        v81 = 0;
      }

      else
      {
        v135 = v74;
        v157 = 0;
        v82 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v75, v80, a3, a4, 5, &v157);
        v29 = v157;
        v87 = objc_msgSend_trunc(v82, v83, v84, v85, v86);

        v147._decimal.w[0] = objc_msgSend_decimalRepresentation(v87, v88, v89, v90, v91);
        v147._decimal.w[1] = v92;
        v93 = TSUDecimal::truncateWithRounding(&v147);
        if (v29)
        {
          v16 = objc_msgSend_raiseErrorOrConvert_(a3, v94, v29, v95, v96);

          goto LABEL_39;
        }

        v81 = v93;

        v74 = v135;
      }
    }

    if (objc_msgSend_compare_(v21, v70, v145, v71, v72) == 1 || !objc_msgSend_compare_(v21, v97, v145, v99, v100))
    {
      v115 = objc_msgSend_functionName(a4, v97, v98, v99, v100);
      v117 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v116, v115, 1, 2, 1, 0);
      v121 = objc_msgSend_raiseErrorOrConvert_(a3, v118, v117, v119, v120);
    }

    else if (objc_msgSend_compare_(v145, v97, v143, v99, v100) == -1 || !objc_msgSend_compare_(v145, v101, v143, v103, v104))
    {
      v115 = objc_msgSend_functionName(a4, v101, v102, v103, v104);
      v117 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v122, v115, 2, 3, 0, 0);
      v121 = objc_msgSend_raiseErrorOrConvert_(a3, v123, v117, v124, v125);
    }

    else
    {
      if (objc_msgSend_compare_(v21, v101, v143, v103, v104) != -1 && objc_msgSend_compare_(v21, v105, v143, v107, v108))
      {
        v136 = v74;
        v156 = 0;
        sub_2214A45C0(v143, v21, v81, &v156);
        v109 = v156;
        TSUDecimal::operator=();
        v155 = v109;
        sub_2214A452C(v21, v145, v81, &v155);
        v110 = v155;

        TSUDecimal::operator=();
        v153 = v110;
        sub_2214A452C(v143, v145, v81, &v153);
        v111 = v153;

        TSUDecimal::operator=();
        v151 = v111;
        sub_2214A452C(v143, v21, v81, &v151);
        v29 = v151;

        TSUDecimal::operator=();
        if (v29)
        {
          objc_msgSend_raiseErrorOrConvert_(a3, v112, v29, v113, v114);
        }

        else
        {
          TSUDecimal::operator=();
          v147._decimal.w[0] = v136;
          v147._decimal.w[1] = v138;
          TSUDecimal::operator/=();
          v132 = v147._decimal.w[0];
          v131 = v147._decimal.w[1];
          v147 = v152;
          TSUDecimal::operator/=();
          TSUDecimal::operator*=();
          v149 = v147;
          v147._decimal.w[0] = v132;
          v147._decimal.w[1] = v131;
          TSUDecimal::operator+=();
          v150[1] = v147;
          TSUDecimal::operator=();
          v147 = v154;
          TSUDecimal::operator/=();
          TSUDecimal::operator*=();
          v148 = v147;
          v147 = v149;
          TSUDecimal::operator+=();
          TSUDecimal::operator-=();
          TSUDecimal::operator/=();
          TSUDecimal::operator*=();
          TSUDecimal::operator/=();
          v150[0] = v147;
          TSCEFormat::TSCEFormat(&v147, 258);
          objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v133, v150, &v147, v134);
        }
        v73 = ;
        goto LABEL_17;
      }

      v115 = objc_msgSend_functionName(a4, v105, v106, v107, v108);
      v117 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v126, v115, 1, 3, 0, 0);
      v121 = objc_msgSend_raiseErrorOrConvert_(a3, v127, v117, v128, v129);
    }

    v16 = v121;

    v29 = 0;
    goto LABEL_39;
  }

  v29 = objc_msgSend_functionName(a4, v11, v12, v13, v14);
  v21 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v30, v29, 1, v31);
  v16 = objc_msgSend_raiseErrorOrConvert_(a3, v32, v21, v33, v34);
LABEL_45:

  v15 = v29;
LABEL_46:

  return v16;
}

@end
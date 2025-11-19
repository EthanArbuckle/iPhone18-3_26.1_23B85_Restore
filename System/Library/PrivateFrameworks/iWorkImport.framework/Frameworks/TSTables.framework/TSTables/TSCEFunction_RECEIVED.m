@interface TSCEFunction_RECEIVED
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_RECEIVED

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v150 = 0;
  v151 = 0;
  v152 = 0;
  v8 = **a5;
  v12 = v8;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, a3, v10, v11);
  }

  else
  {
    memset(&v149, 0, sizeof(v149));
  }

  sub_22114F414(&v150, &v149);
  v148 = 0;
  v14 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v12, v13, a3, a4, 0, &v148);
  v19 = v148;
  if (v19)
  {
    v20 = objc_msgSend_raiseErrorOrConvert_(a3, v15, v19, v17, v18);
    goto LABEL_50;
  }

  if (v14)
  {
    v21 = objc_msgSend_gregorianCalendar(TSCECalendar, v15, v16, v17, v18);
    v25 = objc_msgSend_clearOffTime_(v21, v22, v14, v23, v24);
    v26 = *(*a5 + 8);
    v30 = v26;
    if (v26)
    {
      objc_msgSend_formatWithContext_(v26, v27, a3, v28, v29);
    }

    else
    {
      memset(&v149, 0, sizeof(v149));
    }

    sub_22114F414(&v150, &v149);
    v147 = 0;
    v37 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v30, v36, a3, a4, 1, &v147);
    v19 = v147;
    if (v19)
    {
      v20 = objc_msgSend_raiseErrorOrConvert_(a3, v38, v19, v40, v41);
LABEL_48:

      goto LABEL_49;
    }

    if (!v37)
    {
      v139 = objc_msgSend_functionName(a4, v38, v39, v40, v41);
      v49 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v47, v139, 2, v48);
      v20 = objc_msgSend_raiseErrorOrConvert_(a3, v50, v49, v51, v52);
      v19 = 0;
LABEL_47:

      goto LABEL_48;
    }

    v139 = objc_msgSend_clearOffTime_(v21, v38, v37, v40, v41);
    v42 = *(*a5 + 16);
    v46 = v42;
    v138 = v42;
    if (v42)
    {
      objc_msgSend_formatWithContext_(v42, v43, a3, v44, v45);
    }

    else
    {
      memset(&v149, 0, sizeof(v149));
    }

    sub_22114F414(&v150, &v149);
    v146 = 0;
    v54 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v46, v53, a3, a4, 2, &v146);
    v19 = v146;
    v137 = v54;
    v55 = v54;
    v49 = v138;
    v60 = objc_msgSend_decimalRepresentation(v55, v56, v57, v58, v59);
    if (v19)
    {
      v20 = objc_msgSend_raiseErrorOrConvert_(a3, v61, v19, v62, v63);
LABEL_46:

      goto LABEL_47;
    }

    v133 = v61;
    v134 = v60;
    v64 = *(*a5 + 24);
    v136 = v64;
    if (v64)
    {
      objc_msgSend_formatWithContext_(v64, v65, a3, v66, v67);
    }

    else
    {
      memset(&v149, 0, sizeof(v149));
    }

    sub_22114F414(&v150, &v149);
    v145 = 0;
    v69 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v136, v68, a3, a4, 3, &v145);
    v19 = v145;
    v135 = v69;
    v74 = objc_msgSend_decimalRepresentation(v69, v70, v71, v72, v73);
    v131 = v75;
    v132 = v74;
    v49 = v138;
    if (v19)
    {
      v78 = objc_msgSend_raiseErrorOrConvert_(a3, v75, v19, v76, v77);
LABEL_25:
      v20 = v78;
LABEL_45:

      goto LABEL_46;
    }

    if (*(a5 + 1) - *a5 < 0x21uLL)
    {
      v87 = 0;
    }

    else
    {
      v79 = *(*a5 + 32);
      if (objc_msgSend_isTokenOrEmptyArg(v79, v80, v81, v82, v83))
      {
        v87 = 0;
      }

      else
      {
        v130 = v79;
        if (v79)
        {
          objc_msgSend_formatWithContext_(v79, v84, a3, v85, v86);
        }

        else
        {
          memset(&v149, 0, sizeof(v149));
        }

        sub_22114F414(&v150, &v149);
        v144 = 0;
        v89 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v79, v88, a3, a4, 4, &v144);
        v19 = v144;
        v128 = v89;
        v94 = objc_msgSend_trunc(v89, v90, v91, v92, v93);

        v129 = v94;
        v149._tskFormat = objc_msgSend_decimalRepresentation(v94, v95, v96, v97, v98);
        *&v149._formatType = v99;
        v100 = TSUDecimal::truncateWithRounding(&v149);
        v79 = v130;
        if (v19)
        {
          v20 = objc_msgSend_raiseErrorOrConvert_(a3, v101, v19, v102, v103);

          goto LABEL_44;
        }

        v87 = v100;
      }
    }

    if (objc_msgSend_compare_(v25, v75, v139, v76, v77) == 1 || !objc_msgSend_compare_(v25, v104, v139, v106, v107))
    {
      v112 = objc_msgSend_functionName(a4, v104, v105, v106, v107);
      v114 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v113, v112, 1, 2, 1, 0);
      v20 = objc_msgSend_raiseErrorOrConvert_(a3, v115, v114, v116, v117);

      v19 = 0;
      goto LABEL_45;
    }

    v143 = 0;
    sub_2214A45C0(v25, v139, v87, &v143);
    v108 = v143;
    TSUDecimal::operator=();
    v142 = v108;
    sub_2214A452C(v25, v139, v87, &v142);
    v19 = v142;

    TSUDecimal::operator=();
    if (v19)
    {
      v78 = objc_msgSend_raiseErrorOrConvert_(a3, v109, v19, v110, v111);
      goto LABEL_25;
    }

    TSUDecimal::operator=();
    v149._tskFormat = v132;
    *&v149._formatType = v131;
    TSUDecimal::operator*=();
    TSUDecimal::operator/=();
    *&v149._tskFormat = v140;
    TSUDecimal::operator-=();
    v149._tskFormat = v134;
    *&v149._formatType = v133;
    TSUDecimal::operator/=();
    v141[0] = v149._tskFormat;
    v141[1] = *&v149._formatType;
    TSUDecimal::operator=();
    if (!TSUDecimal::operator<=())
    {
      sub_221256020(&v150, &v149);
      v78 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v126, v141, &v149, v127);
      goto LABEL_25;
    }

    v79 = objc_msgSend_negativeReceivedAmountError(TSCEError, v118, v119, v120, v121);
    v20 = objc_msgSend_raiseErrorOrConvert_(a3, v122, v79, v123, v124);
LABEL_44:

    goto LABEL_45;
  }

  v25 = objc_msgSend_functionName(a4, v15, v16, v17, v18);
  v30 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v31, v25, 1, v32);
  v20 = objc_msgSend_raiseErrorOrConvert_(a3, v33, v30, v34, v35);
  v19 = 0;
LABEL_49:

LABEL_50:
  if (v150)
  {
    v151 = v150;
    operator delete(v150);
  }

  return v20;
}

@end
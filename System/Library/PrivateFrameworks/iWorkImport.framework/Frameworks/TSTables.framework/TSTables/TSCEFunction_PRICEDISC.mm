@interface TSCEFunction_PRICEDISC
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_PRICEDISC

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v141 = 0;
  v142 = 0;
  v143 = 0;
  v8 = **arguments;
  v12 = v8;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, context, v10, v11);
  }

  else
  {
    memset(&v140, 0, sizeof(v140));
  }

  sub_22114F414(&v141, &v140);
  v139 = 0;
  v14 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v12, v13, context, spec, 0, &v139);
  v19 = v139;
  if (v19)
  {
    v20 = objc_msgSend_raiseErrorOrConvert_(context, v15, v19, v17, v18);
    goto LABEL_47;
  }

  if (v14)
  {
    v21 = objc_msgSend_gregorianCalendar(TSCECalendar, v15, v16, v17, v18);
    v25 = objc_msgSend_clearOffTime_(v21, v22, v14, v23, v24);
    v26 = *(*arguments + 8);
    v30 = v26;
    if (v26)
    {
      objc_msgSend_formatWithContext_(v26, v27, context, v28, v29);
    }

    else
    {
      memset(&v140, 0, sizeof(v140));
    }

    sub_22114F414(&v141, &v140);
    v138 = 0;
    v37 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v30, v36, context, spec, 1, &v138);
    v19 = v138;
    if (v19)
    {
      v20 = objc_msgSend_raiseErrorOrConvert_(context, v38, v19, v40, v41);
LABEL_45:

      goto LABEL_46;
    }

    if (!v37)
    {
      v130 = objc_msgSend_functionName(spec, v38, v39, v40, v41);
      v49 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v47, v130, 2, v48);
      v20 = objc_msgSend_raiseErrorOrConvert_(context, v50, v49, v51, v52);
      v19 = 0;
LABEL_44:

      goto LABEL_45;
    }

    v130 = objc_msgSend_clearOffTime_(v21, v38, v37, v40, v41);
    v42 = *(*arguments + 16);
    v46 = v42;
    v129 = v42;
    if (v42)
    {
      objc_msgSend_formatWithContext_(v42, v43, context, v44, v45);
    }

    else
    {
      memset(&v140, 0, sizeof(v140));
    }

    sub_22114F414(&v141, &v140);
    v137 = 0;
    v54 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v46, v53, context, spec, 2, &v137);
    v19 = v137;
    v128 = v54;
    v55 = v54;
    v49 = v129;
    v60 = objc_msgSend_decimalRepresentation(v55, v56, v57, v58, v59);
    if (v19)
    {
      v20 = objc_msgSend_raiseErrorOrConvert_(context, v61, v19, v62, v63);
LABEL_43:

      goto LABEL_44;
    }

    v124 = v61;
    v125 = v60;
    v64 = *(*arguments + 24);
    v127 = v64;
    if (v64)
    {
      objc_msgSend_formatWithContext_(v64, v65, context, v66, v67);
    }

    else
    {
      memset(&v140, 0, sizeof(v140));
    }

    sub_22114F414(&v141, &v140);
    v136 = 0;
    v69 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v127, v68, context, spec, 3, &v136);
    v19 = v136;
    v126 = v69;
    v74 = objc_msgSend_decimalRepresentation(v69, v70, v71, v72, v73);
    v49 = v129;
    *&v135 = v74;
    *(&v135 + 1) = v75;
    if (v19)
    {
      v78 = objc_msgSend_raiseErrorOrConvert_(context, v75, v19, v76, v77);
    }

    else
    {
      if (*(arguments + 1) - *arguments < 0x21uLL)
      {
        v87 = 0;
      }

      else
      {
        v79 = *(*arguments + 32);
        if (objc_msgSend_isTokenOrEmptyArg(v79, v80, v81, v82, v83))
        {
          v87 = 0;
        }

        else
        {
          v123 = v79;
          if (v79)
          {
            objc_msgSend_formatWithContext_(v79, v84, context, v85, v86);
          }

          else
          {
            memset(&v140, 0, sizeof(v140));
          }

          sub_22114F414(&v141, &v140);
          v134 = 0;
          v89 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v79, v88, context, spec, 4, &v134);
          v19 = v134;
          v121 = v89;
          v94 = objc_msgSend_trunc(v89, v90, v91, v92, v93);

          v122 = v94;
          v140._tskFormat = objc_msgSend_decimalRepresentation(v94, v95, v96, v97, v98);
          *&v140._formatType = v99;
          v100 = TSUDecimal::truncateWithRounding(&v140);
          v79 = v123;
          if (v19)
          {
            v20 = objc_msgSend_raiseErrorOrConvert_(context, v101, v19, v102, v103);

            goto LABEL_42;
          }

          v87 = v100;
        }
      }

      if (objc_msgSend_compare_(v25, v75, v130, v76, v77) == 1 || !objc_msgSend_compare_(v25, v104, v130, v106, v107))
      {
        v112 = objc_msgSend_functionName(spec, v104, v105, v106, v107);
        v114 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v113, v112, 1, 2, 1, 0);
        v20 = objc_msgSend_raiseErrorOrConvert_(context, v115, v114, v116, v117);

        v19 = 0;
        goto LABEL_42;
      }

      v133 = 0;
      sub_2214A45C0(v25, v130, v87, &v133);
      v108 = v133;
      TSUDecimal::operator=();
      v132 = v108;
      sub_2214A452C(v25, v130, v87, &v132);
      v19 = v132;

      TSUDecimal::operator=();
      if (v19)
      {
        v78 = objc_msgSend_raiseErrorOrConvert_(context, v109, v19, v110, v111);
      }

      else
      {
        v140._tskFormat = v125;
        *&v140._formatType = v124;
        TSUDecimal::operator*=();
        TSUDecimal::operator*=();
        TSUDecimal::operator/=();
        *&v140._tskFormat = v135;
        TSUDecimal::operator-=();
        v131[0] = v140._tskFormat;
        v131[1] = *&v140._formatType;
        sub_221256020(&v141, &v140);
        v78 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v119, v131, &v140, v120);
      }
    }

    v20 = v78;
LABEL_42:

    goto LABEL_43;
  }

  v25 = objc_msgSend_functionName(spec, v15, v16, v17, v18);
  v30 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v31, v25, 1, v32);
  v20 = objc_msgSend_raiseErrorOrConvert_(context, v33, v30, v34, v35);
  v19 = 0;
LABEL_46:

LABEL_47:
  if (v141)
  {
    v142 = v141;
    operator delete(v141);
  }

  return v20;
}

@end
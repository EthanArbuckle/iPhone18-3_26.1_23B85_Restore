@interface TSCEFunction_COUPDAYSNC
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_COUPDAYSNC

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v134 = 0;
  v135 = 0;
  v136 = 0;
  v8 = **a5;
  v12 = v8;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, a3, v10, v11);
  }

  else
  {
    memset(&v133, 0, sizeof(v133));
  }

  sub_22114F414(&v134, &v133);
  v132 = 0;
  v14 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v12, v13, a3, a4, 0, &v132);
  v19 = v132;
  if (v19)
  {
    v20 = objc_msgSend_raiseErrorOrConvert_(a3, v15, v19, v17, v18);
    goto LABEL_46;
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
      memset(&v133, 0, sizeof(v133));
    }

    sub_22114F414(&v134, &v133);
    v131 = 0;
    v37 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v30, v36, a3, a4, 1, &v131);
    v19 = v131;
    if (v19)
    {
      v20 = objc_msgSend_raiseErrorOrConvert_(a3, v38, v19, v40, v41);
LABEL_44:

      goto LABEL_45;
    }

    if (!v37)
    {
      v47 = objc_msgSend_functionName(a4, v38, v39, v40, v41);
      v126 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v48, v47, 2, v49);
      v20 = objc_msgSend_raiseErrorOrConvert_(a3, v50, v126, v51, v52);
      v19 = 0;
LABEL_43:

      goto LABEL_44;
    }

    v124 = v37;
    v125 = objc_msgSend_clearOffTime_(v21, v38, v37, v40, v41);
    v42 = *(*a5 + 16);
    v46 = v42;
    v126 = v42;
    if (v42)
    {
      objc_msgSend_formatWithContext_(v42, v43, a3, v44, v45);
    }

    else
    {
      memset(&v133, 0, sizeof(v133));
    }

    sub_22114F414(&v134, &v133);
    v130 = 0;
    v54 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v46, v53, a3, a4, 2, &v130);
    v19 = v130;
    v59 = objc_msgSend_trunc(v54, v55, v56, v57, v58);

    v123 = v59;
    v133._tskFormat = objc_msgSend_decimalRepresentation(v59, v60, v61, v62, v63);
    *&v133._formatType = v64;
    v65 = TSUDecimal::truncateWithRounding(&v133);
    v37 = v124;
    if (v19)
    {
      v20 = objc_msgSend_raiseErrorOrConvert_(a3, v66, v19, v68, v69);
LABEL_20:
      v47 = v125;
LABEL_42:

      goto LABEL_43;
    }

    v70 = v65;
    if (v65 <= 4 && ((1 << v65) & 0x16) != 0)
    {
      if (*(a5 + 1) - *a5 < 0x19uLL)
      {
        v79 = 0;
      }

      else
      {
        v71 = *(*a5 + 24);
        v122 = v71;
        if (objc_msgSend_isTokenOrEmptyArg(v71, v72, v73, v74, v75))
        {
          v79 = 0;
        }

        else
        {
          if (v71)
          {
            objc_msgSend_formatWithContext_(v71, v76, a3, v77, v78);
          }

          else
          {
            memset(&v133, 0, sizeof(v133));
          }

          sub_22114F414(&v134, &v133);
          v129 = 0;
          v89 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v71, v88, a3, a4, 3, &v129);
          v19 = v129;
          v120 = v89;
          v94 = objc_msgSend_trunc(v89, v90, v91, v92, v93);

          v121 = v94;
          v133._tskFormat = objc_msgSend_decimalRepresentation(v94, v95, v96, v97, v98);
          *&v133._formatType = v99;
          v100 = TSUDecimal::truncateWithRounding(&v133);
          if (v19)
          {
            v20 = objc_msgSend_raiseErrorOrConvert_(a3, v101, v19, v102, v103);

            goto LABEL_20;
          }

          v79 = v100;
        }
      }

      if (objc_msgSend_compare_(v25, v66, v125, v68, v69) != 1 && objc_msgSend_compare_(v25, v104, v125, v106, v107))
      {
        v128 = 0;
        v108 = a4;
        v47 = v125;
        objc_msgSend_getCouponDaysSinceSettlementDateWithSettlementDate_settlement_maturity_numCoupons_dayBasisMode_outError_(TSCEFinancialFunctions, v104, v108, v25, v125, v79, &v128, v70);
        v109 = v128;
        if (v109)
        {
          v19 = v109;
          v20 = objc_msgSend_raiseErrorOrConvert_(a3, v110, v109, v111, v112);
          goto LABEL_42;
        }

        TSUDecimal::operator=();
        sub_221256020(&v134, &v133);
        v20 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v118, v127, &v133, v119);
LABEL_41:
        v19 = 0;
        goto LABEL_42;
      }

      v80 = objc_msgSend_functionName(a4, v104, v105, v106, v107);
      v83 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v113, v80, 1, 2, 1, 0);
      v47 = v125;
      v87 = objc_msgSend_raiseErrorOrConvert_(a3, v114, v83, v115, v116);
    }

    else
    {
      v80 = objc_msgSend_functionName(a4, v66, v67, v68, v69);
      v47 = v125;
      v83 = objc_msgSend_invalidFrequencyErrorForFunctionName_argumentNumber_(TSCEError, v81, v80, 3, v82);
      v87 = objc_msgSend_raiseErrorOrConvert_(a3, v84, v83, v85, v86);
    }

    v20 = v87;

    goto LABEL_41;
  }

  v25 = objc_msgSend_functionName(a4, v15, v16, v17, v18);
  v30 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v31, v25, 1, v32);
  v20 = objc_msgSend_raiseErrorOrConvert_(a3, v33, v30, v34, v35);
  v19 = 0;
LABEL_45:

LABEL_46:
  if (v134)
  {
    v135 = v134;
    operator delete(v134);
  }

  return v20;
}

@end
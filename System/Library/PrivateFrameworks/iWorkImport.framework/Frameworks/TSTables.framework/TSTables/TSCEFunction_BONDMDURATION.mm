@interface TSCEFunction_BONDMDURATION
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_BONDMDURATION

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v169 = 0;
  v170 = 0;
  v171 = 0;
  v8 = **a5;
  v12 = v8;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, a3, v10, v11);
  }

  else
  {
    memset(&v168, 0, sizeof(v168));
  }

  sub_22114F414(&v169, &v168);
  v167 = 0;
  v14 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v12, v13, a3, a4, 0, &v167);
  v19 = v167;
  if (v19)
  {
    v20 = objc_msgSend_raiseErrorOrConvert_(a3, v15, v19, v17, v18);
    goto LABEL_57;
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
      memset(&v168, 0, sizeof(v168));
    }

    sub_22114F414(&v169, &v168);
    v166 = 0;
    v37 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v30, v36, a3, a4, 1, &v166);
    v19 = v166;
    if (v19)
    {
      v20 = objc_msgSend_raiseErrorOrConvert_(a3, v38, v19, v40, v41);
LABEL_55:

      goto LABEL_56;
    }

    if (!v37)
    {
      v155 = objc_msgSend_functionName(a4, v38, v39, v40, v41);
      v156 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v46, v155, 2, v47);
      v20 = objc_msgSend_raiseErrorOrConvert_(a3, v48, v156, v49, v50);
      v19 = 0;
LABEL_54:

      goto LABEL_55;
    }

    v155 = objc_msgSend_clearOffTime_(v21, v38, v37, v40, v41);
    v42 = *(*a5 + 16);
    v156 = v42;
    if (v42)
    {
      objc_msgSend_formatWithContext_(v42, v43, a3, v44, v45);
    }

    else
    {
      memset(&v168, 0, sizeof(v168));
    }

    sub_22114F414(&v169, &v168);
    v165 = 0;
    v52 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v156, v51, a3, a4, 2, &v165);
    v19 = v165;
    v154 = v52;
    v164[0] = objc_msgSend_decimalRepresentation(v52, v53, v54, v55, v56);
    v164[1] = v57;
    if (v19)
    {
      v20 = objc_msgSend_raiseErrorOrConvert_(a3, v57, v19, v58, v59);
LABEL_53:

      goto LABEL_54;
    }

    v60 = *(*a5 + 24);
    v153 = v60;
    if (v60)
    {
      objc_msgSend_formatWithContext_(v60, v61, a3, v62, v63);
    }

    else
    {
      memset(&v168, 0, sizeof(v168));
    }

    sub_22114F414(&v169, &v168);
    v163 = 0;
    v65 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v153, v64, a3, a4, 3, &v163);
    v19 = v163;
    v152 = v65;
    *&v162 = objc_msgSend_decimalRepresentation(v65, v66, v67, v68, v69);
    *(&v162 + 1) = v70;
    if (v19)
    {
      v20 = objc_msgSend_raiseErrorOrConvert_(a3, v70, v19, v71, v72);
LABEL_52:

      goto LABEL_53;
    }

    v73 = *(*a5 + 32);
    v151 = v73;
    if (v73)
    {
      objc_msgSend_formatWithContext_(v73, v74, a3, v75, v76);
    }

    else
    {
      memset(&v168, 0, sizeof(v168));
    }

    sub_22114F414(&v169, &v168);
    v161 = 0;
    v78 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v151, v77, a3, a4, 4, &v161);
    v19 = v161;
    v150 = objc_msgSend_trunc(v78, v79, v80, v81, v82);

    if (v19)
    {
      v87 = objc_msgSend_raiseErrorOrConvert_(a3, v83, v19, v85, v86);
LABEL_30:
      v20 = v87;
LABEL_51:

      goto LABEL_52;
    }

    v168._tskFormat = objc_msgSend_decimalRepresentation(v150, v83, v84, v85, v86);
    *&v168._formatType = v88;
    v89 = TSUDecimal::truncateWithRounding(&v168);
    v94 = v89;
    if (v89 <= 4 && ((1 << v89) & 0x16) != 0)
    {
      if (*(a5 + 1) - *a5 < 0x29uLL)
      {
        v103 = 0;
      }

      else
      {
        v95 = *(*a5 + 40);
        if (objc_msgSend_isTokenOrEmptyArg(v95, v96, v97, v98, v99))
        {
          v103 = 0;
        }

        else
        {
          v148 = v95;
          if (v95)
          {
            objc_msgSend_formatWithContext_(v95, v100, a3, v101, v102);
          }

          else
          {
            memset(&v168, 0, sizeof(v168));
          }

          sub_22114F414(&v169, &v168);
          v149 = v94;
          v160 = 0;
          v113 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v95, v112, a3, a4, 5, &v160);
          v19 = v160;
          v118 = objc_msgSend_trunc(v113, v114, v115, v116, v117);

          v147 = v118;
          v168._tskFormat = objc_msgSend_decimalRepresentation(v118, v119, v120, v121, v122);
          *&v168._formatType = v123;
          v124 = TSUDecimal::truncateWithRounding(&v168);
          v95 = v148;
          if (v19)
          {
            v20 = objc_msgSend_raiseErrorOrConvert_(a3, v125, v19, v126, v127);

            goto LABEL_51;
          }

          v103 = v124;

          v94 = v149;
        }
      }

      if (objc_msgSend_compare_(v25, v90, v155, v92, v93) != 1 && objc_msgSend_compare_(v25, v128, v155, v130, v131))
      {
        v159 = 0;
        DurationInPeriodsWithSettlementDate_settlement_maturity_couponRate_yield_numCoupons_dayBasisMode_outError = objc_msgSend_getDurationInPeriodsWithSettlementDate_settlement_maturity_couponRate_yield_numCoupons_dayBasisMode_outError_(TSCEFinancialFunctions, v128, a4, v25, v155, v164, &v162, v103, v94, &v159);
        v134 = v133;
        v19 = v159;
        TSUDecimal::operator=();
        v168._tskFormat = DurationInPeriodsWithSettlementDate_settlement_maturity_couponRate_yield_numCoupons_dayBasisMode_outError;
        *&v168._formatType = v134;
        TSUDecimal::operator/=();
        tskFormat = v168._tskFormat;
        v135 = *&v168._formatType;
        TSUDecimal::operator=();
        TSUDecimal::operator=();
        *&v168._tskFormat = v162;
        TSUDecimal::operator/=();
        *&v168._tskFormat = v157;
        TSUDecimal::operator+=();
        v168._tskFormat = tskFormat;
        *&v168._formatType = v135;
        TSUDecimal::operator/=();
        v158[0] = v168._tskFormat;
        v158[1] = *&v168._formatType;
        if (v19)
        {
          v87 = objc_msgSend_raiseErrorOrConvert_(a3, v137, v19, v138, v139);
        }

        else
        {
          sub_221256020(&v169, &v168);
          v87 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v145, v158, &v168, v146);
        }

        goto LABEL_30;
      }

      v104 = objc_msgSend_functionName(a4, v128, v129, v130, v131);
      v107 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v140, v104, 1, 2, 1, 0);
      v111 = objc_msgSend_raiseErrorOrConvert_(a3, v141, v107, v142, v143);
    }

    else
    {
      v104 = objc_msgSend_functionName(a4, v90, v91, v92, v93);
      v107 = objc_msgSend_invalidFrequencyErrorForFunctionName_argumentNumber_(TSCEError, v105, v104, 5, v106);
      v111 = objc_msgSend_raiseErrorOrConvert_(a3, v108, v107, v109, v110);
    }

    v20 = v111;

    v19 = 0;
    goto LABEL_51;
  }

  v25 = objc_msgSend_functionName(a4, v15, v16, v17, v18);
  v30 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v31, v25, 1, v32);
  v20 = objc_msgSend_raiseErrorOrConvert_(a3, v33, v30, v34, v35);
  v19 = 0;
LABEL_56:

LABEL_57:
  if (v169)
  {
    v170 = v169;
    operator delete(v169);
  }

  return v20;
}

@end
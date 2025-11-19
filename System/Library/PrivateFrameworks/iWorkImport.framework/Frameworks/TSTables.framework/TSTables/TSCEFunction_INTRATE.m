@interface TSCEFunction_INTRATE
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_INTRATE

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v122[0] = 0;
  v10 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v8, v9, a3, a4, 0, v122);
  v15 = v122[0];
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
    v121 = 0;
    v24 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v22, v23, a3, a4, 1, &v121);
    v15 = v121;
    if (v15)
    {
      v16 = objc_msgSend_raiseErrorOrConvert_(a3, v25, v15, v27, v28);
LABEL_31:

      goto LABEL_32;
    }

    if (!v24)
    {
      v46 = objc_msgSend_functionName(a4, v25, v26, v27, v28);
      v38 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v47, v46, 2, v48);
      v16 = objc_msgSend_raiseErrorOrConvert_(a3, v49, v38, v50, v51);
      v15 = 0;
LABEL_30:

      goto LABEL_31;
    }

    v111 = objc_msgSend_clearOffTime_(v17, v25, v24, v27, v28);
    v34 = *(*a5 + 16);
    v120 = 0;
    v112 = v34;
    v36 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v34, v35, a3, a4, 2, &v120);
    v15 = v120;
    v110 = v36;
    v37 = v36;
    v38 = v112;
    v119[0] = objc_msgSend_decimalRepresentation(v37, v39, v40, v41, v42);
    v119[1] = v43;
    if (v15)
    {
      v16 = objc_msgSend_raiseErrorOrConvert_(a3, v43, v15, v44, v45);
      v46 = v111;
LABEL_29:

      goto LABEL_30;
    }

    v52 = *(*a5 + 24);
    v118 = 0;
    v109 = v52;
    v54 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v52, v53, a3, a4, 3, &v118);
    v15 = v118;
    v108 = v54;
    v59 = objc_msgSend_decimalRepresentation(v54, v55, v56, v57, v58);
    v38 = v112;
    v117[0] = v59;
    v117[1] = v60;
    if (v15)
    {
      v63 = objc_msgSend_raiseErrorOrConvert_(a3, v60, v15, v61, v62);
    }

    else
    {
      if (*(a5 + 1) - *a5 < 0x21uLL)
      {
        v70 = 0;
      }

      else
      {
        v64 = *(*a5 + 32);
        v107 = v64;
        if (objc_msgSend_isTokenOrEmptyArg(v64, v65, v66, v67, v68))
        {
          v70 = 0;
        }

        else
        {
          v116 = 0;
          v71 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v64, v69, a3, a4, 4, &v116);
          v15 = v116;
          v105 = v71;
          v76 = objc_msgSend_trunc(v71, v72, v73, v74, v75);

          v106 = v76;
          v113._decimal.w[0] = objc_msgSend_decimalRepresentation(v76, v77, v78, v79, v80);
          v113._decimal.w[1] = v81;
          v82 = TSUDecimal::truncateWithRounding(&v113);
          if (v15)
          {
            v16 = objc_msgSend_raiseErrorOrConvert_(a3, v83, v15, v84, v85);

            goto LABEL_28;
          }

          v70 = v82;
        }
      }

      if (objc_msgSend_compare_(v21, v60, v111, v61, v62) == 1 || !objc_msgSend_compare_(v21, v86, v111, v88, v89))
      {
        v96 = objc_msgSend_functionName(a4, v86, v87, v88, v89);
        v98 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v97, v96, 1, 2, 1, 0);
        v16 = objc_msgSend_raiseErrorOrConvert_(a3, v99, v98, v100, v101);

        v15 = 0;
        goto LABEL_28;
      }

      v114 = 0;
      YieldDiscWithSettlementDate_maturity_price_redemptionValue_dayBasisMode_outError = objc_msgSend_getYieldDiscWithSettlementDate_maturity_price_redemptionValue_dayBasisMode_outError_(TSCEFinancialFunctions, v86, v21, v111, v119, v117, v70, &v114);
      v92 = v91;
      v15 = v114;
      v115[0] = YieldDiscWithSettlementDate_maturity_price_redemptionValue_dayBasisMode_outError;
      v115[1] = v92;
      if (v15)
      {
        objc_msgSend_raiseErrorOrConvert_(a3, v93, v15, v94, v95);
      }

      else
      {
        TSCEFormat::TSCEFormat(&v113, 258);
        objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v103, v115, &v113, v104);
      }
      v63 = ;
    }

    v16 = v63;
LABEL_28:
    v46 = v111;

    goto LABEL_29;
  }

  v21 = objc_msgSend_functionName(a4, v11, v12, v13, v14);
  v22 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v29, v21, 1, v30);
  v16 = objc_msgSend_raiseErrorOrConvert_(a3, v31, v22, v32, v33);
  v15 = 0;
LABEL_32:

LABEL_33:

  return v16;
}

@end
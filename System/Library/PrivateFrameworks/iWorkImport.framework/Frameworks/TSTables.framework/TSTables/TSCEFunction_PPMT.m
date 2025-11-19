@interface TSCEFunction_PPMT
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_PPMT

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = objc_msgSend_calcEngine(a3, a2, a3, a4, a5);
  sub_221327DF4(v133, a4, v8);

  v9 = *(*a5 + 8);
  v132 = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v10, a3, a4, 1, &v132);
  v12 = v132;
  v131[0] = objc_msgSend_decimalRepresentation(v11, v13, v14, v15, v16);
  v131[1] = v17;
  if (v12)
  {
    v20 = objc_msgSend_raiseErrorOrConvert_(a3, v17, v12, v18, v19);
    goto LABEL_23;
  }

  v21 = *(*a5 + 16);
  v130 = 0;
  v23 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v21, v22, a3, a4, 2, &v130);
  v12 = v130;
  v129[0] = objc_msgSend_decimalRepresentation(v23, v24, v25, v26, v27);
  v129[1] = v28;
  if (!v12)
  {
    if ((TSUDecimal::operator<=() & 1) == 0)
    {
      v118 = objc_msgSend_functionName(a4, v31, v32, v33, v34);
      v37 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v45, v118, 2, 3, 1, 1);
      v20 = objc_msgSend_raiseErrorOrConvert_(a3, v46, v37, v47, v48);
      v12 = 0;
      goto LABEL_21;
    }

    v35 = **a5;
    v128 = 0;
    v118 = v35;
    v37 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v35, v36, a3, a4, 0, &v128);
    v12 = v128;
    v127[0] = objc_msgSend_decimalRepresentation(v37, v38, v39, v40, v41);
    v127[1] = v42;
    if (v12)
    {
      v20 = objc_msgSend_raiseErrorOrConvert_(a3, v42, v12, v43, v44);
LABEL_21:

      goto LABEL_22;
    }

    v49 = *(*a5 + 24);
    v126 = 0;
    v117 = v49;
    v51 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v49, v50, a3, a4, 3, &v126);
    v12 = v126;
    v116 = v51;
    sub_2213188C0(v133, v51);
    v125[0] = objc_msgSend_decimalRepresentation(v51, v52, v53, v54, v55);
    v125[1] = v56;
    if (v12)
    {
      v59 = objc_msgSend_raiseErrorOrConvert_(a3, v56, v12, v57, v58);
    }

    else
    {
      TSUDecimal::operator=();
      if (*(a5 + 1) - *a5 >= 0x21uLL)
      {
        v113 = *(*a5 + 32);
        if ((objc_msgSend_isTokenOrEmptyArg(v113, v63, v64, v65, v66) & 1) == 0)
        {
          v123 = 0;
          v68 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v113, v67, a3, a4, 4, &v123);
          v12 = v123;
          sub_2213188C0(v133, v68);
          v124[0] = objc_msgSend_decimalRepresentation(v68, v69, v70, v71, v72);
          v124[1] = v73;
          if (v12)
          {
            v20 = objc_msgSend_raiseErrorOrConvert_(a3, v73, v12, v74, v75);

            goto LABEL_20;
          }
        }
      }

      if (v134)
      {
        v20 = objc_msgSend_raiseErrorOrConvert_(a3, v60, v134, v61, v62);
        v12 = 0;
        goto LABEL_20;
      }

      if (*(a5 + 1) - *a5 < 0x29uLL)
      {
        v83 = 0;
      }

      else
      {
        v77 = *(*a5 + 40);
        if (objc_msgSend_isTokenOrEmptyArg(v77, v78, v79, v80, v81))
        {
          v83 = 0;
        }

        else
        {
          v122 = 0;
          v84 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v77, v82, a3, a4, 5, &v122);
          v12 = v122;
          if (v12)
          {
            v20 = objc_msgSend_raiseErrorOrConvert_(a3, v85, v12, v87, v88);

            goto LABEL_20;
          }

          v114 = v84;
          v135._decimal.w[0] = objc_msgSend_decimalRepresentation(v84, v85, v86, v87, v88);
          v135._decimal.w[1] = v89;
          v83 = TSUDecimal::isZero(&v135) ^ 1;
        }
      }

      v121 = 0;
      FixedPaymentWithRate_rate_nper_pv_fv_dueBeginning_outError = objc_msgSend_getFixedPaymentWithRate_rate_nper_pv_fv_dueBeginning_outError_(TSCEFinancialFunctions, v60, a4, v127, v129, v125, v124, v83, &v121);
      v115 = v91;
      v92 = FixedPaymentWithRate_rate_nper_pv_fv_dueBeginning_outError;
      v93 = v121;
      if (v93)
      {
        v12 = v93;
        v59 = objc_msgSend_raiseErrorOrConvert_(a3, v94, v93, v95, v96);
      }

      else
      {
        v120[0] = 0;
        LOBYTE(v112) = v83;
        InterestPortionOfPaymentWithRate_rate_per_nper_pv_fv_dueBeginning_outError = objc_msgSend_getInterestPortionOfPaymentWithRate_rate_per_nper_pv_fv_dueBeginning_outError_(TSCEFinancialFunctions, v94, a4, v127, v131, v129, v125, v124, v112, v120);
        v99 = v98;
        v100 = v120[0];
        v12 = v100;
        v120[1] = InterestPortionOfPaymentWithRate_rate_per_nper_pv_fv_dueBeginning_outError;
        v120[2] = v99;
        if (v100)
        {
          v59 = objc_msgSend_raiseErrorOrConvert_(a3, v101, v100, v102, v103);
        }

        else
        {
          v104 = [TSCENumberValue alloc];
          v135._decimal.w[0] = v92;
          v135._decimal.w[1] = v115;
          TSUDecimal::operator-=();
          v119 = v135;
          v109 = sub_2213189D8(v133, v105, v106, v107, v108);
          v59 = objc_msgSend_initWithDecimal_baseUnit_(v104, v110, &v119, v109, v111);
        }
      }
    }

    v20 = v59;
LABEL_20:

    goto LABEL_21;
  }

  v20 = objc_msgSend_raiseErrorOrConvert_(a3, v28, v12, v29, v30);
LABEL_22:

LABEL_23:

  return v20;
}

@end
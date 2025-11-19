@interface TSCEFunction_PMT
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_PMT

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = objc_msgSend_calcEngine(a3, a2, a3, a4, a5);
  sub_221327DF4(v108, a4, v8);

  v9 = **a5;
  v107 = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v10, a3, a4, 0, &v107);
  v12 = v107;
  v106[0] = objc_msgSend_decimalRepresentation(v11, v13, v14, v15, v16);
  v106[1] = v17;
  if (v12)
  {
    v20 = objc_msgSend_raiseErrorOrConvert_(a3, v17, v12, v18, v19);
    goto LABEL_24;
  }

  v21 = *(*a5 + 8);
  v105 = 0;
  v23 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v21, v22, a3, a4, 1, &v105);
  v12 = v105;
  v104[0] = objc_msgSend_decimalRepresentation(v23, v24, v25, v26, v27);
  v104[1] = v28;
  if (!v12)
  {
    v31 = *(*a5 + 16);
    v103 = 0;
    v96 = v31;
    v33 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v31, v32, a3, a4, 2, &v103);
    v12 = v103;
    sub_2213188C0(v108, v33);
    v102[0] = objc_msgSend_decimalRepresentation(v33, v34, v35, v36, v37);
    v102[1] = v38;
    if (v12)
    {
      v20 = objc_msgSend_raiseErrorOrConvert_(a3, v38, v12, v39, v40);
LABEL_22:

      goto LABEL_23;
    }

    TSUDecimal::operator=();
    if (*(a5 + 1) - *a5 < 0x19uLL)
    {
      goto LABEL_15;
    }

    v95 = *(*a5 + 24);
    if ((objc_msgSend_isTokenOrEmptyArg(v95, v44, v45, v46, v47) & 1) == 0)
    {
      v100 = 0;
      v49 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v95, v48, a3, a4, 3, &v100);
      v50 = v100;
      sub_2213188C0(v108, v49);
      v101[0] = objc_msgSend_decimalRepresentation(v49, v51, v52, v53, v54);
      v101[1] = v55;
      if (v50)
      {
        v20 = objc_msgSend_raiseErrorOrConvert_(a3, v55, v50, v56, v57);

        goto LABEL_21;
      }
    }

    if (*(a5 + 1) - *a5 < 0x21uLL)
    {
LABEL_15:
      v64 = 0;
    }

    else
    {
      v58 = *(*a5 + 32);
      if (objc_msgSend_isTokenOrEmptyArg(v58, v59, v60, v61, v62))
      {
        v64 = 0;
      }

      else
      {
        v99 = 0;
        v81 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v58, v63, a3, a4, 4, &v99);
        v50 = v99;
        if (v50)
        {
          v20 = objc_msgSend_raiseErrorOrConvert_(a3, v82, v50, v84, v85);

          goto LABEL_21;
        }

        v98._decimal.w[0] = objc_msgSend_decimalRepresentation(v81, v82, v83, v84, v85);
        v98._decimal.w[1] = v94;
        v64 = TSUDecimal::isZero(&v98) ^ 1;
      }
    }

    if (v109)
    {
      v20 = objc_msgSend_raiseErrorOrConvert_(a3, v41, v109, v42, v43);
    }

    else
    {
      TSUDecimal::operator=();
      if (!TSUDecimal::operator==())
      {
        v97 = 0;
        FixedPaymentWithRate_rate_nper_pv_fv_dueBeginning_outError = objc_msgSend_getFixedPaymentWithRate_rate_nper_pv_fv_dueBeginning_outError_(TSCEFinancialFunctions, v65, a4, v106, v104, v102, v101, v64, &v97);
        v76 = v75;
        v50 = v97;
        v98._decimal.w[0] = FixedPaymentWithRate_rate_nper_pv_fv_dueBeginning_outError;
        v98._decimal.w[1] = v76;
        if (v50)
        {
          v80 = objc_msgSend_raiseErrorOrConvert_(a3, v77, v50, v78, v79);
        }

        else
        {
          v86 = [TSCENumberValue alloc];
          v91 = sub_2213189D8(v108, v87, v88, v89, v90);
          v80 = objc_msgSend_initWithDecimal_baseUnit_(v86, v92, &v98, v91, v93);
        }

        v20 = v80;
        goto LABEL_21;
      }

      v69 = objc_msgSend_divideByZeroError(TSCEError, v65, v66, v67, v68);
      v20 = objc_msgSend_raiseErrorOrConvert_(a3, v70, v69, v71, v72);
    }

    v50 = 0;
LABEL_21:
    v12 = v50;
    goto LABEL_22;
  }

  v20 = objc_msgSend_raiseErrorOrConvert_(a3, v28, v12, v29, v30);
LABEL_23:

LABEL_24:

  return v20;
}

@end
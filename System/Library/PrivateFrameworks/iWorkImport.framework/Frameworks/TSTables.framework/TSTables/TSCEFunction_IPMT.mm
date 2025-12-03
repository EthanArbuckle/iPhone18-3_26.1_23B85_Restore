@interface TSCEFunction_IPMT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_IPMT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = objc_msgSend_calcEngine(context, a2, context, spec, arguments);
  sub_221327DF4(v122, spec, v8);

  v9 = *(*arguments + 8);
  v121 = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v10, context, spec, 1, &v121);
  v12 = v121;
  v120[0] = objc_msgSend_decimalRepresentation(v11, v13, v14, v15, v16);
  v120[1] = v17;
  if (v12)
  {
    v20 = objc_msgSend_raiseErrorOrConvert_(context, v17, v12, v18, v19);
    goto LABEL_36;
  }

  v21 = *(*arguments + 16);
  v119 = 0;
  v23 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v21, v22, context, spec, 2, &v119);
  v12 = v119;
  v118[0] = objc_msgSend_decimalRepresentation(v23, v24, v25, v26, v27);
  v118[1] = v28;
  if (!v12)
  {
    if ((TSUDecimal::operator<=() & 1) == 0)
    {
      v108 = objc_msgSend_functionName(spec, v31, v32, v33, v34);
      v37 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v45, v108, 2, 3, 1, 1);
      v20 = objc_msgSend_raiseErrorOrConvert_(context, v46, v37, v47, v48);
      v12 = 0;
      goto LABEL_34;
    }

    v35 = **arguments;
    v117 = 0;
    v108 = v35;
    v37 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v35, v36, context, spec, 0, &v117);
    v12 = v117;
    v116[0] = objc_msgSend_decimalRepresentation(v37, v38, v39, v40, v41);
    v116[1] = v42;
    if (v12)
    {
      v20 = objc_msgSend_raiseErrorOrConvert_(context, v42, v12, v43, v44);
LABEL_34:

      goto LABEL_35;
    }

    v49 = *(*arguments + 24);
    v115 = 0;
    v107 = v49;
    v51 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v49, v50, context, spec, 3, &v115);
    v12 = v115;
    v106 = v51;
    sub_2213188C0(v122, v51);
    v114[0] = objc_msgSend_decimalRepresentation(v51, v52, v53, v54, v55);
    v114[1] = v56;
    if (v12)
    {
      v20 = objc_msgSend_raiseErrorOrConvert_(context, v56, v12, v57, v58);
LABEL_33:

      goto LABEL_34;
    }

    TSUDecimal::operator=();
    if (*(arguments + 1) - *arguments >= 0x21uLL)
    {
      v62 = *(*arguments + 32);
      if ((objc_msgSend_isTokenOrEmptyArg(v62, v63, v64, v65, v66) & 1) == 0)
      {
        v112 = 0;
        v104 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v62, v67, context, spec, 4, &v112);
        v71 = v112;
        if (v71)
        {
          v20 = objc_msgSend_raiseErrorOrConvert_(context, v68, v71, v69, v70);

LABEL_25:
          goto LABEL_32;
        }

        sub_2213188C0(v122, v104);
        v113[0] = objc_msgSend_decimalRepresentation(v104, v72, v73, v74, v75);
        v113[1] = v76;
      }
    }

    if (v123)
    {
      v20 = objc_msgSend_raiseErrorOrConvert_(context, v59, v123, v60, v61);
      v71 = 0;
LABEL_32:
      v12 = v71;
      goto LABEL_33;
    }

    if (*(arguments + 1) - *arguments < 0x29uLL)
    {
      v82 = 0;
    }

    else
    {
      v62 = *(*arguments + 40);
      if (objc_msgSend_isTokenOrEmptyArg(v62, v77, v78, v79, v80))
      {
        v82 = 0;
      }

      else
      {
        v111 = 0;
        v105 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v62, v81, context, spec, 5, &v111);
        v71 = v111;
        if (v71)
        {
          v20 = objc_msgSend_raiseErrorOrConvert_(context, v83, v71, v85, v86);

          goto LABEL_25;
        }

        v110._decimal.w[0] = objc_msgSend_decimalRepresentation(v105, v83, v84, v85, v86);
        v110._decimal.w[1] = v87;
        v82 = TSUDecimal::isZero(&v110) ^ 1;
      }
    }

    v109 = 0;
    InterestPortionOfPaymentWithRate_rate_per_nper_pv_fv_dueBeginning_outError = objc_msgSend_getInterestPortionOfPaymentWithRate_rate_per_nper_pv_fv_dueBeginning_outError_(TSCEFinancialFunctions, v59, spec, v116, v120, v118, v114, v113, v82, &v109);
    v90 = v89;
    v71 = v109;
    v110._decimal.w[0] = InterestPortionOfPaymentWithRate_rate_per_nper_pv_fv_dueBeginning_outError;
    v110._decimal.w[1] = v90;
    if (v71)
    {
      v94 = objc_msgSend_raiseErrorOrConvert_(context, v91, v71, v92, v93);
    }

    else
    {
      v95 = [TSCENumberValue alloc];
      v100 = sub_2213189D8(v122, v96, v97, v98, v99);
      v94 = objc_msgSend_initWithDecimal_baseUnit_(v95, v101, &v110, v100, v102);
    }

    v20 = v94;
    goto LABEL_32;
  }

  v20 = objc_msgSend_raiseErrorOrConvert_(context, v28, v12, v29, v30);
LABEL_35:

LABEL_36:

  return v20;
}

@end
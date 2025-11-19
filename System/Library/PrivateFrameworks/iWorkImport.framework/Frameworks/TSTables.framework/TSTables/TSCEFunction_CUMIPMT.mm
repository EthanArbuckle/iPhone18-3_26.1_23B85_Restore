@interface TSCEFunction_CUMIPMT
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_CUMIPMT

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v144[0] = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, a3, a4, 0, v144);
  v11 = v144[0];
  v143[0] = objc_msgSend_decimalRepresentation(v10, v12, v13, v14, v15);
  v143[1] = v16;
  if (v11)
  {
    v19 = objc_msgSend_raiseErrorOrConvert_(a3, v16, v11, v17, v18);
    goto LABEL_29;
  }

  v20 = *(*a5 + 8);
  v142 = 0;
  v22 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v20, v21, a3, a4, 1, &v142);
  v11 = v142;
  v141[0] = objc_msgSend_decimalRepresentation(v22, v23, v24, v25, v26);
  v141[1] = v27;
  if (!v11)
  {
    v30 = *(*a5 + 16);
    v140 = 0;
    v32 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v30, v31, a3, a4, 2, &v140);
    v11 = v140;
    v139[0] = objc_msgSend_decimalRepresentation(v32, v33, v34, v35, v36);
    v139[1] = v37;
    if (v11)
    {
      v19 = objc_msgSend_raiseErrorOrConvert_(a3, v37, v11, v38, v39);
LABEL_27:

      goto LABEL_28;
    }

    v130 = v30;
    v40 = *(*a5 + 24);
    v138 = 0;
    v129 = v40;
    v42 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v40, v41, a3, a4, 3, &v138);
    v11 = v138;
    v128 = v42;
    v131._decimal.w[0] = objc_msgSend_decimalRepresentation(v42, v43, v44, v45, v46);
    v131._decimal.w[1] = v47;
    TSUDecimal::doubleValue(&v131);
    v30 = v130;
    if (v11)
    {
      v19 = objc_msgSend_raiseErrorOrConvert_(a3, v48, v11, v49, v50);
LABEL_26:

      goto LABEL_27;
    }

    v52 = v51;
    v127 = v32;
    v53 = *(*a5 + 32);
    v137 = 0;
    v126 = v53;
    v55 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v53, v54, a3, a4, 4, &v137);
    v11 = v137;
    v125 = v55;
    v131._decimal.w[0] = objc_msgSend_decimalRepresentation(v55, v56, v57, v58, v59);
    v131._decimal.w[1] = v60;
    TSUDecimal::doubleValue(&v131);
    v32 = v127;
    if (v11)
    {
      v19 = objc_msgSend_raiseErrorOrConvert_(a3, v61, v11, v62, v63);
LABEL_25:

      goto LABEL_26;
    }

    v65 = v64;
    v66 = *(*a5 + 40);
    v136 = 0;
    v124 = v66;
    v68 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v66, v67, a3, a4, 5, &v136);
    v11 = v136;
    v123 = v68;
    v131._decimal.w[0] = objc_msgSend_decimalRepresentation(v68, v69, v70, v71, v72);
    v131._decimal.w[1] = v73;
    TSUDecimal::doubleValue(&v131);
    if (v11)
    {
      v19 = objc_msgSend_raiseErrorOrConvert_(a3, v74, v11, v76, v77);
LABEL_24:

      goto LABEL_25;
    }

    v79 = v78;
    if (v78 == 0.0 || v78 == 1.0)
    {
      TSUDecimal::operator=();
      if (TSUDecimal::operator<())
      {
        v80 = objc_msgSend_functionName(a4, v88, v89, v90, v91);
        v83 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v92, v80, 2, 5, 0, 1);
        v87 = objc_msgSend_raiseErrorOrConvert_(a3, v93, v83, v94, v95);
      }

      else
      {
        TSUDecimal::operator=();
        if (TSUDecimal::operator<())
        {
          v80 = objc_msgSend_functionName(a4, v96, v97, v98, v99);
          v83 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v100, v80, 2, 4, 0, 1);
          v87 = objc_msgSend_raiseErrorOrConvert_(a3, v101, v83, v102, v103);
        }

        else
        {
          if (v52 <= v65)
          {
            TSUDecimal::operator=();
            v109 = vcvtpd_s64_f64(v52);
            v110 = vcvtmd_s64_f64(v65);
            if (v109 <= v110)
            {
              v120 = v110 + 1;
              while (1)
              {
                v121 = v109;
                TSUDecimal::operator=();
                TSUDecimal::operator=();
                v132 = 0;
                LOBYTE(v119) = v79 != 0.0;
                InterestPortionOfPaymentWithRate_rate_per_nper_pv_fv_dueBeginning_outError = objc_msgSend_getInterestPortionOfPaymentWithRate_rate_per_nper_pv_fv_dueBeginning_outError_(TSCEFinancialFunctions, v111, a4, v143, v134, v141, v139, v133, v119, &v132);
                v113 = v112;
                v11 = v132;
                v131._decimal.w[0] = InterestPortionOfPaymentWithRate_rate_per_nper_pv_fv_dueBeginning_outError;
                v131._decimal.w[1] = v113;
                TSUDecimal::operator+=();
                if (v11)
                {
                  break;
                }

                v109 = v121 + 1;
                if (v120 == v121 + 1)
                {
                  goto LABEL_36;
                }
              }

              v19 = objc_msgSend_raiseErrorOrConvert_(a3, v114, v11, v115, v116);
              v30 = v130;
              v32 = v127;
              goto LABEL_24;
            }

LABEL_36:
            TSCEFormat::TSCEFormat(&v131, 256);
            v19 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v117, v135, &v131, v118);
            goto LABEL_23;
          }

          v80 = objc_msgSend_functionName(a4, v96, v97, v98, v99);
          v83 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v104, v80, 4, 5, 1, 1);
          v87 = objc_msgSend_raiseErrorOrConvert_(a3, v105, v83, v106, v107);
        }
      }
    }

    else
    {
      v80 = objc_msgSend_functionName(a4, v74, v75, v76, v77);
      v83 = objc_msgSend_invalidTypeErrorForFunctionName_argumentNumber_(TSCEError, v81, v80, 6, v82);
      v87 = objc_msgSend_raiseErrorOrConvert_(a3, v84, v83, v85, v86);
    }

    v19 = v87;

LABEL_23:
    v11 = 0;
    goto LABEL_24;
  }

  v19 = objc_msgSend_raiseErrorOrConvert_(a3, v27, v11, v28, v29);
LABEL_28:

LABEL_29:

  return v19;
}

@end
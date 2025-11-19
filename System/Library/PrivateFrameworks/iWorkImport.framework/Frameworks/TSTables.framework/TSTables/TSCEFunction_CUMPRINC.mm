@interface TSCEFunction_CUMPRINC
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_CUMPRINC

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v158[0] = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, a3, a4, 0, v158);
  v11 = v158[0];
  v157[0] = objc_msgSend_decimalRepresentation(v10, v12, v13, v14, v15);
  v157[1] = v16;
  if (v11)
  {
    v19 = objc_msgSend_raiseErrorOrConvert_(a3, v16, v11, v17, v18);
    goto LABEL_29;
  }

  v20 = *(*a5 + 8);
  v156 = 0;
  v22 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v20, v21, a3, a4, 1, &v156);
  v11 = v156;
  v155[0] = objc_msgSend_decimalRepresentation(v22, v23, v24, v25, v26);
  v155[1] = v27;
  if (!v11)
  {
    v30 = *(*a5 + 16);
    v154 = 0;
    v32 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v30, v31, a3, a4, 2, &v154);
    v11 = v154;
    v153[0] = objc_msgSend_decimalRepresentation(v32, v33, v34, v35, v36);
    v153[1] = v37;
    if (v11)
    {
      v19 = objc_msgSend_raiseErrorOrConvert_(a3, v37, v11, v38, v39);
LABEL_27:

      goto LABEL_28;
    }

    v142 = v30;
    v40 = *(*a5 + 24);
    v152 = 0;
    v141 = v40;
    v42 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v40, v41, a3, a4, 3, &v152);
    v11 = v152;
    v140 = v42;
    v143._decimal.w[0] = objc_msgSend_decimalRepresentation(v42, v43, v44, v45, v46);
    v143._decimal.w[1] = v47;
    TSUDecimal::doubleValue(&v143);
    v30 = v142;
    if (v11)
    {
      v19 = objc_msgSend_raiseErrorOrConvert_(a3, v48, v11, v49, v50);
LABEL_26:

      goto LABEL_27;
    }

    v52 = v51;
    v139 = v32;
    v53 = *(*a5 + 32);
    v151 = 0;
    v138 = v53;
    v55 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v53, v54, a3, a4, 4, &v151);
    v11 = v151;
    v137 = v55;
    v143._decimal.w[0] = objc_msgSend_decimalRepresentation(v55, v56, v57, v58, v59);
    v143._decimal.w[1] = v60;
    TSUDecimal::doubleValue(&v143);
    v32 = v139;
    if (v11)
    {
      v19 = objc_msgSend_raiseErrorOrConvert_(a3, v61, v11, v62, v63);
LABEL_25:

      goto LABEL_26;
    }

    v65 = v64;
    v66 = *(*a5 + 40);
    v150 = 0;
    v136 = v66;
    v68 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v66, v67, a3, a4, 5, &v150);
    v11 = v150;
    v135 = v68;
    v143._decimal.w[0] = objc_msgSend_decimalRepresentation(v68, v69, v70, v71, v72);
    v143._decimal.w[1] = v73;
    TSUDecimal::doubleValue(&v143);
    if (v11)
    {
      v79 = objc_msgSend_raiseErrorOrConvert_(a3, v74, v11, v76, v77);
LABEL_13:
      v19 = v79;
LABEL_24:

      goto LABEL_25;
    }

    v80 = v78;
    if (v78 == 0.0 || v78 == 1.0)
    {
      TSUDecimal::operator=();
      if (TSUDecimal::operator<())
      {
        v81 = objc_msgSend_functionName(a4, v89, v90, v91, v92);
        v84 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v93, v81, 2, 5, 0, 1);
        v88 = objc_msgSend_raiseErrorOrConvert_(a3, v94, v84, v95, v96);
      }

      else
      {
        TSUDecimal::operator=();
        if (TSUDecimal::operator<())
        {
          v81 = objc_msgSend_functionName(a4, v97, v98, v99, v100);
          v84 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v101, v81, 2, 4, 0, 1);
          v88 = objc_msgSend_raiseErrorOrConvert_(a3, v102, v84, v103, v104);
        }

        else
        {
          if (v52 <= v65)
          {
            TSUDecimal::operator=();
            v149 = 0;
            FixedPaymentWithRate_rate_nper_pv_fv_dueBeginning_outError = objc_msgSend_getFixedPaymentWithRate_rate_nper_pv_fv_dueBeginning_outError_(TSCEFinancialFunctions, v110, a4, v157, v155, v153, &v143, v80 != 0.0, &v149);
            v133 = v112;
            v113 = FixedPaymentWithRate_rate_nper_pv_fv_dueBeginning_outError;
            v114 = v149;
            if (!v114)
            {
              TSUDecimal::operator=();
              v118 = ceil(v52);
              v119 = floor(v65);
              if (v118 > v119)
              {
LABEL_38:
                TSCEFormat::TSCEFormat(&v143, 256);
                v19 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v129, v148, &v143, v130);
                v11 = 0;
              }

              else
              {
                v120 = v113;
                v132 = v119 + 1;
                while (1)
                {
                  v121 = v118;
                  TSUDecimal::operator=();
                  TSUDecimal::operator=();
                  v144 = 0;
                  LOBYTE(v131) = v80 != 0.0;
                  InterestPortionOfPaymentWithRate_rate_per_nper_pv_fv_dueBeginning_outError = objc_msgSend_getInterestPortionOfPaymentWithRate_rate_per_nper_pv_fv_dueBeginning_outError_(TSCEFinancialFunctions, v122, a4, v157, &v143, v155, v153, &v145, v131, &v144);
                  v124 = v123;
                  v125 = v144;
                  v146 = InterestPortionOfPaymentWithRate_rate_per_nper_pv_fv_dueBeginning_outError;
                  v147 = v124;
                  if (v125)
                  {
                    break;
                  }

                  v143._decimal.w[0] = v120;
                  v143._decimal.w[1] = v133;
                  TSUDecimal::operator-=();
                  v145 = v143;
                  TSUDecimal::operator+=();
                  v118 = v121 + 1;
                  if (v132 == v121 + 1)
                  {
                    goto LABEL_38;
                  }
                }

                v11 = v125;
                v19 = objc_msgSend_raiseErrorOrConvert_(a3, v126, v125, v127, v128);
              }

              v30 = v142;
              v32 = v139;
              goto LABEL_24;
            }

            v11 = v114;
            v79 = objc_msgSend_raiseErrorOrConvert_(a3, v115, v114, v116, v117);
            goto LABEL_13;
          }

          v81 = objc_msgSend_functionName(a4, v97, v98, v99, v100);
          v84 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v105, v81, 4, 5, 1, 1);
          v88 = objc_msgSend_raiseErrorOrConvert_(a3, v106, v84, v107, v108);
        }
      }
    }

    else
    {
      v81 = objc_msgSend_functionName(a4, v74, v75, v76, v77);
      v84 = objc_msgSend_invalidTypeErrorForFunctionName_argumentNumber_(TSCEError, v82, v81, 6, v83);
      v88 = objc_msgSend_raiseErrorOrConvert_(a3, v85, v84, v86, v87);
    }

    v19 = v88;

    v11 = 0;
    goto LABEL_24;
  }

  v19 = objc_msgSend_raiseErrorOrConvert_(a3, v27, v11, v28, v29);
LABEL_28:

LABEL_29:

  return v19;
}

@end
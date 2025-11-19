@interface TSCEFunction_YIELD
+ (TSUDecimal)solveYieldByNewtonsWithA:(const TSUDecimal *)a3 DSC:(const TSUDecimal *)a4 E:(const TSUDecimal *)a5 M:(int)a6 N:(double)a7 P:(const TSUDecimal *)a8 R:(const TSUDecimal *)a9 RV:(const TSUDecimal *)a10 initial:(const TSUDecimal *)a11;
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_YIELD

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v9 = **a5;
  v201[0] = 0;
  v11 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v9, v10, a3, a4, 0, v201);
  v16 = v201[0];
  if (v16)
  {
    v17 = objc_msgSend_raiseErrorOrConvert_(a3, v12, v16, v14, v15);
    goto LABEL_43;
  }

  if (v11)
  {
    v18 = objc_msgSend_gregorianCalendar(TSCECalendar, v12, v13, v14, v15);
    v22 = objc_msgSend_clearOffTime_(v18, v19, v11, v20, v21);
    v23 = *(*a5 + 8);
    v200 = 0;
    v175 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v23, v24, a3, a4, 1, &v200);
    v16 = v200;
    if (v16)
    {
      v17 = objc_msgSend_raiseErrorOrConvert_(a3, v25, v16, v26, v27);
LABEL_41:

      goto LABEL_42;
    }

    if (!v175)
    {
      v43 = objc_msgSend_functionName(a4, v25, 0, v26, v27);
      v174 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v44, v43, 2, v45);
      v17 = objc_msgSend_raiseErrorOrConvert_(a3, v46, v174, v47, v48);
      v16 = 0;
LABEL_40:

      goto LABEL_41;
    }

    v173 = objc_msgSend_clearOffTime_(v18, v25, v175, v26, v27);
    v33 = *(*a5 + 16);
    v199 = 0;
    v174 = v33;
    v35 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v33, v34, a3, a4, 2, &v199);
    v16 = v199;
    v172 = v35;
    v198._decimal.w[0] = objc_msgSend_decimalRepresentation(v35, v36, v37, v38, v39);
    v198._decimal.w[1] = v40;
    if (v16)
    {
      v17 = objc_msgSend_raiseErrorOrConvert_(a3, v40, v16, v41, v42);
      v43 = v173;
LABEL_39:

      goto LABEL_40;
    }

    v49 = *(*a5 + 24);
    v197 = 0;
    v171 = v49;
    v51 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v49, v50, a3, a4, 3, &v197);
    v16 = v197;
    v170 = v51;
    v196._decimal.w[0] = objc_msgSend_decimalRepresentation(v51, v52, v53, v54, v55);
    v196._decimal.w[1] = v56;
    if (v16)
    {
      v17 = objc_msgSend_raiseErrorOrConvert_(a3, v56, v16, v57, v58);
      v43 = v173;
LABEL_38:

      goto LABEL_39;
    }

    v59 = *(*a5 + 32);
    v195 = 0;
    v169 = v59;
    v61 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v59, v60, a3, a4, 4, &v195);
    v16 = v195;
    v168 = v61;
    v194._decimal.w[0] = objc_msgSend_decimalRepresentation(v61, v62, v63, v64, v65);
    v194._decimal.w[1] = v66;
    if (v16)
    {
      v17 = objc_msgSend_raiseErrorOrConvert_(a3, v66, v16, v67, v68);
      v43 = v173;
LABEL_37:

      goto LABEL_38;
    }

    v69 = *(*a5 + 40);
    v193 = 0;
    v167 = v69;
    v71 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v69, v70, a3, a4, 5, &v193);
    v16 = v193;
    v165 = v71;
    v76 = objc_msgSend_trunc(v71, v72, v73, v74, v75);

    v166 = v76;
    v176._decimal.w[0] = objc_msgSend_decimalRepresentation(v76, v77, v78, v79, v80);
    v176._decimal.w[1] = v81;
    v82 = TSUDecimal::truncateWithRounding(&v176);
    if (v16)
    {
      goto LABEL_16;
    }

    v88 = v82;
    if (v82 <= 4 && ((1 << v82) & 0x16) != 0)
    {
      if (*(a5 + 1) - *a5 < 0x31uLL)
      {
        v95 = 0;
      }

      else
      {
        v89 = *(*a5 + 48);
        if (objc_msgSend_isTokenOrEmptyArg(v89, v90, v91, v92, v93))
        {
          v95 = 0;
        }

        else
        {
          v164 = v88;
          v192 = 0;
          v163 = v89;
          v104 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v89, v94, a3, a4, 6, &v192);
          v16 = v192;
          v109 = objc_msgSend_trunc(v104, v105, v106, v107, v108);

          v176._decimal.w[0] = objc_msgSend_decimalRepresentation(v109, v110, v111, v112, v113);
          v176._decimal.w[1] = v114;
          v115 = TSUDecimal::truncateWithRounding(&v176);
          if (v16)
          {
            v17 = objc_msgSend_raiseErrorOrConvert_(a3, v116, v16, v117, v118);

            goto LABEL_18;
          }

          v95 = v115;

          v88 = v164;
          v89 = v163;
        }
      }

      if (objc_msgSend_compare_(v22, v83, v173, v85, v86) != 1 && objc_msgSend_compare_(v22, v119, v173, v121, v122))
      {
        v123 = v88;
        v190 = 0;
        v124 = v95;
        objc_msgSend_getCouponDaysWithSettlementDate_settlement_maturity_numCoupons_dayBasisMode_outError_(TSCEFinancialFunctions, v119, a4, v22, v173, v88);
        v16 = v190;
        TSUDecimal::operator=();
        if (!v16)
        {
          v188 = 0;
          objc_msgSend_getCouponDaysBeforeSettlementDateWithSettlementDate_settlement_maturity_numCoupons_dayBasisMode_outError_(TSCEFinancialFunctions, v83, a4, v22, v173, v124, &v188, v123);
          v16 = v188;
          TSUDecimal::operator=();
          if (!v16)
          {
            v176 = v191;
            TSUDecimal::operator-=();
            v187 = v176;
            v186 = 0;
            objc_msgSend_getNumFutureCouponsWithSettlementDate_settlement_maturity_numCoupons_dayBasisMode_outError_(TSCEFinancialFunctions, v130, a4, v22, v173, v124, &v186, v123);
            v132 = v131;
            v16 = v186;
            if (!v16)
            {
              TSUDecimal::operator=();
              if (v132 <= 1.0)
              {
                TSUDecimal::operator=();
                v176 = v196;
                TSUDecimal::operator/=();
                v154 = v176._decimal.w[0];
                v153 = v176._decimal.w[1];
                v176 = v189;
                TSUDecimal::operator/=();
                TSUDecimal::operator*=();
                v155 = v176._decimal.w[0];
                v156 = v176._decimal.w[1];
                TSUDecimal::operator=();
                v176._decimal.w[0] = v155;
                v176._decimal.w[1] = v156;
                TSUDecimal::operator/=();
                v182 = v176;
                v176._decimal.w[0] = v154;
                v176._decimal.w[1] = v153;
                TSUDecimal::operator+=();
                v184 = v176;
                TSUDecimal::operator=();
                v176 = v194;
                TSUDecimal::operator/=();
                v158 = v176._decimal.w[0];
                v157 = v176._decimal.w[1];
                TSUDecimal::operator=();
                v176 = v198;
                TSUDecimal::operator/=();
                v182 = v176;
                v176._decimal.w[0] = v158;
                v176._decimal.w[1] = v157;
                TSUDecimal::operator+=();
                TSUDecimal::operator-=();
                TSUDecimal::operator/=();
                v160 = v176._decimal.w[0];
                v159 = v176._decimal.w[1];
                TSUDecimal::operator=();
                v176._decimal.w[0] = v160;
                v176._decimal.w[1] = v159;
                TSUDecimal::operator*=();
                TSUDecimal::operator*=();
                TSUDecimal::operator/=();
                v185 = v176;
              }

              else
              {
                TSUDecimal::operator=();
                v184._decimal.w[0] = objc_msgSend_solveYieldByNewtonsWithA_DSC_E_M_N_P_R_RV_initial_(a1, v133, &v189, &v187, &v191, v88, &v196, &v198, v132, &v194, &v176);
                v184._decimal.w[1] = v134;
                TSUDecimal::operator=();
                v183._decimal.w[0] = objc_msgSend_solveYieldByNewtonsWithA_DSC_E_M_N_P_R_RV_initial_(a1, v135, &v189, &v187, &v191, v88, &v196, &v198, v132, &v194, &v176);
                v183._decimal.w[1] = v136;
                TSUDecimal::operator=();
                v182._decimal.w[0] = objc_msgSend_solveYieldByNewtonsWithA_DSC_E_M_N_P_R_RV_initial_(a1, v137, &v189, &v187, &v191, v88, &v196, &v198, v132, &v194, &v176);
                v182._decimal.w[1] = v138;
                TSUDecimal::operator=();
                v181._decimal.w[0] = objc_msgSend_solveYieldByNewtonsWithA_DSC_E_M_N_P_R_RV_initial_(a1, v139, &v189, &v187, &v191, v88, &v196, &v198, v132, &v194, &v176);
                v181._decimal.w[1] = v140;
                if (TSUDecimal::isNaN(&v184) && TSUDecimal::isNaN(&v183) && TSUDecimal::isNaN(&v182) && TSUDecimal::isNaN(&v181))
                {
                  v145 = objc_msgSend_functionName(a4, v141, v142, v143, v144);
                  v149 = objc_msgSend_numberDoesNotConvergeErrorForFunctionName_(TSCEError, v146, v145, v147, v148);
                  v17 = objc_msgSend_raiseErrorOrConvert_(a3, v150, v149, v151, v152);

                  goto LABEL_18;
                }

                TSUDecimal::operator=();
                v176 = v184;
                TSUDecimal::operator-=();
                v180 = v176;
                TSUDecimal::operator=();
                v176 = v183;
                TSUDecimal::operator-=();
                v179 = v176;
                TSUDecimal::operator=();
                v176 = v182;
                TSUDecimal::operator-=();
                v178 = v176;
                TSUDecimal::operator=();
                v176 = v181;
                TSUDecimal::operator-=();
                v177 = v176;
                TSUDecimal::abs(&v180);
                TSUDecimal::abs(&v179);
                TSUDecimal::abs(&v178);
                TSUDecimal::abs(&v177);
                TSUDecimal::operator=();
                if ((TSUDecimal::isNaN(&v180) & 1) == 0 && TSUDecimal::operator<())
                {
                  v176 = v180;
                  v185 = v184;
                }

                if ((TSUDecimal::isNaN(&v179) & 1) == 0 && TSUDecimal::operator<())
                {
                  v176 = v179;
                  v185 = v183;
                }

                if ((TSUDecimal::isNaN(&v178) & 1) == 0 && TSUDecimal::operator<())
                {
                  v176 = v178;
                  v185 = v182;
                }

                if ((TSUDecimal::isNaN(&v177) & 1) == 0 && TSUDecimal::operator<())
                {
                  v185 = v181;
                }
              }

              TSCEFormat::TSCEFormat(&v176, 258);
              v87 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v161, &v185, &v176, v162);
              goto LABEL_17;
            }
          }
        }

LABEL_16:
        v87 = objc_msgSend_raiseErrorOrConvert_(a3, v83, v16, v85, v86);
LABEL_17:
        v17 = v87;
LABEL_18:
        v43 = v173;
LABEL_36:

        goto LABEL_37;
      }

      v96 = objc_msgSend_functionName(a4, v119, v120, v121, v122);
      v99 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v125, v96, 1, 2, 1, 0);
      v43 = v173;
      v103 = objc_msgSend_raiseErrorOrConvert_(a3, v126, v99, v127, v128);
    }

    else
    {
      v96 = objc_msgSend_functionName(a4, v83, v84, v85, v86);
      v43 = v173;
      v99 = objc_msgSend_invalidFrequencyErrorForFunctionName_argumentNumber_(TSCEError, v97, v96, 6, v98);
      v103 = objc_msgSend_raiseErrorOrConvert_(a3, v100, v99, v101, v102);
    }

    v17 = v103;

    v16 = 0;
    goto LABEL_36;
  }

  v22 = objc_msgSend_functionName(a4, v12, v13, v14, v15);
  v23 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v28, v22, 1, v29);
  v17 = objc_msgSend_raiseErrorOrConvert_(a3, v30, v23, v31, v32);
  v16 = 0;
LABEL_42:

LABEL_43:

  return v17;
}

+ (TSUDecimal)solveYieldByNewtonsWithA:(const TSUDecimal *)a3 DSC:(const TSUDecimal *)a4 E:(const TSUDecimal *)a5 M:(int)a6 N:(double)a7 P:(const TSUDecimal *)a8 R:(const TSUDecimal *)a9 RV:(const TSUDecimal *)a10 initial:(const TSUDecimal *)a11
{
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  v13 = 0;
  v74 = xmmword_2217E1440;
  v75 = xmmword_2217E1440;
  v73 = xmmword_2217E1440;
  v79 = *a11;
  do
  {
    if (TSUDecimal::isNaN(&v79))
    {
      break;
    }

    v56 = v13;
    TSUDecimal::operator=();
    TSUDecimal::operator=();
    v80 = v79;
    TSUDecimal::operator/=();
    v69 = v80;
    v80 = v70;
    TSUDecimal::operator+=();
    v71 = v80;
    TSUDecimal::operator=();
    v80 = *a4;
    TSUDecimal::operator/=();
    v65 = v80;
    v80 = v66;
    TSUDecimal::operator-=();
    v67 = v80;
    TSUDecimal::doubleValue(&v71);
    v15 = v14;
    TSUDecimal::doubleValue(&v67);
    pow(v15, v16);
    TSUDecimal::operator=();
    v72 = v80;
    v80 = *a10;
    TSUDecimal::operator*=();
    v17 = v80._decimal.w[0];
    v18 = v80._decimal.w[1];
    TSUDecimal::operator=();
    v80 = v71;
    TSUDecimal::operator*=();
    v19 = v80._decimal.w[0];
    v20 = v80._decimal.w[1];
    TSUDecimal::operator=();
    v80._decimal.w[0] = v19;
    v80._decimal.w[1] = v20;
    TSUDecimal::operator/=();
    TSUDecimal::operator*=();
    TSUDecimal::operator/=();
    v72 = v80;
    TSUDecimal::operator=();
    if (a7 >= 1.0)
    {
      v21 = 0;
      v22 = 2;
      do
      {
        TSUDecimal::operator=();
        v80 = v70;
        TSUDecimal::operator*=();
        v23 = v80._decimal.w[0];
        v24 = v80._decimal.w[1];
        TSUDecimal::operator=();
        v80._decimal.w[0] = v23;
        v80._decimal.w[1] = v24;
        TSUDecimal::operator/=();
        v25 = v80._decimal.w[0];
        v26 = v80._decimal.w[1];
        TSUDecimal::operator=();
        TSUDecimal::operator=();
        v80 = v79;
        TSUDecimal::operator/=();
        v65 = v80;
        v80 = v66;
        TSUDecimal::operator+=();
        v67 = v80;
        TSUDecimal::operator=();
        v80 = *a4;
        TSUDecimal::operator/=();
        v61 = v80;
        v80 = v62;
        TSUDecimal::operator-=();
        v63 = v80;
        TSUDecimal::doubleValue(&v67);
        v28 = v27;
        TSUDecimal::doubleValue(&v63);
        pow(v28, v29);
        TSUDecimal::operator=();
        v68 = v80;
        v80._decimal.w[0] = v25;
        v80._decimal.w[1] = v26;
        TSUDecimal::operator*=();
        TSUDecimal::operator+=();
        v30 = v22++;
        --v21;
      }

      while (v30 <= a7);
    }

    v80._decimal.w[0] = v17;
    v80._decimal.w[1] = v18;
    TSUDecimal::operator+=();
    TSUDecimal::operator-=();
    TSUDecimal::operator-=();
    v78 = v80;
    TSUDecimal::operator=();
    v80 = *a10;
    TSUDecimal::operator/=();
    v31 = v80._decimal.w[0];
    v32 = v80._decimal.w[1];
    TSUDecimal::operator=();
    v80 = *a4;
    TSUDecimal::operator/=();
    v67 = v80;
    v80 = v68;
    TSUDecimal::operator-=();
    v69 = v80;
    v80._decimal.w[0] = v31;
    v80._decimal.w[1] = v32;
    TSUDecimal::operator*=();
    v33 = v80._decimal.w[0];
    v34 = v80._decimal.w[1];
    TSUDecimal::operator=();
    TSUDecimal::operator=();
    v80 = v79;
    TSUDecimal::operator/=();
    v63 = v80;
    v80 = v64;
    TSUDecimal::operator+=();
    v65 = v80;
    TSUDecimal::operator=();
    v80 = *a4;
    TSUDecimal::operator/=();
    v59 = v80;
    v80 = v60;
    TSUDecimal::operator-=();
    v61 = v80;
    TSUDecimal::doubleValue(&v65);
    v36 = v35;
    TSUDecimal::doubleValue(&v61);
    pow(v36, v37);
    TSUDecimal::operator=();
    v66 = v80;
    v80._decimal.w[0] = v33;
    v80._decimal.w[1] = v34;
    TSUDecimal::operator*=();
    v38 = v80._decimal.w[0];
    v39 = v80._decimal.w[1];
    TSUDecimal::operator=();
    if (a7 >= 1.0)
    {
      v40 = -1;
      v41 = 2;
      do
      {
        TSUDecimal::operator=();
        v80 = v69;
        TSUDecimal::operator*=();
        v42 = v80._decimal.w[0];
        v43 = v80._decimal.w[1];
        TSUDecimal::operator=();
        v80._decimal.w[0] = v42;
        v80._decimal.w[1] = v43;
        TSUDecimal::operator/=();
        v44 = v80._decimal.w[0];
        v45 = v80._decimal.w[1];
        TSUDecimal::operator=();
        v80._decimal.w[0] = v44;
        v80._decimal.w[1] = v45;
        TSUDecimal::operator/=();
        v46 = v80._decimal.w[0];
        v47 = v80._decimal.w[1];
        TSUDecimal::operator=();
        v80 = *a4;
        TSUDecimal::operator/=();
        v64 = v80;
        v80 = v65;
        TSUDecimal::operator-=();
        v66 = v80;
        v80._decimal.w[0] = v46;
        v80._decimal.w[1] = v47;
        TSUDecimal::operator*=();
        v48 = v80._decimal.w[0];
        v49 = v80._decimal.w[1];
        TSUDecimal::operator=();
        TSUDecimal::operator=();
        v80 = v79;
        TSUDecimal::operator/=();
        v60 = v80;
        v80 = v61;
        TSUDecimal::operator+=();
        v62 = v80;
        TSUDecimal::operator=();
        v80 = *a4;
        TSUDecimal::operator/=();
        v80 = v57;
        TSUDecimal::operator-=();
        v58 = v80;
        TSUDecimal::doubleValue(&v62);
        v51 = v50;
        TSUDecimal::doubleValue(&v58);
        pow(v51, v52);
        TSUDecimal::operator=();
        v63 = v80;
        v80._decimal.w[0] = v48;
        v80._decimal.w[1] = v49;
        TSUDecimal::operator*=();
        TSUDecimal::operator+=();
        v53 = v41;
        --v40;
        ++v41;
      }

      while (v53 <= a7);
    }

    v80._decimal.w[0] = v38;
    v80._decimal.w[1] = v39;
    TSUDecimal::operator+=();
    v77 = v80;
    v80 = v78;
    TSUDecimal::operator/=();
    v76 = v80;
    TSUDecimal::operator-=();
    v80 = v76;
    TSUDecimal::abs(&v80);
    if ((TSUDecimal::isNaN(&v75) & 1) != 0 || TSUDecimal::operator<())
    {
      v74 = v79;
      v75 = v80;
      v73 = v78;
    }

    if (TSUDecimal::operator<())
    {
      v54 = v79._decimal.w[0];
      v55 = v79._decimal.w[1];
      goto LABEL_20;
    }

    v13 = v56 + 1;
  }

  while (v56 != 499);
  if ((TSUDecimal::isNaN(&v74) & 1) == 0 && (TSUDecimal::operator=(), TSUDecimal::operator<()) && (TSUDecimal::abs(&v73), TSUDecimal::operator=(), TSUDecimal::operator<()))
  {
    v54 = v74._decimal.w[0];
    v55 = v74._decimal.w[1];
  }

  else
  {
    v54 = 0;
    v79 = xmmword_2217E1440;
    v55 = 0x7C00000000000000;
  }

LABEL_20:
  result._decimal.w[1] = v55;
  result._decimal.w[0] = v54;
  return result;
}

@end
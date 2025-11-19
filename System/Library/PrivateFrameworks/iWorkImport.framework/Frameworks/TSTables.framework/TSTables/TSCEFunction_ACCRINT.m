@interface TSCEFunction_ACCRINT
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_ACCRINT

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v281 = 0;
  v282 = 0;
  v283 = 0;
  v8 = **a5;
  v12 = v8;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, a3, v10, v11);
  }

  else
  {
    memset(&v280, 0, sizeof(v280));
  }

  sub_22114F414(&v281, &v280);
  v279 = 0;
  v14 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v12, v13, a3, a4, 0, &v279);
  v19 = v279;
  if (v19)
  {
    v20 = objc_msgSend_raiseErrorOrConvert_(a3, v15, v19, v17, v18);
    goto LABEL_66;
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
      memset(&v280, 0, sizeof(v280));
    }

    sub_22114F414(&v281, &v280);
    v278 = 0;
    v37 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v30, v36, a3, a4, 1, &v278);
    v19 = v278;
    if (v19)
    {
      v20 = objc_msgSend_raiseErrorOrConvert_(a3, v38, v19, v40, v41);
LABEL_64:

      goto LABEL_65;
    }

    if (!v37)
    {
      v254 = objc_msgSend_functionName(a4, v38, v39, v40, v41);
      v255 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v46, v254, 2, v47);
      v20 = objc_msgSend_raiseErrorOrConvert_(a3, v48, v255, v49, v50);
      v19 = 0;
LABEL_63:

      goto LABEL_64;
    }

    v254 = objc_msgSend_clearOffTime_(v21, v38, v37, v40, v41);
    v42 = *(*a5 + 16);
    v255 = v42;
    if (v42)
    {
      objc_msgSend_formatWithContext_(v42, v43, a3, v44, v45);
    }

    else
    {
      memset(&v280, 0, sizeof(v280));
    }

    sub_22114F414(&v281, &v280);
    v277 = 0;
    v253 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v255, v51, a3, a4, 2, &v277);
    v19 = v277;
    if (v19)
    {
      v20 = objc_msgSend_raiseErrorOrConvert_(a3, v52, v19, v53, v54);
LABEL_62:

      goto LABEL_63;
    }

    if (!v253)
    {
      v251 = objc_msgSend_functionName(a4, v52, 0, v53, v54);
      v252 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v59, v251, 3, v60);
      v20 = objc_msgSend_raiseErrorOrConvert_(a3, v61, v252, v62, v63);
      v19 = 0;
LABEL_61:

      goto LABEL_62;
    }

    v250 = v37;
    v251 = objc_msgSend_clearOffTime_(v21, v52, v253, v53, v54);
    v55 = *(*a5 + 24);
    v252 = v55;
    if (v55)
    {
      objc_msgSend_formatWithContext_(v55, v56, a3, v57, v58);
    }

    else
    {
      memset(&v280, 0, sizeof(v280));
    }

    sub_22114F414(&v281, &v280);
    v276 = 0;
    v65 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v252, v64, a3, a4, 3, &v276);
    v19 = v276;
    v249 = v65;
    v66 = v65;
    v37 = v250;
    v71 = objc_msgSend_decimalRepresentation(v66, v67, v68, v69, v70);
    v246 = v72;
    v247 = v71;
    if (v19)
    {
      v20 = objc_msgSend_raiseErrorOrConvert_(a3, v72, v19, v73, v74);
LABEL_60:

      goto LABEL_61;
    }

    TSUDecimal::operator=();
    v75 = *(*a5 + 32);
    v248 = v75;
    if (v75)
    {
      objc_msgSend_formatWithContext_(v75, v76, a3, v77, v78);
    }

    else
    {
      memset(&v280, 0, sizeof(v280));
    }

    sub_22114F414(&v281, &v280);
    if (objc_msgSend_nativeType(v248, v79, v80, v81, v82) != 10)
    {
      v274 = 0;
      v244 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v248, v83, a3, a4, 4, &v274);
      v19 = v274;
      *&v275 = objc_msgSend_decimalRepresentation(v244, v84, v85, v86, v87);
      *(&v275 + 1) = v88;

      if (v19)
      {
        v20 = objc_msgSend_raiseErrorOrConvert_(a3, v89, v19, v90, v91);
LABEL_59:

        goto LABEL_60;
      }
    }

    v92 = *(*a5 + 40);
    v245 = v92;
    if (v92)
    {
      objc_msgSend_formatWithContext_(v92, v93, a3, v94, v95);
    }

    else
    {
      memset(&v280, 0, sizeof(v280));
    }

    sub_22114F414(&v281, &v280);
    v273 = 0;
    v242 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v245, v96, a3, a4, 5, &v273);
    v19 = v273;
    v241 = objc_msgSend_trunc(v242, v97, v98, v99, v100);

    v280._tskFormat = objc_msgSend_decimalRepresentation(v241, v101, v102, v103, v104);
    *&v280._formatType = v105;
    v106 = TSUDecimal::truncateWithRounding(&v280);
    if (v19)
    {
      v20 = objc_msgSend_raiseErrorOrConvert_(a3, v107, v19, v109, v110);
LABEL_58:

      goto LABEL_59;
    }

    if (v106 > 4 || (v243 = v106, ((1 << v106) & 0x16) == 0))
    {
      v120 = objc_msgSend_functionName(a4, v107, v108, v109, v110);
      v123 = objc_msgSend_invalidFrequencyErrorForFunctionName_argumentNumber_(TSCEError, v121, v120, 6, v122);
      v127 = objc_msgSend_raiseErrorOrConvert_(a3, v124, v123, v125, v126);
LABEL_57:
      v20 = v127;

      v19 = 0;
      goto LABEL_58;
    }

    if (*(a5 + 1) - *a5 < 0x31uLL)
    {
      v119 = 0;
    }

    else
    {
      v111 = *(*a5 + 48);
      v239 = v111;
      if (objc_msgSend_isTokenOrEmptyArg(v111, v112, v113, v114, v115))
      {
        v119 = 0;
      }

      else
      {
        if (v111)
        {
          objc_msgSend_formatWithContext_(v111, v116, a3, v117, v118);
        }

        else
        {
          memset(&v280, 0, sizeof(v280));
        }

        sub_22114F414(&v281, &v280);
        v272 = 0;
        v129 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v111, v128, a3, a4, 6, &v272);
        v19 = v272;
        v237 = objc_msgSend_trunc(v129, v130, v131, v132, v133);

        if (v19)
        {
          v20 = objc_msgSend_raiseErrorOrConvert_(a3, v134, v19, v136, v137);

          goto LABEL_58;
        }

        v280._tskFormat = objc_msgSend_decimalRepresentation(v237, v134, v135, v136, v137);
        *&v280._formatType = v138;
        v119 = TSUDecimal::truncateWithRounding(&v280);
      }
    }

    if (objc_msgSend_compare_(v25, v107, v251, v109, v110) == 1 || !objc_msgSend_compare_(v25, v139, v251, v141, v142))
    {
      v120 = objc_msgSend_functionName(a4, v139, v140, v141, v142);
      v123 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v151, v120, 1, 3, 1, 0);
      v127 = objc_msgSend_raiseErrorOrConvert_(a3, v152, v123, v153, v154);
      goto LABEL_57;
    }

    if (objc_msgSend_compare_(v25, v139, v251, v141, v142) == 1)
    {
      v120 = objc_msgSend_functionName(a4, v143, v144, v145, v146);
      v123 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v147, v120, 1, 2, 1, 1);
      v127 = objc_msgSend_raiseErrorOrConvert_(a3, v148, v123, v149, v150);
      goto LABEL_57;
    }

    TSUDecimal::operator=();
    v270 = 0;
    v271 = 0;
    v269 = 0;
    objc_msgSend_extractComponentsFromDate_year_month_day_(v21, v156, v254, &v271, &v270, &v269);
    Year = objc_msgSend_extractYear_(v21, v157, v251, v158, v159);
    if (v271 <= Year + 1)
    {
      v162 = Year + 1;
    }

    else
    {
      v162 = v271;
    }

    objc_msgSend_dateWithYear_month_day_(v21, v161, v271 + ((v162 - v271 + 3) & 0xFFFFFFFFFFFFFFFCLL), v270, v269);
    v240 = v268 = 0;
    v238 = objc_msgSend_prevCoupDateWithSettlement_settlement_maturity_frequency_outError_(TSCEFinancialFunctions, v163, a4, v25, v240, v243, &v268);
    v19 = v268;
    if (v19)
    {
      v20 = objc_msgSend_raiseErrorOrConvert_(a3, v164, v19, v165, v166);
LABEL_88:

      goto LABEL_58;
    }

    objc_msgSend_compare_(v25, v164, v238, v165, v166);
    v267 = 0;
    v236 = objc_msgSend_prevCoupDateWithSettlement_settlement_maturity_frequency_outError_(TSCEFinancialFunctions, v167, a4, v251, v240, v243, &v267);
    v168 = v267;
    if (v168)
    {
      v19 = v168;
      v20 = objc_msgSend_raiseErrorOrConvert_(a3, v169, v168, v170, v171);
LABEL_87:

      v37 = v250;
      goto LABEL_88;
    }

    v266 = 0;
    v235 = objc_msgSend_nextCoupDateWithSettlement_settlement_maturity_frequency_outError_(TSCEFinancialFunctions, v169, a4, v251, v240, v243, &v266);
    v172 = v266;
    if (v172)
    {
      v19 = v172;
      v20 = objc_msgSend_raiseErrorOrConvert_(a3, v173, v172, v174, v175);
LABEL_86:

      goto LABEL_87;
    }

    v232 = objc_msgSend_compare_(v251, v173, v236, v174, v175);
    v176 = v251;
    if (v232)
    {
      v176 = v235;
    }

    v177 = v243;
    v265 = 0;
    v231 = v176;
    objc_msgSend_getNumFutureCouponsWithSettlementDate_settlement_maturity_numCoupons_dayBasisMode_outError_(TSCEFinancialFunctions, v178, a4, v25, v231, v119, &v265, v243);
    v180 = v179;
    v181 = v265;
    if (v181)
    {
      v19 = v181;
      v185 = objc_msgSend_raiseErrorOrConvert_(a3, v182, v181, v183, v184);
LABEL_84:
      v20 = v185;
LABEL_85:

      goto LABEL_86;
    }

    if (v180 <= 1.0)
    {
      if (v180 != 1.0)
      {
        v233 = MEMORY[0x277D81150];
        v189 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v182, "+[TSCEFunction_ACCRINT evaluateForArgsWithContext:functionSpec:arguments:]", v183, v184);
        v193 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v190, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFinancialFunctions.mm", v191, v192);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v233, v194, v189, v193, 928, 0, "ACCRINT: should not reach here if numCoponsLeft is not 1");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v195, v196, v197, v198);
      }

      v199 = sub_2214A3CE8(v240, -1);
      v258 = 0;
      objc_msgSend_getCouponDaysWithSettlementDate_settlement_maturity_numCoupons_dayBasisMode_outError_(TSCEFinancialFunctions, v200, a4, v199, v240, v119, &v258, v177);
      v19 = v258;
      if (v19)
      {
        v204 = objc_msgSend_raiseErrorOrConvert_(a3, v201, v19, v202, v203);
      }

      else
      {
        v257 = 0;
        sub_2214A452C(v25, v251, v119, &v257);
        v19 = v257;
        if (!v19)
        {
          TSUDecimal::operator=();
          goto LABEL_106;
        }

        v204 = objc_msgSend_raiseErrorOrConvert_(a3, v209, v19, v210, v211);
      }

LABEL_100:
      v20 = v204;
LABEL_101:

      goto LABEL_85;
    }

    v264 = 0;
    objc_msgSend_getCouponDaysSinceSettlementDateWithSettlementDate_settlement_maturity_numCoupons_dayBasisMode_outError_(TSCEFinancialFunctions, v182, a4, v25, v240, v119, &v264, v177);
    v19 = v264;
    if (v19)
    {
      v185 = objc_msgSend_raiseErrorOrConvert_(a3, v186, v19, v187, v188);
      goto LABEL_84;
    }

    v263 = 0;
    objc_msgSend_getCouponDaysWithSettlementDate_settlement_maturity_numCoupons_dayBasisMode_outError_(TSCEFinancialFunctions, v186, a4, v25, v240, v119, &v263, v177);
    v205 = v263;
    if (v205)
    {
      v19 = v205;
      v185 = objc_msgSend_raiseErrorOrConvert_(a3, v206, v205, v207, v208);
      goto LABEL_84;
    }

    if (v232)
    {
      v260 = 0;
      objc_msgSend_getCouponDaysBeforeSettlementDateWithSettlementDate_settlement_maturity_numCoupons_dayBasisMode_outError_(TSCEFinancialFunctions, v206, a4, v251, v240, v119, &v260, v177);
      v212 = v260;
      if (v212)
      {
        v19 = v212;
        v185 = objc_msgSend_raiseErrorOrConvert_(a3, v213, v212, v214, v215);
        goto LABEL_84;
      }

      goto LABEL_113;
    }

    v199 = sub_2214A3CE8(v251, -1);
    v262 = 0;
    v234 = objc_msgSend_prevCoupDateWithSettlement_settlement_maturity_frequency_outError_(TSCEFinancialFunctions, v218, a4, v199, v240, v243, &v262);
    v19 = v262;
    if (v19)
    {
      v222 = objc_msgSend_raiseErrorOrConvert_(a3, v219, v19, v220, v221);
    }

    else
    {
      v261 = 0;
      sub_2214A452C(v234, v251, v119, &v261);
      v223 = v261;
      if (!v223)
      {

LABEL_113:
        v199 = sub_2214A3CE8(v240, -1);
        v259 = 0;
        objc_msgSend_getCouponDaysWithSettlementDate_settlement_maturity_numCoupons_dayBasisMode_outError_(TSCEFinancialFunctions, v227, a4, v199, v240, v119, &v259, v177);
        v19 = v259;
        if (v19)
        {
          v204 = objc_msgSend_raiseErrorOrConvert_(a3, v228, v19, v229, v230);
          goto LABEL_100;
        }

        TSUDecimal::operator=();
LABEL_106:

        TSUDecimal::operator=();
        v280._tskFormat = v247;
        *&v280._formatType = v246;
        TSUDecimal::operator/=();
        *&v280._tskFormat = v275;
        TSUDecimal::operator*=();
        TSUDecimal::operator*=();
        v256[0] = v280._tskFormat;
        v256[1] = *&v280._formatType;
        sub_221256020(&v281, &v280);
        v20 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v216, v256, &v280, v217);
        v19 = 0;
        goto LABEL_85;
      }

      v19 = v223;
      v222 = objc_msgSend_raiseErrorOrConvert_(a3, v224, v223, v225, v226);
    }

    v20 = v222;

    goto LABEL_101;
  }

  v25 = objc_msgSend_functionName(a4, v15, v16, v17, v18);
  v30 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v31, v25, 1, v32);
  v20 = objc_msgSend_raiseErrorOrConvert_(a3, v33, v30, v34, v35);
  v19 = 0;
LABEL_65:

LABEL_66:
  if (v281)
  {
    v282 = v281;
    operator delete(v281);
  }

  return v20;
}

@end
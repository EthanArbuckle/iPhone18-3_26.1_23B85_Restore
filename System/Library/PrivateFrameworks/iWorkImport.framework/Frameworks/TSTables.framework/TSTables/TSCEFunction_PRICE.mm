@interface TSCEFunction_PRICE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_PRICE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v250 = 0;
  v251 = 0;
  v252 = 0;
  v8 = **arguments;
  v12 = v8;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, context, v10, v11);
  }

  else
  {
    memset(&v249, 0, sizeof(v249));
  }

  sub_22114F414(&v250, &v249);
  v248 = 0;
  v14 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v12, v13, context, spec, 0, &v248);
  v19 = v248;
  if (v19)
  {
    v20 = objc_msgSend_raiseErrorOrConvert_(context, v15, v19, v17, v18);
    goto LABEL_64;
  }

  if (v14)
  {
    v21 = objc_msgSend_gregorianCalendar(TSCECalendar, v15, v16, v17, v18);
    v25 = objc_msgSend_clearOffTime_(v21, v22, v14, v23, v24);
    v26 = *(*arguments + 8);
    v30 = v26;
    if (v26)
    {
      objc_msgSend_formatWithContext_(v26, v27, context, v28, v29);
    }

    else
    {
      memset(&v249, 0, sizeof(v249));
    }

    sub_22114F414(&v250, &v249);
    v247 = 0;
    v37 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v30, v36, context, spec, 1, &v247);
    v19 = v247;
    if (v19)
    {
      v20 = objc_msgSend_raiseErrorOrConvert_(context, v38, v19, v40, v41);
LABEL_62:

      goto LABEL_63;
    }

    if (!v37)
    {
      v222 = objc_msgSend_functionName(spec, v38, v39, v40, v41);
      v223 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v46, v222, 2, v47);
      v20 = objc_msgSend_raiseErrorOrConvert_(context, v48, v223, v49, v50);
      v19 = 0;
LABEL_61:

      goto LABEL_62;
    }

    v222 = objc_msgSend_clearOffTime_(v21, v38, v37, v40, v41);
    v42 = *(*arguments + 16);
    v223 = v42;
    if (v42)
    {
      objc_msgSend_formatWithContext_(v42, v43, context, v44, v45);
    }

    else
    {
      memset(&v249, 0, sizeof(v249));
    }

    sub_22114F414(&v250, &v249);
    v246 = 0;
    v52 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v223, v51, context, spec, 2, &v246);
    v19 = v246;
    v221 = v52;
    *&v245 = objc_msgSend_decimalRepresentation(v52, v53, v54, v55, v56);
    *(&v245 + 1) = v57;
    if (v19)
    {
      v20 = objc_msgSend_raiseErrorOrConvert_(context, v57, v19, v58, v59);
LABEL_60:

      goto LABEL_61;
    }

    v60 = *(*arguments + 24);
    v220 = v60;
    if (v60)
    {
      objc_msgSend_formatWithContext_(v60, v61, context, v62, v63);
    }

    else
    {
      memset(&v249, 0, sizeof(v249));
    }

    sub_22114F414(&v250, &v249);
    v244 = 0;
    v65 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v220, v64, context, spec, 3, &v244);
    v19 = v244;
    v219 = v65;
    v70 = objc_msgSend_decimalRepresentation(v65, v66, v67, v68, v69);
    if (v19)
    {
      v20 = objc_msgSend_raiseErrorOrConvert_(context, v71, v19, v72, v73);
LABEL_59:

      goto LABEL_60;
    }

    v213 = v71;
    v214 = v70;
    v74 = *(*arguments + 32);
    v218 = v74;
    if (v74)
    {
      objc_msgSend_formatWithContext_(v74, v75, context, v76, v77);
    }

    else
    {
      memset(&v249, 0, sizeof(v249));
    }

    sub_22114F414(&v250, &v249);
    v243 = 0;
    v79 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v218, v78, context, spec, 4, &v243);
    v19 = v243;
    v217 = v79;
    v84 = objc_msgSend_decimalRepresentation(v79, v80, v81, v82, v83);
    if (v19)
    {
      v20 = objc_msgSend_raiseErrorOrConvert_(context, v85, v19, v86, v87);
LABEL_58:

      goto LABEL_59;
    }

    v88 = v84;
    v209 = v85;
    v89 = *(*arguments + 40);
    v216 = v89;
    if (v89)
    {
      objc_msgSend_formatWithContext_(v89, v90, context, v91, v92);
    }

    else
    {
      memset(&v249, 0, sizeof(v249));
    }

    sub_22114F414(&v250, &v249);
    v208 = v88;
    v242 = 0;
    v94 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v216, v93, context, spec, 5, &v242);
    v19 = v242;
    v211 = v94;
    v99 = objc_msgSend_trunc(v94, v95, v96, v97, v98);

    v212 = v99;
    v249._tskFormat = objc_msgSend_decimalRepresentation(v99, v100, v101, v102, v103);
    *&v249._formatType = v104;
    v105 = TSUDecimal::truncateWithRounding(&v249);
    if (v19)
    {
      v110 = objc_msgSend_raiseErrorOrConvert_(context, v106, v19, v108, v109);
LABEL_35:
      v20 = v110;
LABEL_57:

      goto LABEL_58;
    }

    v111 = v105;
    if (v105 > 4 || ((1 << v105) & 0x16) == 0)
    {
      v120 = objc_msgSend_functionName(spec, v106, v107, v108, v109);
      v123 = objc_msgSend_invalidFrequencyErrorForFunctionName_argumentNumber_(TSCEError, v121, v120, 6, v122);
      v20 = objc_msgSend_raiseErrorOrConvert_(context, v124, v123, v125, v126);

LABEL_56:
      v19 = 0;
      goto LABEL_57;
    }

    if (*(arguments + 1) - *arguments < 0x31uLL)
    {
      v119 = 0;
    }

    else
    {
      v206 = *(*arguments + 48);
      if (objc_msgSend_isTokenOrEmptyArg(v206, v112, v113, v114, v115))
      {
        v119 = 0;
      }

      else
      {
        v205 = v111;
        if (v206)
        {
          objc_msgSend_formatWithContext_(v206, v116, context, v117, v118);
        }

        else
        {
          memset(&v249, 0, sizeof(v249));
        }

        sub_22114F414(&v250, &v249);
        v241 = 0;
        v128 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v206, v127, context, spec, 6, &v241);
        v19 = v241;
        v133 = objc_msgSend_trunc(v128, v129, v130, v131, v132);

        v134 = v133;
        v249._tskFormat = objc_msgSend_decimalRepresentation(v133, v135, v136, v137, v138);
        *&v249._formatType = v139;
        v140 = TSUDecimal::truncateWithRounding(&v249);
        if (v19)
        {
          v20 = objc_msgSend_raiseErrorOrConvert_(context, v141, v19, v142, v143);

          goto LABEL_57;
        }

        v119 = v140;

        v111 = v205;
      }
    }

    if (objc_msgSend_compare_(v25, v106, v222, v108, v109) != 1 && objc_msgSend_compare_(v25, v144, v222, v146, v147))
    {
      v148 = v111;
      v239 = 0;
      objc_msgSend_getCouponDaysWithSettlementDate_settlement_maturity_numCoupons_dayBasisMode_outError_(TSCEFinancialFunctions, v144, spec, v25, v222, v119, &v239, v111);
      v19 = v239;
      TSUDecimal::operator=();
      if (v19)
      {
        v110 = objc_msgSend_raiseErrorOrConvert_(context, v149, v19, v150, v151);
        goto LABEL_35;
      }

      v237 = 0;
      objc_msgSend_getCouponDaysBeforeSettlementDateWithSettlementDate_settlement_maturity_numCoupons_dayBasisMode_outError_(TSCEFinancialFunctions, v149, spec, v25, v222, v119, &v237, v148);
      v19 = v237;
      TSUDecimal::operator=();
      if (v19)
      {
        v110 = objc_msgSend_raiseErrorOrConvert_(context, v160, v19, v161, v162);
        goto LABEL_35;
      }

      *&v249._tskFormat = v240;
      TSUDecimal::operator-=();
      v207 = *&v249._formatType;
      tskFormat = v249._tskFormat;
      v236 = 0;
      objc_msgSend_getNumFutureCouponsWithSettlementDate_settlement_maturity_numCoupons_dayBasisMode_outError_(TSCEFinancialFunctions, v163, spec, v25, v222, v119, &v236, v148);
      v165 = v164;
      v166 = v236;
      if (v166)
      {
        v19 = v166;
        v110 = objc_msgSend_raiseErrorOrConvert_(context, v167, v166, v168, v169);
        goto LABEL_35;
      }

      TSUDecimal::operator=();
      if (v165 <= 1.0)
      {
        TSUDecimal::operator=();
        *&v249._tskFormat = v232;
        TSUDecimal::operator*=();
        v184 = v249._tskFormat;
        v183 = *&v249._formatType;
        TSUDecimal::operator=();
        v249._tskFormat = v184;
        *&v249._formatType = v183;
        TSUDecimal::operator/=();
        v249._tskFormat = v208;
        *&v249._formatType = v209;
        TSUDecimal::operator+=();
        v186 = v249._tskFormat;
        v185 = *&v249._formatType;
        TSUDecimal::operator=();
        v249._tskFormat = tskFormat;
        *&v249._formatType = v207;
        TSUDecimal::operator/=();
        v188 = v249._tskFormat;
        v187 = *&v249._formatType;
        TSUDecimal::operator=();
        v249._tskFormat = v214;
        *&v249._formatType = v213;
        TSUDecimal::operator/=();
        v226 = v249._tskFormat;
        v227 = *&v249._formatType;
        v249._tskFormat = v188;
        *&v249._formatType = v187;
        TSUDecimal::operator*=();
        v228._decimal.w[0] = v249._tskFormat;
        v228._decimal.w[1] = *&v249._formatType;
        *&v249._tskFormat = v229;
        TSUDecimal::operator+=();
        v230 = *&v249._tskFormat;
        v249._tskFormat = v186;
        *&v249._formatType = v185;
        TSUDecimal::operator/=();
        v189 = v249._tskFormat;
        v215 = *&v249._formatType;
        *&v249._tskFormat = v238;
        TSUDecimal::operator/=();
        v232 = *&v249._tskFormat;
        v190 = TSUDecimal::operator-();
        v192 = v191;
        TSUDecimal::operator=();
        *&v249._tskFormat = v230;
        TSUDecimal::operator*=();
        v193 = v249._tskFormat;
        v194 = *&v249._formatType;
        TSUDecimal::operator=();
        v249._tskFormat = v193;
        *&v249._formatType = v194;
        TSUDecimal::operator/=();
        v231._decimal.w[0] = v249._tskFormat;
        v231._decimal.w[1] = *&v249._formatType;
        v249._tskFormat = v190;
        *&v249._formatType = v192;
        TSUDecimal::operator*=();
        v233 = v249._tskFormat;
        v234 = *&v249._formatType;
        v249._tskFormat = v189;
        *&v249._formatType = v215;
        TSUDecimal::operator+=();
      }

      else
      {
        TSUDecimal::operator=();
        TSUDecimal::operator=();
        v249._tskFormat = v214;
        *&v249._formatType = v213;
        TSUDecimal::operator/=();
        v230 = *&v249._tskFormat;
        *&v249._tskFormat = v231;
        TSUDecimal::operator+=();
        v232 = *&v249._tskFormat;
        TSUDecimal::operator=();
        v249._tskFormat = tskFormat;
        *&v249._formatType = v207;
        TSUDecimal::operator/=();
        *&v249._tskFormat = v225;
        TSUDecimal::operator+=();
        v226 = v249._tskFormat;
        v227 = *&v249._formatType;
        v228._decimal.w[0] = TSUDecimal::operator-();
        v228._decimal.w[1] = v170;
        v233 = sub_2212B2BA4(&v232, &v228);
        v234 = v171;
        v249._tskFormat = v208;
        *&v249._formatType = v209;
        TSUDecimal::operator*=();
        v172 = v249._tskFormat;
        v210 = *&v249._formatType;
        TSUDecimal::operator=();
        TSUDecimal::operator=();
        *&v249._tskFormat = v245;
        TSUDecimal::operator/=();
        v231._decimal.w[0] = v249._tskFormat;
        v231._decimal.w[1] = *&v249._formatType;
        *&v249._tskFormat = v232;
        TSUDecimal::operator*=();
        v174 = v249._tskFormat;
        v173 = *&v249._formatType;
        *&v249._tskFormat = v238;
        TSUDecimal::operator/=();
        v229 = *&v249._tskFormat;
        v249._tskFormat = v174;
        *&v249._formatType = v173;
        TSUDecimal::operator*=();
        v233 = v249._tskFormat;
        v234 = *&v249._formatType;
        TSUDecimal::operator=();
        if (v165 >= 1.0)
        {
          v175 = 2;
          while (1)
          {
            TSUDecimal::operator=();
            TSUDecimal::operator=();
            v249._tskFormat = v214;
            *&v249._formatType = v213;
            TSUDecimal::operator/=();
            v228._decimal.w[0] = v249._tskFormat;
            v228._decimal.w[1] = *&v249._formatType;
            *&v249._tskFormat = v229;
            TSUDecimal::operator+=();
            v230 = *&v249._tskFormat;
            TSUDecimal::operator=();
            v249._tskFormat = tskFormat;
            *&v249._formatType = v207;
            TSUDecimal::operator/=();
            *&v249._tskFormat = v224;
            TSUDecimal::operator+=();
            v225._decimal.w[0] = TSUDecimal::operator-();
            v225._decimal.w[1] = v176;
            v231._decimal.w[0] = sub_2212B2BA4(&v230, &v225);
            v231._decimal.w[1] = v177;
            if (TSUDecimal::isInf(&v231))
            {
              break;
            }

            TSUDecimal::operator=();
            TSUDecimal::operator=();
            *&v249._tskFormat = v245;
            TSUDecimal::operator/=();
            v228._decimal.w[0] = v249._tskFormat;
            v228._decimal.w[1] = *&v249._formatType;
            *&v249._tskFormat = v229;
            TSUDecimal::operator*=();
            TSUDecimal::operator*=();
            v230 = *&v249._tskFormat;
            TSUDecimal::operator+=();
            v182 = v175++;
            if (v165 < v182)
            {
              goto LABEL_78;
            }
          }

          v152 = objc_msgSend_functionName(spec, v178, v179, v180, v181);
          v154 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v198, v152, v199, v200);
          v158 = objc_msgSend_raiseErrorOrConvert_(context, v201, v154, v202, v203);
          goto LABEL_55;
        }

LABEL_78:
        v249._tskFormat = v172;
        *&v249._formatType = v210;
        TSUDecimal::operator+=();
        TSUDecimal::operator-=();
      }

      v235[0] = v249._tskFormat;
      v235[1] = *&v249._formatType;
      v195 = [TSCENumberValue alloc];
      sub_221256020(&v250, &v249);
      v20 = objc_msgSend_initWithDecimal_format_(v195, v196, v235, &v249, v197);
      goto LABEL_56;
    }

    v152 = objc_msgSend_functionName(spec, v144, v145, v146, v147);
    v154 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v153, v152, 1, 2, 1, 0);
    v158 = objc_msgSend_raiseErrorOrConvert_(context, v155, v154, v156, v157);
LABEL_55:
    v20 = v158;

    goto LABEL_56;
  }

  v25 = objc_msgSend_functionName(spec, v15, v16, v17, v18);
  v30 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v31, v25, 1, v32);
  v20 = objc_msgSend_raiseErrorOrConvert_(context, v33, v30, v34, v35);
  v19 = 0;
LABEL_63:

LABEL_64:
  if (v250)
  {
    v251 = v250;
    operator delete(v250);
  }

  return v20;
}

@end
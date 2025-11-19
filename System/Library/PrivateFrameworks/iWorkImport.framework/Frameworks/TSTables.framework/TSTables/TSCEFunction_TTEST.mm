@interface TSCEFunction_TTEST
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
+ (id)subtractVectors:(id)a3 sampleSet2:(id)a4 context:(id)a5 functionSpec:(id)a6;
@end

@implementation TSCEFunction_TTEST

+ (id)subtractVectors:(id)a3 sampleSet2:(id)a4 context:(id)a5 functionSpec:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  memset(v119, 0, 24);
  v16 = objc_msgSend_count(v9, v12, v13, v14, v15);
  v113[0] = v11;
  v113[1] = a6;
  v114 = 0;
  v115[0] = 0;
  *(v115 + 7) = 0;
  v116 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v117 = 0;
  v118 = 0;
  v17 = v113[0];
  v107[0] = v17;
  v107[1] = a6;
  v108 = 0;
  v109[0] = 1;
  *(v109 + 7) = 0;
  v110 = v116;
  v111 = 0;
  v112 = 0;
  v22 = objc_msgSend_dimensions(v9, v18, v19, v20, v21);
  v27 = objc_msgSend_dimensions(v10, v23, v24, v25, v26);
  v100 = a6;
  v101 = v9;
  v102 = v10;
  v32 = HIDWORD(v27);
  if ((HIDWORD(v22) == 1 || v22 == 1) && (v32 == 1 || v27 == 1))
  {
    v40 = objc_msgSend_count(v9, v28, v29, v30, v31);
    if (v40 == objc_msgSend_count(v10, v41, v42, v43, v44))
    {
      goto LABEL_11;
    }

    v46 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "+[TSCEFunction_TTEST subtractVectors:sampleSet2:context:functionSpec:]", v45, v31);
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStatisticalFunctions.mm", v48, v49);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v50, v34, v38, 6118, 0, "Vectors have different number of data points");
    goto LABEL_10;
  }

  if (HIDWORD(v22) != v32 || v22 != v27)
  {
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "+[TSCEFunction_TTEST subtractVectors:sampleSet2:context:functionSpec:]", v30, v31);
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStatisticalFunctions.mm", v36, v37);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v39, v34, v38, 6122, 0, "Vectors have mismatched dimensions.");
LABEL_10:

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53, v54);
  }

LABEL_11:
  v55 = 0;
  if (v16)
  {
    v56 = 0;
    v57 = v101;
    v58 = v102;
    v59 = v100;
    while (1)
    {
      v60 = objc_msgSend_valueAtIndex_accessContext_(v57, v28, v56, v113, v31);
      v63 = objc_msgSend_valueAtIndex_accessContext_(v58, v61, v56, v107, v62);
      v106 = objc_msgSend_nilValue(TSCENilValue, v64, v65, v66, v67);
      v71 = objc_msgSend_deepType_(v60, v68, v17, v69, v70);
      if (v71 == objc_msgSend_deepType_(v63, v72, v17, v73, v74))
      {
        if (v71 == 3)
        {
          v88 = objc_msgSend_computeSubtraction_functionSpec_left_leftArgumentIndex_right_rightArgumentIndex_(TSCEFunction_op_Subtract, v75, v17, v59, v60, 0, v63, 1);
LABEL_19:
          v89 = v106;
          v106 = v88;

          goto LABEL_20;
        }

        if (v71 == 5)
        {
          v105 = v55;
          v76 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v60, v75, v17, v59, 0, &v105);
          v77 = v105;

          v104 = v77;
          objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v63, v78, v17, v59, 1, &v104);
          v80 = v79 = v59;
          v81 = v104;

          v103 = v81;
          v83 = objc_msgSend_subtract_functionSpec_outError_(v76, v82, v80, v79, &v103);
          v55 = v103;

          v84 = v106;
          v106 = v83;

          if (!v55)
          {
            v57 = v101;
            v58 = v102;
            v59 = v100;
            goto LABEL_20;
          }

          v57 = v101;
          v58 = v102;
          v88 = objc_msgSend_errorValue_(TSCEErrorValue, v85, v55, v86, v87);
          v59 = v100;
          goto LABEL_19;
        }
      }

LABEL_20:
      sub_221179A54(v119, &v106);

      if (v16 == ++v56)
      {
        goto LABEL_24;
      }
    }
  }

  v57 = v101;
  v58 = v102;
LABEL_24:
  v90 = [TSCEDenseGrid alloc];
  v94 = objc_msgSend_initWithValues_(v90, v91, v119, v92, v93);
  v98 = objc_msgSend_gridValue_(TSCEGridValue, v95, v94, v96, v97);

  v113[0] = v119;
  sub_22107C2C0(v113);

  return v98;
}

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v9 = **a5;
  v290[0] = 0;
  v260 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v9, a2, a3, a4, 0, 1, v290);
  v10 = v290[0];
  if (v10)
  {
    v14 = v10;
    v15 = objc_msgSend_raiseErrorOrConvert_(a3, v11, v10, v12, v13);
    goto LABEL_9;
  }

  v16 = *(*a5 + 8);
  v289 = 0;
  v17 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v16, v11, a3, a4, 1, 1, &v289);
  v14 = v289;
  if (v14)
  {
    v21 = objc_msgSend_raiseErrorOrConvert_(a3, v18, v14, v19, v20);
LABEL_7:
    v15 = v21;
    goto LABEL_8;
  }

  v22 = *(*a5 + 16);
  v288 = 0;
  v23 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v22, v18, a3, a4, 2, &v288);
  v14 = v288;
  objc_msgSend_doubleRepresentation(v23, v24, v25, v26, v27);
  v29 = v28;

  if (v14)
  {
    v21 = objc_msgSend_raiseErrorOrConvert_(a3, v30, v14, v32, v33);
    goto LABEL_7;
  }

  if (v29 != 1.0 && v29 != 2.0)
  {
    v259 = objc_msgSend_functionName(a4, v30, v31, v32, v33);
    v55 = objc_msgSend_invalidTailErrorForFunctionName_argumentNumber_(TSCEError, v53, v259, 3, v54);
    v15 = objc_msgSend_raiseErrorOrConvert_(a3, v56, v55, v57, v58);

    v14 = 0;
    goto LABEL_73;
  }

  v36 = *(*a5 + 24);
  v287 = 0;
  v37 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v36, v30, a3, a4, 3, &v287);
  v14 = v287;
  v42 = objc_msgSend_trunc(v37, v38, v39, v40, v41);
  objc_msgSend_doubleRepresentation(v42, v43, v44, v45, v46);
  v48 = v47;

  if (v14)
  {
    v21 = objc_msgSend_raiseErrorOrConvert_(a3, v49, v14, v51, v52);
    goto LABEL_7;
  }

  v258 = v17;
  v259 = objc_msgSend_zero(TSCENumberValue, v49, v50, v51, v52);
  v63 = objc_msgSend_count(v260, v59, v60, v61, v62);
  v68 = a3;
  v281[0] = v68;
  v281[1] = a4;
  v282 = 0;
  v283[0] = 0;
  *(v283 + 7) = 0;
  v284 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v285 = 0;
  v286 = 0;
  v69 = 0;
  if (v63)
  {
    for (i = 0; v63 != i; ++i)
    {
      v71 = objc_msgSend_valueAtIndex_accessContext_(v260, v64, i, v281, v67);
      if ((objc_msgSend_isNil(v71, v72, v73, v74, v75) & 1) == 0 && objc_msgSend_deepType_(v71, v76, v68, v77, v78) == 5)
      {
        v280 = 0;
        v80 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v71, v79, v68, a4, 0, &v280);
        v14 = v280;
        if (v14)
        {
          v15 = objc_msgSend_raiseErrorOrConvert_(v68, v81, v14, v82, v83);
          v17 = v258;
          goto LABEL_61;
        }

        if (v69)
        {
          if ((objc_msgSend_dimensionsMatchModuloCurrency_(v259, v81, v80, v82, v83) & 1) == 0)
          {
            v189 = objc_msgSend_functionName(a4, v84, v85, v86, v87);
            v17 = v258;
            v193 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v190, v189, v191, v192);
            v15 = objc_msgSend_raiseErrorOrConvert_(v68, v194, v193, v195, v196);

LABEL_61:
            goto LABEL_72;
          }
        }

        else
        {
          v88 = v80;

          v259 = v88;
        }

        v69 = 1;
      }
    }
  }

  v89 = objc_msgSend_count(v258, v64, v65, v66, v67);
  v94 = v68;
  v274[0] = v94;
  v274[1] = a4;
  v275 = 0;
  v276[0] = 1;
  *(v276 + 7) = 0;
  v277 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v278 = 0;
  v279 = 0;
  if (!v89)
  {
LABEL_41:
    if (v48 == 1)
    {
      v17 = v258;
      v115 = objc_msgSend_dimensions(v260, v90, v91, v92, v93);
      v120 = objc_msgSend_dimensions(v258, v116, v117, v118, v119);
      v125 = HIDWORD(v120);
      if ((HIDWORD(v115) == 1 || v115 == 1) && (v125 == 1 || v120 == 1))
      {
        if (v63 != v89)
        {
          v217 = v94;
          v127 = objc_msgSend_functionName(a4, v121, v122, v123, v124);
          v131 = objc_msgSend_differentNumberOfDataPointsErrorForFunctionName_(TSCEError, v218, v127, v219, v220);
          v135 = objc_msgSend_raiseErrorOrConvert_(v217, v221, v131, v222, v223);
          goto LABEL_68;
        }
      }

      else if (HIDWORD(v115) != v125 || v115 != v120)
      {
        v126 = v94;
        v127 = objc_msgSend_functionName(a4, v121, v122, v123, v124);
        v131 = objc_msgSend_rangeSizeMismatchErrorForFunctionName_(TSCEError, v128, v127, v129, v130);
        v135 = objc_msgSend_raiseErrorOrConvert_(v126, v132, v131, v133, v134);
LABEL_68:
        v15 = v135;

        goto LABEL_69;
      }

      v141 = objc_msgSend_subtractVectors_sampleSet2_context_functionSpec_(a1, v121, v260, v258, v94, a4);
      v136 = v94;
      v162 = objc_msgSend_nilValue(TSCENilValue, v158, v159, v160, v161);
      v262[0] = 0;
      v271 = 0;
      v272 = v162;
      v163 = sub_22121C524(v94, a4, 0, v141, 0, 0, 0, &v272, v262, &v271);
      v165 = v164;
      v153 = v272;

      v14 = v271;
      v261._decimal.w[0] = v163;
      v261._decimal.w[1] = v165;
      TSUDecimal::doubleValue(&v261);
      if (!v14)
      {
        v167 = v166;
        if (objc_msgSend_deepType_(v153, v154, v136, v155, v156) != 5)
        {
          v171 = MEMORY[0x277D81150];
          v172 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v168, "+[TSCEFunction_TTEST evaluateForArgsWithContext:functionSpec:arguments:]", v169, v170);
          v176 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v173, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStatisticalFunctions.mm", v174, v175);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v171, v177, v172, v176, 6272, 0, "We probably have a date returned as the variance of these inputs. We should have raised an error earlier in the subtraction code.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v178, v179, v180, v181);
        }

        v270 = 0;
        v182 = sub_2212560F4(v136, a4, v153, 0, &v270);
        v184 = v183;
        v14 = v270;
        v261._decimal.w[0] = v182;
        v261._decimal.w[1] = v184;
        TSUDecimal::doubleValue(&v261);
        if (v14)
        {
          v17 = v258;
          v15 = objc_msgSend_raiseErrorOrConvert_(v136, v185, v14, v186, v187);
LABEL_64:

          goto LABEL_65;
        }

        v224 = v188;
        v225 = v262[0];
        pthread_mutex_lock(&stru_27CFB4098);
        v226 = fabs(v224 / sqrt(v167 / v225));
        sub_221250360(v225 - 1, -v226);
        pthread_mutex_unlock(&stru_27CFB4098);

LABEL_81:
        v17 = v258;
        if (v226 < INFINITY || v226 > INFINITY)
        {
          TSUDecimal::operator=();
          TSCEFormat::TSCEFormat(&v261, 256);
          v15 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v251, v262, &v261, v252);
          goto LABEL_70;
        }

        v127 = objc_msgSend_divideByZeroError(TSCEError, v227, v228, v229, v230);
        v15 = objc_msgSend_raiseErrorOrConvert_(v136, v253, v127, v254, v255);
LABEL_69:

LABEL_70:
        v14 = 0;
        goto LABEL_71;
      }
    }

    else
    {
      v257 = v48;
      v136 = v94;
      v17 = v258;
      v137 = objc_msgSend_nilValue(TSCENilValue, v90, v91, v92, v93);
      v262[0] = 0;
      v268 = 0;
      v269 = v137;
      v138 = sub_22121C524(v94, a4, 0, v260, 0, 0, 0, &v269, v262, &v268);
      v140 = v139;
      v141 = v269;

      v14 = v268;
      v261._decimal.w[0] = v138;
      v261._decimal.w[1] = v140;
      TSUDecimal::doubleValue(&v261);
      if (v14)
      {
        v15 = objc_msgSend_raiseErrorOrConvert_(v136, v142, v14, v144, v145);
LABEL_65:

        goto LABEL_71;
      }

      v147 = v146;
      v148 = v262[0];
      v149 = objc_msgSend_nilValue(TSCENilValue, v142, v143, v144, v145);
      v267 = 0;
      v265 = 0;
      v266 = v149;
      v150 = sub_22121C524(v136, a4, 1u, v258, 0, 0, 0, &v266, &v267, &v265);
      v152 = v151;
      v153 = v266;

      v14 = v265;
      v261._decimal.w[0] = v150;
      v261._decimal.w[1] = v152;
      TSUDecimal::doubleValue(&v261);
      if (!v14)
      {
        v197 = v157;
        v198 = v267;
        v264 = 0;
        v199 = sub_2212560F4(v136, a4, v141, 0, &v264);
        v201 = v200;
        v202 = v264;
        v261._decimal.w[0] = v199;
        v261._decimal.w[1] = v201;
        TSUDecimal::doubleValue(&v261);
        v204 = v203;
        v263 = v202;
        v205 = sub_2212560F4(v136, a4, v153, 1, &v263);
        v207 = v206;
        v14 = v263;

        v261._decimal.w[0] = v205;
        v261._decimal.w[1] = v207;
        TSUDecimal::doubleValue(&v261);
        if (!v14)
        {
          v256 = v208;
          if (v257 == 3)
          {
            v235 = v262[0];
            v236 = v267;
            pthread_mutex_lock(&stru_27CFB4098);
            v237 = v147 / v148;
            v238 = v197 / v198;
            v234 = (v204 - v256) / sqrt(v237 + v238);
            v239 = (v237 + v238) * (v237 + v238) / (v237 * v237 / (v235 - 1) + v238 * v238 / (v236 - 1));
            sub_2212F4E64(v239 * 0.5, 0.5, v239 / (v239 + v234 * v234));
            pthread_mutex_unlock(&stru_27CFB4098);
          }

          else if (v257 == 2)
          {
            v231 = v262[0];
            v232 = v267;
            pthread_mutex_lock(&stru_27CFB4098);
            v233 = v231 + v232 - 2;
            v234 = (v204 - v256) / sqrt((1.0 / v231 + 1.0 / v232) * ((v197 * (v232 - 1) + (v231 - 1) * v147) / v233));
            sub_221250360(v233, -fabs(v234));
            pthread_mutex_unlock(&stru_27CFB4098);
          }

          else
          {
            v240 = MEMORY[0x277D81150];
            v241 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v154, "+[TSCEFunction_TTEST evaluateForArgsWithContext:functionSpec:arguments:]", v155, v156);
            v245 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v242, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStatisticalFunctions.mm", v243, v244);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v240, v246, v241, v245, 6332, 0, "Undefined t-test type passed to TTEST. Please file a bug.");

            v234 = 0.0;
            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v247, v248, v249, v250);
          }

          v226 = fabs(v234);
          goto LABEL_81;
        }
      }
    }

    v15 = objc_msgSend_raiseErrorOrConvert_(v136, v154, v14, v155, v156);
    v17 = v258;
    goto LABEL_64;
  }

  v95 = 0;
  while (1)
  {
    v96 = objc_msgSend_valueAtIndex_accessContext_(v258, v90, v95, v274, v93);
    if ((objc_msgSend_isNil(v96, v97, v98, v99, v100) & 1) != 0 || objc_msgSend_deepType_(v96, v101, v94, v102, v103) != 5)
    {
      goto LABEL_40;
    }

    v273 = 0;
    v105 = v94;
    v106 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v96, v104, v94, a4, 1, &v273);
    v14 = v273;
    if (v14)
    {
      break;
    }

    if (v69)
    {
      if ((objc_msgSend_dimensionsMatchModuloCurrency_(v259, v107, v106, v108, v109) & 1) == 0)
      {
        v209 = objc_msgSend_functionName(a4, v110, v111, v112, v113);
        v17 = v258;
        v213 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v210, v209, v211, v212);
        v15 = objc_msgSend_raiseErrorOrConvert_(v105, v214, v213, v215, v216);

        goto LABEL_66;
      }
    }

    else
    {
      v114 = v106;

      v259 = v114;
    }

    v94 = v105;
LABEL_40:

    if (v89 == ++v95)
    {
      goto LABEL_41;
    }
  }

  v15 = objc_msgSend_raiseErrorOrConvert_(v105, v107, v14, v108, v109);
  v17 = v258;
LABEL_66:

LABEL_71:
LABEL_72:

LABEL_73:
LABEL_8:

LABEL_9:

  return v15;
}

@end
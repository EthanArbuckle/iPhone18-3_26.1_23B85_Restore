@interface TSCEFunctionNode
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
+ (id)evaluateWithArrayModeFanout:(id)fanout numArgs:(unint64_t)args;
+ (id)functionName;
+ (id)functionSpec;
+ (id)vectorCriterionPairsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments dimensions:(TSCEGridDimensions)dimensions skipFirst:(BOOL)first skipLast:(BOOL)last outError:(id *)error;
+ (unsigned)functionIndex;
+ (void)collectAndApplyWarnings:(id)warnings functionSpec:(id)spec arguments:(const void *)arguments result:(id)result;
@end

@implementation TSCEFunctionNode

+ (unsigned)functionIndex
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSCEFunctionNode functionIndex]", v2, v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFunctionNode.mm", v7, v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v10, v5, v9, 25, 0, "Derived classes MUST implement.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13, v14);
  return 0;
}

+ (id)functionSpec
{
  v6 = objc_msgSend_functionIndex(self, a2, v2, v3, v4);

  return objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v5, v6, v7, v8);
}

+ (id)functionName
{
  v5 = objc_msgSend_functionSpec(self, a2, v2, v3, v4);
  v10 = objc_msgSend_functionName(v5, v6, v7, v8, v9);

  return v10;
}

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSCEFunctionNode evaluateForArgsWithContext:functionSpec:arguments:]", spec, arguments);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFunctionNode.mm", v8, v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 41, 0, "Should always be overridden for new evaluation");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14, v15);

  return objc_msgSend_nilValue(TSCENilValue, v16, v17, v18, v19);
}

+ (id)evaluateWithArrayModeFanout:(id)fanout numArgs:(unint64_t)args
{
  v8 = objc_msgSend_functionSpec(self, a2, fanout, args, v4);
  v13 = objc_msgSend_nilValue(TSCENilValue, v9, v10, v11, v12);
  fanoutCopy = fanout;
  if (!objc_msgSend_inArrayMode(fanout, v14, v15, v16, v17) || (objc_msgSend_disallowArrayModeFanout(v8, v18, v19, v20, v21) & 1) != 0)
  {
    v263 = 0;
    v264 = 0;
    v265 = 0;
    v25 = objc_msgSend_loadArgumentsForFunction_arguments_numArgs_(fanout, v18, v8, &v263, args);
    if (v25 || (TSCEEvaluationStack::typeCheckArgumentsForFunction(fanout, v8, &v263), (v25 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v26 = objc_msgSend_errorValue_(TSCEErrorValue, v22, v25, v23, v24);
    }

    else
    {
      v26 = objc_msgSend_evaluateForArgsWithContext_functionSpec_arguments_(self, v22, fanout, v8, &v263);
    }

    v27 = v26;

    objc_msgSend_collectAndApplyWarnings_functionSpec_arguments_result_(self, v28, fanout, v8, &v263, v27);
    v284 = &v263;
    sub_22107C2C0(&v284);
    if (!v27)
    {
      goto LABEL_152;
    }

    goto LABEL_153;
  }

  v284 = 0;
  v285 = 0;
  v286 = 0;
  v25 = objc_msgSend_loadArgumentsForFunction_arguments_numArgs_(fanout, v18, v8, &v284, args);
  if (v25)
  {
    v36 = objc_msgSend_errorValue_(TSCEErrorValue, v32, v25, v34, v35);

    v37 = v36;
    objc_msgSend_collectAndApplyWarnings_functionSpec_arguments_result_(self, v38, fanoutCopy, v8, &v284, v36);
    goto LABEL_151;
  }

  v281 = 0;
  v282 = 0;
  v283 = 0;
  memset(v280, 0, sizeof(v280));
  v279 = 0x100000001;
  v253 = v13;
  selfCopy = self;
  v43 = objc_msgSend_functionIndex(v8, v32, v33, v34, v35) == 336;
  v255 = v284;
  v256 = v285;
  v44 = (v285 - v284) >> 3;
  v45 = 0;
  if (v285 != v284)
  {
    v46 = 0;
    if (v44 <= 1)
    {
      v47 = 1;
    }

    else
    {
      v47 = (v285 - v284) >> 3;
    }

    do
    {
      v48 = v284[v46];
      v53 = objc_msgSend_nativeType(v48, v49, v50, v51, v52);
      v56 = objc_msgSend_argumentSpecForIndex_numArgs_(v8, v54, v46, v44, v55);
      v65 = objc_msgSend_disallowArrayModeFanout(v56, v57, v58, v59, v60);
      if (v53 > 0xCu)
      {
        if (v53 == 13)
        {
          if (!v43)
          {
            goto LABEL_64;
          }

          v81 = objc_msgSend_functionIndex(v8, v61, v62, v63, v64);
          v43 = 1;
          if (v81 > 312)
          {
            if (v81 == 336)
            {
              goto LABEL_50;
            }

            if (v81 == 313)
            {
              v85 = 0;
              while (((*&v281[(v85 >> 3) & 0x1FFFFFFFFFFFFFF8] >> (v85 & 0x3E)) & 1) == 0)
              {
                v85 += 2;
                if (v85 >= v44)
                {
                  goto LABEL_64;
                }
              }

              if (v282)
              {
LABEL_50:
                v86 = objc_msgSend_unwrapThunk_(fanoutCopy, v82, v48, v83, v84);
                v95 = objc_msgSend_nativeType(v86, v87, v88, v89, v90);
                if (v95 == 6)
                {
                  v96 = objc_msgSend_rangeContext(v56, v91, v92, v93, v94);
                  v277 = v45;
                  v98 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v86, v97, fanoutCopy, v8, v46, &v277);
                  v260 = v277;

                  objc_msgSend_setRangeContextOverride_(v98, v99, v96, v100, v101);
                  v104 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v98, v102, fanoutCopy, 0, v103);

                  v95 = objc_msgSend_nativeType(v104, v105, v106, v107, v108);
                  v86 = v104;
                  v45 = v260;
                }

                if (v95 == 16 || v95 == 1)
                {

                  v276 = 0;
                  v110 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v86, v109, fanoutCopy, v8, v46, 0, &v276);
                  v45 = v276;
                  v263 = v110;
                  sub_22121488C(v280, &v263);
                  v115 = objc_msgSend_dimensions(v263, v111, v112, v113, v114);
                  if ((v65 & 1) != 0 || v45 || ((HIDWORD(v115) * v115) & 0xFFFFFFFE) == 0)
                  {
                    LOBYTE(v272[0]) = 0;
                    sub_2213F4AD0(&v281, v272);
                  }

                  else
                  {
                    if (v279.width <= v115)
                    {
                      width = v115;
                    }

                    else
                    {
                      width = v279.width;
                    }

                    if (v279.height <= HIDWORD(v115))
                    {
                      height = HIDWORD(v115);
                    }

                    else
                    {
                      height = v279.height;
                    }

                    v279 = (width | (height << 32));
                    LOBYTE(v272[0]) = 1;
                    sub_2213F4AD0(&v281, v272);
                  }

                  v126 = v263;
                }

                else
                {
                  LOBYTE(v263) = 0;
                  sub_2213F4AD0(&v281, &v263);
                  v275 = objc_msgSend_emptyGrid(TSCEGridValue, v122, v123, v124, v125);
                  sub_2212D01C8(v280, &v275);
                  v126 = v275;
                }

                v43 = 1;
                goto LABEL_67;
              }

LABEL_64:
              v43 = 0;
            }
          }

          else if (v81 == 19 || v81 == 62)
          {
            if (v282 && (*v281 & 1) != 0)
            {
              goto LABEL_50;
            }

            goto LABEL_64;
          }

          LOBYTE(v263) = 0;
          sub_2213F4AD0(&v281, &v263);
          v274 = objc_msgSend_emptyGrid(TSCEGridValue, v118, v119, v120, v121);
          sub_2212D01C8(v280, &v274);
          v80 = v274;
          goto LABEL_66;
        }

        if (v53 == 16)
        {
          goto LABEL_21;
        }
      }

      else if (v53 == 1 || v53 == 6)
      {
LABEL_21:

        v278 = 0;
        v68 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v48, v67, fanoutCopy, v8, v46, 0, &v278);
        v45 = v278;
        v263 = v68;
        sub_22121488C(v280, &v263);
        v73 = objc_msgSend_dimensions(v263, v69, v70, v71, v72);
        if ((v65 & 1) != 0 || v45 || ((HIDWORD(v73) * v73) & 0xFFFFFFFE) == 0)
        {
          LOBYTE(v272[0]) = 0;
          sub_2213F4AD0(&v281, v272);
        }

        else
        {
          if (v279.width <= v73)
          {
            v74 = v73;
          }

          else
          {
            v74 = v279.width;
          }

          if (v279.height <= HIDWORD(v73))
          {
            v75 = HIDWORD(v73);
          }

          else
          {
            v75 = v279.height;
          }

          v279 = (v74 | (v75 << 32));
          LOBYTE(v272[0]) = 1;
          sub_2213F4AD0(&v281, v272);
          v43 = 1;
        }

        v80 = v263;
        goto LABEL_66;
      }

      LOBYTE(v263) = 0;
      sub_2213F4AD0(&v281, &v263);
      v273 = objc_msgSend_emptyGrid(TSCEGridValue, v76, v77, v78, v79);
      sub_2212D01C8(v280, &v273);
      v80 = v273;
LABEL_66:

LABEL_67:
      ++v46;
    }

    while (v46 != v47);
  }

  if (!v43)
  {
    goto LABEL_84;
  }

  v127 = objc_msgSend_functionIndex(v8, v39, v40, v41, v42);
  if (v127 != 19 && v127 != 62)
  {
    if (v127 != 313)
    {
      goto LABEL_89;
    }

    if (v256 != v255)
    {
      v128 = 0;
      while (((*&v281[(v128 >> 3) & 0x1FFFFFFFFFFFFFF8] >> (v128 & 0x3E)) & 1) == 0)
      {
        v128 += 2;
        if (v128 >= v44)
        {
          goto LABEL_84;
        }
      }

      if (v282)
      {
        goto LABEL_89;
      }
    }

LABEL_84:
    v25 = TSCEEvaluationStack::typeCheckArgumentsForFunction(fanoutCopy, v8, &v284);

    if (v25)
    {
      objc_msgSend_errorValue_(TSCEErrorValue, v129, v25, v130, v131);
    }

    else
    {
      objc_msgSend_evaluateForArgsWithContext_functionSpec_arguments_(selfCopy, v129, fanoutCopy, v8, &v284);
    }
    v132 = ;

    v37 = v132;
    objc_msgSend_collectAndApplyWarnings_functionSpec_arguments_result_(selfCopy, v133, fanoutCopy, v8, &v284, v132);
    goto LABEL_145;
  }

  if (!v282 || (*v281 & 1) == 0)
  {
    goto LABEL_84;
  }

LABEL_89:
  memset(v272, 0, sizeof(v272));
  sub_2213F5020(v272, v284, v285, (v285 - v284) >> 3);
  v271 = 0;
  v254 = objc_opt_new();
  if (v44 <= 1)
  {
    v142 = 1;
  }

  else
  {
    v142 = v44;
  }

  v261 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v259 = v45;
  do
  {
    if (v256 == v255)
    {
      goto LABEL_133;
    }

    v143 = 0;
    v258 = 0;
    do
    {
      if (((*&v281[(v143 >> 3) & 0x1FFFFFFFFFFFFFF8] >> v143) & 1) == 0)
      {
        goto LABEL_128;
      }

      v144 = *(v280[0] + 8 * v143);
      v149 = objc_msgSend_dimensions(v144, v145, v146, v147, v148);
      if (v149 == 1)
      {
        v154 = 0;
      }

      else
      {
        v154 = 0x7FFFFFFFLL;
      }

      if (v149 == 1)
      {
        row = v271.row;
      }

      else
      {
        row = 0x7FFFFFFFLL;
      }

      v156 = objc_msgSend_dimensions(v144, v150, v151, v152, v153);
      if ((v156 & 0xFFFFFFFF00000000) == 0x100000000)
      {
        column = v271.column;
      }

      else
      {
        column = 0x7FFFFFFFLL;
      }

      if ((v156 & 0xFFFFFFFF00000000) == 0x100000000)
      {
        v158 = 0;
      }

      else
      {
        v158 = 0x7FFFFFFFLL;
      }

      v263 = fanoutCopy;
      v264 = v8;
      v265 = 0;
      v266 = v143;
      v267[0] = 0;
      *(v267 + 3) = 0;
      v268 = v261;
      v269 = 0;
      v270 = 0;
      v163 = objc_msgSend_dimensions(v144, v159, v160, v161, v162);
      if (v271.row < HIDWORD(v163) && v271.column < v163)
      {
        v195 = objc_msgSend_valueAtGridCoord_accessContext_(v144, v164, *&v271, &v263, v167);
        goto LABEL_125;
      }

      v169 = objc_msgSend_dimensions(v144, v164, v165, v166, v167);
      if (row < HIDWORD(v169) && v154 < v169)
      {
        v195 = objc_msgSend_valueAtGridCoord_accessContext_(v144, v170, v154 | (row << 32), &v263, v173);
        goto LABEL_125;
      }

      v175 = objc_msgSend_dimensions(v144, v170, v171, v172, v173);
      if (v158 < HIDWORD(v175) && column < v175)
      {
        v195 = objc_msgSend_valueAtGridCoord_accessContext_(v144, v176, column | (v158 << 32), &v263, v178);
LABEL_125:
        v189 = *(v272[0] + 8 * v143);
        *(v272[0] + 8 * v143) = v195;
LABEL_126:

        v196 = 1;
        goto LABEL_127;
      }

      v180 = objc_msgSend_argumentSpecForIndex_(v8, v176, v143, v177, v178);
      if (objc_msgSend_allowError(v180, v181, v182, v183, v184))
      {
        v189 = objc_msgSend_invalidFanoutExceedingInputSize(TSCEError, v185, v186, v187, v188);
        v193 = objc_msgSend_errorValue_(TSCEErrorValue, v190, v189, v191, v192);
        v194 = *(v272[0] + 8 * v143);
        *(v272[0] + 8 * v143) = v193;

        goto LABEL_126;
      }

      v196 = 0;
      v258 = 1;
LABEL_127:

      if ((v196 & 1) == 0)
      {
        break;
      }

LABEL_128:
      ++v143;
    }

    while (v142 != v143);
    if (v258)
    {
      v197 = objc_msgSend_invalidFanoutExceedingInputSize(TSCEError, v138, v139, v140, v141);

      v201 = objc_msgSend_errorValue_(TSCEErrorValue, v198, v197, v199, v200);
      objc_msgSend_setValue_atCoord_(v254, v202, v201, &v271, v203);
      goto LABEL_139;
    }

LABEL_133:
    v197 = TSCEEvaluationStack::typeCheckArgumentsForFunction(fanoutCopy, v8, v272);

    if (v197)
    {
      objc_msgSend_raiseErrorOrConvert_(fanoutCopy, v204, v197, v205, v206);
    }

    else
    {
      objc_msgSend_evaluateForArgsWithContext_functionSpec_arguments_(selfCopy, v204, fanoutCopy, v8, v272);
    }
    v201 = ;
    if (objc_msgSend_isThunk(v201, v207, v208, v209, v210))
    {
      v214 = objc_msgSend_unwrapThunk_(fanoutCopy, v211, v201, v212, v213);

      v201 = v214;
    }

    objc_msgSend_collectAndApplyWarnings_functionSpec_arguments_result_(selfCopy, v211, fanoutCopy, v8, v272, v201);
    objc_msgSend_setValue_atCoord_(v254, v215, v201, &v271, v216);
LABEL_139:
    v259 = v197;

    v217 = TSCEGridDimensions::nextCoordRowMajorOrder(&v279, &v271);
    v271 = v217;
  }

  while (v217 != 0x7FFFFFFF && (v217 & 0xFFFFFFFF00000000) != 0x7FFFFFFF00000000);
  v25 = v197;
  if (objc_msgSend_excelCompat_1x1_Truncation(v8, v138, v139, v140, v141))
  {
    objc_msgSend_firstValue(v254, v218, v219, v220, v221);
  }

  else
  {
    objc_msgSend_valueGridValue_(TSCEValueGridValue, v218, v254, v220, v221);
  }
  v37 = ;

  v263 = v272;
  sub_22107C2C0(&v263);
LABEL_145:
  if (objc_msgSend_isValueGridValue(v37, v134, v135, v136, v137))
  {
    v226 = objc_msgSend_asValueGridValue(v37, v222, v223, v224, v225);
    v231 = objc_msgSend_valueGrid(v226, v227, v228, v229, v230);

    if (objc_msgSend_area(v231, v232, v233, v234, v235) == 1)
    {
      v240 = objc_msgSend_firstValue(v231, v236, v237, v238, v239);

      v37 = v240;
    }
  }

  v263 = v280;
  sub_22107C2C0(&v263);
  if (v281)
  {
    operator delete(v281);
  }

LABEL_151:
  v263 = &v284;
  sub_22107C2C0(&v263);
  v27 = v37;
  if (!v37)
  {
LABEL_152:
    v241 = MEMORY[0x277D81150];
    v242 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "+[TSCEFunctionNode evaluateWithArrayModeFanout:numArgs:]", v30, v31);
    v246 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v243, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFunctionNode.mm", v244, v245);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v241, v247, v242, v246, 341, 0, "Should have always created a non-nil result of some sort in evaluateWithArrayModeFanout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v248, v249, v250, v251);
  }

LABEL_153:

  return v27;
}

+ (void)collectAndApplyWarnings:(id)warnings functionSpec:(id)spec arguments:(const void *)arguments result:(id)result
{
  warningsCopy = warnings;
  resultCopy = result;
  v13 = *arguments;
  v14 = *(arguments + 1);
  while (v13 != v14)
  {
    v15 = *v13;
    v20 = objc_msgSend_warnings(v15, v16, v17, v18, v19);
    objc_msgSend_attachWarnings_(resultCopy, v21, v20, v22, v23);

    ++v13;
  }

  v24 = objc_msgSend_localWarnings(warningsCopy, v8, v9, v10, v11);
  if (objc_msgSend_count(v24, v25, v26, v27, v28))
  {
    objc_msgSend_attachWarnings_(resultCopy, v29, v24, v30, v31);
    objc_msgSend_clearLocalWarnings(warningsCopy, v32, v33, v34, v35);
  }
}

+ (id)vectorCriterionPairsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments dimensions:(TSCEGridDimensions)dimensions skipFirst:(BOOL)first skipLast:(BOOL)last outError:(id *)error
{
  lastCopy = last;
  firstCopy = first;
  contextCopy = context;
  v85 = objc_msgSend_array(MEMORY[0x277CBEB18], v13, v14, v15, v16);
  v21 = ((*(arguments + 1) - *arguments) >> 3) - lastCopy;
  v22 = (v21 & 0x80000001) != 1;
  if (!firstCopy)
  {
    v22 = ((*(arguments + 1) - *arguments) >> 3) - lastCopy;
  }

  if (v22)
  {
    v23 = objc_msgSend_functionName(spec, v17, v18, v19, v20);
    *error = objc_msgSend_invalidArgumentPairingsErrorForFunctionName_hasInitialUnrelatedArgument_(TSCEError, v24, v23, firstCopy, v25);
    goto LABEL_29;
  }

  if (v21 <= firstCopy)
  {
LABEL_20:
    v75 = objc_msgSend_count(v85, v17, v18, v19, v20, specCopy);
    v76 = v85;
    if (!v75)
    {
      v76 = 0;
    }

    v77 = v76;
    goto LABEL_30;
  }

  v26 = firstCopy;
  specCopy = spec;
  while (1)
  {
    v23 = *(*arguments + 8 * v26);
    if (objc_msgSend_isTokenOrEmptyArg(v23, v27, v28, v29, v30))
    {
      goto LABEL_19;
    }

    v32 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v23, v31, contextCopy, spec, v26, 1, error);
    v37 = v32;
    if (*error)
    {
      goto LABEL_28;
    }

    if (objc_msgSend_gridKind(v32, v33, v34, v35, v36) == 2)
    {
      break;
    }

LABEL_16:
    if (objc_msgSend_dimensions(v37, v38, v39, v40, v41, specCopy) != dimensions)
    {
      v46 = objc_msgSend_functionName(spec, v57, v58, v59, v60);
      v81 = objc_msgSend_rangeSizeMismatchErrorForFunctionName_(TSCEError, v78, v46, v79, v80);
      goto LABEL_26;
    }

    v46 = *(*arguments + 8 * v26 + 8);
    v62 = objc_msgSend_logicalTestWithCriterion_evaluationContext_functionSpec_outError_(TSCELogicalTest, v61, v46, contextCopy, spec, error);
    v63 = v62;
    if (*error)
    {

      goto LABEL_27;
    }

    v64 = [TSCEValueContainer alloc];
    v68 = objc_msgSend_initWithValue_(v64, v65, v37, v66, v67);
    v71 = objc_msgSend_pairWithFirst_second_(MEMORY[0x277D812A8], v69, v68, v63, v70);
    objc_msgSend_addObject_(v85, v72, v71, v73, v74);

    spec = specCopy;
LABEL_19:

    v26 += 2;
    if (v21 <= v26)
    {
      goto LABEL_20;
    }
  }

  v46 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v37, v38, contextCopy, spec, v26, error);
  if (*error)
  {
    goto LABEL_27;
  }

  v51 = objc_msgSend_calcEngine(contextCopy, v42, v43, v44, v45);
  if (v46)
  {
    objc_msgSend_rangeRef(v46, v47, v48, v49, v50);
  }

  else
  {
    memset(v87, 0, sizeof(v87));
  }

  IsWithinTable = objc_msgSend_rangeIsWithinTable_(v51, v47, v87, v49, v50, specCopy);

  if (IsWithinTable)
  {

    spec = specCopy;
    goto LABEL_16;
  }

  v81 = objc_msgSend_invalidReferenceError(TSCEError, v53, v54, v55, v56);
LABEL_26:
  *error = v81;
LABEL_27:

LABEL_28:
LABEL_29:

  v77 = 0;
LABEL_30:

  return v77;
}

@end
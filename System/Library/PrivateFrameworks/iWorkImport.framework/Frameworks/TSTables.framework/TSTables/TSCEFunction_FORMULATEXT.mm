@interface TSCEFunction_FORMULATEXT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_FORMULATEXT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v288.range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v288._tableUID._lower = 0;
  v288._tableUID._upper = 0;
  if (*(arguments + 1) != *arguments)
  {
    v7 = **arguments;
    if (objc_msgSend_isTokenOrEmptyArg(v7, v8, v9, v10, v11))
    {
      v13 = 0;
LABEL_4:

      goto LABEL_6;
    }

    v287 = 0;
    v13 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v7, v12, context, spec, 0, &v287);
    v42 = v287;
    if (v42)
    {
      v34 = objc_msgSend_raiseErrorOrConvert_(context, v38, v42, v40, v41);
    }

    else
    {
      if (!objc_msgSend_isNil(v13, v38, v39, v40, v41))
      {
        if (v13)
        {
          objc_msgSend_rangeRef(v13, v131, v132, v133, v134);
        }

        else
        {
          memset(v267, 0, 32);
        }

        v288 = *v267;
        if (TSCERangeRef::isSpanningAllRows(&v288))
        {
          if (v288.range._bottomRight.column == v288.range._topLeft.column)
          {
            v235 = *&v288.range._topLeft.column;
            v236 = *&v288.range._bottomRight.column;
            v288.range._topLeft.row = *objc_msgSend_containingCell(context, v231, v232, v233, v234);
            *&v288.range._topLeft.column = v235;
            v288.range._bottomRight.row = v288.range._topLeft.row;
            *&v288.range._bottomRight.column = v236;
          }
        }

        else if (TSCERangeRef::isSpanningAllColumns(&v288))
        {
          row = v288.range._topLeft.row;
          if (v288.range._bottomRight.row == v288.range._topLeft.row)
          {
            *v267 = *&v288.range._topLeft._preserveRow;
            *&v267[4] = HIWORD(v288.range._bottomRight.row);
            v242 = *&v288.range._bottomRight._preserveRow;
            v243 = *(objc_msgSend_containingCell(context, v237, v238, v239, v240) + 4);
            v288.range._topLeft.row = row;
            v288.range._topLeft.column = v243;
            *&v288.range._topLeft._preserveRow = *v267;
            HIWORD(v288.range._bottomRight.row) = *&v267[4];
            v288.range._bottomRight.column = v243;
            *&v288.range._bottomRight._preserveRow = v242;
          }
        }

        goto LABEL_4;
      }

      v135 = objc_msgSend_functionName(spec, v131, v132, v133, v134);
      v139 = objc_msgSend_notAReferenceErrorForFunctionName_(TSCEError, v136, v135, v137, v138);
      v34 = objc_msgSend_raiseErrorOrConvert_(context, v140, v139, v141, v142);
    }

    goto LABEL_73;
  }

  v13 = 0;
LABEL_6:
  v14 = objc_msgSend_calcEngine(context, a2, context, spec, arguments);
  IsValidIncludingSheet = objc_msgSend_referenceIsValidIncludingSheet_(v14, v15, &v288, v16, v17);

  if ((IsValidIncludingSheet & 1) == 0)
  {
    v27 = objc_msgSend_invalidReferenceError(TSCEError, v19, v20, v21, v22);
    v34 = objc_msgSend_raiseErrorOrConvert_(context, v35, v27, v36, v37);
    goto LABEL_10;
  }

  if (!TSCERangeRef::isSpanning(&v288))
  {
    *v267 = objc_msgSend_tableUID(v13, v23, v24, v25, v26);
    *&v267[8] = v43;
    objc_msgSend_sheetTableNamePrecedentForTableUID_(TSCEHauntedOwner, v43, v267, v44, v45);
    *v267 = 0;
    TSCERangeRef::TSCERangeRef(&v275, &v286);
    *&v267[8] = *&v275.var0;
    *&v267[24] = *&v275.var2.var0.var0.coordinate.row;
    v268 = 0;
    v272 = 0;
    v269 = 0;
    v270 = 0;
    v271 = 0;
    objc_msgSend_addCalculatedPrecedent_(context, v46, v267, v47, v48);

    *v267 = objc_msgSend_tableUID(v13, v49, v50, v51, v52);
    *&v267[8] = v53;
    objc_msgSend_formulaDefinitionPrecedentForTableUID_(TSCEHauntedOwner, v53, v267, v54, v55);
    *v267 = 0;
    TSCERangeRef::TSCERangeRef(&v275, &v285);
    *&v267[8] = *&v275.var0;
    *&v267[24] = *&v275.var2.var0.var0.coordinate.row;
    v268 = 0;
    v272 = 0;
    v269 = 0;
    v270 = 0;
    v271 = 0;
    objc_msgSend_addCalculatedPrecedent_(context, v56, v267, v57, v58);

    *v267 = objc_msgSend_tableUID(v13, v59, v60, v61, v62);
    *&v267[8] = v63;
    objc_msgSend_groupByChangedPrecedentForTableUID_(TSCEHauntedOwner, v63, v267, v64, v65);
    *v267 = 0;
    TSCERangeRef::TSCERangeRef(&v275, &v284);
    *&v267[8] = *&v275.var0;
    *&v267[24] = *&v275.var2.var0.var0.coordinate.row;
    v268 = 0;
    v272 = 0;
    v269 = 0;
    v270 = 0;
    v271 = 0;
    objc_msgSend_addCalculatedPrecedent_(context, v66, v267, v67, v68);

    upper = v288._tableUID._upper;
    lower = v288._tableUID._lower;
    bottomRight = v288.range._bottomRight;
    topLeft = v288.range._topLeft;
    v70 = TSUCellCoord::offsetBetween(&topLeft, &bottomRight, v69);
    v247 = HIDWORD(v70);
    v248 = v70;
    v71 = v70 + 1;
    v72 = HIDWORD(v70) + 1;
    v281[0] = v70 + 1;
    v281[1] = HIDWORD(v70) + 1;
    v77 = objc_msgSend_calcEngine(context, v73, v74, v75, v76);
    v280[0] = lower;
    v280[1] = upper;
    v81 = objc_msgSend_tableResolverForTableUID_(v77, v78, v280, v79, v80);
    v86 = objc_msgSend_containingTable(context, v82, v83, v84, v85);
    v90 = objc_msgSend_tableResolverForTableUID_(v77, v87, v86, v88, v89);
    v95 = objc_msgSend_calcEngine(context, v91, v92, v93, v94);
    v250 = objc_msgSend_headerNameMgr(v95, v96, v97, v98, v99);

    if (v90)
    {
      v104 = objc_msgSend_containingCell(context, v100, v101, v102, v103);
      v255 = objc_msgSend_textStyleForCalcEngineAtCellCoord_outIsDefault_(v90, v105, v104, 0, v106);
      if (v81)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v255 = 0;
      if (v81)
      {
LABEL_15:
        v107 = objc_msgSend_tableUID(v81, v100, v101, v102, v103);
        v109 = v108;
        v113 = objc_msgSend_containingTable(context, v108, v110, v111, v112);
        v118 = v107 == *v113 && v109 == v113[1];
        v119 = v118;
        v279 = 0;
        v278 = 0;
        v278 = objc_msgSend_groupByUUID(v81, v114, v115, v116, v117);
        v279 = v120;
        objc_msgSend_groupingColumnOrderPrecedent_(v81, v120, &v278, v121, v122);
        *v267 = 0;
        TSCERangeRef::TSCERangeRef(&v275, &v277);
        *&v267[8] = *&v275.var0;
        *&v267[24] = *&v275.var2.var0.var0.coordinate.row;
        v268 = 0;
        v272 = 0;
        v269 = 0;
        v270 = 0;
        v271 = 0;
        objc_msgSend_addCalculatedPrecedent_(context, v123, v267, v124, v125);

        objc_msgSend_groupingRowOrderPrecedent_ignoreRecalc_(v81, v126, &v278, v119, v127);
        *v267 = 0;
        TSCERangeRef::TSCERangeRef(&v275, &v277);
        *&v267[8] = *&v275.var0;
        *&v267[24] = *&v275.var2.var0.var0.coordinate.row;
        v268 = 0;
        v272 = 0;
        v269 = 0;
        v270 = 0;
        v271 = 0;
        objc_msgSend_addCalculatedPrecedent_(context, v128, v267, v129, v130);

        if (!v90)
        {
          goto LABEL_22;
        }

        goto LABEL_28;
      }
    }

    if (!v90)
    {
LABEL_22:
      v249 = 0;
LABEL_29:
      v143 = objc_msgSend_containingTable(context, v100, v101, v102, v103);
      v151 = objc_msgSend_tableResolverForTableUID_(v77, v144, v143, v145, v146);
      if (v151)
      {
        v152 = objc_msgSend_containingCell(context, v147, v148, v149, v150);
        isHeaderCell = objc_msgSend_isHeaderCell_(v151, v153, v152, v154, v155);
      }

      else
      {
        isHeaderCell = 0;
      }

      memset(&v277, 0, sizeof(v277));
      if ((v248 & 0x8000000000000000) != 0)
      {
        coordinate = 0;
        v221 = 0;
      }

      else
      {
        v244 = v72;
        v245 = v71;
        contextCopy = context;
        v246 = v13;
        v160 = 0;
        if (v81)
        {
          v161 = v255 == 0;
        }

        else
        {
          v161 = 1;
        }

        v162 = v248;
        v163 = !v161;
        v257 = v163;
        v164 = v249;
        v253 = v77;
        do
        {
          if ((v162 & 0x80000000) == 0)
          {
            v165 = 0;
            do
            {
              v276 = (topLeft.row + v160) | ((topLeft.column + v165) << 32);
              if (v81)
              {
                *v267 = topLeft.row + v160;
                *&v267[4] = topLeft.column + v165;
                v166 = objc_msgSend_mergedRangeForBaseCellCoord_(v81, v156, v267, v158, v159);
                if ((v166 & 0x101FFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
                {
                  v276 = v166;
                }
              }

              if (v257 && (objc_msgSend_unpersistedFormulaStorageForCoord_withPrefix_withStyle_allowHeaderNames_(v81, v156, &v276, @"=", v255, isHeaderCell ^ 1u), (v167 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                if (((v90 != 0) & v249) != 0)
                {
                  v168 = objc_msgSend_containingCell(contextCopy, v156, v157, v158, v159);
                  objc_msgSend_upgradeStyleForFormulatextForCellCoord_(v90, v169, v168, v170, v171);
                }

                v172 = objc_msgSend_emptyReferenceSetWrapper(v77, v156, v157, v158, v159);
                v180 = objc_msgSend_formulaObjectForCoord_(v81, v173, &v276, v174, v175);
                if (v180)
                {
                  *v267 = v276;
                  *&v267[8] = lower;
                  *&v267[16] = upper;
                  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v275, v77, v267);
                  v185 = objc_msgSend_const_astNodeArray(v180, v181, v182, v183, v184);
                  v190 = objc_msgSend_referenceSet(v172, v186, v187, v188, v189);
                  sub_22126254C(v267, v185, &v275, v190);
                  v273[35] = 1;
                  sub_221262B44(v267, v191, v192, v193, v194);
                  v203 = objc_msgSend_referenceSet(v172, v195, v196, v197, v198);
                  if ((isHeaderCell & 1) == 0)
                  {
                    v264[0] = MEMORY[0x277D85DD0];
                    v264[1] = 3221225472;
                    v264[2] = sub_22146A490;
                    v264[3] = &unk_2784658A8;
                    v204 = v250;
                    v265 = v204;
                    v266 = contextCopy;
                    TSCEReferenceSet::foreachCellRef(v203, v264);
                    v261[0] = MEMORY[0x277D85DD0];
                    v261[1] = 3221225472;
                    v261[2] = sub_22146A608;
                    v261[3] = &unk_2784658D0;
                    v262 = v204;
                    v263 = contextCopy;
                    TSCEReferenceSet::foreachSpanningRangeRef(v203, v261);

                    v77 = v253;
                    v164 = v249;
                  }

                  if (objc_msgSend_isCategorized(v81, v199, v200, v201, v202))
                  {
                    v260[0] = MEMORY[0x277D85DD0];
                    v260[1] = 3221225472;
                    v260[2] = sub_22146A738;
                    v260[3] = &unk_2784658F0;
                    v260[4] = contextCopy;
                    TSCEReferenceSet::foreachRangeRef(v203, v260);
                  }

                  *v267 = &unk_2834A37F0;

                  v278 = v273;
                  sub_2211FEAB8(&v278);
                  TSCEASTStreamIterator::~TSCEASTStreamIterator(v267, v205);
                }

                if (v164)
                {
                  v206 = v167;
                  *v267 = 0;
                  *&v267[8] = v206;
                  *&v267[16] = 1;
                  v267[18] = 0;
                  v275.var0 = sub_2210789F4(v267, v207, v208, v209, v210);
                  sub_221179A54(&v277, &v275.var0);
                }

                else
                {
                  v215 = objc_msgSend_string(v167, v176, v177, v178, v179);
                  v219 = objc_msgSend_stringValue_(TSCEStringValue, v216, v215, v217, v218);

                  v220 = v219;
                  v259 = v220;
                  sub_2210ED5B8(&v277, &v259);

                  v77 = v253;
                }
              }

              else
              {
                v211 = objc_msgSend_notAReferenceToAFormulaError(TSCEError, v156, v157, v158, v159);
                v258 = objc_msgSend_errorValue_(TSCEErrorValue, v212, v211, v213, v214);
                sub_2210ED5B8(&v277, &v258);
                v172 = v258;
                v167 = v211;
              }

              ++v165;
            }

            while (v248 + 1 != v165);
          }

          v162 = v248;
          v118 = v160++ == v247;
        }

        while (!v118);
        v221 = v277._tableUID._lower;
        coordinate = v277.coordinate;
        v13 = v246;
        v72 = v244;
        v71 = v245;
      }

      if (v221 - coordinate == 8 && v72 * v71 == 1)
      {
        v34 = *coordinate;
      }

      else
      {
        v224 = [TSCEDenseGrid alloc];
        isFlattened_dimensions = objc_msgSend_initWithValues_gridKind_isFlattened_dimensions_(v224, v225, &v277, 0, 0, v281);
        v34 = objc_msgSend_gridValue_(TSCEGridValue, v227, isFlattened_dimensions, v228, v229);
      }

      *v267 = &v277;
      sub_22107C2C0(v267);

      goto LABEL_72;
    }

LABEL_28:
    v249 = objc_msgSend_formulaNeedsBidiStyling(v90, v100, v101, v102, v103);
    goto LABEL_29;
  }

  v27 = objc_msgSend_functionName(spec, v23, v24, v25, v26);
  v30 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v28, v27, 1, v29);
  v34 = objc_msgSend_raiseErrorOrConvert_(context, v31, v30, v32, v33);

LABEL_10:
LABEL_72:
  v42 = 0;
LABEL_73:

  return v34;
}

@end
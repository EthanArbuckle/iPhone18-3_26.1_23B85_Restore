@interface TSCHChartStyleState
+ (id)styleState;
- (BOOL)otherStateIsEquivalent:(id)equivalent ignoringSeriesThemeStyles:(BOOL)styles;
- (BOOL)paragraphStyleIndexesAreValid;
- (NSArray)allStyles;
- (NSDictionary)semanticTagToStyleMap;
- (TSCHChartStyle)chartStyle;
- (TSCHChartStyleState)stateForParentStyleLookup;
- (TSCHLegendStyle)legendStyle;
- (TSCHReferenceLineStyle)referenceLineThemeStyle;
- (TSSStylesheet)stylesheet;
- (TSURetainedPointerKeyDictionary)styleToSemanticTagsMap;
- (id)applyStyleSwapTuple:(id)tuple ignoringBeforeValues:(BOOL)values;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)fallbackSemanticTagForSemanticTag:(id)tag;
- (id)fallbackSemanticUsageForSemanticUsage:(id)usage;
- (id)listOfStyles;
- (id)p_formatSemanticTag:(id)tag;
- (id)p_locationOfStyleInNetwork:(id)network;
- (id)p_propertySetWithPropertySetType:(int64_t)type forStyle:(id)style;
- (id)semanticUsagesOfParagraphStylePropertiesWithPropertySetType:(int64_t)type;
- (id)semanticUsagesToParagraphStyleMapWithPropertySetType:(int64_t)type filteredBySemanticUsages:(id)usages;
- (id)stateByAdoptingStylesheet:(id)stylesheet withMapper:(id)mapper;
- (id)stateByExpandingForSeriesCount:(unint64_t)count andReferenceLineCount:(unint64_t)lineCount;
- (id)stateByExpandingReferenceLineStylesForCount:(unint64_t)count;
- (id)stateByExpandingSeriesStylesForSeriesCount:(unint64_t)count;
- (id)stateByOptimizingParagraphStyleTableWithStylesheet:(id)stylesheet withMapper:(id)mapper;
- (id)stateByReducingReferenceLineStyles;
- (id)stateByReducingSeriesPrivateStyles;
- (id)stateByReducingSeriesPrivateStylesAndReferenceLineStyles;
- (id)styleForSemanticTag:(id)tag;
- (id)styleLookupSemanticTagForSemanticTag:(id)tag;
- (id)styleNetworkDescription;
- (id)styleToUseForSemanticTag:(id)tag;
- (id)usesOfParagraphStylePropertiesWithPropertySetType:(int64_t)type;
- (void)checkParagraphStyleIndicies;
- (void)enumerateSemanticTagsAndUsagesWithPropertySetType:(int64_t)type usingBlock:(id)block;
- (void)p_addParagraphStyleForSemanticUsage:(id)usage mappedStyle:(id)style mappedState:(id)state fromPriorStyle:(id)priorStyle andPriorState:(id)priorState maintainPriorIndex:(BOOL)index withStyleMapper:(id)mapper withStylesheet:(id)self0 toNewParagraphStylesTable:(id)self1 andStyleMap:(id)self2;
- (void)replaceAllInstancesOfStyle:(id)style withStyle:(id)withStyle;
- (void)replaceStylesUsingBlock:(id)block;
- (void)setCategoryAxisStyles:(id)styles;
- (void)setParagraphStyles:(id)styles;
- (void)setReferenceLineStyles:(id)styles;
- (void)setSeriesPrivateStyles:(id)styles;
- (void)setSeriesThemeStyles:(id)styles;
- (void)setStyle:(id)style withSemanticTag:(id)tag;
- (void)setValueAxisStyles:(id)styles;
@end

@implementation TSCHChartStyleState

- (void)p_addParagraphStyleForSemanticUsage:(id)usage mappedStyle:(id)style mappedState:(id)state fromPriorStyle:(id)priorStyle andPriorState:(id)priorState maintainPriorIndex:(BOOL)index withStyleMapper:(id)mapper withStylesheet:(id)self0 toNewParagraphStylesTable:(id)self1 andStyleMap:(id)self2
{
  indexCopy = index;
  usageCopy = usage;
  styleCopy = style;
  stateCopy = state;
  priorStyleCopy = priorStyle;
  priorStateCopy = priorState;
  mapperCopy = mapper;
  stylesheetCopy = stylesheet;
  tableCopy = table;
  mapCopy = map;
  v28 = objc_msgSend_property(usageCopy, v24, v25, v26, v27);
  v34 = objc_msgSend_intValueForMUXedProperty_(priorStyleCopy, v29, v30, v31, v32, v28);
  if (v34 != 0x80000000 || (v38 = objc_msgSend_property(usageCopy, v33, v35, v36, v37), objc_msgSend_intValueForMUXedProperty_(styleCopy, v39, v40, v41, v42, v38) != 0x80000000))
  {
    v229 = mapCopy;
    v227 = styleCopy;
    v228 = tableCopy;
    v43 = objc_msgSend_property(usageCopy, v33, v35, v36, v37);
    v225 = priorStateCopy;
    v226 = priorStyleCopy;
    v45 = sub_27632ED04(priorStateCopy, priorStyleCopy, v43, stylesheetCopy);
    if (!v45)
    {
      v49 = MEMORY[0x277D81150];
      v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, v46, v47, v48, "[TSCHChartStyleState(AdoptStylesheet) p_addParagraphStyleForSemanticUsage:mappedStyle:mappedState:fromPriorStyle:andPriorState:maintainPriorIndex:withStyleMapper:withStylesheet:toNewParagraphStylesTable:andStyleMap:]");
      v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, v52, v53, v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfoAdoptStylesheet.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v56, v57, v58, v59, v50, v55, 528, 0, "invalid nil value for '%{public}s'", "priorPragraphStyle");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v60, v61, v62, v63);
    }

    v64 = objc_msgSend_stateForParentStyleLookup(stateCopy, v44, v46, v47, v48);
    v69 = objc_msgSend_semanticTag(usageCopy, v65, v66, v67, v68);
    v74 = objc_msgSend_styleToUseForSemanticTag_(v64, v70, v71, v72, v73, v69);

    v79 = objc_msgSend_property(usageCopy, v75, v76, v77, v78);
    v222 = v74;
    v223 = v64;
    v80 = sub_27632ED04(v64, v74, v79, stylesheetCopy);
    objc_msgSend_mappedStyleWithMapper_forStyle_bakeComputable_(TSCHStyleMapper, v81, v82, v83, v84, mapperCopy, v80, 0);
    v86 = v85 = mapperCopy;

    if (!v86)
    {
      v91 = MEMORY[0x277D81150];
      v92 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v87, v88, v89, v90, "[TSCHChartStyleState(AdoptStylesheet) p_addParagraphStyleForSemanticUsage:mappedStyle:mappedState:fromPriorStyle:andPriorState:maintainPriorIndex:withStyleMapper:withStylesheet:toNewParagraphStylesTable:andStyleMap:]");
      v97 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v93, v94, v95, v96, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfoAdoptStylesheet.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v91, v98, v99, v100, v101, v92, v97, 536, 0, "invalid nil value for '%{public}s'", "parentParagraphStyle");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v102, v103, v104, v105);
    }

    v106 = objc_msgSend_propertyMap(v45, v87, v88, v89, v90);
    v111 = objc_msgSend_properties(MEMORY[0x277D80EC8], v107, v108, v109, v110);
    v116 = objc_msgSend_propertyMapWithProperties_(v106, v112, v113, v114, v115, v111);

    v224 = v85;
    objc_msgSend_replaceReferencedStylesInMap_(v85, v117, v118, v119, v120, v116);
    v126 = objc_msgSend_variationOfStyle_propertyMap_(stylesheetCopy, v121, v122, v123, v124, v86, v116);
    if (!v126)
    {
      v130 = MEMORY[0x277D81150];
      v131 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v125, v127, v128, v129, "[TSCHChartStyleState(AdoptStylesheet) p_addParagraphStyleForSemanticUsage:mappedStyle:mappedState:fromPriorStyle:andPriorState:maintainPriorIndex:withStyleMapper:withStylesheet:toNewParagraphStylesTable:andStyleMap:]");
      v136 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v132, v133, v134, v135, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfoAdoptStylesheet.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v130, v137, v138, v139, v140, v131, v136, 547, 0, "invalid nil value for '%{public}s'", "newVariation");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v141, v142, v143, v144);
    }

    if (v45 == v86 && v45 != v126)
    {
      v145 = MEMORY[0x277D81150];
      v146 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v125, v127, v128, v129, "[TSCHChartStyleState(AdoptStylesheet) p_addParagraphStyleForSemanticUsage:mappedStyle:mappedState:fromPriorStyle:andPriorState:maintainPriorIndex:withStyleMapper:withStylesheet:toNewParagraphStylesTable:andStyleMap:]");
      v151 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v147, v148, v149, v150, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfoAdoptStylesheet.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v145, v152, v153, v154, v155, v146, v151, 553, 0, "If the old style IS the parent, then a new degenerate variation of it should be itself. Look into this.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v156, v157, v158, v159);
    }

    tableCopy = v228;
    mapCopy = v229;
    if (!v126)
    {
      goto LABEL_27;
    }

    if (v34 == 0x80000000 || !indexCopy)
    {
      v195 = v126;
      v196 = v228;
      if (objc_msgSend_indexOfObject_(v196, v197, v198, v199, v200, v195) != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_26;
      }

      v205 = objc_msgSend_null(MEMORY[0x277CBEB68], v201, v202, v203, v204);
      v210 = objc_msgSend_indexOfObject_(v196, v206, v207, v208, v209, v205);

      if (v210 == 0x7FFFFFFFFFFFFFFFLL)
      {
        objc_msgSend_addObject_(v196, v211, v212, v213, v214, v195);
      }

      else
      {
        objc_msgSend_replaceObjectAtIndex_withObject_(v196, v211, v212, v213, v214, v210, v195);
      }
    }

    else
    {
      v160 = v34;
      v221 = v126;
      v161 = v228;
      if (objc_msgSend_count(v161, v162, v163, v164, v165) <= v34)
      {
        v170 = objc_msgSend_count(v161, v166, v167, v168, v169);
        if (v170 <= v34)
        {
          v171 = v170;
          do
          {
            v172 = objc_msgSend_null(MEMORY[0x277CBEB68], v166, v167, v168, v169);
            objc_msgSend_addObject_(v161, v173, v174, v175, v176, v172);

            ++v171;
          }

          while (v171 <= v160);
        }
      }

      if (objc_msgSend_count(v161, v166, v167, v168, v169) <= v160)
      {
        v219 = MEMORY[0x277D81150];
        v181 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v177, v178, v179, v180, "void p_insertParagraphStyleIntoSparseArray(TSSStyle *__strong, NSMutableArray *__strong, NSUInteger)");
        v186 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v182, v183, v184, v185, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfoAdoptStylesheet.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v219, v187, v188, v189, v190, v181, v186, 372, 0, "Failed to properly expand paragraphStyle array");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v191, v192, v193, v194);
      }

      objc_msgSend_replaceObjectAtIndex_withObject_(v161, v177, v178, v179, v180, v160, v221);
    }

    tableCopy = v228;
LABEL_26:

    mapCopy = v229;
    objc_msgSend_setObject_forKeyedSubscript_(v229, v215, v216, v217, v218, v126, usageCopy);
LABEL_27:

    priorStyleCopy = v226;
    styleCopy = v227;
    mapperCopy = v224;
    priorStateCopy = v225;
  }
}

- (id)stateByOptimizingParagraphStyleTableWithStylesheet:(id)stylesheet withMapper:(id)mapper
{
  v546 = *MEMORY[0x277D85DE8];
  stylesheetCopy = stylesheet;
  v10 = objc_msgSend_mapperWithMapper_(TSCHStyleMapper, v6, v7, v8, v9, mapper);
  selfCopy = self;
  v535 = 0;
  v12 = sub_2763300D8(selfCopy, v10, 1, &v535);
  v499 = v535;
  if (!v499)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "[TSCHChartStyleState(AdoptStylesheet) stateByOptimizingParagraphStyleTableWithStylesheet:withMapper:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfoAdoptStylesheet.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 580, 0, "invalid nil value for '%{public}s'", "newStyleToOldStyleMap");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
  }

  v500 = selfCopy;
  v32 = objc_msgSend_themeChartStyleState(selfCopy, v13, v14, v15, v16);
  v37 = objc_msgSend_copy(v32, v33, v34, v35, v36);
  objc_msgSend_setThemeChartStyleState_(v12, v38, v39, v40, v41, v37);

  v46 = objc_msgSend_themeChartStyleState(v12, v42, v43, v44, v45);
  v533[0] = MEMORY[0x277D85DD0];
  v533[1] = 3221225472;
  v533[2] = sub_276330544;
  v533[3] = &unk_27A6B9AB8;
  v498 = v10;
  v534 = v498;
  objc_msgSend_replaceStylesUsingBlock_(v46, v47, v48, v49, v50, v533);

  v55 = objc_msgSend_semanticUsagesOfParagraphStylePropertiesWithPropertySetType_(v12, v51, v52, v53, v54, 0);
  v508 = objc_msgSend_array(MEMORY[0x277CBEB18], v56, v57, v58, v59);
  v504 = objc_msgSend_semanticTagToStyleMap(v12, v60, v61, v62, v63);
  v512 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v64, v65, v66, v67);
  v529 = 0u;
  v530 = 0u;
  v531 = 0u;
  v532 = 0u;
  v68 = v55;
  v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v69, v70, v71, v72, &v529, v544, 16);
  v502 = v12;
  if (v73)
  {
    v78 = v73;
    v79 = *v530;
    do
    {
      v80 = 0;
      v506 = v78;
      do
      {
        if (*v530 != v79)
        {
          objc_enumerationMutation(v68);
        }

        v81 = *(*(&v529 + 1) + 8 * v80);
        v82 = objc_msgSend_semanticTag(v81, v74, v75, v76, v77);
        v83 = sub_276330560(v82);

        if (!v83)
        {
          objc_opt_class();
          v88 = objc_msgSend_semanticTag(v81, v84, v85, v86, v87);
          v93 = objc_msgSend_objectForKeyedSubscript_(v504, v89, v90, v91, v92, v88);
          v94 = TSUCheckedDynamicCast();

          if (!v94)
          {
            v99 = MEMORY[0x277D81150];
            v100 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v95, v96, v97, v98, "[TSCHChartStyleState(AdoptStylesheet) stateByOptimizingParagraphStyleTableWithStylesheet:withMapper:]");
            v78 = v506;
            v105 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v101, v102, v103, v104, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfoAdoptStylesheet.m");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v99, v106, v107, v108, v109, v100, v105, 598, 0, "invalid nil value for '%{public}s'", "newStyle");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v110, v111, v112, v113);
          }

          v115 = objc_msgSend_objectForKey_(v499, v95, v96, v97, v98, v94);
          if (!v115)
          {
            v119 = MEMORY[0x277D81150];
            v120 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v114, v116, v117, v118, "[TSCHChartStyleState(AdoptStylesheet) stateByOptimizingParagraphStyleTableWithStylesheet:withMapper:]");
            v125 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v121, v122, v123, v124, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfoAdoptStylesheet.m");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v119, v126, v127, v128, v129, v120, v125, 600, 0, "invalid nil value for '%{public}s'", "priorStyle");

            v12 = v502;
            v78 = v506;
            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v130, v131, v132, v133);
          }

          objc_msgSend_p_addParagraphStyleForSemanticUsage_mappedStyle_mappedState_fromPriorStyle_andPriorState_maintainPriorIndex_withStyleMapper_withStylesheet_toNewParagraphStylesTable_andStyleMap_(v500, v114, v116, v117, v118, v81, v94, v12, v115, v500, 1, v498, stylesheetCopy, v508, v512);
        }

        ++v80;
      }

      while (v78 != v80);
      v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v74, v75, v76, v77, &v529, v544, 16);
    }

    while (v78);
  }

  v527 = 0u;
  v528 = 0u;
  v525 = 0u;
  v526 = 0u;
  obj = v68;
  v138 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v134, v135, v136, v137, &v525, v543, 16);
  if (v138)
  {
    v143 = v138;
    v144 = *v526;
    do
    {
      for (i = 0; i != v143; ++i)
      {
        if (*v526 != v144)
        {
          objc_enumerationMutation(obj);
        }

        v146 = *(*(&v525 + 1) + 8 * i);
        v147 = objc_msgSend_semanticTag(v146, v139, v140, v141, v142);
        v148 = sub_276330560(v147);

        if (v148)
        {
          objc_opt_class();
          v153 = objc_msgSend_semanticTag(v146, v149, v150, v151, v152);
          v158 = objc_msgSend_objectForKeyedSubscript_(v504, v154, v155, v156, v157, v153);
          v159 = TSUCheckedDynamicCast();

          if (!v159)
          {
            v164 = MEMORY[0x277D81150];
            v165 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v160, v161, v162, v163, "[TSCHChartStyleState(AdoptStylesheet) stateByOptimizingParagraphStyleTableWithStylesheet:withMapper:]");
            v170 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v166, v167, v168, v169, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfoAdoptStylesheet.m");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v164, v171, v172, v173, v174, v165, v170, 619, 0, "invalid nil value for '%{public}s'", "newStyle");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v175, v176, v177, v178);
          }

          v180 = objc_msgSend_objectForKey_(v499, v160, v161, v162, v163, v159);
          v184 = v502;
          if (!v180)
          {
            v185 = MEMORY[0x277D81150];
            v186 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v179, v181, v182, v183, "[TSCHChartStyleState(AdoptStylesheet) stateByOptimizingParagraphStyleTableWithStylesheet:withMapper:]");
            v191 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v187, v188, v189, v190, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfoAdoptStylesheet.m");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v185, v192, v193, v194, v195, v186, v191, 621, 0, "invalid nil value for '%{public}s'", "priorStyle");

            v184 = v502;
            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v196, v197, v198, v199);
          }

          objc_msgSend_p_addParagraphStyleForSemanticUsage_mappedStyle_mappedState_fromPriorStyle_andPriorState_maintainPriorIndex_withStyleMapper_withStylesheet_toNewParagraphStylesTable_andStyleMap_(v500, v179, v181, v182, v183, v146, v159, v184, v180, v500, 0, v498, stylesheetCopy, v508, v512);
        }
      }

      v143 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v139, v140, v141, v142, &v525, v543, 16);
    }

    while (v143);
  }

  v200 = v508;
  v201 = stylesheetCopy;
  v536 = 0u;
  v537 = 0u;
  v538 = 0u;
  v539 = 0u;
  v511 = v200;
  v206 = objc_msgSend_countByEnumeratingWithState_objects_count_(v511, v202, v203, v204, v205, &v536, v545, 16);
  v211 = v502;
  if (v206)
  {
    v212 = v206;
    v213 = *v537;
LABEL_31:
    v214 = 0;
    while (1)
    {
      if (*v537 != v213)
      {
        objc_enumerationMutation(v511);
      }

      v215 = *(*(&v536 + 1) + 8 * v214);
      v216 = objc_msgSend_null(MEMORY[0x277CBEB68], v207, v208, v209, v210);
      isEqual = objc_msgSend_isEqual_(v216, v217, v218, v219, v220, v215);

      if (!isEqual)
      {
        break;
      }

      if (v212 == ++v214)
      {
        v212 = objc_msgSend_countByEnumeratingWithState_objects_count_(v511, v207, v208, v209, v210, &v536, v545, 16);
        if (v212)
        {
          goto LABEL_31;
        }

        goto LABEL_37;
      }
    }

    objc_opt_class();
    v226 = TSUDynamicCast();

    if (v226)
    {
      goto LABEL_40;
    }
  }

  else
  {
LABEL_37:
  }

  v227 = MEMORY[0x277D81150];
  v228 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v222, v223, v224, v225, "void p_fillAllHolesInArray(NSMutableArray *__strong, TSSStylesheet *__strong)");
  v233 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v229, v230, v231, v232, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfoAdoptStylesheet.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v227, v234, v235, v236, v237, v228, v233, 403, 0, "Could not find example style to fill holes in paragraph style table");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v238, v239, v240, v241);
  v226 = sub_276331A54(v201);
LABEL_40:
  if (objc_msgSend_count(v511, v222, v223, v224, v225))
  {
    v246 = 0;
    do
    {
      v247 = objc_msgSend_null(MEMORY[0x277CBEB68], v242, v243, v244, v245);
      v252 = objc_msgSend_objectAtIndexedSubscript_(v511, v248, v249, v250, v251, v246);
      v257 = objc_msgSend_isEqual_(v247, v253, v254, v255, v256, v252);

      if (v257)
      {
        objc_msgSend_replaceObjectAtIndex_withObject_(v511, v258, v259, v260, v261, v246, v226);
      }

      ++v246;
    }

    while (v246 < objc_msgSend_count(v511, v258, v259, v260, v261));
  }

  v492 = objc_msgSend_semanticUsagesOfParagraphStylePropertiesWithPropertySetType_(v502, v262, v263, v264, v265, 1);
  v270 = objc_msgSend_semanticTagToSemanticUsagesMapForSemanticUsages_(TSCHSemanticTagAndPropertyPair, v266, v267, v268, v269);
  v497 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v271, v272, v273, v274);
  v521 = 0u;
  v522 = 0u;
  v523 = 0u;
  v524 = 0u;
  v275 = v270;
  v501 = objc_msgSend_countByEnumeratingWithState_objects_count_(v275, v276, v277, v278, v279, &v521, v542, 16);
  if (v501)
  {
    v280 = v511;
    v496 = *v522;
    v493 = v275;
    v494 = v201;
    do
    {
      v281 = 0;
      do
      {
        if (*v522 != v496)
        {
          objc_enumerationMutation(v275);
        }

        v503 = v281;
        v282 = *(*(&v521 + 1) + 8 * v281);
        objc_opt_class();
        v287 = objc_msgSend_objectForKeyedSubscript_(v504, v283, v284, v285, v286, v282);
        v288 = TSUCheckedDynamicCast();

        v505 = v288;
        v507 = v282;
        if (!v288)
        {
          v293 = MEMORY[0x277D81150];
          v294 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v289, v290, v291, v292, "[TSCHChartStyleState(AdoptStylesheet) stateByOptimizingParagraphStyleTableWithStylesheet:withMapper:]");
          v299 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v295, v296, v297, v298, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfoAdoptStylesheet.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v293, v300, v301, v302, v303, v294, v299, 644, 0, "invalid nil value for '%{public}s'", "firstStageMappedStyle");

          v288 = 0;
          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v304, v305, v306, v307);
        }

        v308 = objc_msgSend_propertyMap(MEMORY[0x277D80AB8], v289, v290, v291, v292);
        v313 = objc_msgSend_propertyMap(v288, v309, v310, v311, v312);
        objc_msgSend_addValuesFromPropertyMap_(v308, v314, v315, v316, v317, v313);

        if (!v308)
        {
          v322 = MEMORY[0x277D81150];
          v323 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v318, v319, v320, v321, "[TSCHChartStyleState(AdoptStylesheet) stateByOptimizingParagraphStyleTableWithStylesheet:withMapper:]");
          v328 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v324, v325, v326, v327, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfoAdoptStylesheet.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v322, v329, v330, v331, v332, v323, v328, 647, 0, "invalid nil value for '%{public}s'", "newPropertyMap");

          v288 = v505;
          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v333, v334, v335, v336);
        }

        if (sub_276330560(v282))
        {
          objc_opt_class();
          v345 = objc_msgSend_objectForKeyedSubscript_(v275, v341, v342, v343, v344, v282);
          v346 = TSUCheckedDynamicCast();

          v519 = 0u;
          v520 = 0u;
          v517 = 0u;
          v518 = 0u;
          v509 = v346;
          v351 = objc_msgSend_countByEnumeratingWithState_objects_count_(v509, v347, v348, v349, v350, &v517, v541, 16);
          if (v351)
          {
            v352 = v351;
            v353 = *v518;
            do
            {
              for (j = 0; j != v352; ++j)
              {
                if (*v518 != v353)
                {
                  objc_enumerationMutation(v509);
                }

                v355 = *(*(&v517 + 1) + 8 * j);
                objc_opt_class();
                v360 = objc_msgSend_objectForKeyedSubscript_(v512, v356, v357, v358, v359, v355);
                v361 = TSUCheckedDynamicCast();

                if (!v361)
                {
                  v366 = MEMORY[0x277D81150];
                  v367 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v362, v363, v364, v365, "[TSCHChartStyleState(AdoptStylesheet) stateByOptimizingParagraphStyleTableWithStylesheet:withMapper:]");
                  v372 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v368, v369, v370, v371, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfoAdoptStylesheet.m");
                  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v366, v373, v374, v375, v376, v367, v372, 653, 0, "invalid nil value for '%{public}s'", "newParagraphStyle");

                  v280 = v511;
                  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v377, v378, v379, v380);
                }

                v381 = objc_msgSend_property(v355, v362, v363, v364, v365);
                v386 = objc_msgSend_intValueForProperty_(v308, v382, v383, v384, v385, v381);
                if (v386 == 0x80000000)
                {
                  goto LABEL_67;
                }

                v391 = v386;
                v392 = objc_msgSend_count(v280, v387, v388, v389, v390);
                if (v392 >> 31)
                {
                  sub_2764A86A4();
                  LODWORD(v392) = 0x7FFFFFFF;
                }

                if (v391 >= v392 || (objc_msgSend_objectAtIndexedSubscript_(v280, v387, v388, v389, v390, v391), v393 = objc_claimAutoreleasedReturnValue(), v398 = objc_msgSend_isEqual_(v393, v394, v395, v396, v397, v361), v393, (v398 & 1) == 0))
                {
LABEL_67:
                  v399 = objc_msgSend_indexOfObject_(v280, v387, v388, v389, v390, v361);
                  if (v399 == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v404 = MEMORY[0x277D81150];
                    v405 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v400, v401, v402, v403, "[TSCHChartStyleState(AdoptStylesheet) stateByOptimizingParagraphStyleTableWithStylesheet:withMapper:]");
                    v410 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v406, v407, v408, v409, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfoAdoptStylesheet.m");
                    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v404, v411, v412, v413, v414, v405, v410, 659, 0, "Failed to find new paragraph style index in new paragraph style array");

                    v280 = v511;
                    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v415, v416, v417, v418);
                    v419 = 0;
                  }

                  else
                  {
                    v419 = v399;
                    if (v399 >> 31)
                    {
                      sub_2764A8728();
                      v419 = 0x7FFFFFFFLL;
                    }
                  }

                  v420 = objc_msgSend_property(v355, v400, v401, v402, v403);
                  objc_msgSend_setIntValue_forProperty_(v308, v421, v422, v423, v424, v419, v420);
                }
              }

              v352 = objc_msgSend_countByEnumeratingWithState_objects_count_(v509, v425, v426, v427, v428, &v517, v541, 16);
            }

            while (v352);
          }

          v211 = v502;
          v275 = v493;
          v201 = v494;
          v288 = v505;
          v282 = v507;
        }

        v430 = objc_msgSend_variationOfStyle_propertyMap_(v201, v337, v338, v339, v340, v288, v308);
        if (!v430)
        {
          v434 = MEMORY[0x277D81150];
          v435 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v429, v431, v432, v433, "[TSCHChartStyleState(AdoptStylesheet) stateByOptimizingParagraphStyleTableWithStylesheet:withMapper:]");
          v440 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v436, v437, v438, v439, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfoAdoptStylesheet.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v434, v441, v442, v443, v444, v435, v440, 669, 0, "invalid nil value for '%{public}s'", "finalMappedStyle");

          v288 = v505;
          v282 = v507;
          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v445, v446, v447, v448);
        }

        objc_msgSend_setObject_forKeyedSubscript_(v497, v429, v431, v432, v433, v430, v282);

        v281 = v503 + 1;
      }

      while (v503 + 1 != v501);
      v501 = objc_msgSend_countByEnumeratingWithState_objects_count_(v275, v449, v450, v451, v452, &v521, v542, 16);
    }

    while (v501);
  }

  v515 = 0u;
  v516 = 0u;
  v513 = 0u;
  v514 = 0u;
  v453 = v497;
  v458 = objc_msgSend_countByEnumeratingWithState_objects_count_(v453, v454, v455, v456, v457, &v513, v540, 16);
  if (v458)
  {
    v459 = v458;
    v460 = *v514;
    do
    {
      for (k = 0; k != v459; ++k)
      {
        if (*v514 != v460)
        {
          objc_enumerationMutation(v453);
        }

        v462 = *(*(&v513 + 1) + 8 * k);
        objc_opt_class();
        v467 = objc_msgSend_objectForKeyedSubscript_(v453, v463, v464, v465, v466, v462);
        v468 = TSUCheckedDynamicCast();

        objc_msgSend_setStyle_withSemanticTag_(v211, v469, v470, v471, v472, v468, v462);
      }

      v459 = objc_msgSend_countByEnumeratingWithState_objects_count_(v453, v473, v474, v475, v476, &v513, v540, 16);
    }

    while (v459);
  }

  objc_msgSend_setParagraphStyles_(v211, v477, v478, v479, v480, v511);
  v485 = objc_msgSend_stateByReducingSeriesPrivateStyles(v211, v481, v482, v483, v484);

  v490 = objc_msgSend_stateByReducingReferenceLineStyles(v485, v486, v487, v488, v489);

  return v490;
}

- (id)stateByAdoptingStylesheet:(id)stylesheet withMapper:(id)mapper
{
  v8 = objc_msgSend_mapperWithMapper_(TSCHStyleMapper, a2, v4, v5, v6, mapper);
  v9 = sub_2763300D8(self, v8, 0, 0);

  return v9;
}

- (id)p_locationOfStyleInNetwork:(id)network
{
  v118 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  v9 = objc_msgSend_chartStyle(self, v5, v6, v7, v8);

  if (v9 == networkCopy)
  {
    v104 = @"         Chart Style()";
    goto LABEL_28;
  }

  v14 = objc_msgSend_legendStyle(self, v10, v11, v12, v13);

  if (v14 == networkCopy)
  {
    v104 = @"        Legend Style()";
    goto LABEL_28;
  }

  v19 = objc_msgSend_valueAxisStyles(self, v15, v16, v17, v18);
  objc_opt_class();
  v20 = TSUCheckedDynamicCast();
  v25 = objc_msgSend_indexOfObject_(v20, v21, v22, v23, v24, networkCopy);

  if (v25 != 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v26, v27, v28, v29, @"    Value Axis Style (%2lu)", v25);
    v104 = LABEL_27:;
    goto LABEL_28;
  }

  v30 = objc_msgSend_categoryAxisStyles(self, v26, v27, v28, v29);
  objc_opt_class();
  v31 = TSUCheckedDynamicCast();
  v36 = objc_msgSend_indexOfObject_(v31, v32, v33, v34, v35, networkCopy);

  if (v36 != 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v37, v38, v39, v40, @" Category Axis Style (%2lu)", v36);
    goto LABEL_27;
  }

  v41 = objc_msgSend_seriesThemeStyles(self, v37, v38, v39, v40);
  objc_opt_class();
  v42 = TSUCheckedDynamicCast();
  v47 = objc_msgSend_indexOfObject_(v42, v43, v44, v45, v46, networkCopy);

  if (v47 != 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v48, v49, v50, v51, @"  Theme Series Style (%2lu)", v47);
    goto LABEL_27;
  }

  v52 = objc_msgSend_seriesPrivateStyles(self, v48, v49, v50, v51);
  objc_opt_class();
  v53 = TSUCheckedDynamicCast();
  v58 = objc_msgSend_indexOfObject_(v53, v54, v55, v56, v57, networkCopy);

  if (v58 != 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v59, v60, v61, v62, @"Private Series Style (%2lu)", v58);
    goto LABEL_27;
  }

  v63 = objc_msgSend_paragraphStyles(self, v59, v60, v61, v62);
  objc_opt_class();
  v64 = TSUCheckedDynamicCast();
  v69 = objc_msgSend_indexOfObject_(v64, v65, v66, v67, v68, networkCopy);

  if (v69 != 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v70, v71, v72, v73, @"     Paragraph Style (%2lu)", v69);
    goto LABEL_27;
  }

  v74 = objc_msgSend_referenceLineThemeStyle(self, v70, v71, v72, v73);

  if (v74 == networkCopy)
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v75, v76, v77, v78, @" RefLine Theme Style()");
    goto LABEL_27;
  }

  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  obj = objc_msgSend_referenceLineStyles(self, v75, 0.0, v77, v78);
  v83 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v79, v80, v81, v82, &v113, v117, 16);
  if (v83)
  {
    v88 = v83;
    v89 = *v114;
    while (2)
    {
      for (i = 0; i != v88; ++i)
      {
        if (*v114 != v89)
        {
          objc_enumerationMutation(obj);
        }

        v91 = *(*(&v113 + 1) + 8 * i);
        v92 = objc_msgSend_referenceLineStyles(self, v84, v85, v86, v87);
        v97 = objc_msgSend_objectForKeyedSubscript_(v92, v93, v94, v95, v96, v91);
        objc_opt_class();
        v98 = TSUCheckedDynamicCast();
        v103 = objc_msgSend_indexOfObject_(v98, v99, v100, v101, v102, networkCopy);

        if (v103 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v105 = MEMORY[0x277CCACA8];
          v106 = objc_msgSend_debuggingName(v91, v84, v85, v86, v87);
          v104 = objc_msgSend_stringWithFormat_(v105, v107, v108, v109, v110, @"RefLine (AxisID: %2@) (%2lu)", v106, v103);

          goto LABEL_28;
        }
      }

      v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v84, v85, v86, v87, &v113, v117, 16);
      if (v88)
      {
        continue;
      }

      break;
    }
  }

  v104 = 0;
LABEL_28:

  return v104;
}

- (id)p_formatSemanticTag:(id)tag
{
  tagCopy = tag;
  v8 = objc_msgSend_type(tagCopy, v4, v5, v6, v7);
  v13 = 0;
  if (v8 <= 8)
  {
    if (v8 <= 4)
    {
      v14 = @"        Legend Style()";
      if (v8 != 3)
      {
        v14 = 0;
      }

      if (v8 == 1)
      {
        v13 = @"         Chart Style()";
      }

      else
      {
        v13 = v14;
      }

      goto LABEL_24;
    }

    if (v8 == 5)
    {
      v15 = MEMORY[0x277CCACA8];
      v48 = objc_msgSend_index(tagCopy, v9, v10, v11, v12);
      v20 = @"    Value Axis Style (%2lu)";
    }

    else
    {
      if (v8 != 7)
      {
        goto LABEL_24;
      }

      v15 = MEMORY[0x277CCACA8];
      v48 = objc_msgSend_index(tagCopy, v9, v10, v11, v12);
      v20 = @" Category Axis Style (%2lu)";
    }

LABEL_22:
    objc_msgSend_stringWithFormat_(v15, v16, v17, v18, v19, v20, v48);
    v13 = LABEL_23:;
    goto LABEL_24;
  }

  if (v8 <= 11)
  {
    if (v8 == 9)
    {
      v15 = MEMORY[0x277CCACA8];
      v48 = objc_msgSend_index(tagCopy, v9, v10, v11, v12);
      v20 = @"  Theme Series Style (%2lu)";
    }

    else
    {
      if (v8 != 10)
      {
        goto LABEL_24;
      }

      v15 = MEMORY[0x277CCACA8];
      v48 = objc_msgSend_index(tagCopy, v9, v10, v11, v12);
      v20 = @"Private Series Style (%2lu)";
    }

    goto LABEL_22;
  }

  if (v8 == 12)
  {
    v15 = MEMORY[0x277CCACA8];
    v48 = objc_msgSend_index(tagCopy, v9, v10, v11, v12);
    v20 = @"     Paragraph Style (%2lu)";
    goto LABEL_22;
  }

  if (v8 != 13)
  {
    if (v8 != 15)
    {
      goto LABEL_24;
    }

    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, v10, v11, v12, @" RefLine Theme Style()");
    goto LABEL_23;
  }

  v22 = objc_msgSend_index(tagCopy, v9, v10, v11, v12);
  v27 = objc_msgSend_axisIDFromStyleSwapOrStyleOwnerIndex_(TSCHReferenceLine, v23, v24, v25, v26, v22);
  v32 = objc_msgSend_index(tagCopy, v28, v29, v30, v31);
  v37 = objc_msgSend_refLineIndexFromStyleSwapOrStyleOwnerIndex_(TSCHReferenceLine, v33, v34, v35, v36, v32);
  v38 = MEMORY[0x277CCACA8];
  v43 = objc_msgSend_debuggingName(v27, v39, v40, v41, v42);
  v13 = objc_msgSend_stringWithFormat_(v38, v44, v45, v46, v47, @" RefLine Style (%2@, %2lu)", v43, v37);

LABEL_24:

  return v13;
}

- (id)styleNetworkDescription
{
  v90 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_paragraphStyleIndexProperties(TSCHChartInfo, a2, v2, v3, v4);
  v11 = objc_msgSend_string(MEMORY[0x277CCAB68], v7, v8, v9, v10);
  v16 = objc_msgSend_description(self, v12, v13, v14, v15);
  objc_msgSend_appendFormat_(v11, v17, v18, v19, v20, @"%@ description:\n", v16);

  v25 = objc_msgSend_semanticTagToStyleMap(self, v21, v22, v23, v24);
  v30 = objc_msgSend_allKeys(v25, v26, v27, v28, v29);
  v35 = objc_msgSend_sortedArrayUsingComparator_(v30, v31, v32, v33, v34, &unk_28851EE20);

  v84[0] = MEMORY[0x277D85DD0];
  v84[1] = 3221225472;
  v84[2] = sub_2763310A8;
  v84[3] = &unk_27A6B9B28;
  v74 = v11;
  v85 = v74;
  selfCopy = self;
  v73 = v6;
  v87 = v73;
  v36 = MEMORY[0x277C98B30](v84);
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v37 = v35;
  v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, v39, v40, v41, &v80, v89, 16);
  if (v42)
  {
    v47 = v42;
    v48 = *v81;
    do
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v81 != v48)
        {
          objc_enumerationMutation(v37);
        }

        v50 = *(*(&v80 + 1) + 8 * i);
        v51 = objc_msgSend_objectForKeyedSubscript_(v25, v43, v44, v45, v46, v50);
        (v36)[2](v36, v50, v51);
      }

      v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v43, v44, v45, v46, &v80, v89, 16);
    }

    while (v47);
  }

  v75 = v25;

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v55 = objc_msgSend_paragraphStyles(self, v52, 0.0, v53, v54);
  v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v56, v57, v58, v59, &v76, v88, 16);
  if (v60)
  {
    v65 = v60;
    v66 = 0;
    v67 = *v77;
    do
    {
      for (j = 0; j != v65; ++j)
      {
        if (*v77 != v67)
        {
          objc_enumerationMutation(v55);
        }

        v69 = *(*(&v76 + 1) + 8 * j);
        v70 = objc_msgSend_styleSemanticTagWithType_index_(TSCHStyleSemanticTag, v61, v62, v63, v64, 12, v66);
        (v36)[2](v36, v70, v69);
        ++v66;
      }

      v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v61, v62, v63, v64, &v76, v88, 16);
    }

    while (v65);
  }

  v71 = v74;
  return v74;
}

- (id)listOfStyles
{
  v103 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, v2, v3, v4);
  v11 = objc_msgSend_description(self, v7, v8, v9, v10);
  objc_msgSend_appendFormat_(v6, v12, v13, v14, v15, @"%@ description:\n", v11);

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  obj = objc_msgSend_allStyles(self, v16, 0.0, v17, v18);
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, v20, v21, v22, &v98, v102, 16);
  if (v23)
  {
    v28 = v23;
    v29 = *v99;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v99 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v98 + 1) + 8 * i);
        v32 = objc_msgSend_p_locationOfStyleInNetwork_(self, v24, v25, v26, v27, v31);
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        v35 = v34;
        v40 = objc_msgSend_UTF8String(v35, v36, v37, v38, v39);
        objc_msgSend_appendFormat_(v6, v41, v42, v43, v44, @"%@: <%-22s %p>", v32, v40, v31);

        v49 = objc_msgSend_parent(v31, v45, v46, v47, v48);
        if (v49)
        {
          v54 = v49;
          do
          {
            v55 = objc_opt_class();
            v56 = NSStringFromClass(v55);
            v57 = v56;
            v62 = objc_msgSend_UTF8String(v57, v58, v59, v60, v61);
            objc_msgSend_appendFormat_(v6, v63, v64, v65, v66, @" parent: <%-22s %p>", v62, v54);

            v71 = objc_msgSend_parent(v54, v67, v68, v69, v70);

            v54 = v71;
          }

          while (v71);
        }

        v72 = objc_msgSend_rootIdentifiedAncestor(v31, v50, v51, v52, v53);
        v77 = objc_msgSend_styleIdentifier(v72, v73, v74, v75, v76);
        objc_msgSend_appendFormat_(v6, v78, v79, v80, v81, @" rootIdentifier: %@", v77);

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v86 = objc_msgSend_boxedValueForProperty_(v31, v82, v83, v84, v85, 16);
          v91 = objc_msgSend_boxedValueForProperty_(v31, v87, v88, v89, v90, 17);
          objc_msgSend_appendFormat_(v6, v92, v93, v94, v95, @" fontName: %@ size: %@", v86, v91);
        }

        objc_msgSend_appendString_(v6, v82, v83, v84, v85, @"\n");
      }

      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, v25, v26, v27, &v98, v102, 16);
    }

    while (v28);
  }

  return v6;
}

- (void)checkParagraphStyleIndicies
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_paragraphStyles(self, a2, v2, v3, v4);
  v11 = objc_msgSend_count(v6, v7, v8, v9, v10);

  v16 = objc_msgSend_usesOfParagraphStylePropertiesWithPropertySetType_(self, v12, v13, v14, v15, 0);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, 0.0, v18, v19, &v47, v51, 16);
  if (v20)
  {
    v25 = v20;
    v26 = *v48;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v48 != v26)
        {
          objc_enumerationMutation(v16);
        }

        v28 = *(*(&v47 + 1) + 8 * i);
        v29 = objc_msgSend_style(v28, v21, v22, v23, v24);
        v34 = objc_msgSend_property(v28, v30, v31, v32, v33);
        v39 = objc_msgSend_intValueForMUXedProperty_(v29, v35, v36, v37, v38, v34);

        if (v39 != 0x80000000 && v11 <= v39)
        {
          objc_msgSend_property(v28, v21, v22, v23, v24);
          v41 = String();
          v46 = objc_msgSend_style(v28, v42, v43, v44, v45);
          NSLog(&cfstr_ProblemParasty.isa, v41, v46);
        }
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v21, v22, v23, v24, &v47, v51, 16);
    }

    while (v25);
  }
}

+ (id)styleState
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8 = objc_msgSend_allocWithZone_(TSCHChartStyleState, a2, v3, v4, v5);
  v13 = objc_msgSend_init(v8, v9, v10, v11, v12);
  v18 = objc_msgSend_chartStyle(self, v14, v15, v16, v17);
  objc_msgSend_setChartStyle_(v13, v19, v20, v21, v22, v18);

  v27 = objc_msgSend_legendStyle(self, v23, v24, v25, v26);
  objc_msgSend_setLegendStyle_(v13, v28, v29, v30, v31, v27);

  v36 = objc_msgSend_valueAxisStyles(self, v32, v33, v34, v35);
  objc_msgSend_setValueAxisStyles_(v13, v37, v38, v39, v40, v36);

  v45 = objc_msgSend_categoryAxisStyles(self, v41, v42, v43, v44);
  objc_msgSend_setCategoryAxisStyles_(v13, v46, v47, v48, v49, v45);

  v54 = objc_msgSend_seriesThemeStyles(self, v50, v51, v52, v53);
  objc_msgSend_setSeriesThemeStyles_(v13, v55, v56, v57, v58, v54);

  v63 = objc_msgSend_seriesPrivateStyles(self, v59, v60, v61, v62);
  objc_msgSend_setSeriesPrivateStyles_(v13, v64, v65, v66, v67, v63);

  v72 = objc_msgSend_paragraphStyles(self, v68, v69, v70, v71);
  objc_msgSend_setParagraphStyles_(v13, v73, v74, v75, v76, v72);

  v77 = MEMORY[0x277CBEB38];
  v82 = objc_msgSend_referenceLineStyles(self, v78, v79, v80, v81);
  v87 = objc_msgSend_count(v82, v83, v84, v85, v86);
  v92 = objc_msgSend_dictionaryWithCapacity_(v77, v88, v89, v90, v91, v87);

  v97 = objc_msgSend_referenceLineStyles(self, v93, v94, v95, v96);
  v131 = MEMORY[0x277D85DD0];
  v132 = 3221225472;
  v133 = sub_276365000;
  v134 = &unk_27A6B9E40;
  v135 = v92;
  zoneCopy = zone;
  v98 = v92;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v97, v99, v100, v101, v102, &v131);

  objc_msgSend_setReferenceLineStyles_(v13, v103, v104, v105, v106, v98, v131, v132, v133, v134);
  v111 = objc_msgSend_referenceLineThemeStyle(self, v107, v108, v109, v110);
  objc_msgSend_setReferenceLineThemeStyle_(v13, v112, v113, v114, v115, v111);

  v120 = objc_msgSend_themeChartStyleState(self, v116, v117, v118, v119);
  v125 = objc_msgSend_copyWithZone_(v120, v121, v122, v123, v124, zone);
  objc_msgSend_setThemeChartStyleState_(v13, v126, v127, v128, v129, v125);

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v101.receiver = self;
  v101.super_class = TSCHChartStyleState;
  v4 = [(TSCHChartStyleState *)&v101 description];
  v9 = objc_msgSend_stringWithFormat_(v3, v5, v6, v7, v8, @"%@ {\n", v4);

  v14 = objc_msgSend_chartStyle(self, v10, v11, v12, v13);
  objc_msgSend_appendFormat_(v9, v15, v16, v17, v18, @"\t%@: %@\n", @"self.chartStyle", v14);

  v23 = objc_msgSend_legendStyle(self, v19, v20, v21, v22);
  objc_msgSend_appendFormat_(v9, v24, v25, v26, v27, @"\t%@: %@\n", @"self.legendStyle", v23);

  v32 = objc_msgSend_valueAxisStyles(self, v28, v29, v30, v31);
  objc_msgSend_appendFormat_(v9, v33, v34, v35, v36, @"\t%@: %@\n", @"self.valueAxisStyles", v32);

  v41 = objc_msgSend_categoryAxisStyles(self, v37, v38, v39, v40);
  objc_msgSend_appendFormat_(v9, v42, v43, v44, v45, @"\t%@: %@\n", @"self.categoryAxisStyles", v41);

  v50 = objc_msgSend_seriesThemeStyles(self, v46, v47, v48, v49);
  objc_msgSend_appendFormat_(v9, v51, v52, v53, v54, @"\t%@: %@\n", @"self.seriesThemeStyles", v50);

  v59 = objc_msgSend_seriesPrivateStyles(self, v55, v56, v57, v58);
  objc_msgSend_appendFormat_(v9, v60, v61, v62, v63, @"\t%@: %@\n", @"self.seriesPrivateStyles", v59);

  v68 = objc_msgSend_referenceLineThemeStyle(self, v64, v65, v66, v67);
  objc_msgSend_appendFormat_(v9, v69, v70, v71, v72, @"\t%@: %@\n", @"self.referenceLineThemeStyle", v68);

  v77 = objc_msgSend_referenceLineStyles(self, v73, v74, v75, v76);
  objc_msgSend_appendFormat_(v9, v78, v79, v80, v81, @"\t%@: %@\n", @"self.referenceLineStyles", v77);

  v86 = objc_msgSend_paragraphStyles(self, v82, v83, v84, v85);
  objc_msgSend_appendFormat_(v9, v87, v88, v89, v90, @"\t%@: %@\n", @"self.paragraphStyles", v86);

  objc_msgSend_appendString_(v9, v91, v92, v93, v94, @"}\n");
  v99 = objc_msgSend_stringWithString_(MEMORY[0x277CCACA8], v95, v96, v97, v98, v9);

  return v99;
}

- (TSCHChartStyle)chartStyle
{
  v3 = objc_opt_class();
  chartStyle = self->super._chartStyle;

  return sub_2762CD788(v3, chartStyle);
}

- (TSCHLegendStyle)legendStyle
{
  v3 = objc_opt_class();
  legendStyle = self->super._legendStyle;

  return sub_2762CD788(v3, legendStyle);
}

- (void)setValueAxisStyles:(id)styles
{
  v7 = objc_msgSend_mutableCopy(styles, a2, v3, v4, v5);
  valueAxisStyles = self->super._valueAxisStyles;
  self->super._valueAxisStyles = v7;
}

- (void)setCategoryAxisStyles:(id)styles
{
  v7 = objc_msgSend_mutableCopy(styles, a2, v3, v4, v5);
  categoryAxisStyles = self->super._categoryAxisStyles;
  self->super._categoryAxisStyles = v7;
}

- (void)setSeriesThemeStyles:(id)styles
{
  v7 = objc_msgSend_mutableCopy(styles, a2, v3, v4, v5);
  seriesThemeStyles = self->super._seriesThemeStyles;
  self->super._seriesThemeStyles = v7;
}

- (void)setSeriesPrivateStyles:(id)styles
{
  v7 = objc_msgSend_mutableCopy(styles, a2, v3, v4, v5);
  seriesPrivateStyles = self->super._seriesPrivateStyles;
  self->super._seriesPrivateStyles = v7;
}

- (void)setParagraphStyles:(id)styles
{
  v7 = objc_msgSend_mutableCopy(styles, a2, v3, v4, v5);
  paragraphStyles = self->super._paragraphStyles;
  self->super._paragraphStyles = v7;
}

- (void)setReferenceLineStyles:(id)styles
{
  v7 = objc_msgSend_mutableCopy(styles, a2, v3, v4, v5);
  referenceLineStyles = self->super._referenceLineStyles;
  self->super._referenceLineStyles = v7;
}

- (TSCHReferenceLineStyle)referenceLineThemeStyle
{
  v3 = objc_opt_class();
  referenceLineThemeStyle = self->super._referenceLineThemeStyle;

  return sub_2762CD788(v3, referenceLineThemeStyle);
}

- (TSCHChartStyleState)stateForParentStyleLookup
{
  selfCopy = self;
  v6 = objc_msgSend_themeChartStyleState(self, a2, v2, v3, v4);
  v7 = v6;
  if (v6)
  {
    selfCopy = v6;
  }

  v8 = selfCopy;

  return selfCopy;
}

- (NSArray)allStyles
{
  v148 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4);
  v11 = objc_msgSend_chartStyle(self, v7, v8, v9, v10);
  objc_msgSend_tsu_addNonNilObject_(v6, v12, v13, v14, v15, v11);

  v20 = objc_msgSend_legendStyle(self, v16, v17, v18, v19);
  objc_msgSend_tsu_addNonNilObject_(v6, v21, v22, v23, v24, v20);

  v29 = objc_msgSend_valueAxisStyles(self, v25, v26, v27, v28);
  objc_msgSend_addObjectsFromArray_(v6, v30, v31, v32, v33, v29);

  v38 = objc_msgSend_categoryAxisStyles(self, v34, v35, v36, v37);
  objc_msgSend_addObjectsFromArray_(v6, v39, v40, v41, v42, v38);

  v47 = objc_msgSend_seriesThemeStyles(self, v43, v44, v45, v46);
  objc_msgSend_addObjectsFromArray_(v6, v48, v49, v50, v51, v47);

  v56 = objc_msgSend_seriesPrivateStyles(self, v52, v53, v54, v55);
  objc_msgSend_addObjectsFromArray_(v6, v57, v58, v59, v60, v56);

  v65 = objc_msgSend_referenceLineThemeStyle(self, v61, v62, v63, v64);
  objc_msgSend_tsu_addNonNilObject_(v6, v66, v67, v68, v69, v65);

  v74 = objc_msgSend_referenceLineStyles(self, v70, v71, v72, v73);
  v79 = objc_msgSend_allKeys(v74, v75, v76, v77, v78);
  v84 = objc_msgSend_sortedArrayUsingSelector_(v79, v80, v81, v82, v83, sel_compare_);

  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v85 = v84;
  v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(v85, v86, v87, v88, v89, &v142, v147, 16);
  if (v90)
  {
    v95 = v90;
    v96 = *v143;
    do
    {
      for (i = 0; i != v95; ++i)
      {
        if (*v143 != v96)
        {
          objc_enumerationMutation(v85);
        }

        v98 = *(*(&v142 + 1) + 8 * i);
        v99 = objc_msgSend_referenceLineStyles(self, v91, v92, v93, v94);
        v104 = objc_msgSend_objectForKey_(v99, v100, v101, v102, v103, v98);
        objc_msgSend_addObjectsFromArray_(v6, v105, v106, v107, v108, v104);
      }

      v95 = objc_msgSend_countByEnumeratingWithState_objects_count_(v85, v91, v92, v93, v94, &v142, v147, 16);
    }

    while (v95);
  }

  v113 = objc_msgSend_paragraphStyles(self, v109, v110, v111, v112);
  objc_msgSend_addObjectsFromArray_(v6, v114, v115, v116, v117, v113);

  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  v121 = objc_msgSend_copy(v6, v118, 0.0, v119, v120, 0);
  v126 = objc_msgSend_countByEnumeratingWithState_objects_count_(v121, v122, v123, v124, v125, &v138, v146, 16);
  if (v126)
  {
    v127 = v126;
    v128 = *v139;
    do
    {
      for (j = 0; j != v127; ++j)
      {
        if (*v139 != v128)
        {
          objc_enumerationMutation(v121);
        }

        v130 = *(*(&v138 + 1) + 8 * j);
        v131 = objc_opt_class();
        v132 = sub_2762CD788(v131, v130);

        if (!v132)
        {
          objc_msgSend_removeObject_(v6, v133, v134, v135, v136, v130);
        }
      }

      v127 = objc_msgSend_countByEnumeratingWithState_objects_count_(v121, v133, v134, v135, v136, &v138, v146, 16);
    }

    while (v127);
  }

  return v6;
}

- (TSSStylesheet)stylesheet
{
  v5 = objc_msgSend_allStyles(self, a2, v2, v3, v4);
  v10 = objc_msgSend_stylesheetOfStyles_nilAllowed_(TSCHStyleUtilities, v6, v7, v8, v9, v5, 0);

  return v10;
}

- (id)p_propertySetWithPropertySetType:(int64_t)type forStyle:(id)style
{
  styleCopy = style;
  v10 = styleCopy;
  if (type == 1)
  {
    v32 = objc_msgSend_propertyMap(styleCopy, v6, v7, v8, v9);
    v31 = objc_msgSend_allProperties(v32, v33, v34, v35, v36);
  }

  else
  {
    if (type)
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCHChartStyleState p_propertySetWithPropertySetType:forStyle:]");
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStyleState.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 216, 0, "Invalid property set type %ld", type);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
    }

    v26 = objc_opt_class();
    v31 = objc_msgSend_properties(v26, v27, v28, v29, v30);
  }

  return v31;
}

- (id)usesOfParagraphStylePropertiesWithPropertySetType:(int64_t)type
{
  v60 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v3, v4, v5);
  v12 = objc_msgSend_paragraphStyleIndexProperties(TSCHChartInfo, v8, v9, v10, v11);
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = objc_msgSend_allStyles(self, v13, 0.0, v14, v15);
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, v17, v18, v19, &v55, v59, 16);
  if (v20)
  {
    v25 = v20;
    v26 = *v56;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v56 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v55 + 1) + 8 * i);
        v29 = objc_msgSend_p_propertySetWithPropertySetType_forStyle_(self, v21, v22, v23, v24, type, v28);
        v34 = objc_msgSend_mutableCopy(v29, v30, v31, v32, v33);

        objc_msgSend_intersectPropertySet_(v34, v35, v36, v37, v38, v12);
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = sub_276365D28;
        v52[3] = &unk_27A6B6D88;
        v53 = v7;
        v54 = v28;
        objc_msgSend_enumeratePropertiesUsingBlock_(v34, v39, v40, v41, v42, v52);
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, v22, v23, v24, &v55, v59, 16);
    }

    while (v25);
  }

  v43 = v7;
  v48 = objc_msgSend_copy(v7, v44, v45, v46, v47);

  return v48;
}

- (BOOL)paragraphStyleIndexesAreValid
{
  v63 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_paragraphStyles(self, a2, v2, v3, v4);
  v11 = objc_msgSend_count(v6, v7, v8, v9, v10);

  objc_msgSend_usesOfParagraphStylePropertiesWithPropertySetType_(self, v12, v13, v14, v15, 0);
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v16 = v61 = 0u;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, v18, v19, v20, &v58, v62, 16);
  if (v21)
  {
    v26 = v21;
    v27 = *v59;
    while (2)
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v59 != v27)
        {
          objc_enumerationMutation(v16);
        }

        v29 = *(*(&v58 + 1) + 8 * i);
        v30 = objc_msgSend_style(v29, v22, v23, v24, v25, v58);
        v35 = objc_msgSend_property(v29, v31, v32, v33, v34);
        v40 = objc_msgSend_intValueForProperty_(v30, v36, v37, v38, v39, v35);

        if (v40 != 0x80000000)
        {
          v42 = v40;
          v43 = v40;
          if (v40 < 0)
          {
            sub_2764A8888(v23, v24, v25, v41, v22);
            v43 = 0;
          }

          if (v43 >= v11 || (v44 = objc_opt_class(), objc_msgSend_paragraphStyles(self, v45, v46, v47, v48), v49 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectAtIndexedSubscript_(v49, v50, v51, v52, v53, v42), v54 = objc_claimAutoreleasedReturnValue(), sub_2762CD788(v44, v54), v55 = objc_claimAutoreleasedReturnValue(), v55, v54, v49, !v55))
          {
            v56 = 0;
            goto LABEL_15;
          }
        }
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v22, v23, v24, v25, &v58, v62, 16);
      if (v26)
      {
        continue;
      }

      break;
    }
  }

  v56 = 1;
LABEL_15:

  return v56;
}

- (id)applyStyleSwapTuple:(id)tuple ignoringBeforeValues:(BOOL)values
{
  tupleCopy = tuple;
  v11 = objc_msgSend_inverse(tupleCopy, v7, v8, v9, v10);
  v16 = objc_msgSend_swapType(tupleCopy, v12, v13, v14, v15);
  if (v16 <= 8)
  {
    if (v16 <= 4)
    {
      if (v16 == 1)
      {
        if (!values)
        {
          v158 = objc_msgSend_chartStyle(self, v17, v18, v19, v20);
          v163 = objc_msgSend_beforeValue(tupleCopy, v159, v160, v161, v162);

          if (v158 != v163)
          {
            v168 = MEMORY[0x277D81150];
            v169 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v164, v165, v166, v167, "[TSCHChartStyleState applyStyleSwapTuple:ignoringBeforeValues:]");
            v174 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v170, v171, v172, v173, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStyleState.m");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v168, v175, v176, v177, v178, v169, v174, 263, 0, "Inconsistent - mismatched chart style");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v179, v180, v181, v182);
          }
        }

        objc_opt_class();
        v50 = objc_msgSend_afterValue(tupleCopy, v183, v184, v185, v186);
        v51 = TSUCheckedDynamicCast();
        objc_msgSend_setChartStyle_(self, v187, v188, v189, v190, v51);
        goto LABEL_33;
      }

      if (v16 == 3)
      {
        if (!values)
        {
          v56 = objc_msgSend_legendStyle(self, v17, v18, v19, v20);
          v61 = objc_msgSend_beforeValue(tupleCopy, v57, v58, v59, v60);

          if (v56 != v61)
          {
            v66 = MEMORY[0x277D81150];
            v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, v63, v64, v65, "[TSCHChartStyleState applyStyleSwapTuple:ignoringBeforeValues:]");
            v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v68, v69, v70, v71, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStyleState.m");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v66, v73, v74, v75, v76, v67, v72, 268, 0, "Inconsistent - mismatched legend style");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v77, v78, v79, v80);
          }
        }

        objc_opt_class();
        v50 = objc_msgSend_afterValue(tupleCopy, v81, v82, v83, v84);
        v51 = TSUCheckedDynamicCast();
        objc_msgSend_setLegendStyle_(self, v85, v86, v87, v88, v51);
        goto LABEL_33;
      }

      goto LABEL_56;
    }

    if (v16 == 5)
    {
      if (!values)
      {
        v191 = objc_msgSend_beforeValue(tupleCopy, v17, v18, v19, v20);
        v196 = objc_msgSend_valueAxisStyles(self, v192, v193, v194, v195);
        v201 = objc_msgSend_index(tupleCopy, v197, v198, v199, v200);
        v202 = sub_27626B504(v191, v196, v201, 0);

        if ((v202 & 1) == 0)
        {
          v203 = MEMORY[0x277D81150];
          v204 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "[TSCHChartStyleState applyStyleSwapTuple:ignoringBeforeValues:]");
          v209 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v205, v206, v207, v208, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStyleState.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v203, v210, v211, v212, v213, v204, v209, 279, 0, "Inconsistent - mismatched value axis style");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v214, v215, v216, v217);
        }
      }

      v117 = objc_msgSend_afterValue(tupleCopy, v17, v18, v19, v20);
      v121 = &OBJC_IVAR___TSCHPropertyValueStorageContainer__valueAxisStyles;
    }

    else
    {
      if (v16 != 7)
      {
        goto LABEL_56;
      }

      if (!values)
      {
        v89 = objc_msgSend_beforeValue(tupleCopy, v17, v18, v19, v20);
        v94 = objc_msgSend_categoryAxisStyles(self, v90, v91, v92, v93);
        v99 = objc_msgSend_index(tupleCopy, v95, v96, v97, v98);
        v100 = sub_27626B504(v89, v94, v99, 0);

        if ((v100 & 1) == 0)
        {
          v101 = MEMORY[0x277D81150];
          v102 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "[TSCHChartStyleState applyStyleSwapTuple:ignoringBeforeValues:]");
          v107 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v103, v104, v105, v106, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStyleState.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v101, v108, v109, v110, v111, v102, v107, 284, 0, "Inconsistent - mismatched category axis style");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v112, v113, v114, v115);
        }
      }

      v117 = objc_msgSend_afterValue(tupleCopy, v17, v18, v19, v20);
      v121 = &OBJC_IVAR___TSCHPropertyValueStorageContainer__categoryAxisStyles;
    }

LABEL_46:
    v272 = *(&self->super.super.isa + *v121);
    v154 = objc_msgSend_index(tupleCopy, v116, v118, v119, v120);
    v155 = v117;
    v156 = v272;
    v157 = 0;
LABEL_47:
    sub_27626B5EC(v155, v156, v154, v157);
    goto LABEL_48;
  }

  if (v16 > 11)
  {
    if (v16 != 12)
    {
      if (v16 != 13)
      {
        if (v16 == 15)
        {
          if (!values)
          {
            v21 = objc_msgSend_referenceLineThemeStyle(self, v17, v18, v19, v20);
            v26 = objc_msgSend_beforeValue(tupleCopy, v22, v23, v24, v25);

            if (v21 != v26)
            {
              v31 = MEMORY[0x277D81150];
              v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, "[TSCHChartStyleState applyStyleSwapTuple:ignoringBeforeValues:]");
              v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v34, v35, v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStyleState.m");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v38, v39, v40, v41, v32, v37, 273, 0, "Inconsistent - mismatched ref line theme style");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44, v45);
            }
          }

          objc_opt_class();
          v50 = objc_msgSend_afterValue(tupleCopy, v46, v47, v48, v49);
          v51 = TSUCheckedDynamicCast();
          objc_msgSend_setReferenceLineThemeStyle_(self, v52, v53, v54, v55, v51);
LABEL_33:

          goto LABEL_49;
        }

        goto LABEL_56;
      }

      v274 = objc_msgSend_index(tupleCopy, v17, v18, v19, v20);
      v117 = objc_msgSend_axisIDFromStyleSwapOrStyleOwnerIndex_(TSCHReferenceLine, v275, v276, v277, v278, v274);
      v283 = objc_msgSend_index(tupleCopy, v279, v280, v281, v282);
      v288 = objc_msgSend_refLineIndexFromStyleSwapOrStyleOwnerIndex_(TSCHReferenceLine, v284, v285, v286, v287, v283);
      objc_opt_class();
      referenceLineStyles = self->super._referenceLineStyles;
      v290 = objc_opt_class();
      v295 = objc_msgSend_tsu_objectForKey_withDefaultOfClass_(referenceLineStyles, v291, v292, v293, v294, v117, v290);
      v296 = TSUCheckedDynamicCast();

      if (!values)
      {
        v301 = objc_msgSend_beforeValue(tupleCopy, v297, v298, v299, v300);
        v302 = sub_27626B504(v301, v296, v288, 1);

        if ((v302 & 1) == 0)
        {
          v303 = MEMORY[0x277D81150];
          v304 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v297, v298, v299, v300, "[TSCHChartStyleState applyStyleSwapTuple:ignoringBeforeValues:]");
          v309 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v305, v306, v307, v308, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStyleState.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v303, v310, v311, v312, v313, v304, v309, 302, 0, "Inconsistent - mismatched reference line style");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v314, v315, v316, v317);
        }
      }

      v318 = objc_msgSend_afterValue(tupleCopy, v297, v298, v299, v300);
      sub_27626B5EC(v318, v296, v288, 1);

LABEL_48:
      goto LABEL_49;
    }

    if (!values)
    {
      v218 = objc_msgSend_beforeValue(tupleCopy, v17, v18, v19, v20);
      v223 = objc_msgSend_paragraphStyles(self, v219, v220, v221, v222);
      v228 = objc_msgSend_index(tupleCopy, v224, v225, v226, v227);
      v229 = sub_27626B504(v218, v223, v228, 0);

      if ((v229 & 1) == 0)
      {
        v230 = MEMORY[0x277D81150];
        v231 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "[TSCHChartStyleState applyStyleSwapTuple:ignoringBeforeValues:]");
        v236 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v232, v233, v234, v235, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStyleState.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v230, v237, v238, v239, v240, v231, v236, 307, 0, "Inconsistent - mismatched paragraph style");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v241, v242, v243, v244);
      }
    }

    v117 = objc_msgSend_afterValue(tupleCopy, v17, v18, v19, v20);
    v121 = &OBJC_IVAR___TSCHPropertyValueStorageContainer__paragraphStyles;
    goto LABEL_46;
  }

  if (v16 == 9)
  {
    if (!values)
    {
      v245 = objc_msgSend_beforeValue(tupleCopy, v17, v18, v19, v20);
      v250 = objc_msgSend_seriesThemeStyles(self, v246, v247, v248, v249);
      v255 = objc_msgSend_index(tupleCopy, v251, v252, v253, v254);
      v256 = sub_27626B504(v245, v250, v255, 0);

      if ((v256 & 1) == 0)
      {
        v257 = MEMORY[0x277D81150];
        v258 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "[TSCHChartStyleState applyStyleSwapTuple:ignoringBeforeValues:]");
        v263 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v259, v260, v261, v262, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStyleState.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v257, v264, v265, v266, v267, v258, v263, 289, 0, "Inconsistent - mismatched series theme style");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v268, v269, v270, v271);
      }
    }

    v117 = objc_msgSend_afterValue(tupleCopy, v17, v18, v19, v20);
    v121 = &OBJC_IVAR___TSCHPropertyValueStorageContainer__seriesThemeStyles;
    goto LABEL_46;
  }

  if (v16 == 10)
  {
    if (!values)
    {
      v122 = objc_msgSend_beforeValue(tupleCopy, v17, v18, v19, v20);
      v127 = objc_msgSend_seriesPrivateStyles(self, v123, v124, v125, v126);
      v132 = objc_msgSend_index(tupleCopy, v128, v129, v130, v131);
      v133 = sub_27626B504(v122, v127, v132, 0);

      if ((v133 & 1) == 0)
      {
        v134 = MEMORY[0x277D81150];
        v135 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "[TSCHChartStyleState applyStyleSwapTuple:ignoringBeforeValues:]");
        v140 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v136, v137, v138, v139, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStyleState.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v134, v141, v142, v143, v144, v135, v140, 294, 0, "Inconsistent - mismatched series private style");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v145, v146, v147, v148);
      }
    }

    v117 = objc_msgSend_afterValue(tupleCopy, v17, v18, v19, v20);
    seriesPrivateStyles = self->super._seriesPrivateStyles;
    v154 = objc_msgSend_index(tupleCopy, v150, v151, v152, v153);
    v155 = v117;
    v156 = seriesPrivateStyles;
    v157 = 1;
    goto LABEL_47;
  }

LABEL_56:
  v319 = MEMORY[0x277D81150];
  v320 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "[TSCHChartStyleState applyStyleSwapTuple:ignoringBeforeValues:]");
  v325 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v321, v322, v323, v324, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStyleState.m");
  v330 = objc_msgSend_swapType(tupleCopy, v326, v327, v328, v329);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v319, v331, v332, v333, v334, v320, v325, 312, 0, "Unexpected swap type %ld", v330);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v335, v336, v337, v338);
LABEL_49:

  return v11;
}

- (void)replaceAllInstancesOfStyle:(id)style withStyle:(id)withStyle
{
  v193 = *MEMORY[0x277D85DE8];
  styleCopy = style;
  withStyleCopy = withStyle;
  if (!withStyleCopy)
  {
    withStyleCopy = objc_msgSend_null(MEMORY[0x277CBEB68], v7, v9, v10, v11);
  }

  if (withStyleCopy != styleCopy)
  {
    v12 = objc_msgSend_chartStyle(self, v7, v9, v10, v11);

    if (v12 == styleCopy)
    {
      objc_msgSend_setChartStyle_(self, v13, v14, v15, v16, withStyleCopy);
    }

    v17 = objc_msgSend_legendStyle(self, v13, v14, v15, v16);

    if (v17 == styleCopy)
    {
      objc_msgSend_setLegendStyle_(self, v18, v19, v20, v21, withStyleCopy);
    }

    v22 = objc_msgSend_valueAxisStyles(self, v18, v19, v20, v21);
    if (v22)
    {
      v27 = v22;
      do
      {
        v28 = objc_msgSend_valueAxisStyles(self, v23, v24, v25, v26);
        objc_opt_class();
        v29 = TSUCheckedDynamicCast();
        v34 = objc_msgSend_indexOfObjectIdenticalTo_(v29, v30, v31, v32, v33, styleCopy);

        if (v34 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        v35 = objc_msgSend_valueAxisStyles(self, v23, v24, v25, v26);
        objc_opt_class();
        v36 = TSUCheckedDynamicCast();
        objc_msgSend_replaceObjectAtIndex_withObject_(v36, v37, v38, v39, v40, v34, withStyleCopy);

        v27 = objc_msgSend_valueAxisStyles(self, v41, v42, v43, v44);
      }

      while (v27);
    }

    v45 = objc_msgSend_categoryAxisStyles(self, v23, v24, v25, v26);
    if (v45)
    {
      v50 = v45;
      do
      {
        v51 = objc_msgSend_categoryAxisStyles(self, v46, v47, v48, v49);
        objc_opt_class();
        v52 = TSUCheckedDynamicCast();
        v57 = objc_msgSend_indexOfObjectIdenticalTo_(v52, v53, v54, v55, v56, styleCopy);

        if (v57 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        v58 = objc_msgSend_categoryAxisStyles(self, v46, v47, v48, v49);
        objc_opt_class();
        v59 = TSUCheckedDynamicCast();
        objc_msgSend_replaceObjectAtIndex_withObject_(v59, v60, v61, v62, v63, v57, withStyleCopy);

        v50 = objc_msgSend_categoryAxisStyles(self, v64, v65, v66, v67);
      }

      while (v50);
    }

    v68 = objc_msgSend_seriesThemeStyles(self, v46, v47, v48, v49);
    if (v68)
    {
      v73 = v68;
      do
      {
        v74 = objc_msgSend_seriesThemeStyles(self, v69, v70, v71, v72);
        objc_opt_class();
        v75 = TSUCheckedDynamicCast();
        v80 = objc_msgSend_indexOfObjectIdenticalTo_(v75, v76, v77, v78, v79, styleCopy);

        if (v80 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        v81 = objc_msgSend_seriesThemeStyles(self, v69, v70, v71, v72);
        objc_opt_class();
        v82 = TSUCheckedDynamicCast();
        objc_msgSend_replaceObjectAtIndex_withObject_(v82, v83, v84, v85, v86, v80, withStyleCopy);

        v73 = objc_msgSend_seriesThemeStyles(self, v87, v88, v89, v90);
      }

      while (v73);
    }

    v91 = objc_msgSend_seriesPrivateStyles(self, v69, v70, v71, v72);
    if (v91)
    {
      v96 = v91;
      do
      {
        v97 = objc_msgSend_seriesPrivateStyles(self, v92, v93, v94, v95);
        objc_opt_class();
        v98 = TSUCheckedDynamicCast();
        v103 = objc_msgSend_indexOfObjectIdenticalTo_(v98, v99, v100, v101, v102, styleCopy);

        if (v103 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        v104 = objc_msgSend_seriesPrivateStyles(self, v92, v93, v94, v95);
        objc_opt_class();
        v105 = TSUCheckedDynamicCast();
        objc_msgSend_replaceObjectAtIndex_withObject_(v105, v106, v107, v108, v109, v103, withStyleCopy);

        v96 = objc_msgSend_seriesPrivateStyles(self, v110, v111, v112, v113);
      }

      while (v96);
    }

    v114 = objc_msgSend_paragraphStyles(self, v92, v93, v94, v95);
    if (v114)
    {
      v119 = v114;
      do
      {
        v120 = objc_msgSend_paragraphStyles(self, v115, v116, v117, v118);
        objc_opt_class();
        v121 = TSUCheckedDynamicCast();
        v126 = objc_msgSend_indexOfObjectIdenticalTo_(v121, v122, v123, v124, v125, styleCopy);

        if (v126 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        v127 = objc_msgSend_paragraphStyles(self, v115, v116, v117, v118);
        objc_opt_class();
        v128 = TSUCheckedDynamicCast();
        objc_msgSend_replaceObjectAtIndex_withObject_(v128, v129, v130, v131, v132, v126, withStyleCopy);

        v119 = objc_msgSend_paragraphStyles(self, v133, v134, v135, v136);
      }

      while (v119);
    }

    v137 = objc_msgSend_referenceLineThemeStyle(self, v115, v116, v117, v118);

    if (v137 == styleCopy)
    {
      objc_msgSend_setReferenceLineThemeStyle_(self, v138, v139, v140, v141, withStyleCopy);
    }

    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v142 = objc_msgSend_referenceLineStyles(self, v138, 0.0, v140, v141);
    v147 = objc_msgSend_allKeys(v142, v143, v144, v145, v146);

    v152 = objc_msgSend_countByEnumeratingWithState_objects_count_(v147, v148, v149, v150, v151, &v188, v192, 16);
    if (v152)
    {
      v157 = v152;
      v187 = *v189;
      do
      {
        for (i = 0; i != v157; ++i)
        {
          if (*v189 != v187)
          {
            objc_enumerationMutation(v147);
          }

          v159 = *(*(&v188 + 1) + 8 * i);
          selfCopy = self;
          v161 = objc_msgSend_referenceLineStyles(self, v153, v154, v155, v156);
          v166 = objc_msgSend_objectForKeyedSubscript_(v161, v162, v163, v164, v165, v159);
          v171 = objc_msgSend_mutableCopy(v166, v167, v168, v169, v170);

          if (v171)
          {
            v176 = objc_msgSend_indexOfObjectIdenticalTo_(v171, v172, v173, v174, v175, styleCopy);
            if (v176 != 0x7FFFFFFFFFFFFFFFLL)
            {
              for (j = v176; j != 0x7FFFFFFFFFFFFFFFLL; j = objc_msgSend_indexOfObjectIdenticalTo_(v171, v178, v179, v180, v181, styleCopy))
              {
                objc_msgSend_replaceObjectAtIndex_withObject_(v171, v172, v173, v174, v175, j, withStyleCopy);
              }
            }
          }

          self = selfCopy;
          v182 = objc_msgSend_referenceLineStyles(selfCopy, v172, v173, v174, v175);
          objc_msgSend_setObject_forKeyedSubscript_(v182, v183, v184, v185, v186, v171, v159);
        }

        v157 = objc_msgSend_countByEnumeratingWithState_objects_count_(v147, v153, v154, v155, v156, &v188, v192, 16);
      }

      while (v157);
    }
  }
}

- (BOOL)otherStateIsEquivalent:(id)equivalent ignoringSeriesThemeStyles:(BOOL)styles
{
  stylesCopy = styles;
  v399 = *MEMORY[0x277D85DE8];
  equivalentCopy = equivalent;
  selfCopy = self;
  v381 = selfCopy;
  if (stylesCopy)
  {
    v12 = objc_msgSend_seriesThemeStyles(selfCopy, v8, v9, v10, v11);
    v17 = objc_msgSend_count(v12, v13, v14, v15, v16);

    v22 = objc_msgSend_seriesPrivateStyles(v381, v18, v19, v20, v21);
    v27 = objc_msgSend_count(v22, v23, v24, v25, v26);

    if (v17 <= v27)
    {
      v32 = v27;
    }

    else
    {
      v32 = v17;
    }

    v33 = objc_msgSend_seriesThemeStyles(equivalentCopy, v28, v29, v30, v31);
    v38 = objc_msgSend_count(v33, v34, v35, v36, v37);

    v43 = objc_msgSend_seriesPrivateStyles(equivalentCopy, v39, v40, v41, v42);
    v48 = objc_msgSend_count(v43, v44, v45, v46, v47);

    if (v38 <= v48)
    {
      v53 = v48;
    }

    else
    {
      v53 = v38;
    }

    if (v32 <= v53)
    {
      v54 = v53;
      objc_msgSend_stateByExpandingSeriesStylesForSeriesCount_(v381, v49, v50, v51, v52, v53);
    }

    else
    {
      v54 = v32;
      objc_msgSend_stateByExpandingSeriesStylesForSeriesCount_(v381, v49, v50, v51, v52, v32);
    }
    v55 = ;

    v60 = objc_msgSend_seriesThemeStyles(v55, v56, v57, v58, v59);
    objc_msgSend_removeAllObjects(v60, v61, v62, v63, v64);

    v69 = objc_msgSend_stateByExpandingSeriesStylesForSeriesCount_(equivalentCopy, v65, v66, v67, v68, v54);

    v74 = objc_msgSend_seriesThemeStyles(v69, v70, v71, v72, v73);
    objc_msgSend_removeAllObjects(v74, v75, v76, v77, v78);
  }

  else
  {
    v55 = selfCopy;
    v69 = equivalentCopy;
  }

  v79 = objc_msgSend_valueAxisStyles(v55, v8, v9, v10, v11);
  v84 = objc_msgSend_count(v79, v80, v81, v82, v83);
  v89 = objc_msgSend_valueAxisStyles(v69, v85, v86, v87, v88);
  v94 = objc_msgSend_count(v89, v90, v91, v92, v93);

  if (v84 == v94 && (objc_msgSend_categoryAxisStyles(v55, v95, v96, v97, v98), v99 = objc_claimAutoreleasedReturnValue(), v104 = objc_msgSend_count(v99, v100, v101, v102, v103), objc_msgSend_categoryAxisStyles(v69, v105, v106, v107, v108), v109 = objc_claimAutoreleasedReturnValue(), v114 = objc_msgSend_count(v109, v110, v111, v112, v113), v109, v99, v104 == v114) && (objc_msgSend_seriesThemeStyles(v55, v115, v116, v117, v118), v119 = objc_claimAutoreleasedReturnValue(), v124 = objc_msgSend_count(v119, v120, v121, v122, v123), objc_msgSend_seriesThemeStyles(v69, v125, v126, v127, v128), v129 = objc_claimAutoreleasedReturnValue(), v134 = objc_msgSend_count(v129, v130, v131, v132, v133), v129, v119, v124 == v134) && (objc_msgSend_seriesPrivateStyles(v55, v135, v136, v137, v138), v139 = objc_claimAutoreleasedReturnValue(), v144 = objc_msgSend_count(v139, v140, v141, v142, v143), objc_msgSend_seriesPrivateStyles(v69, v145, v146, v147, v148), v149 = objc_claimAutoreleasedReturnValue(), v154 = objc_msgSend_count(v149, v150, v151, v152, v153), v149, v139, v144 == v154))
  {
    v159 = objc_msgSend_referenceLineStyles(v55, v155, v156, v157, v158);
    v164 = objc_msgSend_allKeys(v159, v160, v161, v162, v163);
    v169 = objc_msgSend_sortedArrayUsingSelector_(v164, v165, v166, v167, v168, sel_compare_);
    v170 = v169;
    v171 = MEMORY[0x277CBEBF8];
    if (v169)
    {
      v172 = v169;
    }

    else
    {
      v172 = MEMORY[0x277CBEBF8];
    }

    v377 = v172;

    v177 = objc_msgSend_referenceLineStyles(v69, v173, v174, v175, v176);
    v182 = objc_msgSend_allKeys(v177, v178, v179, v180, v181);
    v187 = objc_msgSend_sortedArrayUsingSelector_(v182, v183, v184, v185, v186, sel_compare_);
    v188 = v187;
    if (v187)
    {
      v189 = v187;
    }

    else
    {
      v189 = v171;
    }

    v190 = v189;

    if (objc_msgSend_isEqual_(v377, v191, v192, v193, v194, v190))
    {
      v374 = v190;
      v396 = 0u;
      v397 = 0u;
      v394 = 0u;
      v395 = 0u;
      obj = v377;
      v199 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v195, v196, v197, v198, &v394, v398, 16);
      if (v199)
      {
        v379 = *v395;
        while (2)
        {
          for (i = 0; i != v199; ++i)
          {
            if (*v395 != v379)
            {
              objc_enumerationMutation(obj);
            }

            v201 = *(*(&v394 + 1) + 8 * i);
            objc_opt_class();
            v206 = objc_msgSend_referenceLineStyles(v55, v202, v203, v204, v205);
            v211 = objc_msgSend_objectForKey_(v206, v207, v208, v209, v210, v201);
            v212 = TSUDynamicCast();

            objc_opt_class();
            v217 = objc_msgSend_referenceLineStyles(v69, v213, v214, v215, v216);
            v222 = objc_msgSend_objectForKey_(v217, v218, v219, v220, v221, v201);
            v223 = TSUDynamicCast();

            v228 = objc_msgSend_count(v212, v224, v225, v226, v227);
            LODWORD(v228) = v228 == objc_msgSend_count(v223, v229, v230, v231, v232);

            if (!v228)
            {
              v300 = 0;
              goto LABEL_50;
            }
          }

          v199 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v233, v234, v235, v236, &v394, v398, 16);
          if (v199)
          {
            continue;
          }

          break;
        }
      }

      v237 = MEMORY[0x277CBEB18];
      v242 = objc_msgSend_allStyles(v55, v238, v239, v240, v241);
      obj = objc_msgSend_arrayWithArray_(v237, v243, v244, v245, v246, v242);

      v251 = objc_msgSend_paragraphStyles(v55, v247, v248, v249, v250);
      objc_msgSend_tsu_removeObjectsIdenticalToObjectsInArray_(obj, v252, v253, v254, v255, v251);

      v256 = MEMORY[0x277CBEB18];
      v261 = objc_msgSend_allStyles(v69, v257, v258, v259, v260);
      v376 = objc_msgSend_arrayWithArray_(v256, v262, v263, v264, v265, v261);

      v270 = objc_msgSend_paragraphStyles(v69, v266, v267, v268, v269);
      objc_msgSend_tsu_removeObjectsIdenticalToObjectsInArray_(v376, v271, v272, v273, v274, v270);

      v279 = objc_msgSend_count(obj, v275, v276, v277, v278);
      if (v279 == objc_msgSend_count(v376, v280, v281, v282, v283))
      {
        v372 = objc_msgSend_count(obj, v284, v285, v286, v287);
        v375 = objc_msgSend_paragraphStyleIndexProperties(TSCHChartInfo, v288, v289, v290, v291);
        v373 = objc_msgSend_paragraphStyleIndexPropertiesInUse(TSCHChartInfo, v292, v293, v294, v295);
        if (v372)
        {
          v300 = 0;
          v301 = 0;
          v371 = v383;
          while (1)
          {
            v302 = objc_msgSend_objectAtIndexedSubscript_(obj, v296, v297, v298, v299, v301, v371);
            v307 = objc_msgSend_objectAtIndexedSubscript_(v376, v303, v304, v305, v306, v301);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              break;
            }

            v380 = objc_msgSend_propertySet(MEMORY[0x277D80AA8], v308, v309, v310, v311);
            v312 = objc_opt_class();
            v317 = objc_msgSend_properties(v312, v313, v314, v315, v316);
            objc_msgSend_addProperties_(v380, v318, v319, v320, v321, v317);

            v322 = objc_opt_class();
            v327 = objc_msgSend_properties(v322, v323, v324, v325, v326);
            objc_msgSend_addProperties_(v380, v328, v329, v330, v331, v327);

            objc_msgSend_removeProperties_(v380, v332, v333, v334, v335, v375);
            v340 = objc_msgSend_fullPropertyMap(v302, v336, v337, v338, v339);
            objc_msgSend_removeValuesForProperties_(v340, v341, v342, v343, v344, v375);
            v349 = objc_msgSend_fullPropertyMap(v307, v345, v346, v347, v348);
            v354 = objc_msgSend_allProperties(v340, v350, v351, v352, v353);
            objc_msgSend_filterWithProperties_(v349, v355, v356, v357, v358, v354);

            if ((objc_msgSend_isEqual_(v340, v359, v360, v361, v362, v349) & 1) == 0)
            {

              break;
            }

            v390 = 0;
            v391 = &v390;
            v392 = 0x2020000000;
            v393 = 1;
            v382[0] = MEMORY[0x277D85DD0];
            v382[1] = 3221225472;
            v383[0] = sub_2763677A4;
            v383[1] = &unk_27A6B9E68;
            v363 = v302;
            v384 = v363;
            v364 = v307;
            v385 = v364;
            v386 = v55;
            v387 = v69;
            v388 = v381;
            v389 = &v390;
            objc_msgSend_enumeratePropertiesUsingBlock_(v373, v365, v366, v367, v368, v382);
            v369 = *(v391 + 24) == 0;

            _Block_object_dispose(&v390, 8);
            if (!v369)
            {
              v300 = ++v301 >= v372;
              if (v372 != v301)
              {
                continue;
              }
            }

            goto LABEL_48;
          }
        }

        else
        {
          v300 = 1;
        }

LABEL_48:
      }

      else
      {
        v300 = 0;
      }

LABEL_50:
      v190 = v374;
    }

    else
    {
      v300 = 0;
    }
  }

  else
  {
    v300 = 0;
  }

  return v300;
}

- (id)stateByExpandingSeriesStylesForSeriesCount:(unint64_t)count
{
  v8 = objc_msgSend_seriesThemeStyles(self, a2, v3, v4, v5);
  v13 = objc_msgSend_count(v8, v9, v10, v11, v12);
  if (!v13)
  {
    selfCopy = self;
    goto LABEL_19;
  }

  v18 = v13;
  v83 = objc_msgSend_copy(self, v14, v15, v16, v17);
  v23 = objc_msgSend_seriesPrivateStyles(v83, v19, v20, v21, v22);
  v29 = objc_msgSend_count(v23, v24, v25, v26, v27);
  for (i = 0; i != v18; ++i)
  {
    if (v29 <= i)
    {
      v45 = objc_msgSend_objectAtIndexedSubscript_(v8, v28, v30, v31, v32, i);
      objc_msgSend_addObject_(v23, v50, v51, v52, v53, v45);
    }

    else
    {
      v34 = objc_msgSend_null(MEMORY[0x277CBEB68], v28, v30, v31, v32);
      v39 = objc_msgSend_objectAtIndexedSubscript_(v23, v35, v36, v37, v38, i);
      isEqual = objc_msgSend_isEqual_(v34, v40, v41, v42, v43, v39);

      if (!isEqual)
      {
        continue;
      }

      v45 = objc_msgSend_objectAtIndexedSubscript_(v8, v28, v30, v31, v32, i);
      objc_msgSend_replaceObjectAtIndex_withObject_(v23, v46, v47, v48, v49, i, v45);
    }
  }

  v54 = objc_msgSend_count(v23, v28, v30, v31, v32);
  if (v18 < count)
  {
    v59 = v54;
    v60 = v18;
    while (v59 > v60)
    {
      v61 = objc_msgSend_null(MEMORY[0x277CBEB68], v55, v56, v57, v58);
      v66 = objc_msgSend_objectAtIndexedSubscript_(v23, v62, v63, v64, v65, v60);
      v71 = objc_msgSend_isEqual_(v61, v67, v68, v69, v70, v66);

      if (v71)
      {
        v72 = objc_msgSend_objectAtIndexedSubscript_(v8, v55, v56, v57, v58, v60 % v18);
        objc_msgSend_replaceObjectAtIndex_withObject_(v23, v73, v74, v75, v76, v60, v72);
LABEL_15:
      }

      if (count == ++v60)
      {
        goto LABEL_17;
      }
    }

    v72 = objc_msgSend_objectAtIndexedSubscript_(v8, v55, v56, v57, v58, v60 % v18);
    objc_msgSend_addObject_(v23, v77, v78, v79, v80, v72);
    goto LABEL_15;
  }

LABEL_17:

  selfCopy = v83;
LABEL_19:

  return selfCopy;
}

- (id)stateByReducingSeriesPrivateStyles
{
  selfCopy = self;
  v7 = objc_msgSend_seriesThemeStyles(selfCopy, v3, v4, v5, v6);
  if (objc_msgSend_count(v7, v8, v9, v10, v11))
  {
    objc_msgSend_seriesThemeStyles(selfCopy, v12, v13, v14, v15);
  }

  else
  {
    objc_msgSend_seriesPrivateStyles(selfCopy, v12, v13, v14, v15);
  }
  v16 = ;
  v21 = objc_msgSend_count(v16, v17, v18, v19, v20);

  if (v21)
  {
    v26 = objc_msgSend_seriesPrivateStyles(selfCopy, v22, v23, v24, v25);
    v31 = objc_msgSend_count(v26, v27, v28, v29, v30);

    if (v31 - 1 < 0)
    {
      v36 = 0;
    }

    else
    {
      v36 = 0;
      do
      {
        --v31;
        v37 = objc_msgSend_seriesThemeStyles(selfCopy, v32, v33, v34, v35);
        v42 = objc_msgSend_seriesPrivateStyles(selfCopy, v38, v39, v40, v41);
        v43 = sub_276269510(v37, v42, v31);

        v48 = objc_msgSend_seriesThemeStyles(selfCopy, v44, v45, v46, v47);
        v49 = sub_276269510(v48, 0, v31);

        if (v43 == v49 || (objc_msgSend_propertyMap(v43, v50, v51, v52, v53), v54 = objc_claimAutoreleasedReturnValue(), objc_msgSend_propertyMap(v49, v55, v56, v57, v58), v59 = objc_claimAutoreleasedReturnValue(), !(v54 | v59)) || (v60 = v59, isEqual = objc_msgSend_isEqual_(v54, v50, v51, v52, v53, v59), v60, v54, isEqual))
        {
          if (!v36)
          {
            v62 = objc_msgSend_seriesPrivateStyles(selfCopy, v50, v51, v52, v53);
            v36 = objc_msgSend_mutableCopy(v62, v63, v64, v65, v66);
          }

          v67 = objc_msgSend_null(MEMORY[0x277CBEB68], v50, v51, v52, v53);
          objc_msgSend_setObject_atIndexedSubscript_(v36, v68, v69, v70, v71, v67, v31);
        }
      }

      while (v31 > 0);
      if (v36)
      {
        v72 = objc_msgSend_seriesPrivateStyles(selfCopy, v32, v33, v34, v35);
        v77 = objc_msgSend_isEqual_(v36, v73, v74, v75, v76, v72);

        if ((v77 & 1) == 0)
        {
          while (1)
          {
            v82 = objc_msgSend_lastObject(v36, v78, v79, v80, v81);
            v87 = objc_msgSend_null(MEMORY[0x277CBEB68], v83, v84, v85, v86);
            if (v82 | v87)
            {
              v92 = v87;
              v93 = objc_msgSend_isEqual_(v82, v88, v89, v90, v91, v87);

              if (!v93)
              {
                break;
              }
            }

            objc_msgSend_removeLastObject(v36, v88, v89, v90, v91);
          }

          v95 = objc_msgSend_copy(selfCopy, v88, v89, v90, v91);

          v100 = objc_msgSend_seriesPrivateStyles(v95, v96, v97, v98, v99);
          objc_msgSend_setArray_(v100, v101, v102, v103, v104, v36);

          selfCopy = v95;
        }
      }
    }

    v94 = selfCopy;
  }

  else
  {
    v94 = selfCopy;
  }

  return v94;
}

- (id)stateByExpandingReferenceLineStylesForCount:(unint64_t)count
{
  v7 = objc_msgSend_copy(self, a2, v3, v4, v5);
  v12 = objc_msgSend_referenceLineStyles(v7, v8, v9, v10, v11);
  v17 = objc_msgSend_allKeys(v12, v13, v14, v15, v16);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_2763681B4;
  v24[3] = &unk_27A6B9E90;
  v18 = v7;
  v25 = v18;
  countCopy = count;
  objc_msgSend_enumerateObjectsUsingBlock_(v17, v19, v20, v21, v22, v24);

  return v18;
}

- (id)stateByReducingReferenceLineStyles
{
  selfCopy = self;
  v150 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_referenceLineStyles(self, a2, v2, v3, v4);
  v11 = objc_msgSend_count(v6, v7, v8, v9, v10);

  if (v11)
  {
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v15 = objc_msgSend_referenceLineStyles(selfCopy, v12, 0.0, v13, v14);
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, v17, v18, v19, &v144, v149, 16);
    if (v20)
    {
      v25 = v20;
      v26 = *v145;
      while (2)
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v145 != v26)
          {
            objc_enumerationMutation(v15);
          }

          v28 = *(*(&v144 + 1) + 8 * i);
          v29 = objc_msgSend_referenceLineStyles(selfCopy, v21, v22, v23, v24);
          v34 = objc_msgSend_objectForKeyedSubscript_(v29, v30, v31, v32, v33, v28);

          v39 = objc_msgSend_count(v34, v35, v36, v37, v38);
          if (v39)
          {

            v142 = 0u;
            v143 = 0u;
            v140 = 0u;
            v141 = 0u;
            v44 = objc_msgSend_referenceLineStyles(selfCopy, v41, 0.0, v42, v43);
            v49 = objc_msgSend_allKeys(v44, v45, v46, v47, v48);

            obj = v49;
            v136 = objc_msgSend_countByEnumeratingWithState_objects_count_(v49, v50, v51, v52, v53, &v140, v148, 16);
            v58 = 0;
            if (v136)
            {
              v135 = *v141;
              v134 = selfCopy;
              do
              {
                for (j = 0; j != v136; ++j)
                {
                  if (*v141 != v135)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v60 = *(*(&v140 + 1) + 8 * j);
                  v61 = objc_msgSend_referenceLineStyles(selfCopy, v54, v55, v56, v57);
                  v66 = objc_msgSend_objectForKeyedSubscript_(v61, v62, v63, v64, v65, v60);

                  v139[0] = MEMORY[0x277D85DD0];
                  v139[1] = 3221225472;
                  v139[2] = sub_27636877C;
                  v139[3] = &unk_27A6B9EB8;
                  v139[4] = selfCopy;
                  v71 = objc_msgSend_indexesOfObjectsPassingTest_(v66, v67, v68, v69, v70, v139);
                  if (objc_msgSend_count(v71, v72, v73, v74, v75))
                  {
                    if (!v58)
                    {
                      v58 = objc_msgSend_copy(selfCopy, v76, v77, v78, v79);
                    }

                    v80 = objc_msgSend_mutableCopy(v66, v76, v77, v78, v79);
                    v137[0] = MEMORY[0x277D85DD0];
                    v137[1] = 3221225472;
                    v137[2] = sub_2763687D0;
                    v137[3] = &unk_27A6B9EE0;
                    v81 = v80;
                    v138 = v81;
                    objc_msgSend_enumerateIndexesUsingBlock_(v71, v82, v83, v84, v85, v137);
                    v90 = objc_msgSend_lastObject(v81, v86, v87, v88, v89);
                    v95 = objc_msgSend_null(MEMORY[0x277CBEB68], v91, v92, v93, v94);
                    isEqual = objc_msgSend_isEqual_(v90, v96, v97, v98, v99, v95);

                    if (isEqual)
                    {
                      do
                      {
                        objc_msgSend_removeLastObject(v81, v101, v102, v103, v104);
                        v109 = objc_msgSend_lastObject(v81, v105, v106, v107, v108);
                        v114 = objc_msgSend_null(MEMORY[0x277CBEB68], v110, v111, v112, v113);
                        v119 = objc_msgSend_isEqual_(v109, v115, v116, v117, v118, v114);
                      }

                      while ((v119 & 1) != 0);
                    }

                    v120 = objc_msgSend_count(v81, v101, v102, v103, v104);
                    v125 = objc_msgSend_referenceLineStyles(v58, v121, v122, v123, v124);
                    v130 = v125;
                    if (v120)
                    {
                      objc_msgSend_setObject_forKeyedSubscript_(v125, v126, v127, v128, v129, v81, v60);
                    }

                    else
                    {
                      objc_msgSend_removeObjectForKey_(v125, v126, v127, v128, v129, v60);
                    }

                    selfCopy = v134;
                  }
                }

                v136 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v54, v55, v56, v57, &v140, v148, 16);
              }

              while (v136);
            }

            if (v58)
            {
              v131 = v58;
            }

            else
            {
              v131 = selfCopy;
            }

            v40 = v131;

            goto LABEL_32;
          }
        }

        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v21, v22, v23, v24, &v144, v149, 16);
        if (v25)
        {
          continue;
        }

        break;
      }
    }
  }

  v40 = selfCopy;
LABEL_32:

  return v40;
}

- (id)stateByExpandingForSeriesCount:(unint64_t)count andReferenceLineCount:(unint64_t)lineCount
{
  selfCopy = self;
  v11 = selfCopy;
  if (count != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = objc_msgSend_stateByExpandingSeriesStylesForSeriesCount_(selfCopy, v7, v8, v9, v10, count);

    v11 = v12;
  }

  if (lineCount != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = objc_msgSend_stateByExpandingReferenceLineStylesForCount_(v11, v7, v8, v9, v10, lineCount);

    v11 = v13;
  }

  return v11;
}

- (id)stateByReducingSeriesPrivateStylesAndReferenceLineStyles
{
  v5 = objc_msgSend_stateByReducingSeriesPrivateStyles(self, a2, v2, v3, v4);
  v10 = objc_msgSend_stateByReducingReferenceLineStyles(v5, v6, v7, v8, v9);

  return v10;
}

- (NSDictionary)semanticTagToStyleMap
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2, v3, v4);
  v11 = objc_msgSend_chartStyle(self, v7, v8, v9, v10);
  v16 = objc_msgSend_styleSemanticTagWithType_index_(TSCHStyleSemanticTag, v12, v13, v14, v15, 1, 0);
  objc_msgSend_setObject_forKey_(v6, v17, v18, v19, v20, v11, v16);

  v25 = objc_msgSend_legendStyle(self, v21, v22, v23, v24);
  v30 = objc_msgSend_styleSemanticTagWithType_index_(TSCHStyleSemanticTag, v26, v27, v28, v29, 3, 0);
  objc_msgSend_setObject_forKey_(v6, v31, v32, v33, v34, v25, v30);

  v39 = objc_msgSend_valueAxisStyles(self, v35, v36, v37, v38);
  v111[0] = MEMORY[0x277D85DD0];
  v111[1] = 3221225472;
  v111[2] = sub_276368C74;
  v111[3] = &unk_27A6B9F08;
  v40 = v6;
  v112 = v40;
  objc_msgSend_enumerateObjectsUsingBlock_(v39, v41, v42, v43, v44, v111);

  v49 = objc_msgSend_categoryAxisStyles(self, v45, v46, v47, v48);
  v109[0] = MEMORY[0x277D85DD0];
  v109[1] = 3221225472;
  v109[2] = sub_276368D0C;
  v109[3] = &unk_27A6B9F08;
  v50 = v40;
  v110 = v50;
  objc_msgSend_enumerateObjectsUsingBlock_(v49, v51, v52, v53, v54, v109);

  v59 = objc_msgSend_seriesThemeStyles(self, v55, v56, v57, v58);
  v107[0] = MEMORY[0x277D85DD0];
  v107[1] = 3221225472;
  v107[2] = sub_276368DA4;
  v107[3] = &unk_27A6B9F08;
  v60 = v50;
  v108 = v60;
  objc_msgSend_enumerateObjectsUsingBlock_(v59, v61, v62, v63, v64, v107);

  v69 = objc_msgSend_seriesPrivateStyles(self, v65, v66, v67, v68);
  v105[0] = MEMORY[0x277D85DD0];
  v105[1] = 3221225472;
  v105[2] = sub_276368E3C;
  v105[3] = &unk_27A6B9F08;
  v70 = v60;
  v106 = v70;
  objc_msgSend_enumerateObjectsUsingBlock_(v69, v71, v72, v73, v74, v105);

  v79 = objc_msgSend_referenceLineThemeStyle(self, v75, v76, v77, v78);

  if (v79)
  {
    v84 = objc_msgSend_referenceLineThemeStyle(self, v80, v81, v82, v83);
    v89 = objc_msgSend_styleSemanticTagWithType_index_(TSCHStyleSemanticTag, v85, v86, v87, v88, 15, 0);
    objc_msgSend_setObject_forKey_(v70, v90, v91, v92, v93, v84, v89);
  }

  v94 = objc_msgSend_referenceLineStyles(self, v80, v81, v82, v83);
  v103[0] = MEMORY[0x277D85DD0];
  v103[1] = 3221225472;
  v103[2] = sub_276368ED4;
  v103[3] = &unk_27A6B7078;
  v95 = v70;
  v104 = v95;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v94, v96, v97, v98, v99, v103);

  v100 = v104;
  v101 = v95;

  return v95;
}

- (TSURetainedPointerKeyDictionary)styleToSemanticTagsMap
{
  v3 = objc_alloc_init(MEMORY[0x277D81308]);
  v8 = objc_msgSend_semanticTagToStyleMap(self, v4, v5, v6, v7);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2763690FC;
  v15[3] = &unk_27A6B9F58;
  v9 = v3;
  v16 = v9;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v8, v10, v11, v12, v13, v15);

  return v9;
}

- (void)enumerateSemanticTagsAndUsagesWithPropertySetType:(int64_t)type usingBlock:(id)block
{
  v67 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v52 = objc_msgSend_paragraphStyleIndexProperties(TSCHChartInfo, v5, v6, v7, v8);
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 0;
  objc_msgSend_semanticTagToStyleMap(self, v9, COERCE_DOUBLE(0x2020000000), v10, v11);
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v12 = v59 = 0u;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, v14, v15, v16, &v58, v66, 16);
  if (v17)
  {
    v18 = *v59;
LABEL_3:
    v19 = 0;
    while (1)
    {
      if (*v59 != v18)
      {
        objc_enumerationMutation(v12);
      }

      if (v63[3])
      {
        break;
      }

      v20 = *(*(&v58 + 1) + 8 * v19);
      objc_opt_class();
      v25 = objc_msgSend_objectForKey_(v12, v21, v22, v23, v24, v20);
      v26 = TSUCheckedDynamicCast();

      v31 = objc_msgSend_p_propertySetWithPropertySetType_forStyle_(self, v27, v28, v29, v30, type, v26);
      v36 = objc_msgSend_mutableCopy(v31, v32, v33, v34, v35);

      objc_msgSend_intersectPropertySet_(v36, v37, v38, v39, v40, v52);
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = sub_276369428;
      v53[3] = &unk_27A6B9F80;
      v41 = v26;
      v54 = v41;
      v55 = v20;
      v56 = blockCopy;
      v57 = &v62;
      objc_msgSend_enumeratePropertiesUsingBlock_(v36, v42, v43, v44, v45, v53);

      if (v17 == ++v19)
      {
        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v46, v47, v48, v49, &v58, v66, 16);
        if (v17)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  _Block_object_dispose(&v62, 8);
}

- (id)semanticUsagesToParagraphStyleMapWithPropertySetType:(int64_t)type filteredBySemanticUsages:(id)usages
{
  usagesCopy = usages;
  v11 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v7, v8, v9, v10);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_2763695C0;
  v24[3] = &unk_27A6B9FA8;
  v25 = usagesCopy;
  selfCopy = self;
  v27 = v11;
  v12 = v11;
  v13 = usagesCopy;
  objc_msgSend_enumerateSemanticTagsAndUsagesWithPropertySetType_usingBlock_(self, v14, v15, v16, v17, type, v24);
  v22 = objc_msgSend_copy(v12, v18, v19, v20, v21);

  return v22;
}

- (id)semanticUsagesOfParagraphStylePropertiesWithPropertySetType:(int64_t)type
{
  v8 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v3, v4, v5);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2763698D4;
  v20[3] = &unk_27A6B9FD0;
  v21 = v8;
  v9 = v8;
  objc_msgSend_enumerateSemanticTagsAndUsagesWithPropertySetType_usingBlock_(self, v10, v11, v12, v13, type, v20);
  v18 = objc_msgSend_copy(v9, v14, v15, v16, v17);

  return v18;
}

- (id)styleLookupSemanticTagForSemanticTag:(id)tag
{
  tagCopy = tag;
  if (objc_msgSend_type(tagCopy, v5, v6, v7, v8) == 10)
  {
    v13 = objc_msgSend_index(tagCopy, v9, v10, v11, v12);

    v18 = objc_msgSend_seriesThemeStyles(self, v14, v15, v16, v17);
    v23 = objc_msgSend_count(v18, v19, v20, v21, v22);
    v28 = objc_msgSend_styleSemanticTagWithType_index_(TSCHStyleSemanticTag, v24, v25, v26, v27, 9, v13 % v23);
  }

  else
  {
    v29 = objc_msgSend_type(tagCopy, v9, v10, v11, v12);

    if (v29 == 13)
    {
      v28 = objc_msgSend_styleSemanticTagWithType_index_(TSCHStyleSemanticTag, v30, v31, v32, v33, 15, 0);
    }

    else
    {
      v28 = 0;
    }
  }

  return v28;
}

- (id)styleForSemanticTag:(id)tag
{
  tagCopy = tag;
  v9 = objc_msgSend_type(tagCopy, v5, v6, v7, v8);
  if (v9 > 8)
  {
    if (v9 > 12)
    {
      if (v9 == 13)
      {
        v102 = objc_msgSend_index(tagCopy, v10, v11, v12, v13);
        v93 = objc_msgSend_axisIDFromStyleSwapOrStyleOwnerIndex_(TSCHReferenceLine, v103, v104, v105, v106, v102);
        v111 = objc_msgSend_index(tagCopy, v107, v108, v109, v110);
        v116 = objc_msgSend_refLineIndexFromStyleSwapOrStyleOwnerIndex_(TSCHReferenceLine, v112, v113, v114, v115, v111);
        objc_opt_class();
        v121 = objc_msgSend_referenceLineStyles(self, v117, v118, v119, v120);
        v126 = objc_msgSend_objectForKeyedSubscript_(v121, v122, v123, v124, v125, v93);
        v127 = TSUCheckedDynamicCast();

        v92 = objc_msgSend_objectAtIndexedSubscript_(v127, v128, v129, v130, v131, v116);

        goto LABEL_27;
      }

      if (v9 == 15)
      {
        if (objc_msgSend_index(tagCopy, v10, v11, v12, v13))
        {
          v48 = MEMORY[0x277D81150];
          v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, v45, v46, v47, "[TSCHChartStyleState styleForSemanticTag:]");
          v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, v51, v52, v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStyleState.m");
          v59 = objc_msgSend_index(tagCopy, v55, v56, v57, v58);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v60, v61, v62, v63, v49, v54, 847, 0, "Index mismatch expects 0 got %lu", v59);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v64, v65, v66, v67);
        }

        v38 = objc_msgSend_referenceLineThemeStyle(self, v44, v45, v46, v47);
        goto LABEL_23;
      }
    }

    else
    {
      if (v9 == 9)
      {
        v39 = objc_msgSend_seriesThemeStyles(self, v10, v11, v12, v13);
        goto LABEL_26;
      }

      if (v9 == 10)
      {
        v39 = objc_msgSend_seriesPrivateStyles(self, v10, v11, v12, v13);
LABEL_26:
        v93 = v39;
        v94 = objc_msgSend_index(tagCopy, v40, v41, v42, v43);
        v92 = objc_msgSend_tsu_rangeCheckedObjectAtIndex_(v93, v95, v96, v97, v98, v94);
LABEL_27:

        goto LABEL_28;
      }
    }
  }

  else
  {
    if (v9 <= 4)
    {
      if (v9 == 1)
      {
        if (objc_msgSend_index(tagCopy, v10, v11, v12, v13))
        {
          v72 = MEMORY[0x277D81150];
          v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v68, v69, v70, v71, "[TSCHChartStyleState styleForSemanticTag:]");
          v78 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, v75, v76, v77, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStyleState.m");
          v83 = objc_msgSend_index(tagCopy, v79, v80, v81, v82);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v72, v84, v85, v86, v87, v73, v78, 821, 0, "Index mismatch expects 0 got %lu", v83);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v88, v89, v90, v91);
        }

        v38 = objc_msgSend_chartStyle(self, v68, v69, v70, v71);
        goto LABEL_23;
      }

      if (v9 == 3)
      {
        if (objc_msgSend_index(tagCopy, v10, v11, v12, v13))
        {
          v18 = MEMORY[0x277D81150];
          v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "[TSCHChartStyleState styleForSemanticTag:]");
          v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStyleState.m");
          v29 = objc_msgSend_index(tagCopy, v25, v26, v27, v28);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v30, v31, v32, v33, v19, v24, 826, 0, "Index mismatch expects 0 got %lu", v29);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
        }

        v38 = objc_msgSend_legendStyle(self, v14, v15, v16, v17);
LABEL_23:
        v92 = v38;
        goto LABEL_28;
      }

      goto LABEL_32;
    }

    if (v9 == 5)
    {
      v39 = objc_msgSend_valueAxisStyles(self, v10, v11, v12, v13);
      goto LABEL_26;
    }

    if (v9 == 7)
    {
      v39 = objc_msgSend_categoryAxisStyles(self, v10, v11, v12, v13);
      goto LABEL_26;
    }
  }

LABEL_32:
  v132 = MEMORY[0x277D81150];
  v133 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "[TSCHChartStyleState styleForSemanticTag:]");
  v138 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v134, v135, v136, v137, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStyleState.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v132, v139, v140, v141, v142, v133, v138, 860, 0, "Invalid semantic type from tag %@", tagCopy);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v143, v144, v145, v146);
  v92 = 0;
LABEL_28:
  v99 = objc_opt_class();
  v100 = sub_2762CD788(v99, v92);

  return v100;
}

- (id)styleToUseForSemanticTag:(id)tag
{
  tagCopy = tag;
  v9 = objc_msgSend_styleForSemanticTag_(self, v5, v6, v7, v8, tagCopy);
  if (v9)
  {
    v14 = v9;
  }

  else
  {
    v15 = objc_msgSend_styleLookupSemanticTagForSemanticTag_(self, v10, v11, v12, v13, tagCopy);
    if (v15 || (objc_msgSend_fallbackSemanticTagForSemanticTag_(self, v16, v17, v18, v19, tagCopy), (v15 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v20 = v15;
      objc_msgSend_styleForSemanticTag_(self, v16, v17, v18, v19, v15);
    }

    else
    {
      v41 = MEMORY[0x277D81150];
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "[TSCHChartStyleState styleToUseForSemanticTag:]");
      v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v44, v45, v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStyleState.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v48, v49, v50, v51, v42, v47, 876, 0, "No styleLookupSemanticTag found for tag %@", tagCopy);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53, v54, v55);
      v20 = 0;
      objc_msgSend_styleForSemanticTag_(self, v56, v57, v58, v59, 0);
    }
    v14 = ;

    if (!v14)
    {
      v25 = MEMORY[0x277D81150];
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, "[TSCHChartStyleState styleToUseForSemanticTag:]");
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStyleState.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v32, v33, v34, v35, v26, v31, 879, 0, "style not found for tag %@", tagCopy);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39);
      v14 = 0;
    }
  }

  return v14;
}

- (void)setStyle:(id)style withSemanticTag:(id)tag
{
  styleCopy = style;
  tagCopy = tag;
  switch(objc_msgSend_type(tagCopy, v7, v8, v9, v10))
  {
    case 0u:
      v107 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "[TSCHChartStyleState setStyle:withSemanticTag:]");
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v108, v109, v110, v111, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStyleState.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v107, v112, v113, v114, v115, v16, v21, 929, 0, "unknown or unimplemented swap type");
      goto LABEL_3;
    case 1u:
      if (objc_msgSend_index(tagCopy, v11, v12, v13, v14))
      {
        v120 = MEMORY[0x277D81150];
        v121 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v116, v117, v118, v119, "[TSCHChartStyleState setStyle:withSemanticTag:]");
        v126 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v122, v123, v124, v125, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStyleState.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v120, v127, v128, v129, v130, v121, v126, 895, 0, "Invalid indexing for style swap");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v131, v132, v133, v134);
      }

      objc_opt_class();
      v35 = TSUCheckedDynamicCast();
      objc_msgSend_setChartStyle_(self, v135, v136, v137, v138, v35);
      goto LABEL_19;
    case 2u:
    case 4u:
    case 6u:
    case 8u:
    case 0xBu:
    case 0xEu:
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "[TSCHChartStyleState setStyle:withSemanticTag:]");
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStyleState.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 892, 0, "TSCHChartStyleState does not contain NonStyles.");
LABEL_3:

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
      break;
    case 3u:
      if (objc_msgSend_index(tagCopy, v11, v12, v13, v14))
      {
        v151 = MEMORY[0x277D81150];
        v152 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v147, v148, v149, v150, "[TSCHChartStyleState setStyle:withSemanticTag:]");
        v157 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v153, v154, v155, v156, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStyleState.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v151, v158, v159, v160, v161, v152, v157, 899, 0, "Invalid indexing for style swap");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v162, v163, v164, v165);
      }

      objc_opt_class();
      v35 = TSUCheckedDynamicCast();
      objc_msgSend_setLegendStyle_(self, v166, v167, v168, v169, v35);
      goto LABEL_19;
    case 5u:
      objc_opt_class();
      v35 = TSUCheckedDynamicCast();
      v62 = objc_msgSend_valueAxisStyles(self, v80, v81, v82, v83);
      goto LABEL_17;
    case 7u:
      objc_opt_class();
      v35 = TSUCheckedDynamicCast();
      v62 = objc_msgSend_categoryAxisStyles(self, v143, v144, v145, v146);
      goto LABEL_17;
    case 9u:
      objc_opt_class();
      v35 = TSUCheckedDynamicCast();
      v62 = objc_msgSend_seriesThemeStyles(self, v58, v59, v60, v61);
      goto LABEL_17;
    case 0xAu:
      objc_opt_class();
      v35 = TSUCheckedDynamicCast();
      v71 = objc_msgSend_seriesPrivateStyles(self, v67, v68, v69, v70);
      v76 = objc_msgSend_index(tagCopy, v72, v73, v74, v75);
      v77 = v35;
      v78 = v71;
      v79 = 1;
      goto LABEL_18;
    case 0xCu:
      objc_opt_class();
      v35 = TSUCheckedDynamicCast();
      v62 = objc_msgSend_paragraphStyles(self, v139, v140, v141, v142);
LABEL_17:
      v71 = v62;
      v76 = objc_msgSend_index(tagCopy, v63, v64, v65, v66);
      v77 = v35;
      v78 = v71;
      v79 = 0;
LABEL_18:
      sub_27626B5EC(v77, v78, v76, v79);

      goto LABEL_19;
    case 0xDu:
      v30 = objc_msgSend_index(tagCopy, v11, v12, v13, v14);
      v35 = objc_msgSend_axisIDFromStyleSwapOrStyleOwnerIndex_(TSCHReferenceLine, v31, v32, v33, v34, v30);
      v40 = objc_msgSend_index(tagCopy, v36, v37, v38, v39);
      v45 = objc_msgSend_refLineIndexFromStyleSwapOrStyleOwnerIndex_(TSCHReferenceLine, v41, v42, v43, v44, v40);
      objc_opt_class();
      v50 = objc_msgSend_referenceLineStyles(self, v46, v47, v48, v49);
      v51 = objc_opt_class();
      v56 = objc_msgSend_tsu_objectForKey_withDefaultOfClass_(v50, v52, v53, v54, v55, v35, v51);
      v57 = TSUCheckedDynamicCast();

      sub_27626B5EC(styleCopy, v57, v45, 1);
      goto LABEL_19;
    case 0xFu:
      if (objc_msgSend_index(tagCopy, v11, v12, v13, v14))
      {
        v88 = MEMORY[0x277D81150];
        v89 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v84, v85, v86, v87, "[TSCHChartStyleState setStyle:withSemanticTag:]");
        v94 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v90, v91, v92, v93, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStyleState.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v88, v95, v96, v97, v98, v89, v94, 925, 0, "Invalid indexing for style swap");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v99, v100, v101, v102);
      }

      objc_opt_class();
      v35 = TSUCheckedDynamicCast();
      objc_msgSend_setReferenceLineThemeStyle_(self, v103, v104, v105, v106, v35);
LABEL_19:

      break;
    default:
      break;
  }
}

- (void)replaceStylesUsingBlock:(id)block
{
  v126 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (!blockCopy)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v6, v7, v8, "[TSCHChartStyleState replaceStylesUsingBlock:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStyleState.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 935, 0, "invalid nil value for '%{public}s'", "block");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v24 = objc_msgSend_semanticTagToStyleMap(self, v4, v6, v7, v8);
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, 0.0, v26, v27, &v120, v125, 16);
  v113 = v24;
  selfCopy = self;
  if (v28)
  {
    v33 = v28;
    v34 = *v121;
    v35 = (blockCopy + 2);
    v112 = blockCopy;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v121 != v34)
        {
          objc_enumerationMutation(v24);
        }

        v37 = *(*(&v120 + 1) + 8 * i);
        objc_opt_class();
        v42 = objc_msgSend_objectForKeyedSubscript_(v24, v38, v39, v40, v41, v37);
        v43 = TSUCheckedDynamicCast();

        v45 = blockCopy[2](blockCopy, v43);
        if (!v45)
        {
          v49 = v35;
          v50 = v34;
          v51 = MEMORY[0x277D81150];
          objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, v46, v47, v48, "[TSCHChartStyleState replaceStylesUsingBlock:]");
          v53 = v52 = v33;
          v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, v55, v56, v57, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStyleState.m");
          v59 = v51;
          v34 = v50;
          v35 = v49;
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v60, v61, v62, v63, v53, v58, 941, 0, "invalid nil value for '%{public}s'", "replacement");

          self = selfCopy;
          v33 = v52;
          blockCopy = v112;
          v24 = v113;
          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v64, v65, v66, v67);
        }

        objc_msgSend_setStyle_withSemanticTag_(self, v44, v46, v47, v48, v45, v37);
      }

      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v68, v69, v70, v71, &v120, v125, 16);
    }

    while (v33);
  }

  v72 = objc_msgSend_array(MEMORY[0x277CBEB18], v29, v30, v31, v32);
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  obj = objc_msgSend_paragraphStyles(self, v73, 0.0, v74, v75);
  v80 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v76, v77, v78, v79, &v116, v124, 16);
  if (v80)
  {
    v81 = v80;
    v82 = *v117;
    do
    {
      for (j = 0; j != v81; ++j)
      {
        if (*v117 != v82)
        {
          objc_enumerationMutation(obj);
        }

        v85 = blockCopy[2](blockCopy, *(*(&v116 + 1) + 8 * j));
        if (!v85)
        {
          v89 = MEMORY[0x277D81150];
          v90 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v84, v86, v87, v88, "[TSCHChartStyleState replaceStylesUsingBlock:]");
          v95 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v91, v92, v93, v94, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStyleState.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v89, v96, v97, v98, v99, v90, v95, 948, 0, "invalid nil value for '%{public}s'", "replacement");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v100, v101, v102, v103);
        }

        objc_msgSend_addObject_(v72, v84, v86, v87, v88, v85);
      }

      v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v104, v105, v106, v107, &v116, v124, 16);
    }

    while (v81);
  }

  objc_msgSend_setParagraphStyles_(selfCopy, v108, v109, v110, v111, v72);
}

- (id)fallbackSemanticTagForSemanticTag:(id)tag
{
  tagCopy = tag;
  v9 = objc_msgSend_type(tagCopy, v5, v6, v7, v8);
  if (v9 > 8)
  {
    if ((v9 - 9) < 2)
    {
      v14 = objc_msgSend_type(tagCopy, v10, v11, v12, v13);
      v19 = objc_msgSend_index(tagCopy, v15, v16, v17, v18);
      v24 = objc_msgSend_seriesThemeStyles(self, v20, v21, v22, v23);
      v29 = objc_msgSend_count(v24, v25, v26, v27, v28);
      v34 = objc_msgSend_styleSemanticTagWithType_index_(TSCHStyleSemanticTag, v30, v31, v32, v33, v14, v19 % v29);

      goto LABEL_12;
    }

    if (v9 == 13)
    {
      v34 = objc_msgSend_styleSemanticTagWithType_index_(TSCHStyleSemanticTag, v10, v11, v12, v13, 15, 0);
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v9 == 5)
  {
    v35 = objc_msgSend_type(tagCopy, v10, v11, v12, v13);
    v40 = objc_msgSend_valueAxisStyles(self, v45, v46, v47, v48);
    goto LABEL_10;
  }

  if (v9 == 7)
  {
    v35 = objc_msgSend_type(tagCopy, v10, v11, v12, v13);
    v40 = objc_msgSend_categoryAxisStyles(self, v36, v37, v38, v39);
LABEL_10:
    v49 = v40;
    v50 = objc_msgSend_count(v40, v41, v42, v43, v44);
    v34 = objc_msgSend_styleSemanticTagWithType_index_(TSCHStyleSemanticTag, v51, v52, v53, v54, v35, v50 - 1);

    goto LABEL_12;
  }

LABEL_11:
  v55 = MEMORY[0x277D81150];
  v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "[TSCHChartStyleState fallbackSemanticTagForSemanticTag:]");
  v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, v58, v59, v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStyleState.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v62, v63, v64, v65, v56, v61, 972, 0, "Missing semantic use of paragraph style in preset; This preset might be mal-formed.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67, v68, v69);
  v34 = 0;
LABEL_12:

  return v34;
}

- (id)fallbackSemanticUsageForSemanticUsage:(id)usage
{
  usageCopy = usage;
  v9 = objc_msgSend_semanticTag(usageCopy, v5, v6, v7, v8);
  v14 = objc_msgSend_fallbackSemanticTagForSemanticTag_(self, v10, v11, v12, v13, v9);

  v19 = objc_msgSend_property(usageCopy, v15, v16, v17, v18);
  v24 = objc_msgSend_pairWithSemanticTag_property_(TSCHSemanticTagAndPropertyPair, v20, v21, v22, v23, v14, v19);

  return v24;
}

@end
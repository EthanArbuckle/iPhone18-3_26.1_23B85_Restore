@interface TSCHPropertyMutationHelper
+ (BOOL)anyPropertiesChanged:(id)changed forStyleOwner:(id)owner;
+ (BOOL)propertyChanged:(int)changed forStyleOwner:(id)owner newValue:(id)value;
+ (id)convertToStyleSwapTuplesForStyleOwner:(id)owner styleSwapType:(int)type nonStyleSwapType:(int)swapType index:(unint64_t)index fromMutations:(id)mutations forImport:(BOOL)import withOptionalStyleValueConversionBlock:(id)block;
+ (id)styleSwapTuplesFromMutationTuples:(id)tuples forImport:(BOOL)import;
+ (id)transformedTuplesWithStyleOwner:(id)owner mutations:(id)mutations;
+ (int)safe_specificMutationPropertyForGeneric:(int)generic styleOwner:(id)owner allowSpecificProperties:(BOOL)properties;
+ (int)specificMutationPropertyForGeneric:(int)generic styleOwner:(id)owner allowSpecificProperties:(BOOL)properties;
+ (void)applyMutations:(id)mutations forImport:(BOOL)import forStyleOwner:(id)owner withNonStylePropertyList:(id)list toStylePropertyMap:(id)map andNonStylePropertyMap:(id)propertyMap;
+ (void)setValue:(id)value forProperty:(int)property ofStyleOwner:(id)owner;
- (TSCHPropertyMutationHelper)init;
@end

@implementation TSCHPropertyMutationHelper

- (TSCHPropertyMutationHelper)init
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCHPropertyMutationHelper init]");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPropertyMutationHelper.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 49, 0, "This is a static class.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  return 0;
}

+ (void)applyMutations:(id)mutations forImport:(BOOL)import forStyleOwner:(id)owner withNonStylePropertyList:(id)list toStylePropertyMap:(id)map andNonStylePropertyMap:(id)propertyMap
{
  importCopy = import;
  v121 = *MEMORY[0x277D85DE8];
  mutationsCopy = mutations;
  ownerCopy = owner;
  listCopy = list;
  mapCopy = map;
  propertyMapCopy = propertyMap;
  v113 = mutationsCopy;
  if (objc_msgSend_count(mutationsCopy, v14, v15, v16, v17))
  {
    v110 = mapCopy;
    v111 = propertyMapCopy;
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    obj = objc_msgSend_allKeys(mutationsCopy, v18, 0.0, v19, v20);
    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, v22, v23, v24, &v116, v120, 16);
    if (!v26)
    {
      goto LABEL_27;
    }

    v30 = *v117;
    while (1)
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v117 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(*(&v116 + 1) + 8 * i);
        v33 = objc_msgSend_tsch_stylePropertyValue(v32, v25, v27, v28, v29);
        v38 = objc_msgSend_specificMutationPropertyForGeneric_styleOwner_allowSpecificProperties_(self, v34, v35, v36, v37, v33, ownerCopy, importCopy);
        if (v38)
        {
          v39 = objc_msgSend_objectForKey_(v113, v25, v27, v28, v29, v32);
          v44 = objc_msgSend_containsProperty_(listCopy, v40, v41, v42, v43, v38);
          v45 = v110;
          if (v44)
          {
            v45 = v111;
          }

          v46 = v45;
          v47 = String();
          if (v39 == @"kTSCHPropertyMutationHelperRemovePropertyToken")
          {
LABEL_13:
            objc_msgSend_removeValueForProperty_(v46, v48, v49, v50, v51, v38);
          }

          else
          {
            v52 = v47;
            if (!v47)
            {
              v59 = objc_msgSend_null(MEMORY[0x277CBEB68], v48, v49, v50, v51);
              if (objc_msgSend_isEqual_(v59, v60, v61, v62, v63, v39))
              {
                v68 = objc_msgSend_g_objectTypeForSpecific_(TSCHBaseStyle, v64, v65, v66, v67, v38);
                isEqual = objc_msgSend_isEqual_(@"String", v69, v70, v71, v72, v68);

                if (isEqual)
                {
                  objc_msgSend_setObject_forProperty_(v46, v74, v75, v76, v77, &stru_288528678, v38);
                  goto LABEL_24;
                }
              }

              else
              {
              }

              objc_msgSend_setObject_forProperty_(v46, v74, v75, v76, v77, v39, v38);
              goto LABEL_24;
            }

            v53 = objc_msgSend_null(MEMORY[0x277CBEB68], v48, v49, v50, v51);
            v58 = objc_msgSend_isEqual_(v53, v54, v55, v56, v57, v39);

            if (v58)
            {
              goto LABEL_13;
            }

            if (v52 == 2)
            {
              objc_opt_class();
              v83 = TSUCheckedDynamicCast();
              objc_msgSend_floatValue(v83, v84, v85, v86, v87);
              objc_msgSend_setFloatValue_forProperty_(v46, v88, v89, v90, v91, v38);
            }

            else if (v52 == 1)
            {
              v78 = objc_msgSend_tsch_styleIntValue(v39, v48, v49, v50, v51);
              objc_msgSend_setIntValue_forProperty_(v46, v79, v80, v81, v82, v78, v38);
            }

            else
            {
              v92 = MEMORY[0x277D81150];
              v93 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, v49, v50, v51, "+[TSCHPropertyMutationHelper applyMutations:forImport:forStyleOwner:withNonStylePropertyList:toStylePropertyMap:andNonStylePropertyMap:]");
              v98 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v94, v95, v96, v97, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPropertyMutationHelper.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v92, v99, v100, v101, v102, v93, v98, 95, 0, "Unexpected property value type");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v103, v104, v105, v106);
            }
          }

LABEL_24:

          continue;
        }
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v25, v27, v28, v29, &v116, v120, 16);
      if (!v26)
      {
LABEL_27:

        break;
      }
    }
  }
}

+ (id)styleSwapTuplesFromMutationTuples:(id)tuples forImport:(BOOL)import
{
  importCopy = import;
  v174 = *MEMORY[0x277D85DE8];
  tuplesCopy = tuples;
  v156 = tuplesCopy;
  if (!tuplesCopy || !objc_msgSend_count(tuplesCopy, v5, v6, v7, v8))
  {
    v79 = MEMORY[0x277CBEBF8];
    goto LABEL_39;
  }

  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  obj = v156;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, v10, v11, v12, &v167, v173, 16);
  if (v14)
  {
    v18 = 0;
    v19 = *v168;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v168 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v167 + 1) + 8 * i);
        v22 = objc_msgSend_styleOwner(v21, v13, v15, v16, v17);
        v27 = objc_msgSend_context(v22, v23, v24, v25, v26);
        v28 = v27 == 0;

        if (v28)
        {
          v33 = MEMORY[0x277D81150];
          v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "+[TSCHPropertyMutationHelper styleSwapTuplesFromMutationTuples:forImport:]");
          v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPropertyMutationHelper.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v40, v41, v42, v43, v34, v39, 117, 0, "invalid nil value for '%{public}s'", "tuple.styleOwner.context");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47);
        }

        if (!v18)
        {
          v48 = objc_msgSend_styleOwner(v21, v29, v30, v31, v32);
          v18 = objc_msgSend_context(v48, v49, v50, v51, v52);
        }

        v53 = objc_msgSend_styleOwner(v21, v29, v30, v31, v32);
        v58 = objc_msgSend_context(v53, v54, v55, v56, v57);
        v59 = v58 == v18;

        if (!v59)
        {
          v60 = MEMORY[0x277D81150];
          v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v15, v16, v17, "+[TSCHPropertyMutationHelper styleSwapTuplesFromMutationTuples:forImport:]");
          v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, v63, v64, v65, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPropertyMutationHelper.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v67, v68, v69, v70, v61, v66, 123, 0, "No support for a single command spanning multiple contexts.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v71, v72, v73, v74);
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, v15, v16, v17, &v167, v173, 16);
    }

    while (v14);

    if (v18)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v80 = MEMORY[0x277D81150];
  v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v75, v76, v77, v78, "+[TSCHPropertyMutationHelper styleSwapTuplesFromMutationTuples:forImport:]");
  v86 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v82, v83, v84, v85, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPropertyMutationHelper.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v80, v87, v88, v89, v90, v81, v86, 126, 0, "invalid nil value for '%{public}s'", "context");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v91, v92, v93, v94);
  v18 = 0;
LABEL_21:
  v95 = objc_alloc_init(MEMORY[0x277D81308]);
  v165 = 0u;
  v166 = 0u;
  v163 = 0u;
  v164 = 0u;
  v96 = obj;
  v102 = objc_msgSend_countByEnumeratingWithState_objects_count_(v96, v97, v98, v99, v100, &v163, v172, 16);
  if (v102)
  {
    v106 = *v164;
    do
    {
      for (j = 0; j != v102; ++j)
      {
        if (*v164 != v106)
        {
          objc_enumerationMutation(v96);
        }

        v108 = *(*(&v163 + 1) + 8 * j);
        v109 = objc_msgSend_styleOwner(v108, v101, v103, v104, v105);
        v114 = objc_msgSend_mutations(v108, v110, v111, v112, v113);
        v119 = objc_msgSend_objectForKey_(v95, v115, v116, v117, v118, v109);
        v124 = v119;
        if (v119)
        {
          objc_msgSend_addEntriesFromDictionary_(v119, v120, v121, v122, v123, v114);
        }

        else
        {
          v124 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEB38], v120, v121, v122, v123, v114);
          objc_msgSend_setObject_forUncopiedKey_(v95, v125, v126, v127, v128, v124, v109);
        }
      }

      v102 = objc_msgSend_countByEnumeratingWithState_objects_count_(v96, v101, v103, v104, v105, &v163, v172, 16);
    }

    while (v102);
  }

  v79 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v161 = 0u;
  v162 = 0u;
  v159 = 0u;
  v160 = 0u;
  v132 = objc_msgSend_allKeys(v95, v129, 0.0, v130, v131);
  v138 = objc_msgSend_countByEnumeratingWithState_objects_count_(v132, v133, v134, v135, v136, &v159, v171, 16);
  if (v138)
  {
    v142 = *v160;
    do
    {
      for (k = 0; k != v138; ++k)
      {
        if (*v160 != v142)
        {
          objc_enumerationMutation(v132);
        }

        v144 = *(*(&v159 + 1) + 8 * k);
        v145 = objc_msgSend_objectForKey_(v95, v137, v139, v140, v141, v144);
        v150 = objc_msgSend_swapTuplesForMutations_forImport_(v144, v146, v147, v148, v149, v145, importCopy);
        objc_msgSend_addObjectsFromArray_(v79, v151, v152, v153, v154, v150);
      }

      v138 = objc_msgSend_countByEnumeratingWithState_objects_count_(v132, v137, v139, v140, v141, &v159, v171, 16);
    }

    while (v138);
  }

LABEL_39:

  return v79;
}

+ (id)convertToStyleSwapTuplesForStyleOwner:(id)owner styleSwapType:(int)type nonStyleSwapType:(int)swapType index:(unint64_t)index fromMutations:(id)mutations forImport:(BOOL)import withOptionalStyleValueConversionBlock:(id)block
{
  importCopy = import;
  ownerCopy = owner;
  mutationsCopy = mutations;
  blockCopy = block;
  v309 = ownerCopy;
  if (!ownerCopy)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "+[TSCHPropertyMutationHelper convertToStyleSwapTuplesForStyleOwner:styleSwapType:nonStyleSwapType:index:fromMutations:forImport:withOptionalStyleValueConversionBlock:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPropertyMutationHelper.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 160, 0, "invalid nil value for '%{public}s'", "styleOwner");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
  }

  v310 = objc_msgSend_chartInfo(ownerCopy, v13, v14, v15, v16);
  v37 = objc_msgSend_styleOwnerRefForStyleOwner_(v310, v32, v33, v34, v35, ownerCopy);
  v306 = v37;
  if (!v37)
  {
    v41 = MEMORY[0x277D81150];
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v38, v39, v40, "+[TSCHPropertyMutationHelper convertToStyleSwapTuplesForStyleOwner:styleSwapType:nonStyleSwapType:index:fromMutations:forImport:withOptionalStyleValueConversionBlock:]");
    v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v44, v45, v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPropertyMutationHelper.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v48, v49, v50, v51, v42, v47, 163, 0, "invalid nil value for '%{public}s'", "styleOwnerRef");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53, v54, v55);
  }

  objc_msgSend_styleClass(v37, v36, v38, v39, v40);
  v60 = objc_msgSend_style(ownerCopy, v56, v57, v58, v59);
  v312 = TSUDynamicCast();

  objc_msgSend_nonstyleClass(v37, v61, v62, v63, v64);
  v69 = objc_msgSend_nonstyle(ownerCopy, v65, v66, v67, v68);
  v313 = TSUDynamicCast();

  v74 = objc_msgSend_styleClass(v37, v70, v71, v72, v73);
  v311 = objc_msgSend_nonstyleClass(v37, v75, v76, v77, v78);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v83 = MEMORY[0x277D81150];
    v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v79, v80, v81, v82, "+[TSCHPropertyMutationHelper convertToStyleSwapTuplesForStyleOwner:styleSwapType:nonStyleSwapType:index:fromMutations:forImport:withOptionalStyleValueConversionBlock:]");
    v89 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v85, v86, v87, v88, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPropertyMutationHelper.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v83, v90, v91, v92, v93, v84, v89, 169, 0, "style class mismatch %@ expects %@", v312, v74);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v94, v95, v96, v97);
  }

  if (v313 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v98 = MEMORY[0x277D81150];
    v99 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v79, v80, v81, v82, "+[TSCHPropertyMutationHelper convertToStyleSwapTuplesForStyleOwner:styleSwapType:nonStyleSwapType:index:fromMutations:forImport:withOptionalStyleValueConversionBlock:]");
    v104 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v100, v101, v102, v103, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPropertyMutationHelper.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v98, v105, v106, v107, v108, v99, v104, 170, 0, "nonStyle class mismatch %@ expects %@", v313, v311);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v109, v110, v111, v112);
  }

  v113 = MEMORY[0x277D80AB8];
  v114 = objc_msgSend_propertyMap(v312, v79, v80, v81, v82);
  v120 = objc_msgSend_propertyMapWithPropertyMap_(v113, v115, v116, v117, v118, v114);
  if (v120)
  {
  }

  else
  {
    v120 = objc_msgSend_propertyMap(MEMORY[0x277D80AB8], v119, v121, v122, v123);

    if (!v120)
    {
      v128 = MEMORY[0x277D81150];
      v129 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v124, v125, v126, v127, "+[TSCHPropertyMutationHelper convertToStyleSwapTuplesForStyleOwner:styleSwapType:nonStyleSwapType:index:fromMutations:forImport:withOptionalStyleValueConversionBlock:]");
      v134 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v130, v131, v132, v133, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPropertyMutationHelper.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v128, v135, v136, v137, v138, v129, v134, 173, 0, "invalid nil value for '%{public}s'", "stylePropertyMap");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v139, v140, v141, v142);
      v120 = 0;
    }
  }

  v143 = objc_msgSend_propertyMap(v313, v124, v125, v126, v127);
  v149 = objc_msgSend_copy(v143, v144, v145, v146, v147);
  if (v149)
  {

    v157 = v309;
  }

  else
  {
    v149 = objc_msgSend_propertyMap(MEMORY[0x277D80AB8], v148, v150, v151, v152);

    v157 = v309;
    if (!v149)
    {
      v158 = MEMORY[0x277D81150];
      v159 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v153, v154, v155, v156, "+[TSCHPropertyMutationHelper convertToStyleSwapTuplesForStyleOwner:styleSwapType:nonStyleSwapType:index:fromMutations:forImport:withOptionalStyleValueConversionBlock:]");
      v164 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v160, v161, v162, v163, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPropertyMutationHelper.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v158, v165, v166, v167, v168, v159, v164, 175, 0, "invalid nil value for '%{public}s'", "nonStylePropertyMap");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v169, v170, v171, v172);
      v149 = 0;
    }
  }

  v304 = objc_msgSend_properties(v311, v153, v154, v155, v156);
  objc_msgSend_applyMutations_forImport_forStyleOwner_withNonStylePropertyList_toStylePropertyMap_andNonStylePropertyMap_(self, v173, v174, v175, v176, mutationsCopy, importCopy, v157, v304, v120, v149);
  v177 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v182 = objc_msgSend_propertyMap(v312, v178, v179, v180, v181);
  v183 = sub_2762CD52C(v120, v182);

  if (v183)
  {
    v188 = 0;
    v189 = 0;
  }

  else
  {
    v190 = v312;
    v195 = objc_msgSend_documentStylesheet(v310, v191, v192, v193, v194);
    v200 = objc_msgSend_variationOfStyle_propertyMap_(v195, v196, v197, v198, v199, v190, v120);

    v202 = TSUCheckedDynamicCast();
    if (!v202)
    {
      v206 = MEMORY[0x277D81150];
      v207 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v201, v203, v204, v205, "+[TSCHPropertyMutationHelper convertToStyleSwapTuplesForStyleOwner:styleSwapType:nonStyleSwapType:index:fromMutations:forImport:withOptionalStyleValueConversionBlock:]");
      v212 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v208, v209, v210, v211, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPropertyMutationHelper.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v206, v213, v214, v215, v216, v207, v212, 198, 0, "invalid nil value for '%{public}s'", "newStyle");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v217, v218, v219, v220);
    }

    v188 = v190;
    v221 = v202;
    v189 = v221;
    v222 = v188;
    v223 = v221;
    if (blockCopy)
    {
      v314 = v221;
      v315 = v188;
      blockCopy[2](blockCopy, v188, v221, &v315, &v314);
      v222 = v315;

      v223 = v314;
    }

    v224 = [TSCHStyleSwapUndoTuple alloc];
    v229 = objc_msgSend_initWithChartInfo_swapType_index_oldValue_newValue_(v224, v225, v226, v227, v228, v310, type, index, v222, v223);
    objc_msgSend_addObject_(v177, v230, v231, v232, v233, v229);

    v157 = v309;
  }

  v234 = objc_msgSend_propertyMap(v313, v184, v185, v186, v187);
  v235 = sub_2762CD52C(v149, v234);

  if (v235)
  {
    v240 = 0;
    v241 = 0;
  }

  else
  {
    v240 = v313;
    v247 = objc_msgSend_context(v157, v242, v243, v244, v245);
    if (!v247)
    {
      v247 = objc_msgSend_context(v240, v246, v248, v249, v250);
      if (!v247)
      {
        v303 = MEMORY[0x277D81150];
        v255 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v251, v252, v253, v254, "+[TSCHPropertyMutationHelper convertToStyleSwapTuplesForStyleOwner:styleSwapType:nonStyleSwapType:index:fromMutations:forImport:withOptionalStyleValueConversionBlock:]");
        v260 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v256, v257, v258, v259, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPropertyMutationHelper.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v303, v261, v262, v263, v264, v255, v260, 219, 0, "invalid nil value for '%{public}s'", "context");

        v247 = 0;
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v265, v266, v267, v268);
      }
    }

    v269 = [v311 alloc];
    v274 = objc_msgSend_name(v240, v270, v271, v272, v273);
    isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v269, v275, v276, v277, v278, v247, v274, v149, 0);

    if (objc_msgSend_overrideCount(isVariation, v280, v281, v282, v283) || (v284 = objc_opt_class(), !objc_msgSend_isSubclassOfClass_(v311, v285, v286, v287, v288, v284)))
    {
      v241 = isVariation;
    }

    else
    {

      v241 = 0;
    }

    v289 = [TSCHStyleSwapUndoTuple alloc];
    v294 = objc_msgSend_initWithChartInfo_swapType_index_oldValue_newValue_(v289, v290, v291, v292, v293, v310, swapType, index, v240, v241);
    objc_msgSend_addObject_(v177, v295, v296, v297, v298, v294);

    v157 = v309;
  }

  v299 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v236, v237, v238, v239, v177);

  return v299;
}

+ (void)setValue:(id)value forProperty:(int)property ofStyleOwner:(id)owner
{
  v6 = *&property;
  valueCopy = value;
  ownerCopy = owner;
  v8 = MEMORY[0x277CBEAC0];
  v13 = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], v9, v10, v11, v12, v6);
  v18 = objc_msgSend_dictionaryWithObject_forKey_(v8, v14, v15, v16, v17, valueCopy, v13);

  v23 = objc_msgSend_swapTuplesForMutations_forImport_(ownerCopy, v19, v20, v21, v22, v18, 0);
  v28 = objc_msgSend_chartInfo(ownerCopy, v24, v25, v26, v27);
  v33 = objc_msgSend_applyStyleSwapTuples_(v28, v29, v30, v31, v32, v23);
}

+ (int)specificMutationPropertyForGeneric:(int)generic styleOwner:(id)owner allowSpecificProperties:(BOOL)properties
{
  propertiesCopy = properties;
  v6 = *&generic;
  ownerCopy = owner;
  if (!ownerCopy)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v10, v11, v12, "+[TSCHPropertyMutationHelper specificMutationPropertyForGeneric:styleOwner:allowSpecificProperties:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPropertyMutationHelper.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 490, 0, "invalid nil value for '%{public}s'", "styleOwner");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  if (!v6)
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v10, v11, v12, "+[TSCHPropertyMutationHelper specificMutationPropertyForGeneric:styleOwner:allowSpecificProperties:]");
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPropertyMutationHelper.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v35, v36, v37, v38, v29, v34, 492, 0, "generic property is invalid");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42);
  }

  v44 = objc_msgSend_safe_specificMutationPropertyForGeneric_styleOwner_allowSpecificProperties_(self, v8, v10, v11, v12, v6, ownerCopy, propertiesCopy);
  if (!v44)
  {
    v48 = MEMORY[0x277D81150];
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v45, v46, v47, "+[TSCHPropertyMutationHelper specificMutationPropertyForGeneric:styleOwner:allowSpecificProperties:]");
    v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, v51, v52, v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPropertyMutationHelper.mm");
    v55 = String();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v56, v57, v58, v59, v49, v54, 496, 0, "Couldn't resolve specific property for generic: %ld %@", v6, v55);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v60, v61, v62, v63);
  }

  return v44;
}

+ (int)safe_specificMutationPropertyForGeneric:(int)generic styleOwner:(id)owner allowSpecificProperties:(BOOL)properties
{
  v6 = *&generic;
  ownerCopy = owner;
  v12 = ownerCopy;
  v13 = 0;
  if (v6 && ownerCopy)
  {
    v14 = objc_msgSend_specificPropertyForGeneric_(ownerCopy, v8, v9, v10, v11, v6);
    if (!v14)
    {
      v14 = objc_msgSend_defaultPropertyForGeneric_(v12, v15, v16, v17, v18, v6);
    }

    if (properties && v14 == 0)
    {
      v13 = v6;
    }

    else
    {
      v13 = v14;
    }
  }

  return v13;
}

+ (id)transformedTuplesWithStyleOwner:(id)owner mutations:(id)mutations
{
  ownerCopy = owner;
  mutationsCopy = mutations;
  v7 = [TSCHPropertyMutationTuple alloc];
  v12 = objc_msgSend_initWithStyleOwner_mutations_(v7, v8, v9, v10, v11, ownerCopy, mutationsCopy);
  v17 = objc_msgSend_transformedTuplesWithTuple_(ownerCopy, v13, v14, v15, v16, v12);

  return v17;
}

+ (BOOL)anyPropertiesChanged:(id)changed forStyleOwner:(id)owner
{
  v38 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  ownerCopy = owner;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = changedCopy;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, v10, v11, v12, &v33, v37, 16);
  if (v14)
  {
    v18 = *v34;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v34 != v18)
        {
          objc_enumerationMutation(v8);
        }

        v20 = *(*(&v33 + 1) + 8 * i);
        v21 = objc_msgSend_tsch_stylePropertyValue(v20, v13, v15, v16, v17, v33);
        v26 = objc_msgSend_objectForKeyedSubscript_(v8, v22, v23, v24, v25, v20);
        LOBYTE(v21) = objc_msgSend_propertyChanged_forStyleOwner_newValue_(self, v27, v28, v29, v30, v21, ownerCopy, v26);

        if (v21)
        {
          v31 = 1;
          goto LABEL_11;
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v13, v15, v16, v17, &v33, v37, 16);
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v31 = 0;
LABEL_11:

  return v31;
}

+ (BOOL)propertyChanged:(int)changed forStyleOwner:(id)owner newValue:(id)value
{
  v6 = *&changed;
  ownerCopy = owner;
  valueCopy = value;
  v9 = String();
  if (v9)
  {
    if (v9 == 2)
    {
      objc_opt_class();
      v14 = TSUCheckedDynamicCast();
      v43 = 0.0;
      if (objc_msgSend_hasFloatValueForProperty_value_(ownerCopy, v25, v26, v27, v28, v6, &v43))
      {
        objc_msgSend_floatValue(v14, v29, v30, v31, v32);
        v24 = v33 == v43;
LABEL_8:
        LOBYTE(v34) = !v24;
        goto LABEL_14;
      }
    }

    else
    {
      if (v9 != 1)
      {
        LOBYTE(v34) = 1;
        goto LABEL_16;
      }

      objc_opt_class();
      v14 = TSUCheckedDynamicCast();
      v43 = 0.0;
      if (objc_msgSend_hasIntValueForProperty_value_(ownerCopy, v15, v16, v17, v18, v6, &v43))
      {
        v23 = objc_msgSend_tsch_styleIntValue(v14, v19, v20, v21, v22);
        v24 = v23 == LODWORD(v43);
        goto LABEL_8;
      }
    }

    goto LABEL_13;
  }

  v42 = 0;
  hasObjectValueForProperty_value = objc_msgSend_hasObjectValueForProperty_value_(ownerCopy, v10, v11, v12, v13, v6, &v42);
  v36 = v42;
  v14 = v36;
  if (!hasObjectValueForProperty_value)
  {
LABEL_13:
    LOBYTE(v34) = 1;
    goto LABEL_14;
  }

  v34 = objc_msgSend_isEqual_(v36, v37, v38, v39, v40, valueCopy) ^ 1;
LABEL_14:

LABEL_16:
  return v34;
}

@end
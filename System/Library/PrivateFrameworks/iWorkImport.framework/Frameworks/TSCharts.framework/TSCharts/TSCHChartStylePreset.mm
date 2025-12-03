@interface TSCHChartStylePreset
+ (TSCHChartStylePreset)presetWithContext:(id)context fromStyleState:(id)state uuid:(id)uuid;
+ (id)p_getDefaultErrorBarColor:(id)color valueAxisStyles:(id)styles;
+ (id)p_getDefaultTrendLineShadowColor:(id)color;
+ (id)p_getDefaultTrendLineStrokeColor:(id)color;
+ (void)p_replaceProperty:(int)property inStyle:(id)style withObject:(id)object;
+ (void)p_useProperty:(int)property asProperty:(int)asProperty inStyle:(id)style;
+ (void)upgradeCalloutLineStylesForSeriesPresets:(id)presets valueAxisPresets:(id)axisPresets paragraphPresets:(id)paragraphPresets;
+ (void)upgradeDonutStylesForSeriesPresets:(id)presets;
+ (void)upgradeFor3DShadowPropertyMigrationFromChartStyle:(id)style seriesStyles:(id)styles;
+ (void)upgradeForTrendLineEquationAndR2LabelsPropertyMigrationFromChartStyle:(id)style seriesStyles:(id)styles;
+ (void)upgradeShadowPropertyForParagraphStyles:(id)styles;
+ (void)upgradeTrendLinesAndErrorBarsForSeriesPresets:(id)presets valueAxisPresets:(id)axisPresets paragraphPresets:(id)paragraphPresets;
- (BOOL)isEquivalentToPreset:(id)preset outReasons:(id *)reasons;
- (NSArray)allStyles;
- (NSString)description;
- (TSCHChartStylePreset)initWithContext:(id)context chartStyle:(id)style legendStyle:(id)legendStyle valueAxisStyles:(id)styles categoryAxisStyles:(id)axisStyles seriesStyles:(id)seriesStyles paragraphStyles:(id)paragraphStyles refLineStyle:(id)self0;
- (TSCHChartStylePreset)initWithContext:(id)context chartStyle:(id)style legendStyle:(id)legendStyle valueAxisStyles:(id)styles categoryAxisStyles:(id)axisStyles seriesStyles:(id)seriesStyles paragraphStyles:(id)paragraphStyles refLineStyle:(id)self0 uuid:(id)self1;
- (TSCHChartStyleState)chartStyleState;
- (TSSStylesheet)stylesheet;
- (id)applyStyleSwapTuple:(id)tuple;
- (id)buildAxisNonStyle;
- (id)buildChartNonStyle;
- (id)buildLegendNonStyle;
- (id)buildSeriesNonStyle;
- (id)copyWithContext:(id)context shallowCopyStyles:(BOOL)styles;
- (id)initForCopyingWithContext:(id)context;
- (id)migratedPresetInTheme:(id)theme followReplacements:(BOOL)replacements;
- (id)paragraphStyleAtIndex:(unint64_t)index;
- (id)presetByAdoptingStylesheet:(id)stylesheet withMapper:(id)mapper paragraphStyles:(id)styles;
- (id)referencedStyles;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)upgradePresetIfNecessaryFromFinalizeHandlerWithOptionalPreUFFVersion:(const unint64_t *)version;
@end

@implementation TSCHChartStylePreset

+ (void)upgradeShadowPropertyForParagraphStyles:(id)styles
{
  v40 = *MEMORY[0x277D85DE8];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  stylesCopy = styles;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(stylesCopy, v4, v5, v6, v7, &v35, v39, 16);
  if (v9)
  {
    v13 = *v36;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(stylesCopy);
        }

        v15 = *(*(&v35 + 1) + 8 * i);
        v16 = objc_msgSend_valueForProperty_(v15, v8, v10, v11, v12, 40);
        v21 = objc_msgSend_null(MEMORY[0x277CBEB68], v17, v18, v19, v20);
        v22 = v21 == v16;

        if (v22)
        {
          v23 = 0;
        }

        else
        {
          v23 = v16;
        }

        v34 = 0;
        v28 = objc_msgSend_upgradedShadowPropertyFromShadow_outUpgraded_(TSCHStyleUtilities, v24, v25, v26, v27, v23, &v34);
        v30 = v34;
        if (v28)
        {
          objc_msgSend_setValue_forProperty_(v15, v29, v31, v32, v33, v30, 40);
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(stylesCopy, v8, v10, v11, v12, &v35, v39, 16);
    }

    while (v9);
  }
}

+ (void)upgradeFor3DShadowPropertyMigrationFromChartStyle:(id)style seriesStyles:(id)styles
{
  v126[5] = *MEMORY[0x277D85DE8];
  styleCopy = style;
  stylesCopy = styles;
  v125[0] = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], v5, v6, v7, v8, 1447);
  v116 = v125[0];
  v126[0] = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], v9, v10, v11, v12, 1606);
  v17 = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], v13, v14, v15, v16, 1448);
  v125[1] = v17;
  v22 = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], v18, v19, v20, v21, 1607);
  v126[1] = v22;
  v27 = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], v23, v24, v25, v26, 1449);
  v125[2] = v27;
  v32 = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], v28, v29, v30, v31, 1608);
  v126[2] = v32;
  v37 = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], v33, v34, v35, v36, 1446);
  v125[3] = v37;
  v42 = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], v38, v39, v40, v41, 1605);
  v126[3] = v42;
  v47 = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], v43, v44, v45, v46, 1450);
  v125[4] = v47;
  v52 = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], v48, v49, v50, v51, 1609);
  v126[4] = v52;
  v53 = v126[0];
  v58 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v54, v55, v56, v57, v126, v125, 5);

  v114 = objc_msgSend_count(stylesCopy, v59, v60, v61, v62);
  if (v114)
  {
    for (i = 0; i != v114; ++i)
    {
      objc_opt_class();
      v67 = objc_msgSend_objectAtIndexedSubscript_(stylesCopy, v63, v64, v65, v66, i);
      v68 = TSUDynamicCast();

      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      obj = objc_msgSend_allKeys(v58, v69, 0.0, v70, v71);
      v77 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v72, v73, v74, v75, &v120, v124, 16);
      if (!v77)
      {
        goto LABEL_15;
      }

      v81 = *v121;
      do
      {
        for (j = 0; j != v77; ++j)
        {
          if (*v121 != v81)
          {
            objc_enumerationMutation(obj);
          }

          v83 = *(*(&v120 + 1) + 8 * j);
          v84 = objc_msgSend_objectForKey_(v58, v76, v78, v79, v80, v83);
          v89 = objc_msgSend_tsch_stylePropertyValue(v84, v85, v86, v87, v88);
          v94 = objc_msgSend_tsch_stylePropertyValue(v83, v90, v91, v92, v93);
          v99 = objc_msgSend_valueForProperty_(styleCopy, v95, v96, v97, v98, v89);
          v104 = objc_msgSend_valueForProperty_(v68, v100, v101, v102, v103, v94);
          v109 = v104;
          if (v99)
          {
            if (v104)
            {
              goto LABEL_13;
            }
          }

          else
          {
            v99 = objc_msgSend_null(MEMORY[0x277CBEB68], v105, v106, v107, v108);
            if (v109)
            {
              goto LABEL_13;
            }
          }

          objc_msgSend_willModifyForUpgrade(v68, v105, v106, v107, v108);
          objc_msgSend_setValue_forProperty_(v68, v110, v111, v112, v113, v99, v94);
LABEL_13:
        }

        v77 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v76, v78, v79, v80, &v120, v124, 16);
      }

      while (v77);
LABEL_15:
    }
  }
}

+ (void)upgradeForTrendLineEquationAndR2LabelsPropertyMigrationFromChartStyle:(id)style seriesStyles:(id)styles
{
  v116[4] = *MEMORY[0x277D85DE8];
  styleCopy = style;
  stylesCopy = styles;
  v9 = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], v5, v6, v7, v8, 1559);
  v115[0] = v9;
  v14 = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], v10, v11, v12, v13, 1614);
  v116[0] = v14;
  v19 = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], v15, v16, v17, v18, 1561);
  v115[1] = v19;
  v24 = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], v20, v21, v22, v23, 1617);
  v116[1] = v24;
  v29 = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], v25, v26, v27, v28, 1558);
  v115[2] = v29;
  v34 = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], v30, v31, v32, v33, 1613);
  v116[2] = v34;
  v39 = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], v35, v36, v37, v38, 1560);
  v115[3] = v39;
  v44 = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], v40, v41, v42, v43, 1616);
  v116[3] = v44;
  v49 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v45, v46, v47, v48, v116, v115, 4);

  v106 = objc_msgSend_count(stylesCopy, v50, v51, v52, v53);
  if (v106)
  {
    for (i = 0; i != v106; ++i)
    {
      objc_opt_class();
      v58 = objc_msgSend_objectAtIndexedSubscript_(stylesCopy, v54, v55, v56, v57, i);
      v59 = TSUDynamicCast();

      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      v63 = objc_msgSend_allKeys(v49, v60, 0.0, v61, v62);
      v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v64, v65, v66, v67, &v110, v114, 16);
      if (v69)
      {
        v73 = *v111;
        do
        {
          for (j = 0; j != v69; ++j)
          {
            if (*v111 != v73)
            {
              objc_enumerationMutation(v63);
            }

            v75 = *(*(&v110 + 1) + 8 * j);
            v76 = objc_msgSend_objectForKey_(v49, v68, v70, v71, v72, v75, v106);
            v81 = objc_msgSend_tsch_stylePropertyValue(v76, v77, v78, v79, v80);
            v86 = objc_msgSend_tsch_stylePropertyValue(v75, v82, v83, v84, v85);
            v91 = objc_msgSend_boxedValueForProperty_(styleCopy, v87, v88, v89, v90, v81);
            v96 = objc_msgSend_boxedValueForProperty_(v59, v92, v93, v94, v95, v86);
            v101 = v96;
            if (!v96 || (objc_msgSend_isEqual_(v96, v97, v98, v99, v100, v91) & 1) == 0)
            {
              objc_msgSend_willModifyForUpgrade(v59, v97, v98, v99, v100);
              objc_msgSend_setBoxedValue_forProperty_(v59, v102, v103, v104, v105, v91, v86);
            }
          }

          v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v68, v70, v71, v72, &v110, v114, 16);
        }

        while (v69);
      }
    }
  }
}

+ (void)p_replaceProperty:(int)property inStyle:(id)style withObject:(id)object
{
  v6 = *&property;
  styleCopy = style;
  objectCopy = object;
  objc_msgSend_removeValueForProperty_(styleCopy, v8, v9, v10, v11, v6);
  objc_msgSend_setBoxedValue_forProperty_(styleCopy, v12, v13, v14, v15, objectCopy, v6);
}

+ (id)p_getDefaultErrorBarColor:(id)color valueAxisStyles:(id)styles
{
  colorCopy = color;
  stylesCopy = styles;
  v11 = objc_msgSend_blackColor(MEMORY[0x277D81180], v7, v8, v9, v10);
  v16 = objc_msgSend_objectAtIndexedSubscript_(stylesCopy, v12, v13, v14, v15, 0);
  v22 = objc_msgSend_overrideIntValueForProperty_(v16, v17, v18, v19, v20, 1293);
  if (v22 != 0x80000000 || (v22 = objc_msgSend_overrideIntValueForProperty_(v16, v21, v23, v24, v25, 1292), v22 != 0x80000000))
  {
    if (objc_msgSend_count(colorCopy, v21, v23, v24, v25) > v22)
    {
      v30 = objc_msgSend_objectAtIndexedSubscript_(colorCopy, v26, v27, v28, v29);
      if (v30)
      {
        objc_opt_class();
        v35 = objc_msgSend_valueForProperty_(v30, v31, v32, v33, v34, 48);
        v36 = TSUDynamicCast();

        if (v36)
        {
          objc_msgSend_referenceColor(v36, v37, v38, v39, v40);
        }

        else
        {
          objc_msgSend_clearColor(MEMORY[0x277D81180], v37, v38, v39, v40);
        }
        v41 = ;

        v11 = v41;
      }
    }
  }

  return v11;
}

+ (id)p_getDefaultTrendLineShadowColor:(id)color
{
  v6 = objc_msgSend_valueForProperty_(color, a2, v3, v4, v5, 1455);
  if (objc_msgSend_hasShadow_(TSCHStyleUtilities, v7, v8, v9, v10, v6))
  {
    objc_msgSend_color(v6, v11, v12, v13, v14);
  }

  else
  {
    objc_msgSend_blackColor(MEMORY[0x277D81180], v11, v12, v13, v14);
  }
  v15 = ;

  return v15;
}

+ (id)p_getDefaultTrendLineStrokeColor:(id)color
{
  v6 = objc_msgSend_valueForProperty_(color, a2, v3, v4, v5, 1500);
  v11 = v6;
  if (v6)
  {
    objc_msgSend_color(v6, v7, v8, v9, v10);
  }

  else
  {
    objc_msgSend_blackColor(MEMORY[0x277D81180], v7, v8, v9, v10);
  }
  v12 = ;
  objc_msgSend_CGColor(v12, v13, v14, v15, v16, 0);
  if (TSUHSBFromCGColorRef())
  {
    v17 = TSUCreateCGColorFromHSB();
    v22 = objc_msgSend_colorWithCGColor_(MEMORY[0x277D81180], v18, v19, v20, v21, v17);

    v12 = v22;
    CGColorRelease(v17);
  }

  return v12;
}

+ (void)upgradeTrendLinesAndErrorBarsForSeriesPresets:(id)presets valueAxisPresets:(id)axisPresets paragraphPresets:(id)paragraphPresets
{
  presetsCopy = presets;
  axisPresetsCopy = axisPresets;
  paragraphPresetsCopy = paragraphPresets;
  v13 = objc_msgSend_count(presetsCopy, v8, v9, v10, v11);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v18 = objc_msgSend_objectAtIndexedSubscript_(presetsCopy, v12, v14, v15, v16, i);
      v23 = objc_msgSend_nullShadow(TSCHStyleUtilities, v19, v20, v21, v22);
      objc_msgSend_p_replaceProperty_inStyle_withObject_(self, v24, v25, v26, v27, 1394, v18, v23);

      v32 = objc_msgSend_p_getDefaultErrorBarColor_valueAxisStyles_(self, v28, v29, v30, v31, paragraphPresetsCopy, axisPresetsCopy);
      v36 = objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v33, 1.0, v34, v35, v32);
      objc_msgSend_p_replaceProperty_inStyle_withObject_(self, v37, v38, v39, v40, 1399, v18, v36);

      v44 = objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v41, 1.0, v42, v43, v32);
      objc_msgSend_p_replaceProperty_inStyle_withObject_(self, v45, v46, v47, v48, 1400, v18, v44);

      v53 = objc_msgSend_line(MEMORY[0x277D80308], v49, v50, v51, v52);
      objc_msgSend_p_replaceProperty_inStyle_withObject_(self, v54, v55, v56, v57, 1388, v18, v53);

      v62 = objc_msgSend_line(MEMORY[0x277D80308], v58, v59, v60, v61);
      objc_msgSend_p_replaceProperty_inStyle_withObject_(self, v63, v64, v65, v66, 1389, v18, v62);

      v71 = objc_msgSend_p_getDefaultTrendLineShadowColor_(self, v67, v68, v69, v70, v18);
      v73 = objc_msgSend_shadowWithAngle_offset_radius_opacity_color_enabled_(MEMORY[0x277D803A8], v72, 122.0, 2.0, 1.0, v71, 1, 0.25);
      objc_msgSend_p_replaceProperty_inStyle_withObject_(self, v74, v75, v76, v77, 1552, v18, v73);

      v82 = objc_msgSend_p_getDefaultTrendLineStrokeColor_(self, v78, v79, v80, v81, v18);
      v86 = objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v83, 2.0, v84, v85, v82);
      objc_msgSend_p_replaceProperty_inStyle_withObject_(self, v87, v88, v89, v90, 1556, v18, v86);
    }
  }
}

+ (void)upgradeCalloutLineStylesForSeriesPresets:(id)presets valueAxisPresets:(id)axisPresets paragraphPresets:(id)paragraphPresets
{
  v50 = *MEMORY[0x277D85DE8];
  presetsCopy = presets;
  axisPresetsCopy = axisPresets;
  paragraphPresetsCopy = paragraphPresets;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v10 = presetsCopy;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, v12, v13, v14, &v45, v49, 16);
  if (v16)
  {
    v20 = *v46;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v46 != v20)
        {
          objc_enumerationMutation(v10);
        }

        v22 = *(*(&v45 + 1) + 8 * i);
        if ((objc_msgSend_definesProperty_(v22, v15, v17, v18, v19, 1370) & 1) == 0)
        {
          v23 = objc_msgSend_p_getDefaultErrorBarColor_valueAxisStyles_(self, v15, v17, v18, v19, paragraphPresetsCopy, axisPresetsCopy);
          v28 = objc_msgSend_valueForProperty_(v22, v24, v25, v26, v27, 1370);
          v33 = v28;
          if (v28)
          {
            objc_msgSend_width(v28, v29, v30, v31, v32);
          }

          else
          {
            objc_msgSend_defaultCalloutLineThickness(TSCHStyleUtilities, v29, v30, v31, v32);
            v35 = v38;
          }

          v39 = objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v34, v35, v36, v37, v23);
          objc_msgSend_p_replaceProperty_inStyle_withObject_(self, v40, v41, v42, v43, 1370, v22, v39);
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v15, v17, v18, v19, &v45, v49, 16);
    }

    while (v16);
  }
}

+ (void)p_useProperty:(int)property asProperty:(int)asProperty inStyle:(id)style
{
  v5 = *&asProperty;
  v6 = *&property;
  styleCopy = style;
  if ((objc_msgSend_definesProperty_(styleCopy, v8, v9, v10, v11, v5) & 1) == 0 && objc_msgSend_definesProperty_(styleCopy, v12, v13, v14, v15, v6))
  {
    v20 = objc_msgSend_boxedValueForProperty_(styleCopy, v16, v17, v18, v19, v6);
    objc_msgSend_p_replaceProperty_inStyle_withObject_(self, v21, v22, v23, v24, v5, styleCopy, v20);
  }
}

+ (void)upgradeDonutStylesForSeriesPresets:(id)presets
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  presetsCopy = presets;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(presetsCopy, v4, v5, v6, v7, &v20, v24, 16);
  if (v9)
  {
    v13 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(presetsCopy);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        if ((objc_msgSend_containsProperty_(v15, v8, v10, v11, v12, 1422, v20) & 1) == 0)
        {
          objc_msgSend_p_useProperty_asProperty_inStyle_(TSCHChartStylePreset, v16, v17, v18, v19, 1425, 1422, v15);
        }

        if ((objc_msgSend_containsProperty_(v15, v16, v17, v18, v19, 1440) & 1) == 0)
        {
          objc_msgSend_p_useProperty_asProperty_inStyle_(TSCHChartStylePreset, v8, v10, v11, v12, 1442, 1440, v15);
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(presetsCopy, v8, v10, v11, v12, &v20, v24, 16);
    }

    while (v9);
  }
}

- (id)initForCopyingWithContext:(id)context
{
  v4.receiver = self;
  v4.super_class = TSCHChartStylePreset;
  return [(TSCHChartStylePreset *)&v4 initWithContext:context];
}

- (TSCHChartStylePreset)initWithContext:(id)context chartStyle:(id)style legendStyle:(id)legendStyle valueAxisStyles:(id)styles categoryAxisStyles:(id)axisStyles seriesStyles:(id)seriesStyles paragraphStyles:(id)paragraphStyles refLineStyle:(id)self0 uuid:(id)self1
{
  contextCopy = context;
  obj = style;
  styleCopy = style;
  legendStyleCopy = legendStyle;
  legendStyleCopy2 = legendStyle;
  stylesCopy = styles;
  axisStylesCopy = axisStyles;
  seriesStylesCopy = seriesStyles;
  paragraphStylesCopy = paragraphStyles;
  lineStyleCopy = lineStyle;
  uuidCopy = uuid;
  v261.receiver = self;
  v261.super_class = TSCHChartStylePreset;
  v256 = contextCopy;
  v23 = [(TSCHChartStylePreset *)&v261 initWithContext:contextCopy];
  if (v23)
  {
    if (!styleCopy)
    {
      v27 = MEMORY[0x277D81150];
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v24, v25, v26, "[TSCHChartStylePreset initWithContext:chartStyle:legendStyle:valueAxisStyles:categoryAxisStyles:seriesStyles:paragraphStyles:refLineStyle:uuid:]");
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStylePreset.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v34, v35, v36, v37, v28, v33, 420, 0, "invalid nil value for '%{public}s'", "chartStyle");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
    }

    if (!legendStyleCopy2)
    {
      v42 = MEMORY[0x277D81150];
      v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v24, v25, v26, "[TSCHChartStylePreset initWithContext:chartStyle:legendStyle:valueAxisStyles:categoryAxisStyles:seriesStyles:paragraphStyles:refLineStyle:uuid:]");
      v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, v45, v46, v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStylePreset.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v49, v50, v51, v52, v43, v48, 421, 0, "invalid nil value for '%{public}s'", "legendStyle");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54, v55, v56);
    }

    if (!stylesCopy)
    {
      v57 = MEMORY[0x277D81150];
      v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v24, v25, v26, "[TSCHChartStylePreset initWithContext:chartStyle:legendStyle:valueAxisStyles:categoryAxisStyles:seriesStyles:paragraphStyles:refLineStyle:uuid:]");
      v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, v60, v61, v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStylePreset.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v64, v65, v66, v67, v58, v63, 422, 0, "invalid nil value for '%{public}s'", "valueAxisStyles");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69, v70, v71);
    }

    if (!axisStylesCopy)
    {
      v72 = MEMORY[0x277D81150];
      v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v24, v25, v26, "[TSCHChartStylePreset initWithContext:chartStyle:legendStyle:valueAxisStyles:categoryAxisStyles:seriesStyles:paragraphStyles:refLineStyle:uuid:]");
      v78 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, v75, v76, v77, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStylePreset.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v72, v79, v80, v81, v82, v73, v78, 423, 0, "invalid nil value for '%{public}s'", "categoryAxisStyles");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v83, v84, v85, v86);
    }

    if (!seriesStylesCopy)
    {
      v87 = MEMORY[0x277D81150];
      v88 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v24, v25, v26, "[TSCHChartStylePreset initWithContext:chartStyle:legendStyle:valueAxisStyles:categoryAxisStyles:seriesStyles:paragraphStyles:refLineStyle:uuid:]");
      v93 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v89, v90, v91, v92, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStylePreset.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v87, v94, v95, v96, v97, v88, v93, 424, 0, "invalid nil value for '%{public}s'", "seriesStyles");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v98, v99, v100, v101);
    }

    if (!paragraphStylesCopy)
    {
      v102 = MEMORY[0x277D81150];
      v103 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v24, v25, v26, "[TSCHChartStylePreset initWithContext:chartStyle:legendStyle:valueAxisStyles:categoryAxisStyles:seriesStyles:paragraphStyles:refLineStyle:uuid:]");
      v108 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v104, v105, v106, v107, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStylePreset.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v102, v109, v110, v111, v112, v103, v108, 425, 0, "invalid nil value for '%{public}s'", "paragraphStyles");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v113, v114, v115, v116);
    }

    if (!objc_msgSend_count(stylesCopy, v22, v24, v25, v26))
    {
      v121 = MEMORY[0x277D81150];
      v122 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v117, v118, v119, v120, "[TSCHChartStylePreset initWithContext:chartStyle:legendStyle:valueAxisStyles:categoryAxisStyles:seriesStyles:paragraphStyles:refLineStyle:uuid:]");
      v127 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v123, v124, v125, v126, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStylePreset.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v121, v128, v129, v130, v131, v122, v127, 426, 0, "No Value Axis Styles");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v132, v133, v134, v135);
    }

    if (!objc_msgSend_count(axisStylesCopy, v117, v118, v119, v120))
    {
      v140 = MEMORY[0x277D81150];
      v141 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v136, v137, v138, v139, "[TSCHChartStylePreset initWithContext:chartStyle:legendStyle:valueAxisStyles:categoryAxisStyles:seriesStyles:paragraphStyles:refLineStyle:uuid:]");
      v146 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v142, v143, v144, v145, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStylePreset.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v140, v147, v148, v149, v150, v141, v146, 427, 0, "No Category Axis Styles");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v151, v152, v153, v154);
    }

    if (!objc_msgSend_count(seriesStylesCopy, v136, v137, v138, v139))
    {
      v159 = MEMORY[0x277D81150];
      v160 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v155, v156, v157, v158, "[TSCHChartStylePreset initWithContext:chartStyle:legendStyle:valueAxisStyles:categoryAxisStyles:seriesStyles:paragraphStyles:refLineStyle:uuid:]");
      v165 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v161, v162, v163, v164, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStylePreset.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v159, v166, v167, v168, v169, v160, v165, 428, 0, "No Series Styles");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v170, v171, v172, v173);
    }

    if (!objc_msgSend_count(paragraphStylesCopy, v155, v156, v157, v158))
    {
      v178 = MEMORY[0x277D81150];
      v179 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v174, v175, v176, v177, "[TSCHChartStylePreset initWithContext:chartStyle:legendStyle:valueAxisStyles:categoryAxisStyles:seriesStyles:paragraphStyles:refLineStyle:uuid:]");
      v184 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v180, v181, v182, v183, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStylePreset.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v178, v185, v186, v187, v188, v179, v184, 429, 0, "No Paragraph Styles");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v189, v190, v191, v192);
    }

    if (!lineStyleCopy)
    {
      v193 = MEMORY[0x277D81150];
      v194 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v174, v175, v176, v177, "[TSCHChartStylePreset initWithContext:chartStyle:legendStyle:valueAxisStyles:categoryAxisStyles:seriesStyles:paragraphStyles:refLineStyle:uuid:]");
      v199 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v195, v196, v197, v198, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStylePreset.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v193, v200, v201, v202, v203, v194, v199, 430, 0, "invalid nil value for '%{public}s'", "refLineStyle");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v204, v205, v206, v207);
    }

    if (!uuidCopy)
    {
      v208 = MEMORY[0x277D81150];
      v209 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v174, v175, v176, v177, "[TSCHChartStylePreset initWithContext:chartStyle:legendStyle:valueAxisStyles:categoryAxisStyles:seriesStyles:paragraphStyles:refLineStyle:uuid:]");
      v214 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v210, v211, v212, v213, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStylePreset.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v208, v215, v216, v217, v218, v209, v214, 431, 0, "invalid nil value for '%{public}s'", "uuid");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v219, v220, v221, v222);
    }

    objc_storeStrong(&v23->_chartStyle, obj);
    objc_storeStrong(&v23->_legendStyle, legendStyleCopy);
    v227 = objc_msgSend_copy(stylesCopy, v223, v224, v225, v226);
    valueAxisStylesList = v23->_valueAxisStylesList;
    v23->_valueAxisStylesList = v227;

    v233 = objc_msgSend_copy(axisStylesCopy, v229, v230, v231, v232);
    categoryAxisStylesList = v23->_categoryAxisStylesList;
    v23->_categoryAxisStylesList = v233;

    v239 = objc_msgSend_copy(seriesStylesCopy, v235, v236, v237, v238);
    seriesStylesList = v23->_seriesStylesList;
    v23->_seriesStylesList = v239;

    v245 = objc_msgSend_copy(paragraphStylesCopy, v241, v242, v243, v244);
    paragraphStylesList = v23->_paragraphStylesList;
    v23->_paragraphStylesList = v245;

    objc_storeStrong(&v23->_refLineStyle, lineStyle);
    if (uuidCopy)
    {
      v251 = objc_msgSend_copy(uuidCopy, v247, v248, v249, v250);
    }

    else
    {
      v251 = objc_alloc_init(MEMORY[0x277CCAD78]);
    }

    v252 = v251;
    objc_storeStrong(&v23->_uuid, v251);
  }

  return v23;
}

- (TSCHChartStylePreset)initWithContext:(id)context chartStyle:(id)style legendStyle:(id)legendStyle valueAxisStyles:(id)styles categoryAxisStyles:(id)axisStyles seriesStyles:(id)seriesStyles paragraphStyles:(id)paragraphStyles refLineStyle:(id)self0
{
  contextCopy = context;
  styleCopy = style;
  legendStyleCopy = legendStyle;
  stylesCopy = styles;
  axisStylesCopy = axisStyles;
  seriesStylesCopy = seriesStyles;
  paragraphStylesCopy = paragraphStyles;
  lineStyleCopy = lineStyle;
  v28 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v24, v25, v26, v27);
  v33 = objc_msgSend_initWithContext_chartStyle_legendStyle_valueAxisStyles_categoryAxisStyles_seriesStyles_paragraphStyles_refLineStyle_uuid_(self, v29, v30, v31, v32, contextCopy, styleCopy, legendStyleCopy, stylesCopy, axisStylesCopy, seriesStylesCopy, paragraphStylesCopy, lineStyleCopy, v28);

  return v33;
}

- (id)copyWithContext:(id)context shallowCopyStyles:(BOOL)styles
{
  v174 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = objc_alloc(objc_opt_class());
  v10 = objc_msgSend_initForCopyingWithContext_(v5, v6, v7, v8, v9, contextCopy);
  v11 = v10[9];
  v10[9] = 0;

  v12 = v10[10];
  v10[10] = 0;

  v13 = v10[11];
  v10[11] = 0;

  v14 = v10[12];
  v10[12] = 0;

  v15 = v10[13];
  v10[13] = 0;

  v16 = v10[14];
  v10[14] = 0;

  v17 = v10[15];
  v148 = v10;
  v10[15] = 0;

  v167[0] = MEMORY[0x277D85DD0];
  v167[1] = 3221225472;
  v167[2] = sub_276308020;
  v167[3] = &unk_27A6B98B8;
  stylesCopy = styles;
  v147 = contextCopy;
  v168 = v147;
  v18 = MEMORY[0x277C98B30](v167);
  objc_opt_class();
  v19 = (v18)[2](v18, self->_chartStyle);
  v20 = TSUCheckedDynamicCast();
  v21 = v10[9];
  v10[9] = v20;

  objc_opt_class();
  v22 = (v18)[2](v18, self->_legendStyle);
  v23 = TSUCheckedDynamicCast();
  v24 = v10[10];
  v10[10] = v23;

  objc_opt_class();
  v25 = (v18)[2](v18, self->_refLineStyle);
  v26 = TSUCheckedDynamicCast();
  v27 = v10[15];
  v10[15] = v26;

  v28 = objc_alloc(MEMORY[0x277CBEB18]);
  v33 = objc_msgSend_count(self->_valueAxisStylesList, v29, v30, v31, v32);
  obj = objc_msgSend_initWithCapacity_(v28, v34, v35, v36, v37, v33);
  v165 = 0u;
  v166 = 0u;
  v163 = 0u;
  v164 = 0u;
  v38 = self->_valueAxisStylesList;
  v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, v40, v41, v42, &v163, v173, 16);
  if (v43)
  {
    v44 = *v164;
    do
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v164 != v44)
        {
          objc_enumerationMutation(v38);
        }

        v46 = v18[2](v18, *(*(&v163 + 1) + 8 * i));
        objc_msgSend_addObject_(obj, v47, v48, v49, v50, v46);
      }

      v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v51, v52, v53, v54, &v163, v173, 16);
    }

    while (v43);
  }

  objc_storeStrong(v148 + 11, obj);
  v55 = objc_alloc(MEMORY[0x277CBEB18]);
  v60 = objc_msgSend_count(self->_categoryAxisStylesList, v56, v57, v58, v59);
  v65 = objc_msgSend_initWithCapacity_(v55, v61, v62, v63, v64, v60);
  v161 = 0u;
  v162 = 0u;
  v159 = 0u;
  v160 = 0u;
  v66 = self->_categoryAxisStylesList;
  v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v66, v67, v68, v69, v70, &v159, v172, 16);
  if (v71)
  {
    v72 = *v160;
    do
    {
      for (j = 0; j != v71; ++j)
      {
        if (*v160 != v72)
        {
          objc_enumerationMutation(v66);
        }

        v74 = v18[2](v18, *(*(&v159 + 1) + 8 * j));
        objc_msgSend_addObject_(v65, v75, v76, v77, v78, v74);
      }

      v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v66, v79, v80, v81, v82, &v159, v172, 16);
    }

    while (v71);
  }

  objc_storeStrong(v148 + 12, v65);
  v83 = objc_alloc(MEMORY[0x277CBEB18]);
  v88 = objc_msgSend_count(self->_seriesStylesList, v84, v85, v86, v87);
  v93 = objc_msgSend_initWithCapacity_(v83, v89, v90, v91, v92, v88);
  v157 = 0u;
  v158 = 0u;
  v155 = 0u;
  v156 = 0u;
  v94 = self->_seriesStylesList;
  v99 = objc_msgSend_countByEnumeratingWithState_objects_count_(v94, v95, v96, v97, v98, &v155, v171, 16);
  if (v99)
  {
    v100 = *v156;
    do
    {
      for (k = 0; k != v99; ++k)
      {
        if (*v156 != v100)
        {
          objc_enumerationMutation(v94);
        }

        v102 = v18[2](v18, *(*(&v155 + 1) + 8 * k));
        objc_msgSend_addObject_(v93, v103, v104, v105, v106, v102);
      }

      v99 = objc_msgSend_countByEnumeratingWithState_objects_count_(v94, v107, v108, v109, v110, &v155, v171, 16);
    }

    while (v99);
  }

  objc_storeStrong(v148 + 13, v93);
  v111 = objc_alloc(MEMORY[0x277CBEB18]);
  v116 = objc_msgSend_count(self->_paragraphStylesList, v112, v113, v114, v115);
  v121 = objc_msgSend_initWithCapacity_(v111, v117, v118, v119, v120, v116);
  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  v122 = self->_paragraphStylesList;
  v127 = objc_msgSend_countByEnumeratingWithState_objects_count_(v122, v123, v124, v125, v126, &v151, v170, 16);
  if (v127)
  {
    v128 = *v152;
    do
    {
      for (m = 0; m != v127; ++m)
      {
        if (*v152 != v128)
        {
          objc_enumerationMutation(v122);
        }

        v130 = v18[2](v18, *(*(&v151 + 1) + 8 * m));
        objc_msgSend_addObject_(v121, v131, v132, v133, v134, v130);
      }

      v127 = objc_msgSend_countByEnumeratingWithState_objects_count_(v122, v135, v136, v137, v138, &v151, v170, 16);
    }

    while (v127);
  }

  objc_storeStrong(v148 + 14, v121);
  v143 = objc_msgSend_copy(self->_uuid, v139, v140, v141, v142);
  v144 = v148[8];
  v148[8] = v143;

  return v148;
}

- (NSArray)allStyles
{
  v107 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4);
  objc_opt_class();
  v11 = objc_msgSend_chartStyle(self, v7, v8, v9, v10);
  v12 = TSUDynamicCast();

  v99 = v12;
  if (v12)
  {
    objc_msgSend_addObject_(v6, v13, v14, v15, v16, v12, v12);
  }

  objc_opt_class();
  v21 = objc_msgSend_legendStyle(self, v17, v18, v19, v20);
  v22 = TSUDynamicCast();

  v101 = v22;
  if (v22)
  {
    objc_msgSend_addObject_(v6, v23, v24, v25, v26, v22);
  }

  objc_opt_class();
  v31 = objc_msgSend_refLineStyle(self, v27, v28, v29, v30);
  v32 = TSUDynamicCast();

  if (v32)
  {
    objc_msgSend_addObject_(v6, v33, v34, v35, v36, v32);
  }

  v37 = objc_msgSend_valueAxisStyles(self, v33, v34, v35, v36, v99);
  objc_msgSend_addObjectsFromArray_(v6, v38, v39, v40, v41, v37);

  v46 = objc_msgSend_categoryAxisStyles(self, v42, v43, v44, v45);
  objc_msgSend_addObjectsFromArray_(v6, v47, v48, v49, v50, v46);

  v55 = objc_msgSend_seriesStyles(self, v51, v52, v53, v54);
  objc_msgSend_addObjectsFromArray_(v6, v56, v57, v58, v59, v55);

  v64 = objc_msgSend_paragraphStyles(self, v60, v61, v62, v63);
  objc_msgSend_addObjectsFromArray_(v6, v65, v66, v67, v68, v64);

  v69 = MEMORY[0x277CBEB18];
  v74 = objc_msgSend_count(v6, v70, v71, v72, v73);
  v79 = objc_msgSend_arrayWithCapacity_(v69, v75, v76, v77, v78, v74);
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v80 = v6;
  v85 = objc_msgSend_countByEnumeratingWithState_objects_count_(v80, v81, v82, v83, v84, &v102, v106, 16);
  if (v85)
  {
    v86 = *v103;
    do
    {
      for (i = 0; i != v85; ++i)
      {
        if (*v103 != v86)
        {
          objc_enumerationMutation(v80);
        }

        v88 = *(*(&v102 + 1) + 8 * i);
        objc_opt_class();
        v90 = TSUDynamicCast();
        if (v90)
        {
          objc_msgSend_addObject_(v79, v89, v91, v92, v93, v88);
        }
      }

      v85 = objc_msgSend_countByEnumeratingWithState_objects_count_(v80, v94, v95, v96, v97, &v102, v106, 16);
    }

    while (v85);
  }

  return v79;
}

- (TSSStylesheet)stylesheet
{
  v5 = objc_msgSend_allStyles(self, a2, v2, v3, v4);
  v10 = objc_msgSend_stylesheetOfStyles_nilAllowed_(TSCHStyleUtilities, v6, v7, v8, v9, v5, 1);

  return v10;
}

- (BOOL)isEquivalentToPreset:(id)preset outReasons:(id *)reasons
{
  presetCopy = preset;
  v10 = presetCopy;
  v215 = 0;
  v216 = &v215;
  v11 = 0x2020000000;
  v217 = 0x2020000000;
  v218 = 1;
  if (reasons)
  {
    v12 = objc_msgSend_array(MEMORY[0x277CBEB18], v7, COERCE_DOUBLE(0x2020000000), v8, v9);
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v12 = 0;
    if (!presetCopy)
    {
LABEL_19:
      v198 = 0;
      goto LABEL_20;
    }
  }

  v13 = objc_msgSend_valueAxisStyles(self, v7, *&v11, v8, v9);
  v18 = objc_msgSend_count(v13, v14, v15, v16, v17);
  v23 = objc_msgSend_valueAxisStyles(v10, v19, v20, v21, v22);
  v28 = objc_msgSend_count(v23, v24, v25, v26, v27);

  if (v18 != v28)
  {
    goto LABEL_19;
  }

  v33 = objc_msgSend_categoryAxisStyles(self, v29, v30, v31, v32);
  v38 = objc_msgSend_count(v33, v34, v35, v36, v37);
  v43 = objc_msgSend_categoryAxisStyles(v10, v39, v40, v41, v42);
  v48 = objc_msgSend_count(v43, v44, v45, v46, v47);

  if (v38 != v48)
  {
    goto LABEL_19;
  }

  v53 = objc_msgSend_seriesStyles(self, v49, v50, v51, v52);
  v58 = objc_msgSend_count(v53, v54, v55, v56, v57);
  v63 = objc_msgSend_seriesStyles(v10, v59, v60, v61, v62);
  v68 = objc_msgSend_count(v63, v64, v65, v66, v67);

  if (v58 != v68)
  {
    goto LABEL_19;
  }

  v73 = MEMORY[0x277CBEB18];
  v74 = objc_msgSend_allStyles(self, v69, v70, v71, v72);
  v79 = objc_msgSend_arrayWithArray_(v73, v75, v76, v77, v78, v74);

  v204 = v79;
  v84 = objc_msgSend_paragraphStyles(self, v80, v81, v82, v83);
  objc_msgSend_tsu_removeObjectsIdenticalToObjectsInArray_(v79, v85, v86, v87, v88, v84);

  v89 = MEMORY[0x277CBEB18];
  v94 = objc_msgSend_allStyles(v10, v90, v91, v92, v93);
  v99 = objc_msgSend_arrayWithArray_(v89, v95, v96, v97, v98, v94);

  v203 = v99;
  v104 = objc_msgSend_paragraphStyles(v10, v100, v101, v102, v103);
  objc_msgSend_tsu_removeObjectsIdenticalToObjectsInArray_(v99, v105, v106, v107, v108, v104);

  v113 = objc_msgSend_count(v79, v109, v110, v111, v112);
  if (v113 == objc_msgSend_count(v99, v114, v115, v116, v117))
  {
    v122 = objc_msgSend_count(v79, v118, v119, v120, v121);
    v127 = objc_msgSend_count(v99, v123, v124, v125, v126);
    if (v122 >= v127)
    {
      v122 = v127;
    }

    v206 = objc_msgSend_paragraphStyleIndexProperties(TSCHChartInfo, v128, v129, v130, v131);
    v202 = v122;
    if (v122)
    {
      v136 = 0;
      v201 = v208;
      v205 = v12;
      reasonsCopy = reasons;
      while (1)
      {
        v137 = objc_msgSend_objectAtIndexedSubscript_(v79, v132, v133, v134, v135, v136, reasonsCopy, v201);
        v142 = objc_msgSend_objectAtIndexedSubscript_(v99, v138, v139, v140, v141, v136);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          v198 = 0;
          goto LABEL_24;
        }

        v147 = objc_msgSend_propertySet(MEMORY[0x277D80AA8], v143, v144, v145, v146);
        v148 = objc_opt_class();
        v153 = objc_msgSend_properties(v148, v149, v150, v151, v152);
        objc_msgSend_addProperties_(v147, v154, v155, v156, v157, v153);

        v158 = objc_opt_class();
        v163 = objc_msgSend_properties(v158, v159, v160, v161, v162);
        objc_msgSend_addProperties_(v147, v164, v165, v166, v167, v163);

        objc_msgSend_removeProperties_(v147, v168, v169, v170, v171, v206);
        v172 = String();
        objc_msgSend_removeValuesForProperties_(v172, v173, v174, v175, v176, v206);
        v177 = String();
        v182 = objc_msgSend_allProperties(v172, v178, v179, v180, v181);
        objc_msgSend_filterWithProperties_(v177, v183, v184, v185, v186, v182);

        if ((objc_msgSend_isEqual_(v172, v187, v188, v189, v190, v177) & 1) == 0)
        {
          break;
        }

        v207[0] = MEMORY[0x277D85DD0];
        v207[1] = 3221225472;
        v208[0] = sub_276308B68;
        v208[1] = &unk_27A6B98E0;
        v191 = v137;
        v209 = v191;
        v192 = v142;
        v210 = v192;
        selfCopy = self;
        v212 = v10;
        v213 = v205;
        v214 = &v215;
        objc_msgSend_enumeratePropertiesUsingBlock_(v206, v193, v194, v195, v196, v207);

        ++v136;
        v99 = v203;
        v79 = v204;
        v12 = v205;
        reasons = reasonsCopy;
        if (v202 == v136)
        {
          goto LABEL_16;
        }
      }

      v198 = 0;
      v79 = v204;
      v12 = v205;
    }

    else
    {
LABEL_16:
      if (reasons)
      {
        v197 = v12;
        *reasons = v12;
      }

      v198 = *(v216 + 24);
    }

LABEL_24:
  }

  else
  {
    v198 = 0;
  }

LABEL_20:
  _Block_object_dispose(&v215, 8);

  return v198 & 1;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCAB68];
  v58.receiver = self;
  v58.super_class = TSCHChartStylePreset;
  v4 = [(TSCHChartStylePreset *)&v58 description];
  v9 = objc_msgSend_uuid(self, v5, v6, v7, v8);
  v14 = objc_msgSend_UUIDString(v9, v10, v11, v12, v13);
  v19 = objc_msgSend_stringWithFormat_(v3, v15, v16, v17, v18, @"%@ UUID: %@ {\n", v4, v14);

  objc_msgSend_appendFormat_(v19, v20, v21, v22, v23, @"\t%@: %@\n", @"_chartStyle", self->_chartStyle);
  objc_msgSend_appendFormat_(v19, v24, v25, v26, v27, @"\t%@: %@\n", @"_legendStyle", self->_legendStyle);
  objc_msgSend_appendFormat_(v19, v28, v29, v30, v31, @"\t%@: %@\n", @"_valueAxisStylesList", self->_valueAxisStylesList);
  objc_msgSend_appendFormat_(v19, v32, v33, v34, v35, @"\t%@: %@\n", @"_categoryAxisStylesList", self->_categoryAxisStylesList);
  objc_msgSend_appendFormat_(v19, v36, v37, v38, v39, @"\t%@: %@\n", @"_seriesStylesList", self->_seriesStylesList);
  objc_msgSend_appendFormat_(v19, v40, v41, v42, v43, @"\t%@: %@\n", @"_paragraphStylesList", self->_paragraphStylesList);
  objc_msgSend_appendFormat_(v19, v44, v45, v46, v47, @"\t%@: %@\n", @"_refLineStyle", self->_refLineStyle);
  objc_msgSend_appendString_(v19, v48, v49, v50, v51, @"}\n");
  v56 = objc_msgSend_stringWithString_(MEMORY[0x277CCACA8], v52, v53, v54, v55, v19);

  return v56;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, v6, v7, v8, off_2812ED048[32]);

  v14 = *(v9 + 40);
  if ((v14 & 2) == 0)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "[TSCHChartStylePreset loadFromUnarchiver:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStylePreset.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 743, 0, "Missing chart style from archive");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
    v14 = *(v9 + 40);
  }

  if ((v14 & 4) == 0)
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "[TSCHChartStylePreset loadFromUnarchiver:]");
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStylePreset.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v37, v38, v39, v40, v31, v36, 744, 0, "Missing legend style from archive");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43, v44);
    v14 = *(v9 + 40);
  }

  if ((v14 & 2) != 0)
  {
    v45 = *(v9 + 152);
    v149[0] = MEMORY[0x277D85DD0];
    v149[1] = 3221225472;
    v149[2] = sub_276309A88;
    v149[3] = &unk_27A6B7480;
    v149[4] = self;
    v46 = unarchiverCopy;
    v47 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v46, v48, v49, v50, v51, v45, v47, 0, v149);

    v14 = *(v9 + 40);
  }

  if ((v14 & 4) != 0)
  {
    v52 = *(v9 + 160);
    v148[0] = MEMORY[0x277D85DD0];
    v148[1] = 3221225472;
    v148[2] = sub_276309A9C;
    v148[3] = &unk_27A6B74A8;
    v148[4] = self;
    v53 = unarchiverCopy;
    v54 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v53, v55, v56, v57, v58, v52, v54, 0, v148);
  }

  v147[0] = MEMORY[0x277D85DD0];
  v147[1] = 3221225472;
  v147[2] = sub_276309AB0;
  v147[3] = &unk_27A6B7520;
  v147[4] = self;
  v59 = unarchiverCopy;
  v60 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v59, v61, v62, v63, v64, v9 + 48, v60, 0, v147);

  v146[0] = MEMORY[0x277D85DD0];
  v146[1] = 3221225472;
  v146[2] = sub_276309AC4;
  v146[3] = &unk_27A6B7520;
  v146[4] = self;
  v65 = v59;
  v66 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v65, v67, v68, v69, v70, v9 + 72, v66, 0, v146);

  v145[0] = MEMORY[0x277D85DD0];
  v145[1] = 3221225472;
  v145[2] = sub_276309AD8;
  v145[3] = &unk_27A6B7520;
  v145[4] = self;
  v71 = v65;
  v72 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v71, v73, v74, v75, v76, v9 + 96, v72, 0, v145);

  v144[0] = MEMORY[0x277D85DD0];
  v144[1] = 3221225472;
  v144[2] = sub_276309AEC;
  v144[3] = &unk_27A6B7520;
  v144[4] = self;
  v77 = v71;
  v78 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v77, v79, v80, v81, v82, v9 + 120, v78, 0, v144);

  if ((*(v9 + 40) & 1) == 0)
  {
    goto LABEL_17;
  }

  v83 = *(v9 + 144) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v83 + 23) < 0)
  {
    if (*(v83 + 8) <= 0xFuLL)
    {
LABEL_17:
      v89 = objc_alloc_init(MEMORY[0x277CCAD78]);
      uuid = self->_uuid;
      self->_uuid = v89;

      goto LABEL_18;
    }

    v83 = *v83;
  }

  else if (*(v83 + 23) <= 0xFu)
  {
    goto LABEL_17;
  }

  *byte7 = *(v83 + 7);
  v84 = CFUUIDCreateWithBytes(0, *v83, *(v83 + 1), *(v83 + 2), *(v83 + 3), *(v83 + 4), *(v83 + 5), *(v83 + 6), byte7[0], byte7[1], byte7[2], byte7[3], byte7[4], byte7[5], byte7[6], byte7[7], *(v83 + 15));
  v85 = v84;
  if (v84)
  {
    v88 = CFUUIDGetUUIDBytes(v84);
    v87 = *&v88.byte8;
    v86 = *&v88.byte0;
  }

  else
  {
    v86 = 0;
    v87 = 0;
  }

  v143[0] = v86;
  v143[1] = v87;
  v127 = objc_alloc(MEMORY[0x277CCAD78]);
  v132 = objc_msgSend_initWithUUIDBytes_(v127, v128, v129, v130, v131, v143);
  v137 = objc_msgSend_copy(v132, v133, v134, v135, v136);
  v138 = self->_uuid;
  self->_uuid = v137;

  if (v85)
  {
    CFRelease(v85);
  }

LABEL_18:
  if (google::protobuf::internal::ExtensionSet::Has((v9 + 16)))
  {
    Message = google::protobuf::internal::ExtensionSet::GetMessage();
    v142[0] = MEMORY[0x277D85DD0];
    v142[1] = 3221225472;
    v142[2] = sub_276309CEC;
    v142[3] = &unk_27A6B7520;
    v142[4] = self;
    v96 = v77;
    v97 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v96, v98, v99, v100, v101, Message + 16, v97, 0, v142);
  }

  if (self->_hasUpgradedFromFinalizeHandler)
  {
    v102 = MEMORY[0x277D81150];
    v103 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v91, v92, v93, v94, "[TSCHChartStylePreset loadFromUnarchiver:]");
    v108 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v104, v105, v106, v107, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStylePreset.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v102, v109, v110, v111, v112, v103, v108, 819, 0, "Preset should not have run upgrade code before any finalize handler is run");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v113, v114, v115, v116);
  }

  hasPreUFFVersion = objc_msgSend_hasPreUFFVersion(v77, v91, v92, v93, v94);
  v122 = objc_msgSend_preUFFVersion(v77, v118, v119, v120, v121);
  v140[0] = MEMORY[0x277D85DD0];
  v140[1] = 3221225472;
  v140[2] = sub_276309D64;
  v140[3] = &unk_27A6B9908;
  v141 = hasPreUFFVersion;
  v140[4] = self;
  v140[5] = v122;
  objc_msgSend_addFinalizeHandler_(v77, v123, v124, v125, v126, v140);
}

- (void)saveToArchiver:(id)archiver
{
  v48[1] = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, v6, v7, v8, sub_27630B7F8, off_2812ED048[32]);

  chartStyle = self->_chartStyle;
  if (chartStyle)
  {
    *(v9 + 40) |= 2u;
    v15 = *(v9 + 152);
    if (!v15)
    {
      v16 = *(v9 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = MEMORY[0x277C97B90](v16);
      *(v9 + 152) = v15;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v10, v11, v12, v13, chartStyle, v15);
  }

  legendStyle = self->_legendStyle;
  if (legendStyle)
  {
    *(v9 + 40) |= 4u;
    v18 = *(v9 + 160);
    if (!v18)
    {
      v19 = *(v9 + 8);
      if (v19)
      {
        v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
      }

      v18 = MEMORY[0x277C97B90](v19);
      *(v9 + 160) = v18;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v10, v11, v12, v13, legendStyle, v18);
  }

  objc_msgSend_setStrongReferenceArray_message_(archiverCopy, v10, v11, v12, v13, self->_valueAxisStylesList, v9 + 48);
  objc_msgSend_setStrongReferenceArray_message_(archiverCopy, v20, v21, v22, v23, self->_categoryAxisStylesList, v9 + 72);
  objc_msgSend_setStrongReferenceArray_message_(archiverCopy, v24, v25, v26, v27, self->_seriesStylesList, v9 + 96);
  v32 = objc_msgSend_setStrongReferenceArray_message_(archiverCopy, v28, v29, v30, v31, self->_paragraphStylesList, v9 + 120);
  uuid = self->_uuid;
  if (uuid)
  {
    sub_27630B864(__p, uuid);
    v34 = *__p;
    *(v9 + 40) |= 1u;
    v47 = 16;
    *__p = v34;
    v46 = 0;
    v32 = google::protobuf::internal::ArenaStringPtr::Set();
    if (v47 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (self->_refLineStyle)
  {
    TSCH::ChartPresetReferenceLineStylesArchive::default_instance(v32);
    v35 = google::protobuf::internal::ExtensionSet::MutableMessage();
    v48[0] = self->_refLineStyle;
    v40 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v36, v37, v38, v39, v48, 1);
    objc_msgSend_setStrongReferenceArray_message_(archiverCopy, v41, v42, v43, v44, v40, v35 + 16);
  }
}

- (void)upgradePresetIfNecessaryFromFinalizeHandlerWithOptionalPreUFFVersion:(const unint64_t *)version
{
  if (self->_hasUpgradedFromFinalizeHandler)
  {
    return;
  }

  paragraphStylesList = self->_paragraphStylesList;
  v126[0] = MEMORY[0x277D85DD0];
  v126[1] = 3221225472;
  v126[2] = sub_27630A4D4;
  v126[3] = &unk_27A6B6888;
  v126[4] = self;
  objc_msgSend_upgradeAlignmentInParagraphStyles_willModifyBlock_(TSCHStyleUtilities, a2, COERCE_DOUBLE(3221225472), v3, v4, paragraphStylesList, v126);
  if (version)
  {
    v12 = *version;
    if (*version > 0x51FF65184)
    {
      if (v12 > 0x77410FB8BLL)
      {
        if (v12 >= 0x77411E330)
        {
          if (v12 >= 0x77411E588)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

LABEL_7:
        objc_msgSend_willModifyForUpgrade(self, v8, v9, v10, v11);
        v22 = objc_opt_class();
        objc_msgSend_upgradeForTrendLineEquationAndR2LabelsPropertyMigrationFromChartStyle_seriesStyles_(v22, v23, v24, v25, v26, self->_chartStyle, self->_seriesStylesList);
LABEL_8:
        objc_msgSend_willModifyForUpgrade(self, v8, v9, v10, v11);
        v27 = objc_opt_class();
        objc_msgSend_upgradeShadowPropertyForParagraphStyles_(v27, v28, v29, v30, v31, self->_paragraphStylesList);
        goto LABEL_9;
      }
    }

    else
    {
      objc_msgSend_willModifyForUpgrade(self, v8, v9, v10, v11);
      objc_msgSend_upgradeTrendLinesAndErrorBarsForSeriesPresets_valueAxisPresets_paragraphPresets_(TSCHChartStylePreset, v13, v14, v15, v16, self->_seriesStylesList, self->_valueAxisStylesList, self->_paragraphStylesList);
    }

    objc_msgSend_willModifyForUpgrade(self, v8, v9, v10, v11);
    v17 = objc_opt_class();
    objc_msgSend_upgradeFor3DShadowPropertyMigrationFromChartStyle_seriesStyles_(v17, v18, v19, v20, v21, self->_chartStyle, self->_seriesStylesList);
    goto LABEL_7;
  }

LABEL_9:
  if (!objc_msgSend_count(self->_valueAxisStylesList, v8, v9, v10, v11))
  {
    v36 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "[TSCHChartStylePreset upgradePresetIfNecessaryFromFinalizeHandlerWithOptionalPreUFFVersion:]");
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStylePreset.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v43, v44, v45, v46, v37, v42, 903, 0, "No value axis styles when unarchiving preset");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50);
  }

  if (!objc_msgSend_count(self->_categoryAxisStylesList, v32, v33, v34, v35))
  {
    v55 = MEMORY[0x277D81150];
    v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, v52, v53, v54, "[TSCHChartStylePreset upgradePresetIfNecessaryFromFinalizeHandlerWithOptionalPreUFFVersion:]");
    v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, v58, v59, v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStylePreset.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v62, v63, v64, v65, v56, v61, 904, 0, "No category axis styles when unarchiving preset");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67, v68, v69);
  }

  if (!objc_msgSend_count(self->_seriesStylesList, v51, v52, v53, v54))
  {
    v74 = MEMORY[0x277D81150];
    v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, v71, v72, v73, "[TSCHChartStylePreset upgradePresetIfNecessaryFromFinalizeHandlerWithOptionalPreUFFVersion:]");
    v80 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, v77, v78, v79, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStylePreset.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v74, v81, v82, v83, v84, v75, v80, 905, 0, "No series styles when unarchiving preset");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v85, v86, v87, v88);
  }

  if (!objc_msgSend_count(self->_paragraphStylesList, v70, v71, v72, v73))
  {
    v93 = MEMORY[0x277D81150];
    v94 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v89, v90, v91, v92, "[TSCHChartStylePreset upgradePresetIfNecessaryFromFinalizeHandlerWithOptionalPreUFFVersion:]");
    v99 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v95, v96, v97, v98, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStylePreset.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v93, v100, v101, v102, v103, v94, v99, 906, 0, "No series paragraph styles when unarchiving preset");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v104, v105, v106, v107);
  }

  if (!self->_refLineStyle)
  {
    objc_msgSend_willModifyForUpgrade(self, v89, v90, v91, v92);
    chartStyle = self->_chartStyle;
    v113 = objc_msgSend_firstObject(self->_seriesStylesList, v109, v110, v111, v112);
    v114 = self->_paragraphStylesList;
    v119 = objc_msgSend_firstObject(self->_valueAxisStylesList, v115, v116, v117, v118);
    v124 = objc_msgSend_defaultStyleForPresetFromChartStyle_seriesStyle_paragraphStyles_valueAxisStyle_(TSCHReferenceLineStyle, v120, v121, v122, v123, chartStyle, v113, v114, v119);

    refLineStyle = self->_refLineStyle;
    self->_refLineStyle = v124;
  }

  self->_hasUpgradedFromFinalizeHandler = 1;
}

- (id)referencedStyles
{
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_msgSend_allStyles(self, a2, v2, v3, v4);
  v11 = objc_msgSend_setWithArray_(v5, v7, v8, v9, v10, v6);

  return v11;
}

- (id)paragraphStyleAtIndex:(unint64_t)index
{
  v7 = objc_msgSend_paragraphStyles(self, a2, v3, v4, v5);
  v12 = objc_msgSend_objectAtIndex_(v7, v8, v9, v10, v11, index);

  return v12;
}

- (id)buildChartNonStyle
{
  v5 = objc_msgSend_context(self, a2, v2, v3, v4);
  v10 = objc_msgSend_defaultStyleWithContext_(TSCHChartNonStyle, v6, v7, v8, v9, v5);

  return v10;
}

- (id)buildLegendNonStyle
{
  v5 = objc_msgSend_context(self, a2, v2, v3, v4);
  v10 = objc_msgSend_defaultStyleWithContext_(TSCHLegendNonStyle, v6, v7, v8, v9, v5);

  return v10;
}

- (id)buildAxisNonStyle
{
  v5 = objc_msgSend_context(self, a2, v2, v3, v4);
  v10 = objc_msgSend_defaultStyleWithContext_(TSCHChartAxisNonStyle, v6, v7, v8, v9, v5);

  return v10;
}

- (id)buildSeriesNonStyle
{
  v5 = objc_msgSend_context(self, a2, v2, v3, v4);
  v10 = objc_msgSend_defaultStyleWithContext_(TSCHChartSeriesNonStyle, v6, v7, v8, v9, v5);

  return v10;
}

- (id)applyStyleSwapTuple:(id)tuple
{
  tupleCopy = tuple;
  v9 = objc_msgSend_styleSwapSupporting(tupleCopy, v5, v6, v7, v8);

  if (v9 != self)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "[TSCHChartStylePreset applyStyleSwapTuple:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStylePreset.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 972, 0, "Wrong chart...");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  v362 = objc_msgSend_inverse(tupleCopy, v10, v11, v12, v13);
  v33 = objc_msgSend_beforeValue(tupleCopy, v29, v30, v31, v32);
  v38 = objc_msgSend_stylesheet(v33, v34, v35, v36, v37);
  v43 = objc_msgSend_afterValue(tupleCopy, v39, v40, v41, v42);
  v49 = objc_msgSend_stylesheet(v43, v44, v45, v46, v47);
  if (v38 != v49)
  {
    v53 = objc_msgSend_beforeValue(tupleCopy, v48, v50, v51, v52);
    v59 = objc_msgSend_stylesheet(v53, v54, v55, v56, v57);
    if (v59)
    {
      v63 = objc_msgSend_afterValue(tupleCopy, v58, v60, v61, v62);
      v68 = objc_msgSend_stylesheet(v63, v64, v65, v66, v67);

      if (v68)
      {
        goto LABEL_20;
      }
    }

    else
    {
    }

    v73 = objc_msgSend_beforeValue(tupleCopy, v69, v70, v71, v72);
    v79 = objc_msgSend_stylesheet(v73, v74, v75, v76, v77);
    if (v79)
    {
      objc_msgSend_beforeValue(tupleCopy, v78, v80, v81, v82);
    }

    else
    {
      objc_msgSend_afterValue(tupleCopy, v78, v80, v81, v82);
    }
    v33 = ;

    v87 = objc_msgSend_afterValue(tupleCopy, v83, v84, v85, v86);
    v93 = objc_msgSend_stylesheet(v87, v88, v89, v90, v91);
    if (v93)
    {
      objc_msgSend_beforeValue(tupleCopy, v92, v94, v95, v96);
    }

    else
    {
      objc_msgSend_afterValue(tupleCopy, v92, v94, v95, v96);
    }
    v38 = ;

    v101 = objc_msgSend_styleIdentifier(v33, v97, v98, v99, v100);
    v43 = objc_msgSend_copy(v101, v102, v103, v104, v105);

    v49 = objc_msgSend_stylesheet(v33, v106, v107, v108, v109);
    isLocked = objc_msgSend_isLocked(v49, v110, v111, v112, v113);
    objc_msgSend_setIsLocked_(v49, v115, v116, v117, v118, 0);
    if (v33)
    {
      objc_msgSend_removeStyle_(v49, v119, v120, v121, v122, v33);
    }

    if (v38)
    {
      objc_msgSend_addStyle_withIdentifier_(v49, v119, v120, v121, v122, v38, v43);
    }

    objc_msgSend_setIsLocked_(v49, v119, v120, v121, v122, isLocked);
  }

LABEL_20:
  v123 = objc_msgSend_swapType(tupleCopy, v69, v70, v71, v72);
  if (v123 <= 6)
  {
    switch(v123)
    {
      case 1:
        v209 = 72;
        chartStyle = self->_chartStyle;
        v232 = objc_msgSend_beforeValue(tupleCopy, v124, v125, v126, v127);

        if (chartStyle != v232)
        {
          v233 = MEMORY[0x277D81150];
          v234 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v212, v213, v214, v215, "[TSCHChartStylePreset applyStyleSwapTuple:]");
          v239 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v235, v236, v237, v238, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStylePreset.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v233, v240, v241, v242, v243, v234, v239, 1000, 0, "Inconsistent - mismatched chart style");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v244, v245, v246, v247);
        }

        break;
      case 3:
        v209 = 80;
        legendStyle = self->_legendStyle;
        v339 = objc_msgSend_beforeValue(tupleCopy, v124, v125, v126, v127);

        if (legendStyle != v339)
        {
          v340 = MEMORY[0x277D81150];
          v341 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v212, v213, v214, v215, "[TSCHChartStylePreset applyStyleSwapTuple:]");
          v346 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v342, v343, v344, v345, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStylePreset.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v340, v347, v348, v349, v350, v341, v346, 1007, 0, "Inconsistent - mismatched chart style");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v351, v352, v353, v354);
        }

        break;
      case 5:
        v170 = objc_msgSend_beforeValue(tupleCopy, v124, v125, v126, v127);
        v129 = 88;
        valueAxisStylesList = self->_valueAxisStylesList;
        v176 = objc_msgSend_index(tupleCopy, v172, v173, v174, v175);
        LOBYTE(valueAxisStylesList) = sub_27626B504(v170, valueAxisStylesList, v176, 0);

        if ((valueAxisStylesList & 1) == 0)
        {
          v181 = MEMORY[0x277D81150];
          v182 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v177, v178, v179, v180, "[TSCHChartStylePreset applyStyleSwapTuple:]");
          v187 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v183, v184, v185, v186, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStylePreset.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v181, v188, v189, v190, v191, v182, v187, 1022, 0, "Inconsistent - mismatched value axis style");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v192, v193, v194, v195);
        }

        objc_msgSend_willModify(self, v177, v178, v179, v180);
        v159 = objc_msgSend_mutableCopy(self->_valueAxisStylesList, v196, v197, v198, v199);
        v164 = objc_msgSend_afterValue(tupleCopy, v200, v201, v202, v203);
        v208 = objc_msgSend_index(tupleCopy, v204, v205, v206, v207);
        sub_27626B5EC(v164, v159, v208, 0);
        goto LABEL_48;
      default:
        goto LABEL_41;
    }

    goto LABEL_51;
  }

  if (v123 > 11)
  {
    if (v123 == 12)
    {
      v302 = objc_msgSend_beforeValue(tupleCopy, v124, v125, v126, v127);
      v129 = 112;
      paragraphStylesList = self->_paragraphStylesList;
      v308 = objc_msgSend_index(tupleCopy, v304, v305, v306, v307);
      LOBYTE(paragraphStylesList) = sub_27626B504(v302, paragraphStylesList, v308, 0);

      if ((paragraphStylesList & 1) == 0)
      {
        v313 = MEMORY[0x277D81150];
        v314 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v309, v310, v311, v312, "[TSCHChartStylePreset applyStyleSwapTuple:]");
        v319 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v315, v316, v317, v318, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStylePreset.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v313, v320, v321, v322, v323, v314, v319, 1051, 0, "Inconsistent - mismatched paragraph style");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v324, v325, v326, v327);
      }

      v159 = objc_msgSend_mutableCopy(self->_paragraphStylesList, v309, v310, v311, v312);
      v164 = objc_msgSend_afterValue(tupleCopy, v328, v329, v330, v331);
      v336 = objc_msgSend_index(tupleCopy, v332, v333, v334, v335);
      sub_27626B5EC(v164, v159, v336, 0);
      goto LABEL_48;
    }

    if (v123 != 15)
    {
      goto LABEL_41;
    }

    v209 = 120;
    refLineStyle = self->_refLineStyle;
    v211 = objc_msgSend_beforeValue(tupleCopy, v124, v125, v126, v127);

    if (refLineStyle != v211)
    {
      v216 = MEMORY[0x277D81150];
      v217 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v212, v213, v214, v215, "[TSCHChartStylePreset applyStyleSwapTuple:]");
      v222 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v218, v219, v220, v221, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStylePreset.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v216, v223, v224, v225, v226, v217, v222, 1014, 0, "Inconsistent - mismatched chart style");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v227, v228, v229, v230);
    }

LABEL_51:
    objc_msgSend_willModify(self, v212, v213, v214, v215);
    objc_opt_class();
    v337 = objc_msgSend_afterValue(tupleCopy, v355, v356, v357, v358);
    v359 = TSUCheckedDynamicCast();
    v360 = *(&self->super.super.isa + v209);
    *(&self->super.super.isa + v209) = v359;

    goto LABEL_52;
  }

  if (v123 == 7)
  {
    v263 = objc_msgSend_beforeValue(tupleCopy, v124, v125, v126, v127);
    v129 = 96;
    categoryAxisStylesList = self->_categoryAxisStylesList;
    v269 = objc_msgSend_index(tupleCopy, v265, v266, v267, v268);
    LOBYTE(categoryAxisStylesList) = sub_27626B504(v263, categoryAxisStylesList, v269, 0);

    if ((categoryAxisStylesList & 1) == 0)
    {
      v274 = MEMORY[0x277D81150];
      v275 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v270, v271, v272, v273, "[TSCHChartStylePreset applyStyleSwapTuple:]");
      v280 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v276, v277, v278, v279, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStylePreset.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v274, v281, v282, v283, v284, v275, v280, 1031, 0, "Inconsistent - mismatched category axis style");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v285, v286, v287, v288);
    }

    objc_msgSend_willModify(self, v270, v271, v272, v273);
    v159 = objc_msgSend_mutableCopy(self->_categoryAxisStylesList, v289, v290, v291, v292);
    v164 = objc_msgSend_afterValue(tupleCopy, v293, v294, v295, v296);
    v301 = objc_msgSend_index(tupleCopy, v297, v298, v299, v300);
    sub_27626B5EC(v164, v159, v301, 0);
    goto LABEL_48;
  }

  if (v123 != 9)
  {
LABEL_41:
    v248 = MEMORY[0x277D81150];
    v249 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v124, v125, v126, v127, "[TSCHChartStylePreset applyStyleSwapTuple:]");
    v254 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v250, v251, v252, v253, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStylePreset.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v248, v255, v256, v257, v258, v249, v254, 1058, 0, "Bad things happening here.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v259, v260, v261, v262);
    goto LABEL_53;
  }

  v128 = objc_msgSend_beforeValue(tupleCopy, v124, v125, v126, v127);
  v129 = 104;
  seriesStylesList = self->_seriesStylesList;
  v135 = objc_msgSend_index(tupleCopy, v131, v132, v133, v134);
  LOBYTE(seriesStylesList) = sub_27626B504(v128, seriesStylesList, v135, 0);

  if ((seriesStylesList & 1) == 0)
  {
    v140 = MEMORY[0x277D81150];
    v141 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v136, v137, v138, v139, "[TSCHChartStylePreset applyStyleSwapTuple:]");
    v146 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v142, v143, v144, v145, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStylePreset.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v140, v147, v148, v149, v150, v141, v146, 1041, 0, "Inconsistent - mismatched series theme style");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v151, v152, v153, v154);
  }

  objc_msgSend_willModify(self, v136, v137, v138, v139);
  v159 = objc_msgSend_mutableCopy(self->_seriesStylesList, v155, v156, v157, v158);
  v164 = objc_msgSend_afterValue(tupleCopy, v160, v161, v162, v163);
  v169 = objc_msgSend_index(tupleCopy, v165, v166, v167, v168);
  sub_27626B5EC(v164, v159, v169, 0);
LABEL_48:

  v337 = *(&self->super.super.isa + v129);
  *(&self->super.super.isa + v129) = v159;
LABEL_52:

LABEL_53:

  return v362;
}

- (id)migratedPresetInTheme:(id)theme followReplacements:(BOOL)replacements
{
  v101 = *MEMORY[0x277D85DE8];
  themeCopy = theme;
  v9 = objc_msgSend_uuid(self, v5, v6, v7, v8);
  objc_msgSend_presetsOfKind_(themeCopy, v10, v11, v12, v13, *MEMORY[0x277D80B08]);
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v14 = v97 = 0u;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, v16, v17, v18, &v96, v100, 16);
  if (v19)
  {
    v20 = *v97;
LABEL_3:
    v21 = 0;
    while (1)
    {
      if (*v97 != v20)
      {
        objc_enumerationMutation(v14);
      }

      objc_opt_class();
      v23 = TSUCheckedDynamicCast();
      if (!v23)
      {
        v27 = MEMORY[0x277D81150];
        v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v24, v25, v26, "[TSCHChartStylePreset migratedPresetInTheme:followReplacements:]");
        v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStylePreset.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v34, v35, v36, v37, v28, v33, 1080, 0, "invalid nil value for '%{public}s'", "themeChartPreset");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
      }

      v42 = objc_msgSend_uuid(v23, v22, v24, v25, v26);
      isEqual = objc_msgSend_isEqual_(v9, v43, v44, v45, v46, v42);

      if (isEqual)
      {
        break;
      }

      if (v19 == ++v21)
      {
        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v48, v49, v50, v51, &v96, v100, 16);
        if (v19)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }

    if (v23)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

  v56 = MEMORY[0x277D81150];
  v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, v53, v54, v55, "[TSCHChartStylePreset migratedPresetInTheme:followReplacements:]");
  v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, v59, v60, v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStylePreset.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v63, v64, v65, v66, v57, v62, 1087, 0, "Could not find preset with matching uuid in themeChartPresets. Will set to the first available themeChartPreset.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v67, v68, v69, v70);
  v23 = objc_msgSend_firstObject(v14, v71, v72, v73, v74);
  if (!v23)
  {
    v79 = MEMORY[0x277D81150];
    v80 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v75, v76, v77, v78, "[TSCHChartStylePreset migratedPresetInTheme:followReplacements:]");
    v85 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v81, v82, v83, v84, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStylePreset.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v79, v86, v87, v88, v89, v80, v85, 1091, 0, "preset still nil after trying to set it to first available themeChartPreset");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v90, v91, v92, v93);
    v23 = 0;
  }

LABEL_15:

  return v23;
}

+ (TSCHChartStylePreset)presetWithContext:(id)context fromStyleState:(id)state uuid:(id)uuid
{
  uuidCopy = uuid;
  stateCopy = state;
  contextCopy = context;
  v52 = [self alloc];
  v15 = objc_msgSend_chartStyle(stateCopy, v11, v12, v13, v14);
  v20 = objc_msgSend_legendStyle(stateCopy, v16, v17, v18, v19);
  v25 = objc_msgSend_valueAxisStyles(stateCopy, v21, v22, v23, v24);
  v30 = objc_msgSend_categoryAxisStyles(stateCopy, v26, v27, v28, v29);
  v35 = objc_msgSend_seriesThemeStyles(stateCopy, v31, v32, v33, v34);
  v40 = objc_msgSend_paragraphStyles(stateCopy, v36, v37, v38, v39);
  v45 = objc_msgSend_referenceLineThemeStyle(stateCopy, v41, v42, v43, v44);

  v50 = objc_msgSend_initWithContext_chartStyle_legendStyle_valueAxisStyles_categoryAxisStyles_seriesStyles_paragraphStyles_refLineStyle_uuid_(v52, v46, v47, v48, v49, contextCopy, v15, v20, v25, v30, v35, v40, v45, uuidCopy);

  return v50;
}

- (id)presetByAdoptingStylesheet:(id)stylesheet withMapper:(id)mapper paragraphStyles:(id)styles
{
  stylesheetCopy = stylesheet;
  stylesCopy = styles;
  v14 = objc_msgSend_mapperWithMapper_(TSCHStyleMapper, v10, v11, v12, v13, mapper);
  v19 = objc_msgSend_chartStyleState(self, v15, v16, v17, v18);
  v80[0] = MEMORY[0x277D85DD0];
  v80[1] = 3221225472;
  v80[2] = sub_27632E6D0;
  v80[3] = &unk_27A6B9AB8;
  v20 = v14;
  v81 = v20;
  objc_msgSend_replaceStylesUsingBlock_(v19, v21, v22, v23, v24, v80);
  while (1)
  {
    v29 = objc_msgSend_paragraphStyles(v19, v25, v26, v27, v28);
    v34 = objc_msgSend_count(v29, v30, v31, v32, v33);
    v39 = objc_msgSend_count(stylesCopy, v35, v36, v37, v38);

    if (v34 >= v39)
    {
      break;
    }

    v44 = objc_msgSend_paragraphStyles(v19, v40, v41, v42, v43);
    if (objc_msgSend_count(v44, v45, v46, v47, v48))
    {
      v53 = objc_msgSend_paragraphStyles(v19, v49, v50, v51, v52);
      v58 = objc_msgSend_firstObject(v53, v54, v55, v56, v57);
    }

    else
    {
      v58 = objc_msgSend_firstObject(stylesCopy, v49, v50, v51, v52);
    }

    v63 = objc_msgSend_paragraphStyles(v19, v59, v60, v61, v62);
    objc_msgSend_addObject_(v63, v64, v65, v66, v67, v58);
  }

  v68 = objc_msgSend_context(stylesheetCopy, v40, v41, v42, v43);
  v73 = objc_msgSend_uuid(self, v69, v70, v71, v72);
  v78 = objc_msgSend_presetWithContext_fromStyleState_uuid_(TSCHChartStylePreset, v74, v75, v76, v77, v68, v19, v73);

  return v78;
}

- (TSCHChartStyleState)chartStyleState
{
  v6 = objc_msgSend_styleState(TSCHChartStyleState, a2, v2, v3, v4);
  v7 = objc_opt_class();
  v12 = objc_msgSend_chartStyle(self, v8, v9, v10, v11);
  v13 = sub_2762CD788(v7, v12);
  objc_msgSend_setChartStyle_(v6, v14, v15, v16, v17, v13);

  v18 = objc_opt_class();
  v23 = objc_msgSend_legendStyle(self, v19, v20, v21, v22);
  v24 = sub_2762CD788(v18, v23);
  objc_msgSend_setLegendStyle_(v6, v25, v26, v27, v28, v24);

  v33 = objc_msgSend_valueAxisStyles(self, v29, v30, v31, v32);
  v38 = objc_msgSend_mutableCopy(v33, v34, v35, v36, v37);
  objc_msgSend_setValueAxisStyles_(v6, v39, v40, v41, v42, v38);

  v47 = objc_msgSend_categoryAxisStyles(self, v43, v44, v45, v46);
  v52 = objc_msgSend_mutableCopy(v47, v48, v49, v50, v51);
  objc_msgSend_setCategoryAxisStyles_(v6, v53, v54, v55, v56, v52);

  v61 = objc_msgSend_seriesStyles(self, v57, v58, v59, v60);
  v66 = objc_msgSend_mutableCopy(v61, v62, v63, v64, v65);
  objc_msgSend_setSeriesThemeStyles_(v6, v67, v68, v69, v70, v66);

  v75 = objc_msgSend_array(MEMORY[0x277CBEB18], v71, v72, v73, v74);
  objc_msgSend_setSeriesPrivateStyles_(v6, v76, v77, v78, v79, v75);

  v84 = objc_msgSend_paragraphStyles(self, v80, v81, v82, v83);
  v89 = objc_msgSend_mutableCopy(v84, v85, v86, v87, v88);
  objc_msgSend_setParagraphStyles_(v6, v90, v91, v92, v93, v89);

  v94 = objc_opt_class();
  v99 = objc_msgSend_refLineStyle(self, v95, v96, v97, v98);
  v100 = sub_2762CD788(v94, v99);
  objc_msgSend_setReferenceLineThemeStyle_(v6, v101, v102, v103, v104, v100);

  return v6;
}

@end
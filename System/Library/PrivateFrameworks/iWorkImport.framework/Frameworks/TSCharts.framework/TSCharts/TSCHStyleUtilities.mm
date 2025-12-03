@interface TSCHStyleUtilities
+ (BOOL)allSeriesInList:(id)list haveExplosionValue:(double)value;
+ (BOOL)groupedShadowsForChartModel:(id)model;
+ (BOOL)hasNoFill:(id)fill;
+ (BOOL)hasShadow:(id)shadow;
+ (BOOL)isNullFill:(id)fill;
+ (BOOL)labelExplosionIsCenteredInWedgeWithInnerRadius:(double)radius labelExplosion:(double)explosion;
+ (BOOL)p_hasShadow:(id)shadow;
+ (BOOL)shouldAnchorLabelsForSeries:(id)series innerRadius:(double)radius calloutLineType:(int64_t)type defaultLabelExplosion:(double)explosion;
+ (BOOL)shouldExteriorBorderButtonBeAdded:(id)added;
+ (BOOL)shouldExteriorBorderButtonBeDisabled:(id)disabled;
+ (BOOL)upgradeShadowProperties:(id)properties inMap:(id)map;
+ (BOOL)upgradedShadowPropertyFromShadow:(id)shadow outUpgraded:(id *)upgraded;
+ (BOOL)useOutsideParagraphStyleIndexForSeries:(id)series chartType:(id)type layout:(id)layout;
+ (CGSize)bodySizeWithMinimumWedgeExplosionWithChartModel:(id)model bodySize:(CGSize)size;
+ (double)bendedCalloutLineLabelExplosionValueFromPre2_4ExplosionValue:(double)value chartModel:(id)model bodySize:(CGSize)size;
+ (double)p_bendedCalloutLineLabelExplosionValueFromPre2_4ExplosionValue:(double)value chartRadius:(double)radius;
+ (double)p_pre2_4BendedCalloutLineLabelExplosionValueFromExplosionValue:(double)value chartRadius:(double)radius;
+ (double)pre2_4BendedCalloutLineLabelExplosionValueFromExplosionValue:(double)value chartModel:(id)model bodySize:(CGSize)size;
+ (float)defaultDonutLabelExplosionPercentage;
+ (id)availableStrokes;
+ (id)chartsNullShadowToDefaultDisabledShadow:(id)shadow;
+ (id)defaultShadow;
+ (id)fillForSeries:(id)series chartType:(id)type;
+ (id)fullyPopulatedStyleFromStyle:(id)style context:(id)context;
+ (id)fullyPopulatedStylesFromArray:(id)array context:(id)context styleClass:(Class)class;
+ (id)lineEndForSegmentIndex:(int64_t)index;
+ (id)p_referenceColorForObject:(id)object;
+ (id)shadowToChartsNullShadow:(id)shadow;
+ (id)stylesheetOfStyles:(id)styles nilAllowed:(BOOL)allowed;
+ (id)swapTuplesForParagraphStyleMutations:(id)mutations forReferencingProperty:(int)property forStyleOwner:(id)owner;
+ (id)trendlineColorFromCGColor:(CGColor *)color;
+ (id)tupleToUpdate2_3ExplosionFromValue:(id)value chartInfo:(id)info forStyleOwner:(id)owner;
+ (id)uiStringForLabelFormatType:(int)type useShortString:(BOOL)string;
+ (id)upgradedShadowPropertyForParagraphStyle:(id)style;
+ (unint64_t)segmentIndexForLineEnd:(id)end;
+ (void)breakUpFontName:(id)name isBold:(BOOL *)bold isItalic:(BOOL *)italic;
+ (void)convertToSimpleTSDFillsInProperties:(id)properties inMap:(id)map context:(id)context;
+ (void)p_adjustTrendlineSaturation:(double *)saturation brightness:(double *)brightness;
+ (void)updateParagraphStylePropertyMapsForMutationLookup:(id)lookup mutationDictionary:(id)dictionary styleOwner:(id)owner indexProperty:(int)property paragraphStyleProperty:(int)styleProperty value:(id)value;
+ (void)updateStyleState:(id)state forMutationsPerStyleOwner:(id)owner;
+ (void)updateStyleState:(id)state forPropertyMutationTuples:(id)tuples;
+ (void)upgradeAlignmentInParagraphStyles:(id)styles willModifyBlock:(id)block;
@end

@implementation TSCHStyleUtilities

+ (id)fullyPopulatedStyleFromStyle:(id)style context:(id)context
{
  styleCopy = style;
  contextCopy = context;
  if (!styleCopy)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "+[TSCHStyleUtilities fullyPopulatedStyleFromStyle:context:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleUtilities.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 73, 0, "invalid nil value for '%{public}s'", "style");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = objc_alloc(objc_opt_class());
  v31 = objc_msgSend_name(styleCopy, v27, v28, v29, v30);
  v36 = objc_msgSend_fullPropertyMap(styleCopy, v32, v33, v34, v35);
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v26, v37, v38, v39, v40, contextCopy, v31, v36, 0);

  return isVariation;
}

+ (id)fullyPopulatedStylesFromArray:(id)array context:(id)context styleClass:(Class)class
{
  v57 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  contextCopy = context;
  v13 = objc_msgSend_array(MEMORY[0x277CBEB18], v9, v10, v11, v12, arrayCopy);
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = arrayCopy;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, v15, v16, v17, &v52, v56, 16);
  if (v18)
  {
    v19 = *v53;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v53 != v19)
        {
          objc_enumerationMutation(obj);
        }

        objc_opt_class();
        v22 = TSUDynamicCast();
        if (v22)
        {
          v26 = objc_msgSend_fullyPopulatedStyleFromStyle_context_(TSCHStyleUtilities, v21, v23, v24, v25, v22, contextCopy);

          objc_msgSend_addObject_(v13, v27, v28, v29, v30, v26);
        }

        else if (class)
        {
          v31 = [class alloc];
          v36 = objc_msgSend_defaultPropertyMap(class, v32, v33, v34, v35);
          isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v31, v37, v38, v39, v40, contextCopy, 0, v36, 0);

          objc_msgSend_addObject_(v13, v42, v43, v44, v45, isVariation);
          v26 = isVariation;
        }

        else
        {
          v26 = 0;
        }
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v46, v47, v48, v49, &v52, v56, 16);
    }

    while (v18);
  }

  return v13;
}

+ (BOOL)hasNoFill:(id)fill
{
  fillCopy = fill;
  if (fillCopy)
  {
    isNullFill = objc_msgSend_isNullFill_(self, v4, v6, v7, v8, fillCopy);
  }

  else
  {
    isNullFill = 1;
  }

  return isNullFill;
}

+ (BOOL)isNullFill:(id)fill
{
  fillCopy = fill;
  v9 = objc_msgSend_nullFill(self, v5, v6, v7, v8);
  isEqual = objc_msgSend_isEqual_(fillCopy, v10, v11, v12, v13, v9);

  return isEqual;
}

+ (BOOL)shouldExteriorBorderButtonBeAdded:(id)added
{
  addedCopy = added;
  if (objc_msgSend_shouldRender(addedCopy, v4, v5, v6, v7))
  {
    v12 = objc_msgSend_color(addedCopy, v8, v9, v10, v11);
    v17 = objc_msgSend_isClear(v12, v13, v14, v15, v16) ^ 1;
  }

  else
  {
    LOBYTE(v17) = 0;
  }

  return v17;
}

+ (BOOL)shouldExteriorBorderButtonBeDisabled:(id)disabled
{
  disabledCopy = disabled;
  if (objc_msgSend_shouldRender(disabledCopy, v4, v5, v6, v7))
  {
    v12 = objc_msgSend_color(disabledCopy, v8, v9, v10, v11);
    isClear = objc_msgSend_isClear(v12, v13, v14, v15, v16);
  }

  else
  {
    isClear = 1;
  }

  return isClear;
}

+ (BOOL)p_hasShadow:(id)shadow
{
  shadowCopy = shadow;
  if (shadowCopy)
  {
    v9 = objc_msgSend_nullShadow(self, v4, v6, v7, v8);
    v14 = objc_msgSend_isEqual_(shadowCopy, v10, v11, v12, v13, v9) ^ 1;
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14;
}

+ (BOOL)upgradedShadowPropertyFromShadow:(id)shadow outUpgraded:(id *)upgraded
{
  shadowCopy = shadow;
  if (!upgraded)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "+[TSCHStyleUtilities upgradedShadowPropertyFromShadow:outUpgraded:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleUtilities.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 127, 0, "invalid nil value for '%{public}s'", "outUpgraded");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  if (objc_msgSend_p_hasShadow_(self, v6, v8, v9, v10, shadowCopy) && objc_msgSend_isEnabled(shadowCopy, v26, v27, v28, v29))
  {
    v30 = shadowCopy;
    v31 = 0;
  }

  else
  {
    v30 = objc_msgSend_nullShadow(self, v26, v27, v28, v29);
    v31 = 1;
  }

  *upgraded = v30;

  return v31;
}

+ (BOOL)upgradeShadowProperties:(id)properties inMap:(id)map
{
  mapCopy = map;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2762CA05C;
  v13[3] = &unk_27A6B77A0;
  v15 = &v17;
  selfCopy = self;
  v14 = mapCopy;
  v7 = mapCopy;
  objc_msgSend_enumeratePropertiesUsingBlock_(properties, v8, v9, v10, v11, v13);
  LOBYTE(properties) = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return properties;
}

+ (id)upgradedShadowPropertyForParagraphStyle:(id)style
{
  styleCopy = style;
  v9 = objc_msgSend_valueForProperty_(styleCopy, v5, v6, v7, v8, 40);
  v31 = 0;
  v14 = objc_msgSend_upgradedShadowPropertyFromShadow_outUpgraded_(self, v10, v11, v12, v13, v9, &v31);
  v16 = v31;
  if (v14)
  {
    v20 = objc_msgSend_context(styleCopy, v15, v17, v18, v19);
    v25 = objc_msgSend_fullyPopulatedStyleFromStyle_context_(self, v21, v22, v23, v24, styleCopy, v20);

    objc_msgSend_setValue_forProperty_(v25, v26, v27, v28, v29, v16, 40);
  }

  else
  {
    v25 = styleCopy;
  }

  return v25;
}

+ (BOOL)hasShadow:(id)shadow
{
  shadowCopy = shadow;
  hasShadow = objc_msgSend_p_hasShadow_(self, v5, v6, v7, v8, shadowCopy);
  if (hasShadow && (objc_msgSend_isEnabled(shadowCopy, v9, v11, v12, v13) & 1) == 0)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "+[TSCHStyleUtilities hasShadow:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleUtilities.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v25, v26, v27, v28, v19, v24, 166, 0, "inconsistent shadow state %@", shadowCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  }

  return hasShadow;
}

+ (id)defaultShadow
{
  v5 = MEMORY[0x277D803A8];
  v6 = objc_msgSend_blackColor(MEMORY[0x277D81180], a2, v2, v3, v4);
  v8 = objc_msgSend_shadowWithAngle_offset_radius_opacity_color_enabled_(v5, v7, 315.0, 6.0, 10.0, v6, 1, 0.75);

  return v8;
}

+ (id)shadowToChartsNullShadow:(id)shadow
{
  shadowCopy = shadow;
  objc_opt_class();
  v5 = TSUDynamicCast();
  v10 = v5;
  if (!shadowCopy || v5 == shadowCopy && (objc_msgSend_isEnabled(v5, v6, v7, v8, v9) & 1) != 0)
  {
    v11 = shadowCopy;
  }

  else
  {
    v11 = objc_msgSend_nullShadow(self, v6, v7, v8, v9);
  }

  v12 = v11;

  return v12;
}

+ (id)chartsNullShadowToDefaultDisabledShadow:(id)shadow
{
  shadowCopy = shadow;
  if (objc_msgSend_hasShadow_(self, v5, v6, v7, v8, shadowCopy))
  {
    v13 = shadowCopy;
  }

  else
  {
    v13 = objc_msgSend_defaultDisabledShadow(MEMORY[0x277D803A8], v9, v10, v11, v12);
  }

  v14 = v13;

  return v14;
}

+ (void)updateStyleState:(id)state forMutationsPerStyleOwner:(id)owner
{
  v70 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  ownerCopy = owner;
  v9 = objc_msgSend_allKeys(ownerCopy, v6, 0.0, v7, v8);
  obj = v9;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, v11, v12, v13, &v64, v69, 16);
  if (v15)
  {
    v19 = *v65;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v65 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v64 + 1) + 8 * i);
        v23 = objc_msgSend_objectForKey_(ownerCopy, v14, v16, v17, v18, v21);
        if (!v23)
        {
          v27 = MEMORY[0x277D81150];
          v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v24, v25, v26, "+[TSCHStyleUtilities updateStyleState:forMutationsPerStyleOwner:]");
          v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleUtilities.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v34, v35, v36, v37, v28, v33, 194, 0, "invalid nil value for '%{public}s'", "mutations");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
        }

        v42 = objc_msgSend_swapTuplesForMutations_forImport_(v21, v22, v24, v25, v26, v23, 0);
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v43 = v42;
        v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v44, v45, v46, v47, &v60, v68, 16);
        if (v49)
        {
          v53 = *v61;
          do
          {
            for (j = 0; j != v49; ++j)
            {
              if (*v61 != v53)
              {
                objc_enumerationMutation(v43);
              }

              v55 = *(*(&v60 + 1) + 8 * j);
              v56 = objc_msgSend_swapType(v55, v48, v50, v51, v52);
              if ((sub_276312018(v56) & 1) == 0)
              {
                v57 = objc_msgSend_applyStyleSwapTuple_ignoringBeforeValues_(stateCopy, v48, v50, v51, v52, v55, 1);
              }
            }

            v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v48, v50, v51, v52, &v60, v68, 16);
          }

          while (v49);
        }
      }

      v9 = obj;
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, v16, v17, v18, &v64, v69, 16);
    }

    while (v15);
  }
}

+ (void)updateStyleState:(id)state forPropertyMutationTuples:(id)tuples
{
  v45 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  tuplesCopy = tuples;
  v12 = objc_msgSend_dictionary(MEMORY[0x277D81278], v8, v9, v10, v11);
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v13 = tuplesCopy;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, v15, v16, v17, &v40, v44, 16);
  if (v19)
  {
    v23 = *v41;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v41 != v23)
        {
          objc_enumerationMutation(v13);
        }

        v25 = *(*(&v40 + 1) + 8 * i);
        v26 = objc_msgSend_mutations(v25, v18, v20, v21, v22, v40);
        v31 = objc_msgSend_styleOwner(v25, v27, v28, v29, v30);
        objc_msgSend_setObject_forUncopiedKey_(v12, v32, v33, v34, v35, v26, v31);
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v18, v20, v21, v22, &v40, v44, 16);
    }

    while (v19);
  }

  objc_msgSend_updateStyleState_forMutationsPerStyleOwner_(self, v36, v37, v38, v39, stateCopy, v12);
}

+ (void)upgradeAlignmentInParagraphStyles:(id)styles willModifyBlock:(id)block
{
  v34 = *MEMORY[0x277D85DE8];
  stylesCopy = styles;
  blockCopy = block;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = stylesCopy;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, v9, v10, v11, &v29, v33, 16);
  if (v12)
  {
    v13 = 0;
    v14 = *v30;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v7);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        if (objc_msgSend_intValueForProperty_(v16, v17, v18, v19, v20, 86, v29) != 2)
        {
          if (!((blockCopy == 0) | v13 & 1))
          {
            blockCopy[2](blockCopy);
            v13 = 1;
          }

          objc_msgSend_setIntValue_forProperty_(v16, v21, v22, v23, v24, 2, 86);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v25, v26, v27, v28, &v29, v33, 16);
    }

    while (v12);
  }
}

+ (void)convertToSimpleTSDFillsInProperties:(id)properties inMap:(id)map context:(id)context
{
  mapCopy = map;
  contextCopy = context;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2762CAC4C;
  v15[3] = &unk_27A6B6E50;
  v16 = mapCopy;
  v17 = contextCopy;
  v9 = contextCopy;
  v10 = mapCopy;
  objc_msgSend_enumeratePropertiesUsingBlock_(properties, v11, v12, v13, v14, v15);
}

+ (void)p_adjustTrendlineSaturation:(double *)saturation brightness:(double *)brightness
{
  v4 = *brightness;
  if (*brightness == 1.0)
  {
    v5 = *saturation;
    v6 = -0.2;
    goto LABEL_5;
  }

  if (v4 == 0.9)
  {
    *brightness = 1.0;
    v5 = *saturation;
    v6 = -0.1;
LABEL_5:
    v7 = v5 + v6;
    *saturation = v7;
    if (v7 < 0.0)
    {
      *saturation = 0.0;
    }

    return;
  }

  v8 = v4 + 0.2;
  *brightness = v8;
  if (v8 > 1.0)
  {
    *brightness = 1.0;
  }
}

+ (id)trendlineColorFromCGColor:(CGColor *)color
{
  components[4] = *MEMORY[0x277D85DE8];
  v8 = objc_msgSend_colorWithCGColor_(MEMORY[0x277D81180], a2, v3, v4, v5);
  if (CGColorGetNumberOfComponents(color) == 4)
  {
    v23[0] = 0;
    v23[1] = 0;
    v22 = 0;
    v9 = CGColorGetComponents(color)[3];
    TSURGBToHSB();
    objc_msgSend_p_adjustTrendlineSaturation_brightness_(self, v10, v11, v12, v13, v23, &v22);
    TSUHSBToRGB();
    memset(components, 0, 24);
    components[3] = v9;
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v15 = CGColorCreate(DeviceRGB, components);
    CGColorSpaceRelease(DeviceRGB);
    v20 = objc_msgSend_colorWithCGColor_(MEMORY[0x277D81180], v16, v17, v18, v19, v15);

    CGColorRelease(v15);
  }

  else
  {
    v20 = v8;
  }

  return v20;
}

+ (id)stylesheetOfStyles:(id)styles nilAllowed:(BOOL)allowed
{
  v51 = *MEMORY[0x277D85DE8];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = styles;
  v8 = 0;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, v5, v6, v7, &v46, v50, 16);
  if (v10)
  {
    v14 = *v47;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v47 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v46 + 1) + 8 * i);
        if (v8)
        {
          v17 = objc_msgSend_stylesheet(*(*(&v46 + 1) + 8 * i), v9, v11, v12, v13);
          v22 = objc_msgSend_rootAncestor(v17, v18, v19, v20, v21);
          v27 = objc_msgSend_rootAncestor(v8, v23, v24, v25, v26);
          v28 = v22 == v27;

          if (!v28)
          {
            v29 = MEMORY[0x277D81150];
            v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v11, v12, v13, "+[TSCHStyleUtilities stylesheetOfStyles:nilAllowed:]");
            v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleUtilities.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v36, v37, v38, v39, v30, v35, 295, 0, "Stylesheet mismatch for style %@ expects %@", v16, v8);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42, v43);
          }
        }

        else
        {
          v8 = objc_msgSend_stylesheet(*(*(&v46 + 1) + 8 * i), v9, v11, v12, v13);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, v11, v12, v13, &v46, v50, 16);
    }

    while (v10);
  }

  return v8;
}

+ (void)breakUpFontName:(id)name isBold:(BOOL *)bold isItalic:(BOOL *)italic
{
  *bold = 0;
  *italic = 0;
  v5 = TSWPCreateFontWithName();
  if (v5)
  {
    v6 = v5;
    TSWPFontGetAttributes();
    CFRelease(v6);
  }
}

+ (BOOL)allSeriesInList:(id)list haveExplosionValue:(double)value
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  listCopy = list;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(listCopy, v6, v7, v8, v9, &v21, v25, 16);
  if (v11)
  {
    v15 = *v22;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(listCopy);
        }

        valueCopy = value;
        *&v12 = valueCopy;
        objc_msgSend_floatValueForProperty_defaultValue_(*(*(&v21 + 1) + 8 * i), v10, v12, v13, v14, 1163, v21);
        v12 = v18;
        if (v12 != value)
        {
          v19 = 0;
          goto LABEL_11;
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(listCopy, v10, v12, v13, v14, &v21, v25, 16);
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v19 = 1;
LABEL_11:

  return v19;
}

+ (void)updateParagraphStylePropertyMapsForMutationLookup:(id)lookup mutationDictionary:(id)dictionary styleOwner:(id)owner indexProperty:(int)property paragraphStyleProperty:(int)styleProperty value:(id)value
{
  v9 = *&styleProperty;
  v10 = *&property;
  v115[1] = *MEMORY[0x277D85DE8];
  lookupCopy = lookup;
  dictionaryCopy = dictionary;
  ownerCopy = owner;
  valueCopy = value;
  v19 = objc_msgSend_chartInfo(ownerCopy, v15, v16, v17, v18);
  v24 = objc_msgSend_intValueForProperty_defaultValue_(ownerCopy, v20, v21, v22, v23, v10, 0);
  v111 = objc_msgSend_paragraphStyleAtIndex_(v19, v25, v26, v27, v28, v24);
  v34 = objc_msgSend_boxedValueForProperty_(v111, v29, v30, v31, v32, v9);
  if (!valueCopy)
  {
    v38 = MEMORY[0x277D81150];
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v35, v36, v37, "+[TSCHStyleUtilities updateParagraphStylePropertyMapsForMutationLookup:mutationDictionary:styleOwner:indexProperty:paragraphStyleProperty:value:]");
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, v41, v42, v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleUtilities.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v45, v46, v47, v48, v39, v44, 337, 0, "invalid nil value for '%{public}s'", "value");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51, v52);
  }

  if ((objc_msgSend_isEqual_(valueCopy, v33, v35, v36, v37, v34) & 1) == 0)
  {
    v110 = objc_msgSend_styleOwnerPathForStyleOwner_(v19, v53, v54, v55, v56, ownerCopy);
    v61 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v57, v58, v59, v60, v9);
    v114 = v61;
    v115[0] = valueCopy;
    v66 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v62, v63, v64, v65, v115, &v114, 1);
    v67 = sub_2762F40C4(v66);

    v73 = objc_msgSend_indexOfObject_(lookupCopy, v68, v69, v70, v71, v67);
    if (v73 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v73 = objc_msgSend_count(lookupCopy, v72, v74, v75, v76);
      objc_msgSend_addObject_(lookupCopy, v77, v78, v79, v80, v67);
    }

    v81 = objc_opt_class();
    v87 = objc_msgSend_tsu_objectForKey_withDefaultOfClass_(dictionaryCopy, v82, v83, v84, v85, v110, v81);
    if (v73 >> 31)
    {
      v91 = MEMORY[0x277D81150];
      v109 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v86, v88, v89, v90, "+[TSCHStyleUtilities updateParagraphStylePropertyMapsForMutationLookup:mutationDictionary:styleOwner:indexProperty:paragraphStyleProperty:value:]");
      v96 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v92, v93, v94, v95, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleUtilities.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v91, v97, v98, v99, v100, v109, v96, 347, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v101, v102, v103, v104);
      objc_msgSend_setIntValue_forProperty_(v87, v105, v106, v107, v108, 0x7FFFFFFFLL, v10);
    }

    else
    {
      objc_msgSend_setIntValue_forProperty_(v87, v86, v88, v89, v90, v73, v10);
    }
  }
}

+ (id)availableStrokes
{
  v55[3] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_blackColor(MEMORY[0x277D81180], a2, v2, v3, v4);
  v9 = objc_msgSend_strokeWithColor_width_(MEMORY[0x277D80368], v6, 5.0, v7, v8, v5);
  v14 = objc_msgSend_solidPattern(MEMORY[0x277D803C8], v10, v11, v12, v13);
  objc_msgSend_setPattern_(v9, v15, v16, v17, v18, v14);

  v22 = objc_msgSend_strokeWithColor_width_(MEMORY[0x277D80368], v19, 5.0, v20, v21, v5);
  v27 = objc_msgSend_mediumDashPattern(MEMORY[0x277D803C8], v23, v24, v25, v26);
  objc_msgSend_setPattern_(v22, v28, v29, v30, v31, v27);

  v35 = objc_msgSend_strokeWithColor_width_(MEMORY[0x277D80368], v32, 5.0, v33, v34, v5);
  v40 = objc_msgSend_roundDashPattern(MEMORY[0x277D803C8], v36, v37, v38, v39);
  objc_msgSend_setPattern_(v35, v41, v42, v43, v44, v40);

  objc_msgSend_setCap_(v35, v45, v46, v47, v48, 1);
  v55[0] = v9;
  v55[1] = v22;
  v55[2] = v35;
  v53 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v49, v50, v51, v52, v55, 3);

  return v53;
}

+ (id)uiStringForLabelFormatType:(int)type useShortString:(BOOL)string
{
  v7 = 0;
  if (type > 4)
  {
    if (type > 8)
    {
      switch(type)
      {
        case 9:
          v8 = sub_276360774(v4, v5, v6);
          v13 = objc_msgSend_localizedStringForKey_value_table_(v8, v52, v53, v54, v55, @"Custom", &stru_288528678, @"TSCharts");
          break;
        case 10:
          v8 = sub_276360774(v4, v5, v6);
          v13 = objc_msgSend_localizedStringForKey_value_table_(v8, v40, v41, v42, v43, @"Duration", &stru_288528678, @"TSCharts");
          break;
        case 11:
          v8 = sub_276360774(v4, v5, v6);
          v13 = objc_msgSend_localizedStringForKey_value_table_(v8, v18, v19, v20, v21, @"Predefined Custom", &stru_288528678, @"TSCharts");
          break;
        default:
          goto LABEL_29;
      }
    }

    else
    {
      switch(type)
      {
        case 5:
          v8 = sub_276360774(v4, v5, v6);
          v13 = objc_msgSend_localizedStringForKey_value_table_(v8, v48, v49, v50, v51, @"Scientific", &stru_288528678, @"TSCharts");
          break;
        case 7:
          v8 = sub_276360774(v4, v5, v6);
          v13 = objc_msgSend_localizedStringForKey_value_table_(v8, v36, v37, v38, v39, @"Date & Time", &stru_288528678, @"TSCharts");
          break;
        case 8:
          v8 = sub_276360774(v4, v5, v6);
          v13 = objc_msgSend_localizedStringForKey_value_table_(v8, v9, v10, v11, v12, @"Fraction", &stru_288528678, @"TSCharts");
          break;
        default:
          goto LABEL_29;
      }
    }

    goto LABEL_28;
  }

  if (type <= 1)
  {
    if (!type)
    {
      v8 = sub_276360774(v4, v5, v6);
      v13 = objc_msgSend_localizedStringForKey_value_table_(v8, v28, v29, v30, v31, @"Unknown Format", &stru_288528678, @"TSCharts");
      goto LABEL_28;
    }

    if (type != 1)
    {
      goto LABEL_29;
    }

    stringCopy = string;
    v23 = sub_276360774(v4, v5, v6);
    v8 = v23;
    if (stringCopy)
    {
      objc_msgSend_localizedStringForKey_value_table_(v23, v24, v25, v26, v27, @"Source", &stru_288528678, @"TSCharts");
    }

    else
    {
      objc_msgSend_localizedStringForKey_value_table_(v23, v24, v25, v26, v27, @"Same as Source Data", &stru_288528678, @"TSCharts");
    }
  }

  else
  {
    if (type == 2)
    {
      v8 = sub_276360774(v4, v5, v6);
      v13 = objc_msgSend_localizedStringForKey_value_table_(v8, v44, v45, v46, v47, @"Number", &stru_288528678, @"TSCharts");
      goto LABEL_28;
    }

    if (type == 3)
    {
      v8 = sub_276360774(v4, v5, v6);
      objc_msgSend_localizedStringForKey_value_table_(v8, v32, v33, v34, v35, @"Currency", &stru_288528678, @"TSCharts");
    }

    else
    {
      v8 = sub_276360774(v4, v5, v6);
      objc_msgSend_localizedStringForKey_value_table_(v8, v14, v15, v16, v17, @"Percentage", &stru_288528678, @"TSCharts");
    }
  }
  v13 = ;
LABEL_28:
  v7 = v13;

LABEL_29:

  return v7;
}

+ (unint64_t)segmentIndexForLineEnd:(id)end
{
  v6 = objc_msgSend_identifier(end, a2, v3, v4, v5);
  v11 = objc_msgSend_none(MEMORY[0x277D80308], v7, v8, v9, v10);
  v16 = objc_msgSend_identifier(v11, v12, v13, v14, v15);
  isEqualToString = objc_msgSend_isEqualToString_(v6, v17, v18, v19, v20, v16);

  if ((isEqualToString & 1) == 0)
  {
    v27 = objc_msgSend_invertedArrow(MEMORY[0x277D80308], v22, v23, v24, v25);
    v32 = objc_msgSend_identifier(v27, v28, v29, v30, v31);
    v37 = objc_msgSend_isEqualToString_(v6, v33, v34, v35, v36, v32);

    if (v37)
    {
      v26 = 1;
      goto LABEL_7;
    }

    v42 = objc_msgSend_line(MEMORY[0x277D80308], v38, v39, v40, v41);
    v47 = objc_msgSend_identifier(v42, v43, v44, v45, v46);
    v52 = objc_msgSend_isEqualToString_(v6, v48, v49, v50, v51, v47);

    if (v52)
    {
      v26 = 2;
      goto LABEL_7;
    }

    v58 = MEMORY[0x277D81150];
    v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, v54, v55, v56, "+[TSCHStyleUtilities segmentIndexForLineEnd:]");
    v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, v61, v62, v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleUtilities.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v58, v65, v66, v67, v68, v59, v64, 518, 0, "unexpected line end type %@", v6);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v69, v70, v71, v72);
  }

  v26 = 0;
LABEL_7:

  return v26;
}

+ (id)lineEndForSegmentIndex:(int64_t)index
{
  if (index == 2)
  {
    v22 = objc_msgSend_line(MEMORY[0x277D80308], a2, v3, v4, v5);
  }

  else if (index == 1)
  {
    v22 = objc_msgSend_invertedArrow(MEMORY[0x277D80308], a2, v3, v4, v5);
  }

  else
  {
    if (index)
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "+[TSCHStyleUtilities lineEndForSegmentIndex:]");
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleUtilities.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 532, 0, "unexpected segment index %ld", index);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    }

    v22 = objc_msgSend_none(MEMORY[0x277D80308], a2, v3, v4, v5);
  }

  return v22;
}

+ (id)p_referenceColorForObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  v4 = TSUDynamicCast();
  v9 = v4;
  if (v4)
  {
    v10 = 0;
    v11 = objc_msgSend_color(v4, v5, v6, v7, v8);
    v12 = 0;
LABEL_3:
    v13 = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  v14 = TSUDynamicCast();
  v13 = v14;
  if (v14)
  {
    v10 = 0;
    v11 = objc_msgSend_firstColor(v14, v15, v16, v17, v18);
    v12 = 0;
  }

  else
  {
    objc_opt_class();
    v19 = TSUDynamicCast();
    v24 = v19;
    if (v19)
    {
      v12 = 0;
      v11 = objc_msgSend_referenceColor(v19, v20, v21, v22, v23);
      v10 = v24;
      v13 = 0;
    }

    else
    {
      objc_opt_class();
      v26 = TSUDynamicCast();
      v10 = 0;
      v13 = v26;
      if (v26)
      {
        v11 = objc_msgSend_color(v26, v27, v28, v29, v30);
        v12 = v13;
        goto LABEL_3;
      }

      v12 = 0;
      v11 = 0;
    }
  }

LABEL_8:

  return v11;
}

+ (id)fillForSeries:(id)series chartType:(id)type
{
  seriesCopy = series;
  typeCopy = type;
  v12 = objc_msgSend_seriesType(seriesCopy, v8, v9, v10, v11);
  v17 = objc_msgSend_seriesType(seriesCopy, v13, v14, v15, v16);
  v22 = objc_msgSend_supportsUseSeriesStrokeColorForFill(v17, v18, v19, v20, v21);

  if (v22)
  {
    v27 = objc_msgSend_objectValueForProperty_(seriesCopy, v23, v24, v25, v26, 1184);
    if ((objc_msgSend_isNullStroke(v27, v28, v29, v30, v31) & 1) != 0 || (objc_msgSend_p_referenceColorForObject_(self, v32, v33, v34, v35, v27), (v37 = objc_claimAutoreleasedReturnValue()) == 0))
    {
    }

    else
    {
      v41 = objc_msgSend_colorWithColor_(MEMORY[0x277D801F8], v36, v38, v39, v40, v37);

      if (v41)
      {
        goto LABEL_26;
      }
    }
  }

  if (objc_msgSend_supportsSharedAndSeparateX(typeCopy, v23, v24, v25, v26))
  {
    if (objc_msgSend_supportsFillSetFill(v12, v42, v43, v44, v45))
    {
      v50 = objc_msgSend_fillSetFillProperty(v12, v46, v47, v48, v49);
      v41 = objc_msgSend_objectValueForProperty_(seriesCopy, v51, v52, v53, v54, v50);
      if (v41)
      {
        goto LABEL_26;
      }
    }
  }

  else
  {
    if (objc_msgSend_supportsSeriesFill(v12, v42, v43, v44, v45))
    {
      v41 = objc_msgSend_cdeFillForSeries_(v12, v55, v56, v57, v58, seriesCopy);
      if (v41)
      {
        goto LABEL_26;
      }
    }

    v59 = objc_msgSend_objectValueForProperty_(seriesCopy, v55, v56, v57, v58, 1184);
    if (objc_msgSend_isNullStroke(v59, v60, v61, v62, v63))
    {
      v41 = 0;
    }

    else
    {
      v69 = objc_msgSend_p_referenceColorForObject_(self, v64, v65, v66, v67, v59);
      if (v69)
      {
        v41 = objc_msgSend_colorWithColor_(MEMORY[0x277D801F8], v68, v70, v71, v72, v69);
      }

      else
      {
        v41 = 0;
      }
    }

    if (v41)
    {
      goto LABEL_26;
    }
  }

  v73 = objc_msgSend_objectValueForProperty_(seriesCopy, v46, v47, v48, v49, 1189);
  if ((objc_msgSend_isNullStroke(v73, v74, v75, v76, v77) & 1) != 0 || (objc_msgSend_p_referenceColorForObject_(self, v78, v79, v80, v81, v73), (v83 = objc_claimAutoreleasedReturnValue()) == 0))
  {
  }

  else
  {
    v41 = objc_msgSend_colorWithColor_(MEMORY[0x277D801F8], v82, v84, v85, v86, v83);

    if (v41)
    {
      goto LABEL_26;
    }
  }

  v41 = objc_msgSend_objectValueForProperty_(seriesCopy, v87, v88, v89, v90, 1185);
LABEL_26:

  return v41;
}

+ (BOOL)useOutsideParagraphStyleIndexForSeries:(id)series chartType:(id)type layout:(id)layout
{
  seriesCopy = series;
  typeCopy = type;
  layoutCopy = layout;
  v14 = objc_msgSend_intValueForProperty_defaultValue_(seriesCopy, v10, v11, v12, v13, 1208, 0);
  v19 = objc_msgSend_seriesType(seriesCopy, v15, v16, v17, v18);
  v24 = objc_msgSend_filterChartLabelPosition_forSeries_(v19, v20, v21, v22, v23, v14, seriesCopy);

  v29 = objc_msgSend_supportsCalloutLines(typeCopy, v25, v26, v27, v28);
  v35 = objc_msgSend_supportsInnerRadius(typeCopy, v30, v31, v32, v33);
  if ((v29 | v35))
  {
    v39 = objc_msgSend_seriesIndexedPieNormalizedLabelDistancesFromWedgeTips(layoutCopy, v34, v36, v37, v38);
  }

  else
  {
    v39 = MEMORY[0x277CBEC10];
  }

  v41 = objc_msgSend_intValueForProperty_defaultValue_(seriesCopy, v34, v36, v37, v38, 1138, 2);
  if (v41)
  {
    v45 = v29;
  }

  else
  {
    v45 = 0;
  }

  if (v45 == 1)
  {
    v46 = MEMORY[0x277CCABB0];
    v47 = objc_msgSend_seriesIndex(seriesCopy, v40, v42, v43, v44);
    v52 = objc_msgSend_numberWithUnsignedInteger_(v46, v48, v49, v50, v51, v47);
    v57 = objc_msgSend_objectForKeyedSubscript_(v39, v53, v54, v55, v56, v52);

    objc_msgSend_tsu_CGFloatValue(v57, v58, v59, v60, v61);
    if (v62 <= 1.0)
    {
      v24 = 1;
    }

    else
    {
      v24 = 2;
    }
  }

  if (v35)
  {
    v63 = objc_msgSend_chartInfo(seriesCopy, v40, v42, v43, v44);
    v68 = objc_msgSend_valueForProperty_(v63, v64, v65, v66, v67, 1103);

    v69 = MEMORY[0x277CCABB0];
    v74 = objc_msgSend_seriesIndex(seriesCopy, v70, v71, v72, v73);
    v79 = objc_msgSend_numberWithUnsignedInteger_(v69, v75, v76, v77, v78, v74);
    v84 = objc_msgSend_objectForKeyedSubscript_(v39, v80, v81, v82, v83, v79);

    if (v41)
    {
      objc_msgSend_tsu_CGFloatValue(v84, v85, v86, v87, v88);
      v93 = v90;
    }

    else
    {
      objc_msgSend_effectiveLabelExplosion(seriesCopy, v85, v86, v87, v88);
      v91 = 0.01;
      v93 = v90 * 0.01;
    }

    objc_msgSend_tsu_CGFloatValue(v68, v89, v90, v91, v92);
    if (v93 < v94)
    {
      v24 = 2;
    }
  }

  return (v24 >> 1) & 1;
}

+ (BOOL)groupedShadowsForChartModel:(id)model
{
  modelCopy = model;
  v8 = objc_msgSend_chartInfo(modelCopy, v4, v5, v6, v7);
  v13 = objc_msgSend_chartType(v8, v9, v10, v11, v12);
  if (objc_msgSend_supportsGroupedShadows(v13, v14, v15, v16, v17))
  {
    v22 = objc_msgSend_numberOfSeries(modelCopy, v18, v19, v20, v21);
    v31 = (objc_msgSend_numberOfValues(modelCopy, v23, v24, v25, v26) * v22) > 0xC8 || objc_msgSend_intValueForProperty_defaultValue_(v8, v27, v28, v29, v30, 1082, 1) != 0;
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

+ (id)swapTuplesForParagraphStyleMutations:(id)mutations forReferencingProperty:(int)property forStyleOwner:(id)owner
{
  v6 = *&property;
  v171[1] = *MEMORY[0x277D85DE8];
  mutationsCopy = mutations;
  ownerCopy = owner;
  if (!ownerCopy)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v10, v11, v12, "+[TSCHStyleUtilities swapTuplesForParagraphStyleMutations:forReferencingProperty:forStyleOwner:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleUtilities.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 663, 0, "invalid nil value for '%{public}s'", "styleOwner");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v28 = objc_msgSend_paragraphStyleIndexProperties(TSCHChartInfo, v8, v10, v11, v12);
  v33 = objc_msgSend_specificPropertyForGeneric_(ownerCopy, v29, v30, v31, v32, v6);
  if ((objc_msgSend_containsProperty_(v28, v34, v35, v36, v37, v33) & 1) == 0)
  {
    v42 = objc_msgSend_defaultPropertyForGeneric_(ownerCopy, v38, v39, v40, v41, v6);
    if ((objc_msgSend_containsProperty_(v28, v43, v44, v45, v46, v42) & 1) == 0)
    {
      v151 = MEMORY[0x277D81150];
      v152 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, "+[TSCHStyleUtilities swapTuplesForParagraphStyleMutations:forReferencingProperty:forStyleOwner:]");
      v157 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v153, v154, v155, v156, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleUtilities.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v151, v158, v159, v160, v161, v152, v157, 666, 0, "Not a paragraphStyle index property");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v162, v163, v164, v165);
LABEL_12:
      v81 = 0;
      goto LABEL_15;
    }
  }

  if (!ownerCopy || !objc_msgSend_count(mutationsCopy, v38, v39, v40, v41))
  {
    goto LABEL_12;
  }

  v51 = objc_msgSend_intValueForProperty_defaultValue_(ownerCopy, v47, v48, v49, v50, v6, 0);
  v56 = objc_msgSend_chartInfo(ownerCopy, v52, v53, v54, v55);
  v61 = objc_msgSend_paragraphStyleAtIndex_(v56, v57, v58, v59, v60, v51);

  v66 = objc_msgSend_chartInfo(ownerCopy, v62, v63, v64, v65);
  v71 = objc_msgSend_documentStylesheet(v66, v67, v68, v69, v70);

  v168 = v71;
  v169 = sub_2762F40C4(mutationsCopy);
  v77 = objc_msgSend_variationOfStyle_propertyMap_(v71, v72, v73, v74, v75, v61, v169);
  if (v77 == v61)
  {
    v81 = 0;
  }

  else
  {
    v81 = objc_msgSend_array(MEMORY[0x277CBEB18], v76, v78, v79, v80);
    v86 = objc_msgSend_chartInfo(ownerCopy, v82, v83, v84, v85);
    v91 = objc_msgSend_chartStyleState(v86, v87, v88, v89, v90);

    v167 = v91;
    v96 = objc_msgSend_paragraphStyles(v91, v92, v93, v94, v95);
    v101 = objc_msgSend_indexOfObject_(v96, v97, v98, v99, v100, v77);

    if (v101 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v106 = objc_msgSend_chartInfo(ownerCopy, v102, v103, v104, v105);
      v111 = objc_msgSend_paragraphStyles(v106, v107, v108, v109, v110);
      v101 = objc_msgSend_count(v111, v112, v113, v114, v115);

      v116 = [TSCHStyleSwapUndoTuple alloc];
      v121 = objc_msgSend_chartInfo(ownerCopy, v117, v118, v119, v120);
      v126 = objc_msgSend_initWithChartInfo_swapType_index_oldValue_newValue_(v116, v122, v123, v124, v125, v121, 12, v101, 0, v77);

      objc_msgSend_addObject_(v81, v127, v128, v129, v130, v126);
    }

    v131 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v102, v103, v104, v105, v6);
    v170 = v131;
    v136 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v132, v133, v134, v135, v101);
    v171[0] = v136;
    v141 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v137, v138, v139, v140, v171, &v170, 1);
    v146 = objc_msgSend_swapTuplesForMutations_forImport_(ownerCopy, v142, v143, v144, v145, v141, 0);

    objc_msgSend_tsu_addObjectsFromNonNilArray_(v81, v147, v148, v149, v150, v146);
  }

LABEL_15:

  return v81;
}

+ (CGSize)bodySizeWithMinimumWedgeExplosionWithChartModel:(id)model bodySize:(CGSize)size
{
  width = size.width;
  v48 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v10 = objc_msgSend_seriesList(modelCopy, v6, v7, v8, v9);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v14 = objc_msgSend_reverseObjectEnumerator(v10, v11, 0.0, v12, v13, 0);
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, v16, v17, v18, &v43, v47, 16);
  if (v20)
  {
    v24 = *v44;
    v25 = 0.0;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v44 != v24)
        {
          objc_enumerationMutation(v14);
        }

        v27 = objc_msgSend_seriesIndex(*(*(&v43 + 1) + 8 * i), v19, v21, v22, v23);
        v32 = objc_msgSend_pieSeriesModelCacheForSeries_(modelCopy, v28, v29, v30, v31, v27);
        objc_msgSend_wedgeExplosion(v32, v33, v34, v35, v36);
        v38 = v37;
        if (v25 < v38)
        {
          v25 = v38;
        }
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v19, v21, v22, v23, &v43, v47, 16);
    }

    while (v20);
    v39 = v25 + 1.0;
  }

  else
  {
    v39 = 1.0;
  }

  v40 = width / v39;
  v41 = floorf(v40);
  v42 = v41;
  result.height = v42;
  result.width = v41;
  return result;
}

+ (double)p_bendedCalloutLineLabelExplosionValueFromPre2_4ExplosionValue:(double)value chartRadius:(double)radius
{
  objc_msgSend_pre2_4DefaultPieLabelExplosionPercentageForCalloutLineCalculation(self, a2, value, radius, v4);
  v9 = *&v8;
  objc_msgSend_pieFamilyLabelExplosionMinimumPercentage(self, v10, v8, v11, v12);
  v14 = v13;
  objc_msgSend_pieFamilyLabelExplosionMaximumPercentage(self, v15, v13, v16, v17);
  v22 = v21;
  v23 = radius * 0.05;
  v24 = radius * 0.596791045;
  v25 = radius * 0.596791045 - radius * 0.05;
  if (v25 <= 0.0)
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v24, v19, v20, "+[TSCHStyleUtilities(PieFamilyAdditions) p_bendedCalloutLineLabelExplosionValueFromPre2_4ExplosionValue:chartRadius:]");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleUtilities.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v33, v34, v35, v36, v27, v32, 735, 0, "expect a postive callout line shift range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
  }

  return v14 + (50.0 - v9 * 0.5 + value * 0.5 - v23) / v25 * (v22 - v14);
}

+ (double)p_pre2_4BendedCalloutLineLabelExplosionValueFromExplosionValue:(double)value chartRadius:(double)radius
{
  objc_msgSend_pieFamilyLabelExplosionMinimumPercentage(self, a2, value, radius, v4);
  v9 = v8;
  objc_msgSend_pieFamilyLabelExplosionMaximumPercentage(self, v10, v8, v11, v12);
  v14 = radius * 0.596791045 - radius * 0.05;
  v15 = radius * 0.05 + v14 * ((value - v9) / (v13 - v9)) + -50.0;
  v16 = v15 + v15;
  objc_msgSend_pre2_4DefaultPieLabelExplosionPercentageForCalloutLineCalculation(self, v17, v15, -50.0, v14);
  return v16 + v18;
}

+ (double)bendedCalloutLineLabelExplosionValueFromPre2_4ExplosionValue:(double)value chartModel:(id)model bodySize:(CGSize)size
{
  objc_msgSend_bodySizeWithMinimumWedgeExplosionWithChartModel_bodySize_(self, a2, size.width, size.height, size.height, model);

  MEMORY[0x2821F9670](self, sel_p_bendedCalloutLineLabelExplosionValueFromPre2_4ExplosionValue_chartRadius_, value, v7 * 0.5, v8);
  return result;
}

+ (double)pre2_4BendedCalloutLineLabelExplosionValueFromExplosionValue:(double)value chartModel:(id)model bodySize:(CGSize)size
{
  objc_msgSend_bodySizeWithMinimumWedgeExplosionWithChartModel_bodySize_(self, a2, size.width, size.height, size.height, model);

  MEMORY[0x2821F9670](self, sel_p_pre2_4BendedCalloutLineLabelExplosionValueFromExplosionValue_chartRadius_, value, v7 * 0.5, v8);
  return result;
}

+ (id)tupleToUpdate2_3ExplosionFromValue:(id)value chartInfo:(id)info forStyleOwner:(id)owner
{
  v83[1] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  infoCopy = info;
  ownerCopy = owner;
  v14 = objc_msgSend_chart(infoCopy, v10, v11, v12, v13);
  v19 = objc_msgSend_nonstyle(v14, v15, v16, v17, v18);
  v24 = objc_msgSend_intValueForProperty_(v19, v20, v21, v22, v23, 1327);

  objc_opt_class();
  v25 = TSUCheckedDynamicCast();
  objc_msgSend_floatValue(v25, v26, v27, v28, v29);
  v31 = *&v30;
  v36 = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], v32, v30, v33, v34, 1129);
  v40 = v31;
  if (v24 == 1)
  {
    v41 = objc_msgSend_chart(infoCopy, v35, v37, v38, v39);
    v46 = objc_msgSend_model(v41, v42, v43, v44, v45);
    v51 = objc_msgSend_chart(infoCopy, v47, v48, v49, v50);
    v56 = objc_msgSend_geometry(v51, v52, v53, v54, v55);
    objc_msgSend_size(v56, v57, v58, v59, v60);
    objc_msgSend_pre2_4BendedCalloutLineLabelExplosionValueFromExplosionValue_chartModel_bodySize_(self, v61, v40, v62, v63, v46);
    v40 = v64;
  }

  v65 = [TSCHPropertyMutationTuple alloc];
  v82 = v36;
  v69 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v66, v40, v67, v68);
  v83[0] = v69;
  v74 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v70, v71, v72, v73, v83, &v82, 1);
  v79 = objc_msgSend_initWithStyleOwner_mutations_(v65, v75, v76, v77, v78, ownerCopy, v74);

  return v79;
}

+ (float)defaultDonutLabelExplosionPercentage
{
  objc_msgSend_defaultInnerRadiusPercentage(self, a2, v2, v3, v4);
  v9 = v8;

  MEMORY[0x2821F9670](self, sel_centeredDonutLabelExplosionPercentageWithInnerRadius_, v9, v6, v7);
  return result;
}

+ (BOOL)labelExplosionIsCenteredInWedgeWithInnerRadius:(double)radius labelExplosion:(double)explosion
{
  v4 = ((1.0 - radius) * 0.5 + radius) * 100.0 - explosion;
  if (v4 < 0.0)
  {
    v4 = -v4;
  }

  if (v4 < 4.0)
  {
    return 1;
  }

  if (fabs(v4 + -4.0) < 0.100000001)
  {
    return 1;
  }

  return v4 == 4.0;
}

+ (BOOL)shouldAnchorLabelsForSeries:(id)series innerRadius:(double)radius calloutLineType:(int64_t)type defaultLabelExplosion:(double)explosion
{
  seriesCopy = series;
  v15 = objc_msgSend_intValueForProperty_defaultValue_(seriesCopy, v11, v12, v13, v14, 1138, 0);
  *&v16 = explosion;
  objc_msgSend_floatValueForProperty_defaultValue_(seriesCopy, v17, v16, v18, v19, 1163);
  IsCenteredInWedgeWithInnerRadius_labelExplosion = objc_msgSend_labelExplosionIsCenteredInWedgeWithInnerRadius_labelExplosion_(self, v21, radius, v20, v22);
  if (type)
  {
    v24 = v15 == 0;
  }

  else
  {
    v24 = 1;
  }

  if (v24)
  {
    v25 = IsCenteredInWedgeWithInnerRadius_labelExplosion;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

@end
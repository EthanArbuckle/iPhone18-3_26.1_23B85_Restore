@interface TSCHChartInfo
+ (BOOL)updateInitialLabelExplosionIfNeededForChartType:(id)type seriesNonStyles:(id *)styles stylePreset:(id)preset rowCount:(unint64_t)count columnCount:(unint64_t)columnCount;
+ (CGSize)minimumChartBodySizeForTransformingGeometryForChart:(id)chart;
+ (TSSPropertySet)paragraphStylePropertiesChartsUse;
+ (double)beginValueForStackedBarSeries:(id)series groupIndex:(unint64_t)index unitSpaceIntercept:(double)intercept relativelyPositive:(BOOL)positive valueAxis:(id)axis;
+ (id)genericParagraphStyleIndexProperties;
+ (id)genericParagraphStyleIndexPropertiesInUse;
+ (id)p_chartTypeTo3DScalePropertyPairs;
+ (id)p_currentThreadSceneAreaLayoutCache;
+ (id)paragraphStyleIdentifierForRoleIndex:(unint64_t)index ordinal:(unint64_t)ordinal;
+ (id)paragraphStyleIndexProperties;
+ (id)paragraphStyleIndexPropertiesInUse;
+ (id)propertiesThatInvalidateModel;
+ (id)scale3DPropertyToConstantDepthInfoChartScaleMappingsWithBarShape:(int)shape conversionBlock:(id)block;
+ (id)specificNumberFormatTypeProperties;
+ (id)specificPropertiesThatCanContainCustomDateFormats;
+ (id)specificPropertiesThatCanContainCustomFormats;
+ (id)specificPropertiesThatCanContainCustomNumberFormats;
+ (id)swapTuplesForParagraphStyleMutations:(id)mutations forReferencingProperty:(int)property forStyleOwner:(id)owner;
+ (int)adjustNumberFormatType:(int)type forChartModel:(id)model gridValueType:(int)valueType hasCustomFormat:(BOOL)format;
+ (void)setCurrentThreadSceneAreaLayoutCache:(id)cache;
- ($6BF1DF173A55784CAE4B3BED4B6FCF3F)defaultLayoutSettings;
- (BOOL)appearancePreservedForCurrentPreset;
- (BOOL)gridEqualToDefaultGrid;
- (BOOL)hasSetDefaultLayoutSettings;
- (BOOL)hasSummaryLabelCustomFormatForGridValueType:(int)type;
- (BOOL)hasTwoYValueAxes;
- (BOOL)isEquivalentForCrossDocumentPasteMasterComparison:(id)comparison;
- (BOOL)isPhantom;
- (BOOL)isSingleCircleSpecialCaseOutSeries:(id *)series;
- (BOOL)p_containsCalloutLinesWithModelSync:(BOOL)sync;
- (BOOL)p_isDownsampledStackedChart;
- (BOOL)p_refLineNonStyleMapIsValid;
- (BOOL)p_supportsRoundedCornersWithModelSync:(BOOL)sync;
- (BOOL)seriesStyleIsPrivate:(id)private;
- (BOOL)shouldOwnPreset:(id)preset;
- (BOOL)supportsAndHasRoundedCorners;
- (BOOL)supportsAndHasStackedSummaryLabels;
- (BOOL)supportsStackedSummaryLabels;
- (CGPoint)previewOrigin;
- (CGRect)calculateDefaultLegendPositionIfNeededWithOptionalLayout:(id)layout;
- (CGRect)chartBodyBoundsForSageImportWithSageChartType:(BOOL)type isSpiceDoc:(BOOL)doc;
- (CGRect)innerChartFrame;
- (CGRect)resizedLegendFrame:(CGRect)frame oldChartSize:(CGSize)size newChartSize:(CGSize)chartSize;
- (CGSize)minimumChartBodySize;
- (Class)layoutClass;
- (Class)repClass;
- (NSArray)fillsForSeriesAndTheme;
- (NSArray)paragraphStyles;
- (TSCHChartDrawableInfo)drawableInfo;
- (TSCHChartInfo)initWithChartType:(id)type legendShowing:(id)showing chartBodyFrame:(id)frame chartAreaFrame:(id)areaFrame circumscribingFrame:(id)circumscribingFrame legendFrame:(id)legendFrame stylePreset:(id)preset privateSeriesStyles:(id)self0 chartNonStyle:(id)self1 legendNonStyle:(id)self2 valueAxisNonStyles:(id)self3 categoryAxisNonStyles:(id)self4 seriesNonStyles:(id)self5 refLineNonStylesMap:(id)self6 refLineStylesMap:(id)self7 forDocumentLocale:(id)self8;
- (TSCHChartLayoutCache)sceneAreaLayoutItemCache;
- (TSCHChartStylePreset)firstPresetFromTheme;
- (TSCHChartStylePreset)preset;
- (TSCHChartStylePreset)presetFromThemeIfNecessary;
- (TSCHChartStyleState)chartStyleState;
- (TSDInfoGeometry)geometry;
- (TSKDocumentRoot)documentRoot;
- (TSSStylesheet)documentStylesheet;
- (double)p_dataSetNameAccomodationWithOptionalLayout:(id)layout;
- (double)p_titleAccommodationWithLegendSize:(CGSize)size optionalLayout:(id)layout;
- (float)floatValueForProperty:(int)property defaultValue:(float)value;
- (float)maximumExplosionOfAllSeriesExcept:(id)except;
- (float)minFrameDimensionForRadius:(float)radius withMaxExplosion:(float)explosion;
- (float)radiusForFrame:(CGRect)frame withMaxExplosion:(float)explosion;
- (id)allCustomFormatKeys;
- (id)allStyleOwners;
- (id)allStylesAndNonStylesThatCanHaveCustomNumberFormats;
- (id)applyStyleSwapTuple:(id)tuple;
- (id)applyStyleSwapTuples:(id)tuples;
- (id)categoryAxisNonstyleAtIndex:(unint64_t)index;
- (id)categoryAxisStyleAtIndex:(unint64_t)index;
- (id)clamped3DRotationPropertyObject;
- (id)context;
- (id)copyWithZone:(_NSZone *)zone context:(id)context;
- (id)create3DSceneWithLayoutSettings:(id *)settings styleProvidingSource:(id)source;
- (id)defaultProperties;
- (id)fontNameForInspectors;
- (id)g_genericToDefaultPropertyMap;
- (id)g_operationPropertyNameForGenericProperty:(int)property;
- (id)getSeriesNonstyleForSeriesIndex:(unint64_t)index;
- (id)getSeriesStyleForSeriesIndex:(unint64_t)index;
- (id)infoGeometryForVisiblePositioningInfoGeometry:(id)geometry;
- (id)infoGeometryForVisuallyCenteringOnUnscaledCanvasPoint:(CGPoint)point;
- (id)initForPresetImportWithChartType:(id)type;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)modelForDataSetIndex:(unint64_t)index;
- (id)newChartStylePresetByExampleWithPresetIndex:(unint64_t)index withSeriesCount:(unint64_t)count forTheme:(id)theme designMode:(BOOL)mode;
- (id)nonStyleForAxis:(id)axis;
- (id)nonstyle;
- (id)objectValueForProperty:(int)property;
- (id)p_copyStyleAndNonStyleArray:(id)array withZone:(_NSZone *)zone context:(id)context;
- (id)p_copyStyleAndNonStyleMap:(id)map withZone:(_NSZone *)zone context:(id)context;
- (id)p_getLocalizableDefaultDataDictionaryForChartType:(id)type forDocumentLocale:(id)locale;
- (id)p_infoGeometryForGeometry:(id)geometry isCircumscribing:(BOOL)circumscribing omitLabelPlacement:(BOOL)placement;
- (id)p_init;
- (id)p_presetByAdoptingStylesheet:(id)stylesheet forPreset:(id)preset withMapper:(id)mapper paragraphStyles:(id)styles;
- (id)p_summaryLabelDataFormatterFromCurrentModel;
- (id)p_swapTuplesForApplyingPreset:(id)preset preservingAppearance:(BOOL)appearance;
- (id)p_swapTuplesForApplyingPresetRemovingOverrides:(id)overrides;
- (id)p_uuidForRefLineOnAxis:(id)axis havingNonStyle:(id)style;
- (id)paragraphStyleAtIndex:(unint64_t)index;
- (id)paragraphStyleForSelectionPath:(id)path;
- (id)referenceLineNonStyleForAxisID:(id)d atIndex:(unint64_t)index;
- (id)referenceLineNonStyleForAxisID:(id)d uuid:(id)uuid outIndex:(unint64_t *)index;
- (id)referenceLineNonStyleItemsForAxisID:(id)d;
- (id)referenceLineStyleForAxisID:(id)d atIndex:(unint64_t)index privateStyleOnly:(BOOL)only;
- (id)scaleAllStrokesInStyle:(id)style byRatio:(double)ratio;
- (id)seriesNonStyleForSeries:(id)series;
- (id)seriesNonstyleForSeriesIndex:(unint64_t)index;
- (id)seriesStyleForSeries:(id)series;
- (id)stringForSelectionPath:(id)path;
- (id)styleForAxis:(id)axis;
- (id)styleOwnerForPath:(id)path;
- (id)styleOwnerForRef:(id)ref;
- (id)styleOwnerForSelectionPath:(id)path;
- (id)styleOwnerFromSwapType:(int)type andIndex:(unint64_t)index;
- (id)styleOwnerPathForRef:(id)ref;
- (id)styleOwnerRefForSemanticTag:(id)tag;
- (id)styleOwnerRefForStyleOwner:(id)owner;
- (id)styleOwnerRefForStyleOwnerPath:(id)path;
- (id)summaryLabelCustomFormatForGridValueType:(int)type;
- (id)swapTuplesForApplyingPreset:(id)preset withBehavior:(unint64_t)behavior;
- (id)themeChartPresetForUUID:(id)d;
- (id)themeChartPresets;
- (id)transformedTuplesWithTuple:(id)tuple;
- (id)tuplesToApplyState:(id)state;
- (id)valueAxisNonstyleAtIndex:(unint64_t)index;
- (id)valueAxisStyleAtIndex:(unint64_t)index;
- (id)viewOverrideMapForStyleOwner:(id)owner;
- (int)adjustedSummaryLabelNumberFormatType;
- (int)defaultPropertyForGeneric:(int)generic;
- (int)gridDirection;
- (int)intValueForProperty:(int)property defaultValue:(int)value;
- (int)paragraphStylePropertyForSelectionPath:(id)path;
- (int)specificPropertyForGeneric:(int)generic;
- (int)stringPropertyForSelectionPath:(id)path;
- (int64_t)mixingTypeWithObject:(id)object context:(id)context;
- (unint64_t)addParagraphStyle:(id)style;
- (unint64_t)categoryAxisStyleCount;
- (unint64_t)defaultDataColumnCountForChartType:(id)type forDocumentLocale:(id)locale;
- (unint64_t)defaultDataRowCountForChartType:(id)type forDocumentLocale:(id)locale;
- (unint64_t)indexOfParagraphStyleAddingIfNecessary:(id)necessary;
- (unint64_t)multiDataSetIndex;
- (unint64_t)nonStyleIndexForStyleOwnerRef:(id)ref;
- (unint64_t)p_paragraphStyleIndexOfFirstCategoryAxisParagraphStyle;
- (unint64_t)p_refLineIndexWithUUID:(id)d nonStyleItems:(id)items;
- (unint64_t)valueAxisStyleCount;
- (void)addReferenceLineForAxisID:(id)d nonStyle:(id)style style:(id)a5 uuid:(id)uuid;
- (void)addViewStyleProxyForMutationTuples:(id)tuples layouts:(id)layouts;
- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper;
- (void)applyChartStyleState:(id)state;
- (void)chartMoveToPosition:(CGPoint)position size:(CGSize)size;
- (void)clearViewStyleProxyForLayouts:(id)layouts;
- (void)debugLayoutCache;
- (void)deleteReferenceLineForAxisID:(id)d uuid:(id)uuid;
- (void)hideAllTitles;
- (void)loadFromPreUFFArchive:(const void *)archive unarchiver:(id)unarchiver persistentChartInfo:(id)info;
- (void)loadFromUnityArchive:(const void *)archive unarchiver:(id)unarchiver persistentChartInfo:(id)info;
- (void)p_applySeriesTuplesWithThemeSeriesStyles:(id)styles privateSeriesStyles:(id)seriesStyles propertyDictionary:(id)dictionary;
- (void)p_designUpdateCategoryMajorGridlineStrokeWithCategoryAxisStyles:(id)styles valueAxisStyles:(id)axisStyles;
- (void)p_designUpdateRadarPresetWithPresetIndex:(unint64_t)index seriesStyle:(id)style;
- (void)p_invalidateCachesInLayouts:(id)layouts;
- (void)p_saveToUnityArchive:(void *)archive persistentChartInfo:(id)info archiver:(id)archiver;
- (void)p_upgradeLineChartsFor10;
- (void)performDeferredUpgradeAndImportOperations;
- (void)preserveAppearanceForCurrentPresetAdoptingStylesheet:(BOOL)stylesheet;
- (void)reassignPasteboardCustomFormatKeys;
- (void)saveToUnityArchive:(void *)archive persistentChartInfo:(id)info archiver:(id)archiver;
- (void)setCategoryAxisNonstyle:(id)nonstyle atIndex:(unint64_t)index;
- (void)setChartNonstyle:(id)nonstyle;
- (void)setChartType:(id)type andSetLegendDefaults:(BOOL)defaults gridRowIds:(id)ids gridColumnIds:(id)columnIds forDocumentLocale:(id)locale;
- (void)setDefaultLayoutSettings:(id *)settings;
- (void)setDefaultLegendPositionIfNeededWithOptionalLayout:(id)layout;
- (void)setGeometry:(id)geometry omitLegendResize:(BOOL)resize clearObjectPlaceholderFlag:(BOOL)flag;
- (void)setInfoGeometryByUpdatingLegendGeometryAccommodatedForInitialLayoutGeometry:(id)geometry;
- (void)setLegend:(id)legend;
- (void)setMediator:(id)mediator;
- (void)setModel:(id)model;
- (void)setPreset:(id)preset forceOwning:(BOOL)owning;
- (void)setPreviewOrigin:(CGPoint)origin;
- (void)setReferenceLineNonStyleItem:(id)item forAxisID:(id)d atIndex:(unint64_t)index;
- (void)setReferenceLineStyle:(id)style forAxisID:(id)d atIndex:(unint64_t)index;
- (void)setSeriesNonstyle:(id)nonstyle atIndex:(unint64_t)index;
- (void)setValueAxisNonstyle:(id)nonstyle atIndex:(unint64_t)index;
- (void)setViewStyleProxyParagraphStyleArray:(id)array layouts:(id)layouts;
- (void)updateAfterPaste;
- (void)updateTitlesForExportingModel:(id)model;
- (void)upgradeAxisLabelFormatWithValuePrefix:(id)prefix valueSuffix:(id)suffix valueUseSeparator:(BOOL)separator horizontalPrefix:(id)horizontalPrefix horizontalSuffix:(id)horizontalSuffix horizontalUseSeparator:(BOOL)useSeparator;
- (void)upgradeChartRoundedCornerRadiusWithValue:(double)value;
- (void)upgradeStackedSummaryLabelPropertiesWithTitleParagraphStyleIndex:(unint64_t)index;
- (void)upgradeWithHorizontalMin:(id)min horizontalMax:(id)max valueMin:(id)valueMin valueMax:(id)valueMax;
- (void)willModify;
@end

@implementation TSCHChartInfo

- (BOOL)hasSetDefaultLayoutSettings
{
  objc_opt_class();
  v3 = objc_getAssociatedObject(self, qword_280A450D0);
  v4 = TSUDynamicCast();

  return v4 != 0;
}

- (void)setDefaultLayoutSettings:(id *)settings
{
  v7 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], a2, v3, v4, v5, settings, "{?=BBBBBBBBqQ}");
  objc_setAssociatedObject(self, qword_280A450D0, v7, 0x301);
}

- ($6BF1DF173A55784CAE4B3BED4B6FCF3F)defaultLayoutSettings
{
  *&retstr->var0 = 0;
  retstr->var8 = 0;
  retstr->var9 = 0;
  sub_27635FB94(retstr);
  objc_opt_class();
  v5 = objc_getAssociatedObject(self, qword_280A450D0);
  v11 = TSUDynamicCast();

  if (v11)
  {
    objc_msgSend_getValue_(v11, v6, v7, v8, v9, retstr);
  }

  return result;
}

- (id)create3DSceneWithLayoutSettings:(id *)settings styleProvidingSource:(id)source
{
  sourceCopy = source;
  objc_opt_class();
  v11 = objc_msgSend_chartType(self, v7, v8, v9, v10);
  v12 = TSUDynamicCast();

  v18 = *settings;
  v16 = objc_msgSend_sceneWithChartInfo_layoutSettings_styleProvidingSource_(v12, v13, *&v18.var0, v14, v15, self, &v18, sourceCopy);

  return v16;
}

+ (void)setCurrentThreadSceneAreaLayoutCache:(id)cache
{
  cacheCopy = cache;
  v8 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v4, v5, v6, v7);
  v14 = objc_msgSend_threadDictionary(v8, v9, v10, v11, v12);
  if (cacheCopy)
  {
    objc_msgSend_setObject_forKey_(v14, v13, v15, v16, v17, cacheCopy, self);
  }

  else
  {
    objc_msgSend_removeObjectForKey_(v14, v13, v15, v16, v17, self);
  }
}

+ (id)p_currentThreadSceneAreaLayoutCache
{
  v6 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], a2, v2, v3, v4);
  v11 = objc_msgSend_threadDictionary(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_objectForKey_(v11, v12, v13, v14, v15, self);

  return v16;
}

- (TSCHChartLayoutCache)sceneAreaLayoutItemCache
{
  v3 = objc_getAssociatedObject(self, qword_280A450D8);
  if (!v3)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v3 = objc_getAssociatedObject(selfCopy, qword_280A450D8);
    if (!v3)
    {
      v5 = objc_opt_class();
      v3 = objc_msgSend_p_currentThreadSceneAreaLayoutCache(v5, v6, v7, v8, v9);
      if (!v3)
      {
        v3 = objc_alloc_init(TSCHChartLayoutCache);
      }

      objc_setAssociatedObject(selfCopy, qword_280A450D8, v3, 0x301);
    }

    objc_sync_exit(selfCopy);
  }

  return v3;
}

- (void)debugLayoutCache
{
  v9 = objc_msgSend_sceneAreaLayoutItemCache(self, a2, v2, v3, v4);
  objc_msgSend_printDebug(v9, v5, v6, v7, v8);
}

- (id)clamped3DRotationPropertyObject
{
  v6 = objc_msgSend_objectValueForProperty_(self, a2, v2, v3, v4, 1072);
  objc_msgSend_x(v6, v7, v8, v9, v10);
  v12 = LODWORD(v11);
  objc_msgSend_y(v6, v13, v11, v14, v15);
  v17 = LODWORD(v16);
  objc_msgSend_z(v6, v18, v16, v19, v20);
  v38 = __PAIR64__(v17, v12);
  v39 = LODWORD(v21);
  v25 = objc_msgSend_chartType(self, v22, v21, v23, v24);
  objc_msgSend_clampRotation_chartType_(TSCH3DChartRotationTouchHandler, v26, v27, v28, v29, &v38, v25);
  v38 = v36;
  v39 = v37;

  LODWORD(v31) = HIDWORD(v38);
  LODWORD(v30) = v38;
  LODWORD(v32) = v39;
  v34 = objc_msgSend_x_y_z_(TSCH3DVector, v33, v30, v31, v32);

  return v34;
}

- (BOOL)supportsAndHasRoundedCorners
{
  v6 = objc_msgSend_supportsRoundedCorners(self, a2, v2, v3, v4);
  if (v6)
  {

    LOBYTE(v6) = objc_msgSend_hasRoundedCorners(self, v7, v8, v9, v10);
  }

  return v6;
}

- (BOOL)p_supportsRoundedCornersWithModelSync:(BOOL)sync
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_model(self, a2, v3, v4, v5);
  v12 = v7;
  if (sync)
  {
    objc_msgSend_seriesList(v7, v8, v9, v10, v11);
  }

  else
  {
    objc_msgSend_noSyncSeriesList(v7, v8, v9, v10, v11);
  }
  v13 = ;

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v14 = v13;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, v16, v17, v18, &v33, v37, 16);
  if (v20)
  {
    v24 = *v34;
    while (2)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v34 != v24)
        {
          objc_enumerationMutation(v14);
        }

        v26 = objc_msgSend_seriesType(*(*(&v33 + 1) + 8 * i), v19, v21, v22, v23, v33);
        v31 = objc_msgSend_supportsRoundedCorners(v26, v27, v28, v29, v30);

        if (v31)
        {
          LOBYTE(v20) = 1;
          goto LABEL_14;
        }
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v19, v21, v22, v23, &v33, v37, 16);
      if (v20)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v20;
}

- (BOOL)supportsAndHasStackedSummaryLabels
{
  v6 = objc_msgSend_supportsStackedSummaryLabels(self, a2, v2, v3, v4);
  if (v6)
  {

    LOBYTE(v6) = MEMORY[0x2821F9670](self, sel_hasStackedSummaryLabels, v7, v8, v9);
  }

  return v6;
}

- (BOOL)supportsStackedSummaryLabels
{
  v6 = objc_msgSend_chartType(self, a2, v2, v3, v4);
  if (objc_msgSend_supportsSummaryValueLabels(v6, v7, v8, v9, v10))
  {
    v15 = objc_msgSend_model(self, v11, v12, v13, v14);
    v20 = objc_msgSend_firstValueAxis(v15, v16, v17, v18, v19);
    v25 = objc_msgSend_supportsSummaryValueLabels(v20, v21, v22, v23, v24);
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

+ (CGSize)minimumChartBodySizeForTransformingGeometryForChart:(id)chart
{
  chartCopy = chart;
  if (!chartCopy)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v5, v6, v7, "+[TSCHChartInfo minimumChartBodySizeForTransformingGeometryForChart:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 217, 0, "invalid nil value for '%{public}s'", "chart");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v23 = objc_msgSend_chartType(chartCopy, v3, v5, v6, v7);
  v28 = v23;
  if (v23)
  {
    objc_msgSend_minimumChartBodySizeForTransformingGeometry(v23, v24, v25, v26, v27);
  }

  else
  {
    v31 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "+[TSCHChartInfo minimumChartBodySizeForTransformingGeometryForChart:]");
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v34, v35, v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v38, v39, v40, v41, v32, v37, 219, 0, "invalid nil value for '%{public}s'", "chartType");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44, v45);
    objc_msgSend_fallbackMinimumChartBodySize(TSCHChartType, v46, v47, v48, v49);
  }

  v50 = v29;
  v51 = v30;

  v52 = v50;
  v53 = v51;
  result.height = v53;
  result.width = v52;
  return result;
}

- (id)allCustomFormatKeys
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_allStylesAndNonStylesThatCanHaveCustomNumberFormats(self, a2, v2, v3, v4);
  v10 = objc_msgSend_set(MEMORY[0x277CBEB58], v6, v7, v8, v9);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v11 = v5;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, v13, v14, v15, &v42, v46, 16);
  if (v16)
  {
    v17 = v16;
    v18 = *v43;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v43 != v18)
        {
          objc_enumerationMutation(v11);
        }

        v20 = *(*(&v42 + 1) + 8 * i);
        v21 = objc_opt_class();
        v22 = sub_2762CD788(v21, v20);
        v28 = objc_msgSend_customFormatKeys(v22, v23, v24, v25, v26, v42);
        if (v28)
        {
          objc_msgSend_unionSet_(v10, v27, v29, v30, v31, v28);
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v32, v33, v34, v35, &v42, v46, 16);
    }

    while (v17);
  }

  v40 = objc_msgSend_copy(v10, v36, v37, v38, v39);

  return v40;
}

- (void)reassignPasteboardCustomFormatKeys
{
  v74 = *MEMORY[0x277D85DE8];
  if (self->_pasteboardCustomFormatList)
  {
    v6 = objc_msgSend_allStylesAndNonStylesThatCanHaveCustomNumberFormats(self, a2, v2, v3, v4);
    v11 = objc_msgSend_allCustomFormatKeys(self, v7, v8, v9, v10);
    v16 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v12, v13, v14, v15);
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v17 = v11;
    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, v19, v20, v21, &v68, v73, 16);
    if (v22)
    {
      v23 = v22;
      v24 = *v69;
      do
      {
        v25 = 0;
        do
        {
          if (*v69 != v24)
          {
            objc_enumerationMutation(v17);
          }

          objc_opt_class();
          v27 = TSUCheckedDynamicCast();
          if (v27)
          {
            v31 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v26, v28, v29, v30);
            objc_msgSend_setObject_forKeyedSubscript_(v16, v32, v33, v34, v35, v31, v27);
          }

          ++v25;
        }

        while (v23 != v25);
        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v36, v37, v38, v39, &v68, v73, 16);
      }

      while (v23);
    }

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v40 = v6;
    v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v41, v42, v43, v44, &v64, v72, 16);
    if (v45)
    {
      v46 = v45;
      v47 = *v65;
      do
      {
        v48 = 0;
        do
        {
          if (*v65 != v47)
          {
            objc_enumerationMutation(v40);
          }

          v49 = *(*(&v64 + 1) + 8 * v48);
          v50 = objc_opt_class();
          v51 = sub_2762CD788(v50, v49);
          objc_msgSend_remapCustomFormatKeysWithOldToNewKeyMap_(v51, v52, v53, v54, v55, v16, v64);

          ++v48;
        }

        while (v46 != v48);
        v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v56, v57, v58, v59, &v64, v72, 16);
      }

      while (v46);
    }

    objc_msgSend_remapCustomFormatKeysWithOldToNewKeyMap_(self->_pasteboardCustomFormatList, v60, v61, v62, v63, v16);
  }
}

- (void)updateAfterPaste
{
  v40 = *MEMORY[0x277D85DE8];
  if (self->_pasteboardCustomFormatList)
  {
    v6 = objc_msgSend_drawableInfo(self, a2, v2, v3, v4);
    v11 = objc_msgSend_documentRoot(v6, v7, v8, v9, v10);

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v15 = objc_msgSend_allStylesAndNonStylesThatCanHaveCustomNumberFormats(self, v12, 0.0, v13, v14, 0);
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, v17, v18, v19, &v35, v39, 16);
    if (v20)
    {
      v21 = v20;
      v22 = *v36;
      do
      {
        v23 = 0;
        do
        {
          if (*v36 != v22)
          {
            objc_enumerationMutation(v15);
          }

          v24 = *(*(&v35 + 1) + 8 * v23);
          v25 = objc_opt_class();
          v26 = sub_2762CD788(v25, v24);
          objc_msgSend_updateAfterPasteForDocumentRoot_pasteboardCustomFormatList_(v26, v27, v28, v29, v30, v11, self->_pasteboardCustomFormatList);

          ++v23;
        }

        while (v21 != v23);
        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v31, v32, v33, v34, &v35, v39, 16);
      }

      while (v21);
    }
  }
}

- (id)allStylesAndNonStylesThatCanHaveCustomNumberFormats
{
  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4);
  v11 = v6;
  if (self->_seriesNonStyles)
  {
    objc_msgSend_addObjectsFromArray_(v6, v7, v8, v9, v10);
  }

  if (self->_valueAxisNonStyles)
  {
    objc_msgSend_addObjectsFromArray_(v11, v7, v8, v9, v10);
  }

  if (self->_categoryAxisNonStyles)
  {
    objc_msgSend_addObjectsFromArray_(v11, v7, v8, v9, v10);
  }

  if (self->_nonStyle)
  {
    objc_msgSend_addObject_(v11, v7, v8, v9, v10);
  }

  return v11;
}

- (id)summaryLabelCustomFormatForGridValueType:(int)type
{
  if (type == 3)
  {
    v6 = 0;
  }

  else
  {
    if (type == 2)
    {
      objc_msgSend_valueForProperty_(self, a2, v3, v4, v5, 1116);
    }

    else
    {
      objc_msgSend_valueForProperty_(self, a2, v3, v4, v5, 1118);
    }
    v7 = ;
    v8 = TSUCheckedProtocolCast();

    if (objc_msgSend_isCustom(v8, v9, v10, v11, v12, &unk_288578C80))
    {
      v6 = v8;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)hasSummaryLabelCustomFormatForGridValueType:(int)type
{
  v6 = objc_msgSend_summaryLabelCustomFormatForGridValueType_(self, a2, v3, v4, v5, *&type);
  v7 = v6 != 0;

  return v7;
}

- (int)adjustedSummaryLabelNumberFormatType
{
  v6 = objc_msgSend_model(self, a2, v2, v3, v4);
  v11 = objc_msgSend_firstValueAxis(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_gridValueType(v11, v12, v13, v14, v15);

  v21 = objc_msgSend_intValueForProperty_defaultValue_(self, v17, v18, v19, v20, 1119, 2);
  hasSummaryLabelCustomFormatForGridValueType = objc_msgSend_hasSummaryLabelCustomFormatForGridValueType_(self, v22, v23, v24, v25, v16);
  v31 = objc_msgSend_model(self, v27, v28, v29, v30);
  LODWORD(v21) = objc_msgSend_adjustNumberFormatType_forChartModel_gridValueType_hasCustomFormat_(TSCHChartInfo, v32, v33, v34, v35, v21, v31, v16, hasSummaryLabelCustomFormatForGridValueType);

  return v21;
}

+ (int)adjustNumberFormatType:(int)type forChartModel:(id)model gridValueType:(int)valueType hasCustomFormat:(BOOL)format
{
  formatCopy = format;
  v89 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v13 = objc_msgSend_valueAxisList(modelCopy, v10, 0.0, v11, v12);
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, v15, v16, v17, &v84, v88, 16);
  if (v18)
  {
    v19 = v18;
    v20 = *v85;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v85 != v20)
        {
          objc_enumerationMutation(v13);
        }

        v22 = *(*(&v84 + 1) + 8 * i);
        v23 = objc_opt_class();
        if (objc_msgSend_isMemberOfClass_(v22, v24, v25, v26, v27, v23))
        {
          v32 = 1;
          goto LABEL_11;
        }
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v28, v29, v30, v31, &v84, v88, 16);
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  v32 = 0;
LABEL_11:

  v37 = objc_msgSend_chartInfo(modelCopy, v33, v34, v35, v36);
  v42 = objc_msgSend_chartType(v37, v38, v39, v40, v41);
  v47 = objc_msgSend_supportsPercentNumberFormatting(v42, v43, v44, v45, v46);

  v52 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, v48, v49, v50, v51);
  v57 = objc_msgSend_supportsNumberFormatSameAsSource(v52, v53, v54, v55, v56);

  if (((type == 1) & v57) != 0)
  {
    typeCopy3 = 1;
  }

  else
  {
    typeCopy3 = 4;
  }

  if ((v32 & 1) == 0 && ((type == 1) & v57) == 0)
  {
    if (type == 4)
    {
      v63 = v47;
    }

    else
    {
      v63 = 0;
    }

    if (formatCopy && !v63)
    {
      typeCopy3 = 9;
      goto LABEL_40;
    }

    if (valueType == 3)
    {
      v66 = v63 == 0;
      v67 = 10;
    }

    else
    {
      if (valueType != 2)
      {
        if (valueType == 1)
        {
          if ((type - 9) < 2 || type == 1 || type == 7)
          {
            typeCopy3 = 2;
          }

          else
          {
            typeCopy3 = type;
          }
        }

        else
        {
          v68 = MEMORY[0x277D81150];
          v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, v59, v60, v61, "+[TSCHChartInfo adjustNumberFormatType:forChartModel:gridValueType:hasCustomFormat:]");
          v74 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, v71, v72, v73, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v75, v76, v77, v78, v69, v74, 351, 0, "invalid grid value type %lu", valueType);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v79, v80, v81, v82);
          typeCopy3 = type;
        }

        goto LABEL_40;
      }

      v66 = v63 == 0;
      v67 = 7;
    }

    if (v66)
    {
      typeCopy3 = v67;
    }

    else
    {
      typeCopy3 = type;
    }
  }

LABEL_40:

  return typeCopy3;
}

- (id)p_init
{
  v3.receiver = self;
  v3.super_class = TSCHChartInfo;
  return [(TSCHChartInfo *)&v3 init];
}

- (TSCHChartInfo)initWithChartType:(id)type legendShowing:(id)showing chartBodyFrame:(id)frame chartAreaFrame:(id)areaFrame circumscribingFrame:(id)circumscribingFrame legendFrame:(id)legendFrame stylePreset:(id)preset privateSeriesStyles:(id)self0 chartNonStyle:(id)self1 legendNonStyle:(id)self2 valueAxisNonStyles:(id)self3 categoryAxisNonStyles:(id)self4 seriesNonStyles:(id)self5 refLineNonStylesMap:(id)self6 refLineStylesMap:(id)self7 forDocumentLocale:(id)self8
{
  typeCopy = type;
  showingCopy = showing;
  frameCopy = frame;
  areaFrameCopy = areaFrame;
  circumscribingFrameCopy = circumscribingFrame;
  legendFrameCopy = legendFrame;
  presetCopy = preset;
  stylesCopy = styles;
  styleCopy = style;
  nonStyleCopy = nonStyle;
  nonStylesCopy = nonStyles;
  axisNonStylesCopy = axisNonStyles;
  seriesNonStylesCopy = seriesNonStyles;
  mapCopy = map;
  stylesMapCopy = stylesMap;
  localeCopy = locale;
  if (!presetCopy)
  {
    v31 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, "[TSCHChartInfo initWithChartType:legendShowing:chartBodyFrame:chartAreaFrame:circumscribingFrame:legendFrame:stylePreset:privateSeriesStyles:chartNonStyle:legendNonStyle:valueAxisNonStyles:categoryAxisNonStyles:seriesNonStyles:refLineNonStylesMap:refLineStylesMap:forDocumentLocale:]");
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v34, v35, v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v38, v39, v40, v41, v32, v37, 387, 0, "invalid nil value for '%{public}s'", "preset");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44, v45);
  }

  v46 = typeCopy;
  if (!typeCopy)
  {
    v47 = MEMORY[0x277D81150];
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, "[TSCHChartInfo initWithChartType:legendShowing:chartBodyFrame:chartAreaFrame:circumscribingFrame:legendFrame:stylePreset:privateSeriesStyles:chartNonStyle:legendNonStyle:valueAxisNonStyles:categoryAxisNonStyles:seriesNonStyles:refLineNonStylesMap:refLineStylesMap:forDocumentLocale:]");
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, v50, v51, v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v54, v55, v56, v57, v48, v53, 388, 0, "invalid nil value for '%{public}s'", "chartType");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59, v60, v61);
  }

  v875.receiver = self;
  v875.super_class = TSCHChartInfo;
  v62 = [(TSCHChartInfo *)&v875 init];
  v63 = v62;
  if (v62)
  {
    objc_storeWeak(&v62->_drawableInfo, 0);
    if (frameCopy)
    {
      v68 = frameCopy;
LABEL_8:
      v69 = objc_msgSend_copy(v68, v64, v65, v66, v67);
      nonInfoGeometry = v63->_nonInfoGeometry;
      v63->_nonInfoGeometry = v69;

      v843 = 0;
      v836 = 0;
      goto LABEL_11;
    }

    if (circumscribingFrameCopy)
    {
      v71 = objc_msgSend_copy(circumscribingFrameCopy, v64, v65, v66, v67);
      v72 = v63->_nonInfoGeometry;
      v63->_nonInfoGeometry = v71;

      v843 = 0;
      v836 = 1;
    }

    else
    {
      v68 = areaFrameCopy;
      if (areaFrameCopy)
      {
        goto LABEL_8;
      }

      v763 = objc_alloc(MEMORY[0x277D802E8]);
      v766 = objc_msgSend_initWithSize_(v763, v764, 400.0, 400.0, v765);
      v767 = v63->_nonInfoGeometry;
      v63->_nonInfoGeometry = v766;

      v768 = MEMORY[0x277D81150];
      v773 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v769, v770, v771, v772, "[TSCHChartInfo initWithChartType:legendShowing:chartBodyFrame:chartAreaFrame:circumscribingFrame:legendFrame:stylePreset:privateSeriesStyles:chartNonStyle:legendNonStyle:valueAxisNonStyles:categoryAxisNonStyles:seriesNonStyles:refLineNonStylesMap:refLineStylesMap:forDocumentLocale:]");
      v778 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v774, v775, v776, v777, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v768, v779, v780, v781, v782, v773, v778, 422, 0, "No geometry when creating a chart. Using something random that you probably don't want.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v783, v784, v785, v786);
      v836 = 0;
      v843 = 1;
    }

LABEL_11:
    v73 = objc_alloc_init(TSCHChartModel);
    model = v63->_model;
    v63->_model = v73;

    objc_msgSend_setChartInfo_(v63->_model, v75, v76, v77, v78, v63);
    v83 = objc_msgSend_documentRoot(presetCopy, v79, v80, v81, v82);
    v88 = objc_msgSend_theme(v83, v84, v85, v86, v87);

    v89 = *MEMORY[0x277D80B08];
    v846 = objc_msgSend_presetsOfKind_(v88, v90, v91, v92, v93, *MEMORY[0x277D80B08]);
    if (objc_msgSend_containsObject_(v846, v94, v95, v96, v97, presetCopy))
    {
      v98 = presetCopy;
      if (v98)
      {
LABEL_13:
        v99 = objc_alloc(MEMORY[0x277D80868]);
        inited = objc_msgSend_initWeakReferenceWithObject_(v99, v100, v101, v102, v103, v98);
LABEL_16:
        v848 = v88;
        lazyPreset = v63->_lazyPreset;
        v63->_lazyPreset = inited;

        if (styleCopy)
        {
          v115 = styleCopy;
        }

        else
        {
          v115 = objc_msgSend_buildChartNonStyle(presetCopy, v111, v112, v113, v114);
        }

        nonStyle = v63->_nonStyle;
        v63->_nonStyle = v115;

        v121 = objc_msgSend_donutChart(TSCHChartType, v117, v118, v119, v120);

        if (v121 == typeCopy)
        {
          objc_opt_class();
          v126 = TSUCheckedDynamicCast();
          objc_msgSend_setIntValue_forProperty_(v126, v127, v128, v129, v130, 1, 1327);
        }

        v849 = frameCopy;
        v851 = nonStyleCopy;
        if (nonStyleCopy)
        {
          v131 = nonStyleCopy;
        }

        else
        {
          v131 = objc_msgSend_buildLegendNonStyle(presetCopy, v122, v123, v124, v125);
        }

        legendNonStyle = v63->_legendNonStyle;
        v63->_legendNonStyle = v131;

        v137 = objc_msgSend_chartStyle(presetCopy, v133, v134, v135, v136);
        style = v63->_style;
        v63->_style = v137;

        v143 = objc_msgSend_legendStyle(presetCopy, v139, v140, v141, v142);
        legendStyle = v63->_legendStyle;
        v63->_legendStyle = v143;

        v149 = objc_msgSend_valueAxisStyles(presetCopy, v145, v146, v147, v148);
        v154 = objc_msgSend_mutableCopy(v149, v150, v151, v152, v153);
        valueAxisStyles = v63->_valueAxisStyles;
        v63->_valueAxisStyles = v154;

        v160 = objc_msgSend_categoryAxisStyles(presetCopy, v156, v157, v158, v159);
        v165 = objc_msgSend_mutableCopy(v160, v161, v162, v163, v164);
        categoryAxisStyles = v63->_categoryAxisStyles;
        v63->_categoryAxisStyles = v165;

        v171 = objc_msgSend_seriesStyles(presetCopy, v167, v168, v169, v170);
        v176 = objc_msgSend_mutableCopy(v171, v172, v173, v174, v175);
        themeSeriesStyles = v63->_themeSeriesStyles;
        v63->_themeSeriesStyles = v176;

        v845 = v98;
        if (stylesCopy)
        {
          v182 = objc_msgSend_mutableCopy(stylesCopy, v178, v179, v180, v181);
        }

        else
        {
          v182 = objc_alloc_init(MEMORY[0x277CBEB18]);
        }

        privateSeriesStyles = v63->_privateSeriesStyles;
        v63->_privateSeriesStyles = v182;

        v188 = objc_msgSend_refLineStyle(presetCopy, v184, v185, v186, v187);
        themePresetRefLineStyle = v63->_themePresetRefLineStyle;
        v63->_themePresetRefLineStyle = v188;

        if (!v63->_style)
        {
          v194 = MEMORY[0x277D81150];
          v195 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v190, v191, v192, v193, "[TSCHChartInfo initWithChartType:legendShowing:chartBodyFrame:chartAreaFrame:circumscribingFrame:legendFrame:stylePreset:privateSeriesStyles:chartNonStyle:legendNonStyle:valueAxisNonStyles:categoryAxisNonStyles:seriesNonStyles:refLineNonStylesMap:refLineStylesMap:forDocumentLocale:]");
          v200 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v196, v197, v198, v199, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v194, v201, v202, v203, v204, v195, v200, 454, 0, "invalid nil value for '%{public}s'", "_style");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v205, v206, v207, v208);
        }

        if (!v63->_legendStyle)
        {
          v209 = MEMORY[0x277D81150];
          v210 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v190, v191, v192, v193, "[TSCHChartInfo initWithChartType:legendShowing:chartBodyFrame:chartAreaFrame:circumscribingFrame:legendFrame:stylePreset:privateSeriesStyles:chartNonStyle:legendNonStyle:valueAxisNonStyles:categoryAxisNonStyles:seriesNonStyles:refLineNonStylesMap:refLineStylesMap:forDocumentLocale:]");
          v215 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v211, v212, v213, v214, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v209, v216, v217, v218, v219, v210, v215, 455, 0, "invalid nil value for '%{public}s'", "_legendStyle");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v220, v221, v222, v223);
        }

        if (!v63->_valueAxisStyles)
        {
          v224 = MEMORY[0x277D81150];
          v225 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v190, v191, v192, v193, "[TSCHChartInfo initWithChartType:legendShowing:chartBodyFrame:chartAreaFrame:circumscribingFrame:legendFrame:stylePreset:privateSeriesStyles:chartNonStyle:legendNonStyle:valueAxisNonStyles:categoryAxisNonStyles:seriesNonStyles:refLineNonStylesMap:refLineStylesMap:forDocumentLocale:]");
          v230 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v226, v227, v228, v229, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v224, v231, v232, v233, v234, v225, v230, 456, 0, "invalid nil value for '%{public}s'", "_valueAxisStyles");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v235, v236, v237, v238);
        }

        if (!v63->_categoryAxisStyles)
        {
          v239 = MEMORY[0x277D81150];
          v240 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v190, v191, v192, v193, "[TSCHChartInfo initWithChartType:legendShowing:chartBodyFrame:chartAreaFrame:circumscribingFrame:legendFrame:stylePreset:privateSeriesStyles:chartNonStyle:legendNonStyle:valueAxisNonStyles:categoryAxisNonStyles:seriesNonStyles:refLineNonStylesMap:refLineStylesMap:forDocumentLocale:]");
          v245 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v241, v242, v243, v244, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v239, v246, v247, v248, v249, v240, v245, 457, 0, "invalid nil value for '%{public}s'", "_categoryAxisStyles");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v250, v251, v252, v253);
        }

        if (!v63->_themeSeriesStyles)
        {
          v254 = MEMORY[0x277D81150];
          v255 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v190, v191, v192, v193, "[TSCHChartInfo initWithChartType:legendShowing:chartBodyFrame:chartAreaFrame:circumscribingFrame:legendFrame:stylePreset:privateSeriesStyles:chartNonStyle:legendNonStyle:valueAxisNonStyles:categoryAxisNonStyles:seriesNonStyles:refLineNonStylesMap:refLineStylesMap:forDocumentLocale:]");
          v260 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v256, v257, v258, v259, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v254, v261, v262, v263, v264, v255, v260, 458, 0, "invalid nil value for '%{public}s'", "_themeSeriesStyles");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v265, v266, v267, v268);
        }

        if (!v63->_privateSeriesStyles)
        {
          v269 = MEMORY[0x277D81150];
          v270 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v190, v191, v192, v193, "[TSCHChartInfo initWithChartType:legendShowing:chartBodyFrame:chartAreaFrame:circumscribingFrame:legendFrame:stylePreset:privateSeriesStyles:chartNonStyle:legendNonStyle:valueAxisNonStyles:categoryAxisNonStyles:seriesNonStyles:refLineNonStylesMap:refLineStylesMap:forDocumentLocale:]");
          v275 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v271, v272, v273, v274, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v269, v276, v277, v278, v279, v270, v275, 459, 0, "invalid nil value for '%{public}s'", "_privateSeriesStyles");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v280, v281, v282, v283);
        }

        if (!v63->_themePresetRefLineStyle)
        {
          v284 = MEMORY[0x277D81150];
          v285 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v190, v191, v192, v193, "[TSCHChartInfo initWithChartType:legendShowing:chartBodyFrame:chartAreaFrame:circumscribingFrame:legendFrame:stylePreset:privateSeriesStyles:chartNonStyle:legendNonStyle:valueAxisNonStyles:categoryAxisNonStyles:seriesNonStyles:refLineNonStylesMap:refLineStylesMap:forDocumentLocale:]");
          v290 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v286, v287, v288, v289, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v284, v291, v292, v293, v294, v285, v290, 460, 0, "invalid nil value for '%{public}s'", "_themePresetRefLineStyle");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v295, v296, v297, v298);
        }

        v299 = objc_msgSend_paragraphStyles(presetCopy, v190, v191, v192, v193);
        v304 = objc_msgSend_mutableCopy(v299, v300, v301, v302, v303);
        paragraphStyles = v63->_paragraphStyles;
        v63->_paragraphStyles = v304;

        if (!v63->_legendStyle)
        {
          v310 = MEMORY[0x277D81150];
          v311 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v306, v307, v308, v309, "[TSCHChartInfo initWithChartType:legendShowing:chartBodyFrame:chartAreaFrame:circumscribingFrame:legendFrame:stylePreset:privateSeriesStyles:chartNonStyle:legendNonStyle:valueAxisNonStyles:categoryAxisNonStyles:seriesNonStyles:refLineNonStylesMap:refLineStylesMap:forDocumentLocale:]");
          v316 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v312, v313, v314, v315, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v310, v317, v318, v319, v320, v311, v316, 465, 0, "invalid nil value for '%{public}s'", "_legendStyle");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v321, v322, v323, v324);
        }

        if (!v63->_legendNonStyle)
        {
          v325 = MEMORY[0x277D81150];
          v326 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v306, v307, v308, v309, "[TSCHChartInfo initWithChartType:legendShowing:chartBodyFrame:chartAreaFrame:circumscribingFrame:legendFrame:stylePreset:privateSeriesStyles:chartNonStyle:legendNonStyle:valueAxisNonStyles:categoryAxisNonStyles:seriesNonStyles:refLineNonStylesMap:refLineStylesMap:forDocumentLocale:]");
          v331 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v327, v328, v329, v330, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v325, v332, v333, v334, v335, v326, v331, 466, 0, "invalid nil value for '%{public}s'", "_legendNonStyle");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v336, v337, v338, v339);
        }

        v340 = objc_alloc_init(TSCHLegendModel);
        legend = v63->_legend;
        v63->_legend = v340;

        objc_msgSend_setChartInfo_(v63->_legend, v342, v343, v344, v345, v63);
        v350 = objc_msgSend_count(v63->_valueAxisStyles, v346, v347, v348, v349);
        v351 = objc_alloc(MEMORY[0x277CBEB18]);
        v356 = objc_msgSend_initWithCapacity_(v351, v352, v353, v354, v355, v350);
        valueAxisNonStyles = v63->_valueAxisNonStyles;
        v63->_valueAxisNonStyles = v356;

        objc_msgSend_addObjectsFromArray_(v63->_valueAxisNonStyles, v358, v359, v360, v361, nonStylesCopy);
        v366 = objc_msgSend_buildAxisNonStyle(presetCopy, v362, v363, v364, v365);

        if (!v366)
        {
          v371 = MEMORY[0x277D81150];
          v372 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v367, v368, v369, v370, "[TSCHChartInfo initWithChartType:legendShowing:chartBodyFrame:chartAreaFrame:circumscribingFrame:legendFrame:stylePreset:privateSeriesStyles:chartNonStyle:legendNonStyle:valueAxisNonStyles:categoryAxisNonStyles:seriesNonStyles:refLineNonStylesMap:refLineStylesMap:forDocumentLocale:]");
          v377 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v373, v374, v375, v376, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v371, v378, v379, v380, v381, v372, v377, 476, 0, "invalid nil value for '%{public}s'", "[preset buildAxisNonStyle]");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v382, v383, v384, v385);
        }

        v386 = objc_msgSend_count(v63->_valueAxisNonStyles, v367, v368, v369, v370);
        v391 = v350 - v386;
        if (v350 > v386)
        {
          do
          {
            v392 = v63->_valueAxisNonStyles;
            v393 = objc_msgSend_buildAxisNonStyle(presetCopy, v387, v388, v389, v390);
            objc_msgSend_tsu_addNonNilObject_(v392, v394, v395, v396, v397, v393);

            --v391;
          }

          while (v391);
        }

        v398 = objc_msgSend_count(v63->_categoryAxisStyles, v387, v388, v389, v390);
        v399 = objc_alloc(MEMORY[0x277CBEB18]);
        v404 = objc_msgSend_initWithCapacity_(v399, v400, v401, v402, v403, v398);
        categoryAxisNonStyles = v63->_categoryAxisNonStyles;
        v63->_categoryAxisNonStyles = v404;

        objc_msgSend_addObjectsFromArray_(v63->_categoryAxisNonStyles, v406, v407, v408, v409, axisNonStylesCopy);
        v414 = objc_msgSend_count(v63->_categoryAxisNonStyles, v410, v411, v412, v413);
        v419 = v398 - v414;
        if (v398 > v414)
        {
          do
          {
            v420 = v63->_categoryAxisNonStyles;
            v421 = objc_msgSend_buildAxisNonStyle(presetCopy, v415, v416, v417, v418);
            objc_msgSend_tsu_addNonNilObject_(v420, v422, v423, v424, v425, v421);

            --v419;
          }

          while (v419);
        }

        v426 = objc_msgSend_defaultDataRowCountForChartType_forDocumentLocale_(v63, v415, v416, v417, v418, typeCopy, localeCopy);
        v432 = objc_msgSend_defaultDataColumnCountForChartType_forDocumentLocale_(v63, v427, v428, v429, v430, typeCopy, localeCopy);
        v847 = styleCopy;
        if (seriesNonStylesCopy)
        {
          v436 = objc_msgSend_mutableCopy(seriesNonStylesCopy, v431, v433, v434, v435);
        }

        else
        {
          v436 = objc_msgSend_array(MEMORY[0x277CBEB18], v431, v433, v434, v435);
        }

        v441 = v436;
        v874 = v436;
        updated = objc_msgSend_updateInitialLabelExplosionIfNeededForChartType_seriesNonStyles_stylePreset_rowCount_columnCount_(TSCHChartInfo, v437, v438, v439, v440, typeCopy, &v874, presetCopy, v426, v432);
        v442 = v874;

        v443 = objc_alloc_init(MEMORY[0x277CBEB18]);
        seriesNonStyles = v63->_seriesNonStyles;
        v63->_seriesNonStyles = v443;

        v842 = v442;
        objc_msgSend_addObjectsFromArray_(v63->_seriesNonStyles, v445, v446, v447, v448, v442);
        v449 = objc_alloc_init(MEMORY[0x277CBEB38]);
        refLineNonStylesMap = v63->_refLineNonStylesMap;
        v63->_refLineNonStylesMap = v449;

        v872[0] = MEMORY[0x277D85DD0];
        v872[1] = 3221225472;
        v872[2] = sub_2762638E0;
        v872[3] = &unk_27A6B7078;
        v451 = v63;
        v873 = v451;
        objc_msgSend_enumerateKeysAndObjectsUsingBlock_(mapCopy, v452, v453, v454, v455, v872);
        v456 = objc_alloc_init(MEMORY[0x277CBEB38]);
        refLineStylesMap = v451->_refLineStylesMap;
        v451->_refLineStylesMap = v456;

        v870[0] = MEMORY[0x277D85DD0];
        v870[1] = 3221225472;
        v870[2] = sub_276263954;
        v870[3] = &unk_27A6B7078;
        v458 = v451;
        v871 = v458;
        objc_msgSend_enumerateKeysAndObjectsUsingBlock_(stylesMapCopy, v459, v460, v461, v462, v870);
        if (!v63->_refLineNonStylesMap)
        {
          v467 = MEMORY[0x277D81150];
          v468 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v463, v464, v465, v466, "[TSCHChartInfo initWithChartType:legendShowing:chartBodyFrame:chartAreaFrame:circumscribingFrame:legendFrame:stylePreset:privateSeriesStyles:chartNonStyle:legendNonStyle:valueAxisNonStyles:categoryAxisNonStyles:seriesNonStyles:refLineNonStylesMap:refLineStylesMap:forDocumentLocale:]");
          v473 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v469, v470, v471, v472, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v467, v474, v475, v476, v477, v468, v473, 512, 0, "invalid nil value for '%{public}s'", "_refLineNonStylesMap");

          v46 = typeCopy;
          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v478, v479, v480, v481);
        }

        if (!v451->_refLineStylesMap)
        {
          v482 = MEMORY[0x277D81150];
          v483 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v463, v464, v465, v466, "[TSCHChartInfo initWithChartType:legendShowing:chartBodyFrame:chartAreaFrame:circumscribingFrame:legendFrame:stylePreset:privateSeriesStyles:chartNonStyle:legendNonStyle:valueAxisNonStyles:categoryAxisNonStyles:seriesNonStyles:refLineNonStylesMap:refLineStylesMap:forDocumentLocale:]");
          v488 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v484, v485, v486, v487, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v482, v489, v490, v491, v492, v483, v488, 513, 0, "invalid nil value for '%{public}s'", "_refLineStylesMap");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v493, v494, v495, v496);
        }

        v497 = *MEMORY[0x277CBF398];
        v834 = *(MEMORY[0x277CBF398] + 16);
        v835 = *MEMORY[0x277CBF398];
        *(v458 + 200) = *MEMORY[0x277CBF398];
        *(v458 + 216) = v834;
        v840 = objc_msgSend_model(v458, v463, *&v497, *&v834, v466);
        v502 = objc_msgSend_grid(v840, v498, v499, v500, v501);
        v507 = objc_msgSend_createUUIDArrayWithCount_(v502, v503, v504, v505, v506, v426);
        v838 = objc_msgSend_createUUIDArrayWithCount_(v502, v508, v509, v510, v511, v432);
        v839 = v507;
        objc_msgSend_setChartType_andSetLegendDefaults_gridRowIds_gridColumnIds_forDocumentLocale_(v458, v512, v513, v514, v515, v46, 0, v507);
        v516 = *MEMORY[0x277CBF348];
        v517 = *(MEMORY[0x277CBF348] + 8);
        v522 = objc_msgSend_legend(v458, v518, v519, v520, v521);
        objc_msgSend_setLegendOffset_(v522, v523, v516, v517, v524);

        v525 = *MEMORY[0x277CBF3A8];
        v526 = *(MEMORY[0x277CBF3A8] + 8);
        v531 = objc_msgSend_legend(v458, v527, v528, v529, v530);
        objc_msgSend_setLegendSize_(v531, v532, v525, v526, v533);

        isMultiData = objc_msgSend_isMultiData(v46, v534, v535, v536, v537);
        v539 = MEMORY[0x277CBEC28];
        if (!isMultiData)
        {
          v539 = showingCopy;
        }

        v541 = v539;
        if (v541)
        {
          v545 = MEMORY[0x277CBEAC0];
          v546 = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], v540, v542, v543, v544, 1113);
          v551 = objc_msgSend_dictionaryWithObject_forKey_(v545, v547, v548, v549, v550, v541, v546);

          v556 = objc_msgSend_p_swapTuplesForMutations_(v458, v552, v553, v554, v555, v551);
          v561 = objc_msgSend_applyStyleSwapTuples_(v458, v557, v558, v559, v560, v556);

          v46 = typeCopy;
        }

        v837 = v541;
        v563 = objc_msgSend_chartLayoutWithChartInfo_(TSCHChartLayout, v540, v542, v543, v544, v458);
        frameCopy = v849;
        nonStyleCopy = v851;
        if (!v563)
        {
          v567 = MEMORY[0x277D81150];
          v568 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v562, v564, v565, v566, "[TSCHChartInfo initWithChartType:legendShowing:chartBodyFrame:chartAreaFrame:circumscribingFrame:legendFrame:stylePreset:privateSeriesStyles:chartNonStyle:legendNonStyle:valueAxisNonStyles:categoryAxisNonStyles:seriesNonStyles:refLineNonStylesMap:refLineStylesMap:forDocumentLocale:]");
          v573 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v569, v570, v571, v572, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
          v574 = v567;
          v46 = typeCopy;
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v574, v575, v576, v577, v578, v568, v573, 543, 0, "invalid nil value for '%{public}s'", "chartLayout");

          frameCopy = v849;
          nonStyleCopy = v851;
          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v579, v580, v581, v582);
        }

        objc_msgSend_size(*(v458 + 50), v562, v564, v565, v566);
        v587 = v584;
        v588 = v585;
        v589 = v843 ^ 1;
        if (frameCopy)
        {
          v589 = 0;
        }

        if (v589)
        {
          objc_msgSend_position(*(v458 + 50), v583, v584, v585, v586);
          if (v836)
          {
            objc_msgSend_setForceOmitLegend_(v563, v618, v619, v620, v621, 1);
            objc_msgSend_setForceOmitLabelPlacement_(v563, v622, v623, v624, v625, 1);
            objc_msgSend_setForceTitleAtTop_(v563, v626, v627, v628, v629, 1);
            v631 = fabs(v587);
            v632 = v631 * 0.9;
            v633 = v631 + -80.0;
            if (v632 >= v633)
            {
              v633 = v632;
            }

            objc_msgSend_legendSizeForChartInfo_initialWidth_(TSCHChartLayout, v630, v633, v632, -80.0, v458);
            v635 = v634;
            v637 = v636;
            v644 = 0.0;
            if (!objc_msgSend_intValueForProperty_defaultValue_(v458, v638, v634, v636, v639, 1114, 0))
            {
              objc_msgSend_p_titleAccommodationWithLegendSize_optionalLayout_(v458, v640, v635, v637, v643, v563);
              v644 = v641;
            }

            objc_msgSend_p_dataSetNameAccomodationWithOptionalLayout_(v458, v640, v641, v642, v643, v563);
            v646 = v637 + v644;
            v648 = v637 + v644 + v647;
            if (v588 * 0.5 >= v648)
            {
              v649 = v648;
            }

            else
            {
              v649 = v588 * 0.5;
            }

            v650 = objc_msgSend_intValueForProperty_defaultValue_(v458, v645, v648, v588 * 0.5, v646, 1113, 1);
            v653 = v588 - v649;
            if (!v650)
            {
              v653 = v588;
            }

            objc_msgSend_layoutForCircumscribingSize_(v563, v651, v587, v653, v652);
            objc_msgSend_chartBodyFrame(v563, v654, v655, v656, v657);
            v844 = v658;
            v660 = v659;
            objc_msgSend_chartAreaFrame(v563, v661, v662, v663, v658);
            TSUCenterOfRect();
            TSURectWithCenterAndSize();
            v869[0] = v835;
            v869[1] = v834;
            v868[0] = v835;
            v868[1] = v834;
            v866 = v835;
            v867 = v834;
            sub_276283170(0, v869, v868, &v866);
            v865 = *MEMORY[0x277CBF348];
            v864 = *MEMORY[0x277CBF3A8];
            sub_27628348C(&v865, &v864, v664, v665, v666, v667, v668, v669, v866, *(&v866 + 1), v867, *(&v867 + 1));
            v674 = objc_msgSend_mutableCopy(*(v458 + 50), v670, v671, v672, v673);
            TSUAddPoints();
            objc_msgSend_setPosition_(v674, v675, v676, v677, v678);
            objc_msgSend_setSize_(v674, v679, v844, v660, v680);
            v681 = *(v458 + 50);
            *(v458 + 50) = v674;

            v682 = v865;
            v687 = objc_msgSend_legend(v458, v683, v684, v685, v686);
            objc_msgSend_setLegendOffset_(v687, v688, *&v682, *(&v682 + 1), v689);

            v690 = v864;
            v695 = objc_msgSend_legend(v458, v691, v692, v693, v694);
            objc_msgSend_setLegendSize_(v695, v696, *&v690, *(&v690 + 1), v697);
          }

          else
          {
            objc_msgSend_layoutForChartAreaSize_(v563, v618, v587, v588, v621);
            objc_msgSend_chartBodyFrame(v563, v698, v699, v700, v701);
            v703 = v702;
            v705 = v704;
            v709 = objc_msgSend_mutableCopy(*(v458 + 50), v706, v707, v708, v702);
            TSUAddPoints();
            objc_msgSend_setPosition_(v709, v710, v711, v712, v713);
            objc_msgSend_setSize_(v709, v714, v703, v705, v715);
            if (legendFrameCopy)
            {
              objc_msgSend_size(legendFrameCopy, v716, v717, v718, v719);
              objc_msgSend_legendSizeForChartInfo_initialWidth_(TSCHChartLayout, v720, v721, v722, v723, v458);
              objc_msgSend_position(v709, v724, v725, v726, v727);
              objc_msgSend_size(v709, v728, v729, v730, v731);
              TSURectWithOriginAndSize();
              objc_msgSend_position(legendFrameCopy, v732, v733, v734, v735);
              TSURectWithOriginAndSize();
              v869[0] = *MEMORY[0x277CBF348];
              v868[0] = *MEMORY[0x277CBF3A8];
              sub_27628348C(v869, v868, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745);
              v746 = v869[0];
              v751 = objc_msgSend_legend(v458, v747, v748, v749, v750);
              objc_msgSend_setLegendOffset_(v751, v752, *&v746, *(&v746 + 1), v753);

              v754 = v868[0];
              v759 = objc_msgSend_legend(v458, v755, v756, v757, v758);
              objc_msgSend_setLegendSize_(v759, v760, *&v754, *(&v754 + 1), v761);

              v762 = *(v458 + 50);
              *(v458 + 50) = v709;
            }

            else
            {
              v787 = *(v458 + 50);
              *(v458 + 50) = v709;

              objc_msgSend_setDefaultLegendPositionIfNeededWithOptionalLayout_(v458, v788, v789, v790, v791, v563);
            }

            v46 = typeCopy;
          }
        }

        else
        {
          objc_msgSend_layoutForChartBodySize_(v563, v583, v584, v585, v586);
          objc_msgSend_chartBodyFrame(v563, v590, v591, v592, v593);
          v595 = v594;
          v597 = v596;
          if ((TSUNearlyEqualSizes() & 1) == 0)
          {
            v602 = objc_msgSend_mutableCopy(*(v458 + 50), v598, v599, v600, v601);
            objc_msgSend_setSize_(v602, v603, v595, v597, v604);
            objc_msgSend_center(*(v458 + 50), v605, v606, v607, v608);
            objc_msgSend_setCenter_(v602, v609, v610, v611, v612);
            v613 = *(v458 + 50);
            *(v458 + 50) = v602;
          }

          objc_msgSend_setDefaultLegendPositionIfNeededWithOptionalLayout_(v458, v598, v599, v600, v601, v563);
        }

        v792 = v848;
        v793 = objc_msgSend_sceneAreaLayoutItemCache(v458, v614, v615, v616, v617);
        objc_msgSend_invalidate(v793, v794, v795, v796, v797);

        if (updated)
        {
          v802 = objc_msgSend_model(v458, v798, v799, v800, v801);
          v807 = objc_msgSend_numberOfSeries(v802, v803, v804, v805, v806);
          v812 = objc_msgSend_count(v63->_seriesNonStyles, v808, v809, v810, v811);

          v817 = v807 > v812;
          nonStyleCopy = v851;
          if (v817)
          {
            v818 = MEMORY[0x277D81150];
            v819 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v813, v814, v815, v816, "[TSCHChartInfo initWithChartType:legendShowing:chartBodyFrame:chartAreaFrame:circumscribingFrame:legendFrame:stylePreset:privateSeriesStyles:chartNonStyle:legendNonStyle:valueAxisNonStyles:categoryAxisNonStyles:seriesNonStyles:refLineNonStylesMap:refLineStylesMap:forDocumentLocale:]");
            v824 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v820, v821, v822, v823, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v818, v825, v826, v827, v828, v819, v824, 681, 0, "Not enough seriesNonStyles overriden for the chart");

            nonStyleCopy = v851;
            v792 = v848;
            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v829, v830, v831, v832);
          }
        }

        styleCopy = v847;
        goto LABEL_92;
      }
    }

    else
    {
      objc_opt_class();
      v109 = objc_msgSend_presetOfKind_index_(v88, v105, v106, v107, v108, v89, 0);
      v98 = TSUCheckedDynamicCast();

      if (v98)
      {
        goto LABEL_13;
      }
    }

    inited = 0;
    goto LABEL_16;
  }

LABEL_92:

  return v63;
}

- (id)initForPresetImportWithChartType:(id)type
{
  typeCopy = type;
  v24.receiver = self;
  v24.super_class = TSCHChartInfo;
  v6 = [(TSCHChartInfo *)&v24 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_chartType, type);
    v8 = [TSCHChartModel alloc];
    v13 = objc_msgSend_initForPresetImportWithChartInfo_(v8, v9, v10, v11, v12, v7);
    model = v7->_model;
    v7->_model = v13;

    v15 = objc_alloc_init(TSCHLegendModel);
    legend = v7->_legend;
    v7->_legend = v15;

    objc_msgSend_setChartInfo_(v7->_legend, v17, v18, v19, v20, v7);
    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    paragraphStyles = v7->_paragraphStyles;
    v7->_paragraphStyles = v21;
  }

  return v7;
}

- (id)p_copyStyleAndNonStyleArray:(id)array withZone:(_NSZone *)zone context:(id)context
{
  arrayCopy = array;
  contextCopy = context;
  if (!arrayCopy)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v10, v11, v12, "[TSCHChartInfo p_copyStyleAndNonStyleArray:withZone:context:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 774, 0, "invalid nil value for '%{public}s'", "sourceArray");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (objc_msgSend_count(arrayCopy, v29, v30, v31, v32))
  {
    v37 = 0;
    do
    {
      v38 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v33, v34, v35, v36, v37);
      v39 = sub_276263BE4(v38, zone, contextCopy);
      objc_msgSend_addObject_(v28, v40, v41, v42, v43, v39);

      ++v37;
    }

    while (v37 < objc_msgSend_count(arrayCopy, v44, v45, v46, v47));
  }

  return v28;
}

- (id)p_copyStyleAndNonStyleMap:(id)map withZone:(_NSZone *)zone context:(id)context
{
  v66 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  contextCopy = context;
  if (!mapCopy)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v10, v11, v12, "[TSCHChartInfo p_copyStyleAndNonStyleMap:withZone:context:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 786, 0, "invalid nil value for '%{public}s'", "sourceMap");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v29 = mapCopy;
  v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, v31, v32, v33, &v61, v65, 16);
  if (v34)
  {
    v35 = v34;
    v36 = *v62;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v62 != v36)
        {
          objc_enumerationMutation(v29);
        }

        v38 = *(*(&v61 + 1) + 8 * i);
        v39 = sub_276263BE4(v38, zone, contextCopy);
        objc_opt_class();
        v44 = objc_msgSend_objectForKey_(v29, v40, v41, v42, v43, v38);
        v45 = TSUCheckedDynamicCast();

        v50 = objc_msgSend_p_copyStyleAndNonStyleArray_withZone_context_(self, v46, v47, v48, v49, v45, zone, contextCopy);
        objc_msgSend_setObject_forKey_(v28, v51, v52, v53, v54, v50, v39);
      }

      v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v55, v56, v57, v58, &v61, v65, 16);
    }

    while (v35);
  }

  return v28;
}

- (id)copyWithZone:(_NSZone *)zone context:(id)context
{
  contextCopy = context;
  v7 = objc_alloc(objc_opt_class());
  v12 = objc_msgSend_p_init(v7, v8, v9, v10, v11);
  if (v12)
  {
    v13 = sub_276263BE4(self->_style, zone, contextCopy);
    v14 = *(v12 + 56);
    *(v12 + 56) = v13;

    v15 = sub_276263BE4(self->_nonStyle, zone, contextCopy);
    v16 = *(v12 + 64);
    *(v12 + 64) = v15;

    objc_storeStrong((v12 + 16), self->_chartType);
    v21 = objc_msgSend_copyWithZone_(self->_legend, v17, v18, v19, v20, zone);
    v22 = *(v12 + 24);
    *(v12 + 24) = v21;

    objc_msgSend_setChartInfo_(*(v12 + 24), v23, v24, v25, v26, v12);
    v27 = sub_276263BE4(self->_legendStyle, zone, contextCopy);
    v28 = *(v12 + 72);
    *(v12 + 72) = v27;

    v29 = sub_276263BE4(self->_legendNonStyle, zone, contextCopy);
    v30 = *(v12 + 80);
    *(v12 + 80) = v29;

    mediator = self->_mediator;
    if (mediator)
    {
      if (contextCopy)
      {
        v36 = objc_msgSend_copyWithContext_(mediator, v31, v32, v33, v34, contextCopy);
      }

      else
      {
        v36 = objc_msgSend_copyWithZone_(mediator, v31, v32, v33, v34, zone);
      }

      v37 = *(v12 + 40);
      *(v12 + 40) = v36;
      v38 = v36;

      objc_msgSend_setChartInfo_(v38, v39, v40, v41, v42, v12);
      objc_msgSend_setObjectToNotify_(v38, v43, v44, v45, v46, 0);
    }

    v47 = objc_msgSend_copyWithZone_(self->_lazyPreset, v31, v32, v33, v34, zone);
    v48 = *(v12 + 264);
    *(v12 + 264) = v47;

    v53 = objc_msgSend_copyWithZone_(self->_ownedPreset, v49, v50, v51, v52, zone);
    v54 = *(v12 + 256);
    *(v12 + 256) = v53;

    origin = self->_innerChartFrame.origin;
    size = self->_innerChartFrame.size;
    *(v12 + 216) = size;
    *(v12 + 200) = origin;
    v59 = objc_msgSend_p_copyStyleAndNonStyleArray_withZone_context_(self, v57, origin.x, size.width, v58, self->_valueAxisStyles, zone, contextCopy);
    v60 = *(v12 + 96);
    *(v12 + 96) = v59;

    v65 = objc_msgSend_p_copyStyleAndNonStyleArray_withZone_context_(self, v61, v62, v63, v64, self->_categoryAxisStyles, zone, contextCopy);
    v66 = *(v12 + 104);
    *(v12 + 104) = v65;

    v71 = objc_msgSend_p_copyStyleAndNonStyleArray_withZone_context_(self, v67, v68, v69, v70, self->_themeSeriesStyles, zone, contextCopy);
    v72 = *(v12 + 128);
    *(v12 + 128) = v71;

    v77 = objc_msgSend_p_copyStyleAndNonStyleArray_withZone_context_(self, v73, v74, v75, v76, self->_privateSeriesStyles, zone, contextCopy);
    v78 = *(v12 + 136);
    *(v12 + 136) = v77;

    v83 = objc_msgSend_p_copyStyleAndNonStyleArray_withZone_context_(self, v79, v80, v81, v82, self->_paragraphStyles, zone, contextCopy);
    v84 = *(v12 + 168);
    *(v12 + 168) = v83;

    v89 = objc_msgSend_p_copyStyleAndNonStyleArray_withZone_context_(self, v85, v86, v87, v88, self->_valueAxisNonStyles, zone, contextCopy);
    v90 = *(v12 + 112);
    *(v12 + 112) = v89;

    v95 = objc_msgSend_p_copyStyleAndNonStyleArray_withZone_context_(self, v91, v92, v93, v94, self->_categoryAxisNonStyles, zone, contextCopy);
    v96 = *(v12 + 120);
    *(v12 + 120) = v95;

    v101 = objc_msgSend_p_copyStyleAndNonStyleArray_withZone_context_(self, v97, v98, v99, v100, self->_seriesNonStyles, zone, contextCopy);
    v102 = *(v12 + 144);
    *(v12 + 144) = v101;

    v107 = objc_msgSend_p_copyStyleAndNonStyleMap_withZone_context_(self, v103, v104, v105, v106, self->_refLineNonStylesMap, zone, contextCopy);
    v108 = *(v12 + 160);
    *(v12 + 160) = v107;

    v113 = objc_msgSend_p_copyStyleAndNonStyleMap_withZone_context_(self, v109, v110, v111, v112, self->_refLineStylesMap, zone, contextCopy);
    v114 = *(v12 + 152);
    *(v12 + 152) = v113;

    v115 = sub_276263BE4(self->_themePresetRefLineStyle, zone, contextCopy);
    v116 = *(v12 + 88);
    *(v12 + 88) = v115;

    previewOrigin = self->_previewOrigin;
    *(v12 + 232) = previewOrigin;
    *(v12 + 393) = self->_displayMessageOnRepCreation;
    v121 = objc_msgSend_copy(self->_informationalMessageString, v118, previewOrigin.x, v119, v120);
    v122 = *(v12 + 376);
    *(v12 + 376) = v121;

    informationalMessageDuration = self->_informationalMessageDuration;
    *(v12 + 384) = informationalMessageDuration;
    v127 = objc_msgSend_copy(self->_lastAppliedFillSetLookupString, v124, informationalMessageDuration, v125, v126);
    v128 = *(v12 + 280);
    *(v12 + 280) = v127;

    v133 = objc_msgSend_copyWithZone_(self->_model, v129, v130, v131, v132, zone);
    v134 = *(v12 + 32);
    *(v12 + 32) = v133;

    objc_msgSend_setChartInfo_(*(v12 + 32), v135, v136, v137, v138, v12);
  }

  return v12;
}

- (void)willModify
{
  WeakRetained = objc_loadWeakRetained(&self->_drawableInfo);
  objc_msgSend_willModify(WeakRetained, v2, v3, v4, v5);
}

- (id)context
{
  v5 = objc_msgSend_drawableInfo(self, a2, v2, v3, v4);
  v10 = objc_msgSend_context(v5, v6, v7, v8, v9);

  return v10;
}

- (TSDInfoGeometry)geometry
{
  v6 = objc_msgSend_drawableInfo(self, a2, v2, v3, v4);
  v11 = v6;
  if (v6)
  {
    v12 = objc_msgSend_p_drawableGeometry(v6, v7, v8, v9, v10);
  }

  else
  {
    v12 = self->_nonInfoGeometry;
  }

  v13 = v12;

  return v13;
}

- (void)setGeometry:(id)geometry omitLegendResize:(BOOL)resize clearObjectPlaceholderFlag:(BOOL)flag
{
  flagCopy = flag;
  geometryCopy = geometry;
  objc_msgSend_willModify(self, v10, v11, v12, v13);
  v18 = objc_msgSend_geometry(self, v14, v15, v16, v17);
  v19 = v18;
  objc_msgSend_position(v19, v20, v21, v22, v23);
  v25 = v24;
  v27 = v26;
  objc_msgSend_position(geometryCopy, v28, v24, v26, v29);
  v34 = v25 == v31 && v27 == v32;
  if (v34 && (objc_msgSend_angle(v18, v30, v31, v32, v33), v36 = v35, objc_msgSend_angle(geometryCopy, v37, v35, v38, v39), v36 == v31))
  {
    if (objc_msgSend_isEqual_(v18, v30, v31, v32, v33, geometryCopy))
    {
      goto LABEL_24;
    }
  }

  else
  {
    v40 = objc_msgSend_mutableCopy(geometryCopy, v30, v31, v32, v33);
    objc_msgSend_position(v18, v41, v42, v43, v44);
    objc_msgSend_setPosition_(v40, v45, v46, v47, v48);
    objc_msgSend_angle(v18, v49, v50, v51, v52);
    objc_msgSend_setAngle_(v40, v53, v54, v55, v56);
    isEqual = objc_msgSend_isEqual_(v18, v57, v58, v59, v60, v40);

    if (isEqual)
    {
      goto LABEL_24;
    }
  }

  if (!resize)
  {
    v67 = objc_msgSend_legend(self, v62, v63, v64, v65);
    if (!v67)
    {
      v71 = MEMORY[0x277D81150];
      v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, v68, v69, v70, "[TSCHChartInfo setGeometry:omitLegendResize:clearObjectPlaceholderFlag:]");
      v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v73, v74, v75, v76, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v71, v78, v79, v80, v81, v72, v77, 958, 0, "invalid nil value for '%{public}s'", "legend");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v82, v83, v84, v85);
    }

    objc_msgSend_legendOffset(v67, v66, v68, v69, v70);
    v193 = v87;
    v194 = v86;
    objc_msgSend_legendSize(v67, v88, v86, v87, v89);
    v195 = v91;
    v196 = v90;
    objc_msgSend_size(v18, v92, v90, v91, v93);
    v95 = v94;
    v97 = v96;
    objc_msgSend_size(geometryCopy, v98, v94, v96, v99);
    v101 = v100;
    v103 = v102;
    v106 = objc_msgSend_chartLayoutWithChartInfo_(TSCHChartLayout, v104, v100, v102, v105, self);
    v111 = v106;
    if (v106)
    {
      objc_msgSend_layoutSettings(v106, v107, v108, v109, v110);
    }

    else
    {
      v112 = MEMORY[0x277D81150];
      v113 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v107, v108, v109, v110, "[TSCHChartInfo setGeometry:omitLegendResize:clearObjectPlaceholderFlag:]");
      v118 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v114, v115, v116, v117, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v112, v119, v120, v121, v122, v113, v118, 968, 0, "invalid nil value for '%{public}s'", "tempLayout");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v123, v124, v125, v126);
      memset(&v200, 0, 24);
    }

    sub_27635FBCC(&v200, &v209);
    *&v200.a = v209;
    v200.c = v210;
    objc_msgSend_setLayoutSettings_(v111, v127, v209.n128_f64[0], v128, v129, &v200);
    objc_msgSend_layoutForChartBodySize_(v111, v130, v95, v97, v131);
    v190 = *MEMORY[0x277CBF3A8];
    *v208 = *MEMORY[0x277CBF3A8];
    v132 = *(MEMORY[0x277CBF398] + 16);
    v206 = *MEMORY[0x277CBF398];
    v207 = v132;
    v205[0] = v206;
    v205[1] = v132;
    v203 = v206;
    v204 = v132;
    objc_msgSend_chartAreaFrame(v111, v133, *&v206, *&v132, v134);
    objc_msgSend_chartBodyFrame(v111, v135, v136, v137, v138);
    sub_2762833A4(v208, &v206, v205, &v203);
    if (v111)
    {
      objc_msgSend_layoutSettings(v111, v139, v140, v141, v142, *&v194, *&v193, *&v196, *&v195);
    }

    else
    {
      memset(&v200, 0, 24);
    }

    sub_27635FBB0(&v200, &v201);
    *&v200.a = v201;
    v200.c = v202;
    objc_msgSend_setLayoutSettings_(v111, v143, v201.n128_f64[0], v144, v145, &v200);
    objc_msgSend_layoutForChartBodySize_(v111, v146, v101, v103, v147);
    objc_msgSend_chartAreaFrame(v111, v148, v149, v150, v151);
    v191 = v152;
    v192 = v153;
    objc_msgSend_chartBodyFrame(v111, v154, v155, v156, v152);
    memset(&v200, 0, sizeof(v200));
    v157 = *v208;
    v187 = *(MEMORY[0x277CBF2C0] + 16);
    *&v199.a = *MEMORY[0x277CBF2C0];
    v188 = *&v199.a;
    *&v199.c = v187;
    *&v199.tx = *(MEMORY[0x277CBF2C0] + 32);
    v186 = *&v199.tx;
    CGAffineTransformScale(&v200, &v199, v208[0] / *&v207, v208[1] / *(&v207 + 1));
    v189 = vmlaq_n_f64(vmulq_n_f64(*&v200.c, v192), *&v200.a, v191);
    *&v198.a = v188;
    *&v198.c = v187;
    *&v198.tx = v186;
    memset(&v199, 0, sizeof(v199));
    CGAffineTransformScale(&v199, &v198, v189.f64[0] / *&v157, v189.f64[1] / *(&v157 + 1));
    TSURectWithOriginAndSize();
    objc_msgSend_resizedLegendFrame_oldChartSize_newChartSize_(self, v158, *&v203, *(&v203 + 1), *&v204, *(&v204 + 1), v157, *&v189);
    v160 = v159;
    v162 = v161;
    v164 = v163;
    v166 = v165;
    TSUAddPoints();
    TSURectWithOriginAndSize();
    *&v198.a = *MEMORY[0x277CBF348];
    v197 = v190;
    sub_27628348C(&v198, &v197, v167, v168, v169, v170, v171, v172, v160, v162, v164, v166);
    a = v198.a;
    b = v198.b;
    if ((TSUNearlyEqualPoints() & 1) == 0)
    {
      objc_msgSend_setLegendOffset_(v67, v175, a, b, v176);
    }

    v177 = v197;
    if ((TSUNearlyEqualSizes() & 1) == 0)
    {
      objc_msgSend_setLegendSize_(v67, v178, *&v177, *(&v177 + 1), v179);
    }
  }

LABEL_24:
  v180 = objc_msgSend_drawableInfo(self, v62, v63, v64, v65);
  v185 = v180;
  if (v180)
  {
    objc_msgSend_p_setDrawableGeometry_clearObjectPlaceholderFlag_(v180, v181, v182, v183, v184, geometryCopy, flagCopy);
  }

  else
  {
    objc_storeStrong(&self->_nonInfoGeometry, geometry);
  }
}

- (id)modelForDataSetIndex:(unint64_t)index
{
  v5 = [TSCHChartModel alloc];
  v10 = objc_msgSend_initWithChartInfo_dataSetIndex_(v5, v6, v7, v8, v9, self, index);

  return v10;
}

- (void)setModel:(id)model
{
  modelCopy = model;
  v29 = modelCopy;
  if (!modelCopy)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCHChartInfo setModel:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 1039, 0, "invalid nil value for '%{public}s'", "model");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
    modelCopy = 0;
  }

  if (self->_model != modelCopy)
  {
    objc_msgSend_willModify(self, v6, v7, v8, v9);
    objc_storeStrong(&self->_model, model);
    objc_msgSend_setChartInfo_(self->_model, v25, v26, v27, v28, self);
    modelCopy = v29;
  }
}

- (void)setLegend:(id)legend
{
  legendCopy = legend;
  v25 = legendCopy;
  if (!legendCopy)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCHChartInfo setLegend:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 1050, 0, "invalid nil value for '%{public}s'", "model");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
    legendCopy = 0;
  }

  if (self->_legend != legendCopy)
  {
    objc_msgSend_willModify(self, v6, v7, v8, v9);
    objc_storeStrong(&self->_legend, legend);
    legendCopy = v25;
  }
}

- (void)setMediator:(id)mediator
{
  mediatorCopy = mediator;
  if (self->_mediator != mediatorCopy)
  {
    v14 = mediatorCopy;
    objc_msgSend_willModify(self, v6, v7, v8, v9);
    objc_storeStrong(&self->_mediator, mediator);
    objc_msgSend_setChartInfo_(self->_mediator, v10, v11, v12, v13, self);
    mediatorCopy = v14;
  }
}

- (void)setPreviewOrigin:(CGPoint)origin
{
  y = origin.y;
  x = origin.x;
  v6 = self->_previewOrigin.x;
  v7 = self->_previewOrigin.y;
  if (v6 != x || v7 != y)
  {
    objc_msgSend_willModify(self, a2, v6, v7, v3);
    self->_previewOrigin.x = x;
    self->_previewOrigin.y = y;
  }
}

- (CGSize)minimumChartBodySize
{
  v5 = objc_msgSend_chartType(self, a2, v2, v3, v4);
  v10 = v5;
  if (v5)
  {
    objc_msgSend_minimumChartBodySize(v5, v6, v7, v8, v9);
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v12 = 30.0;
    v14 = 30.0;
  }

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (int)gridDirection
{
  v6 = objc_msgSend_mediator(self, a2, v2, v3, v4);

  if (v6)
  {
    v11 = objc_msgSend_mediator(self, v7, v8, v9, v10);
    v16 = objc_msgSend_direction(v11, v12, v13, v14, v15);
  }

  else
  {
    v11 = objc_msgSend_model(self, v7, v8, v9, v10);
    v21 = objc_msgSend_grid(v11, v17, v18, v19, v20);
    v16 = objc_msgSend_direction(v21, v22, v23, v24, v25);
  }

  return v16;
}

- (CGRect)resizedLegendFrame:(CGRect)frame oldChartSize:(CGSize)size newChartSize:(CGSize)chartSize
{
  height = size.height;
  width = size.width;
  v7 = frame.size.height;
  v8 = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v12 = CGRectGetMinX(frame) / size.width;
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = v8;
  v34.size.height = v7;
  v13 = CGRectGetMaxX(v34) / width;
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = v8;
  v35.size.height = v7;
  v14 = CGRectGetMinY(v35) / height;
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = v8;
  v36.size.height = v7;
  v15 = chartSize.width * v12;
  v16 = CGRectGetMaxY(v36) / height;
  objc_msgSend_legendSizeForChartInfo_initialWidth_(TSCHChartLayout, v17, -(chartSize.width * v12 - chartSize.width * v13), -(chartSize.width * v12 - chartSize.width * v13), v18, self);
  v21 = v13;
  v22 = v19;
  v23 = v20;
  if (v12 >= 0.05 || v21 <= 0.95)
  {
    v26 = v14 > 1.0 - v16 || v14 > 0.5;
    v24 = chartSize.height;
    if (v26)
    {
      v25 = -(v20 - chartSize.height * v16);
    }

    else
    {
      v25 = chartSize.height * v14;
    }

    if (v12 > 0.5 || v12 > 1.0 - v21)
    {
      v15 = -(v19 - chartSize.width * v21);
    }
  }

  else
  {
    v24 = chartSize.height;
    if (v14 < 0.5)
    {
      v25 = chartSize.height * v14;
    }

    else
    {
      v25 = -(v20 - chartSize.height * v16);
    }
  }

  v37.origin.x = v15;
  v37.origin.y = v25;
  v37.size.width = v22;
  v37.size.height = v23;
  if (CGRectGetMaxX(v37) <= chartSize.width)
  {
    v27 = v15;
  }

  else
  {
    v27 = chartSize.width - v22;
  }

  v38.origin.x = v27;
  v38.origin.y = v25;
  v38.size.width = v22;
  v38.size.height = v23;
  MaxY = CGRectGetMaxY(v38);
  v29 = v24 - v23;
  if (MaxY <= v24)
  {
    v29 = v25;
  }

  v30 = v27;
  v31 = v22;
  v32 = v23;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v29;
  result.origin.x = v30;
  return result;
}

- (unint64_t)multiDataSetIndex
{
  v5 = objc_msgSend_drawableInfo(self, a2, v2, v3, v4);
  v10 = objc_msgSend_multiDataSetIndex(v5, v6, v7, v8, v9);

  return v10;
}

- (void)hideAllTitles
{
  v77 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = MEMORY[0x277CBEAC0];
  v9 = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], v5, v6, v7, v8, 1114);
  v14 = objc_msgSend_dictionaryWithObject_forKey_(v4, v10, v11, v12, v13, MEMORY[0x277CBEC28], v9);

  v15 = [TSCHPropertyMutationTuple alloc];
  v70 = v14;
  v20 = objc_msgSend_initWithStyleOwner_mutations_(v15, v16, v17, v18, v19, self, v14);
  objc_msgSend_addObject_(v3, v21, v22, v23, v24, v20);

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  selfCopy = self;
  v28 = objc_msgSend_axisList(self->_model, v25, 0.0, v26, v27);
  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, v30, v31, v32, &v72, v76, 16);
  if (v33)
  {
    v38 = v33;
    v39 = *v73;
    v40 = MEMORY[0x277CBEC28];
    do
    {
      v41 = 0;
      do
      {
        if (*v73 != v39)
        {
          objc_enumerationMutation(v28);
        }

        v42 = *(*(&v72 + 1) + 8 * v41);
        v43 = MEMORY[0x277CBEAC0];
        v44 = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], v34, v35, v36, v37, 1060);
        v49 = objc_msgSend_dictionaryWithObject_forKey_(v43, v45, v46, v47, v48, v40, v44);

        v50 = [TSCHPropertyMutationTuple alloc];
        v55 = objc_msgSend_initWithStyleOwner_mutations_(v50, v51, v52, v53, v54, v42, v49);
        objc_msgSend_addObject_(v3, v56, v57, v58, v59, v55);

        ++v41;
      }

      while (v38 != v41);
      v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v34, v35, v36, v37, &v72, v76, 16);
    }

    while (v38);
  }

  v64 = objc_msgSend_styleSwapTuplesFromMutationTuples_forImport_(TSCHPropertyMutationHelper, v60, v61, v62, v63, v3, 0);
  v69 = objc_msgSend_applyStyleSwapTuples_(selfCopy, v65, v66, v67, v68, v64);
}

- (void)chartMoveToPosition:(CGPoint)position size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7 = objc_msgSend_chartLayoutWithChartInfo_(TSCHChartLayout, a2, position.x, position.y, size.width, self);
  v12 = objc_msgSend_geometry(self, v8, v9, v10, v11);
  objc_msgSend_position(v12, v13, v14, v15, v16);
  objc_msgSend_size(v12, v17, v18, v19, v20);
  objc_msgSend_layoutForChartBodySize_(v7, v21, v22, v23, v24);
  objc_msgSend_outerLayoutFrame(v7, v25, v26, v27, v28);
  objc_msgSend_chartBodyFrame(v7, v29, v30, v31, v32);
  v37 = objc_msgSend_legend(self, v33, v34, v35, v36);
  objc_msgSend_legendOffset(v37, v38, v39, v40, v41);
  v43 = v42;
  v45 = v44;

  v50 = objc_msgSend_legend(self, v46, v47, v48, v49);
  objc_msgSend_legendSize(v50, v51, v52, v53, v54);
  v56 = v55;
  v58 = v57;

  v151 = v43;
  v152 = v45;
  v149 = v56;
  v150 = v58;
  if (TSUNearlyEqualSizes())
  {
    v63 = 0;
  }

  else
  {
    v63 = objc_msgSend_mutableCopy(v12, v59, v60, v61, v62);
    objc_msgSend_layoutForCircumscribingSize_(v7, v64, width, height, v65);
    objc_msgSend_chartBodyFrame(v7, v66, v67, v68, v69);
    v71 = v70;
    v73 = v72;
    v77 = objc_msgSend_intValueForProperty_defaultValue_(self, v74, v75, v76, v70, 1113, 1);
    objc_msgSend_legendFrame(v7, v78, v79, v80, v81);
    if (v77)
    {
      v87 = v83;
      v88 = v84;
      v89 = *&v85;
      v90 = v86;
    }

    else
    {
      objc_msgSend_chartAreaFrame(v7, v82, v83, v84, v85);
      v93 = v92;
      v94 = v92 * 0.9;
      if (v92 * 0.9 < v92 + -80.0)
      {
        v94 = v92 + -80.0;
      }

      v147 = v94;
      objc_msgSend_legendSizeForChartInfo_initialWidth_(TSCHChartLayout, v91, v94, v92 + -80.0, v92, self);
      v144 = v95;
      v148 = v96;
      TSURectWithOriginAndSize();
      v145 = v97;
      v146 = v98;
      v89 = *&v99;
      v90 = v100;
      v106 = 0.0;
      if (!objc_msgSend_intValueForProperty_defaultValue_(self, v101, v97, v98, v99, 1114, 0))
      {
        objc_msgSend_p_titleAccommodationWithLegendSize_optionalLayout_(self, v102, v144, v148, v105, v7);
        v106 = v103;
      }

      objc_msgSend_p_dataSetNameAccomodationWithOptionalLayout_(self, v102, v103, v104, v105, v7);
      v85 = 0.5;
      v87 = v145 + (v93 - v147) * 0.5;
      v83 = v148 + v106 + v107;
      v84 = v146;
      v88 = v146 - v83;
    }

    objc_msgSend_minimumChartBodySize(self, v82, v83, v84, v85);
    if (v71 < v109)
    {
      v71 = v109;
    }

    if (v73 < v110)
    {
      v73 = v110;
    }

    objc_msgSend_setSize_(v63, v108, v71, v73, v111);
    sub_27628348C(&v151, &v149, v112, v113, v114, v115, v116, v117, *&v87, *&v88, v89, v90);
  }

  TSUAddPoints();
  v119 = v118;
  v121 = v120;
  if ((TSUNearlyEqualPoints() & 1) == 0)
  {
    if (!v63)
    {
      v63 = objc_msgSend_mutableCopy(v12, v122, v123, v124, v125);
    }

    objc_msgSend_setPosition_(v63, v122, v119, v121, v125);
  }

  if (v63)
  {
    objc_msgSend_setGeometry_omitLegendResize_clearObjectPlaceholderFlag_(self, v122, v123, v124, v125, v63, 1, 0);
  }

  v126 = v151;
  v127 = v152;
  if ((TSUNearlyEqualPoints() & 1) == 0)
  {
    v132 = objc_msgSend_legend(self, v128, v129, v130, v131);
    objc_msgSend_setLegendOffset_(v132, v133, v126, v127, v134);
  }

  v135 = v149;
  v136 = v150;
  if ((TSUNearlyEqualSizes() & 1) == 0)
  {
    v141 = objc_msgSend_legend(self, v137, v138, v139, v140);
    objc_msgSend_setLegendSize_(v141, v142, v135, v136, v143);
  }
}

- (id)infoGeometryForVisuallyCenteringOnUnscaledCanvasPoint:(CGPoint)point
{
  v5 = objc_msgSend_chartLayoutWithChartInfo_(TSCHChartLayout, a2, point.x, point.y, v3, self);
  v10 = objc_msgSend_geometry(self, v6, v7, v8, v9);
  objc_msgSend_size(v10, v11, v12, v13, v14);
  objc_msgSend_layoutForChartBodySize_(v5, v15, v16, v17, v18);

  objc_msgSend_outerLayoutFrame(v5, v19, v20, v21, v22);
  objc_msgSend_chartBodyFrame(v5, v23, v24, v25, v26);
  TSURectWithCenterAndSize();
  v31 = objc_msgSend_geometry(self, v27, v28, v29, v30);
  v36 = objc_msgSend_mutableCopy(v31, v32, v33, v34, v35);

  TSUAddPoints();
  objc_msgSend_setPosition_(v36, v37, v38, v39, v40);

  return v36;
}

- (id)infoGeometryForVisiblePositioningInfoGeometry:(id)geometry
{
  geometryCopy = geometry;
  v9 = geometryCopy;
  if (geometryCopy && objc_msgSend_widthValid(geometryCopy, v5, v6, v7, v8) && (objc_msgSend_heightValid(v9, v10, v11, v12, v13) & 1) != 0)
  {
    v18 = objc_msgSend_chartLayoutWithChartInfo_(TSCHChartLayout, v14, v15, v16, v17, self);
    objc_msgSend_size(v9, v19, v20, v21, v22);
    objc_msgSend_layoutForCircumscribingSize_(v18, v23, v24, v25, v26);
    objc_msgSend_chartBodyFrame(v18, v27, v28, v29, v30);
    v32 = v31;
    v34 = v33;
    objc_msgSend_boundsForResize(v18, v35, v36, v37, v31);
    TSUSubtractPoints();
    v42 = objc_msgSend_mutableCopy(v9, v38, v39, v40, v41);
    objc_msgSend_position(v42, v43, v44, v45, v46);
    TSUAddPoints();
    objc_msgSend_setPosition_(v42, v47, v48, v49, v50);
    objc_msgSend_setSize_(v42, v51, v32, v34, v52);
  }

  else
  {
    v42 = v9;
  }

  return v42;
}

- (id)p_infoGeometryForGeometry:(id)geometry isCircumscribing:(BOOL)circumscribing omitLabelPlacement:(BOOL)placement
{
  placementCopy = placement;
  circumscribingCopy = circumscribing;
  geometryCopy = geometry;
  v13 = geometryCopy;
  if (geometryCopy && objc_msgSend_widthValid(geometryCopy, v9, v10, v11, v12) && (objc_msgSend_heightValid(v13, v14, v15, v16, v17) & 1) != 0)
  {
    v22 = objc_msgSend_chartLayoutWithChartInfo_(TSCHChartLayout, v18, v19, v20, v21, self);
    objc_msgSend_setForceOmitLabelPlacement_(v22, v23, v24, v25, v26, placementCopy);
    objc_msgSend_size(v13, v27, v28, v29, v30);
    if (circumscribingCopy)
    {
      objc_msgSend_layoutForCircumscribingSize_(v22, v31, v32, v33, v34);
    }

    else
    {
      objc_msgSend_layoutForResizingSize_(v22, v31, v32, v33, v34);
    }

    objc_msgSend_chartBodyFrame(v22, v35, v36, v37, v38);
    v42 = v41;
    v44 = v43;
    objc_msgSend_boundsForResize(v22, v45, v46, v47, v41);
    TSUSubtractPoints();
    v39 = objc_msgSend_mutableCopy(v13, v48, v49, v50, v51);
    objc_msgSend_position(v39, v52, v53, v54, v55);
    TSUAddPoints();
    objc_msgSend_setPosition_(v39, v56, v57, v58, v59);
    objc_msgSend_setSize_(v39, v60, v42, v44, v61);
  }

  else
  {
    v39 = v13;
  }

  return v39;
}

- (void)setInfoGeometryByUpdatingLegendGeometryAccommodatedForInitialLayoutGeometry:(id)geometry
{
  geometryCopy = geometry;
  if (!geometryCopy)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v6, v7, v8, "[TSCHChartInfo setInfoGeometryByUpdatingLegendGeometryAccommodatedForInitialLayoutGeometry:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 1326, 0, "invalid nil value for '%{public}s'", "circumscribingFrame");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v25 = objc_msgSend_chartLayoutWithChartInfo_(TSCHChartLayout, v4, v6, v7, v8, self);
  if (!v25)
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v26, v27, v28, "[TSCHChartInfo setInfoGeometryByUpdatingLegendGeometryAccommodatedForInitialLayoutGeometry:]");
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v36, v37, v38, v39, v30, v35, 1328, 0, "invalid nil value for '%{public}s'", "chartLayout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42, v43);
  }

  objc_msgSend_size(geometryCopy, v24, v26, v27, v28);
  v45 = v44;
  v47 = v46;
  objc_msgSend_position(geometryCopy, v48, v44, v46, v49);
  objc_msgSend_setForceOmitLegend_(v25, v50, v51, v52, v53, 1);
  objc_msgSend_setForceOmitLabelPlacement_(v25, v54, v55, v56, v57, 1);
  objc_msgSend_setForceTitleAtTop_(v25, v58, v59, v60, v61, 1);
  v63 = fabs(v45);
  v64 = v63 * 0.9;
  v65 = v63 + -80.0;
  if (v64 >= v65)
  {
    v65 = v64;
  }

  objc_msgSend_legendSizeForChartInfo_initialWidth_(TSCHChartLayout, v62, v65, v64, -80.0, self);
  v67 = v66;
  v69 = v68;
  v76 = 0.0;
  if (!objc_msgSend_intValueForProperty_defaultValue_(self, v70, v66, v68, v71, 1114, 0))
  {
    objc_msgSend_p_titleAccommodationWithLegendSize_optionalLayout_(self, v72, v67, v69, v75, v25);
    v76 = v73;
  }

  objc_msgSend_p_dataSetNameAccomodationWithOptionalLayout_(self, v72, v73, v74, v75, v25);
  v79 = v69 + v76 + v78;
  if (v47 * 0.5 >= v79)
  {
    v80 = v79;
  }

  else
  {
    v80 = v47 * 0.5;
  }

  objc_msgSend_layoutForCircumscribingSize_(v25, v77, v45, v47 - v80, v69 + v76);
  objc_msgSend_chartBodyFrame(v25, v81, v82, v83, v84);
  v137 = v86;
  v138 = v85;
  objc_msgSend_chartAreaFrame(v25, v87, v88, v89, v85);
  TSURectWithOriginAndSize();
  TSUCenterRectOverRect();
  TSUCenterOfRect();
  TSURectWithCenterAndSize();
  v90 = *(MEMORY[0x277CBF398] + 16);
  v144[0] = *MEMORY[0x277CBF398];
  v144[1] = v90;
  v143[0] = v144[0];
  v143[1] = v90;
  v141 = v144[0];
  v142 = v90;
  sub_276283170(0, v144, v143, &v141);
  v140 = *MEMORY[0x277CBF348];
  v139 = *MEMORY[0x277CBF3A8];
  sub_27628348C(&v140, &v139, v91, v92, v93, v94, v95, v96, v141, *(&v141 + 1), v142, *(&v142 + 1));
  v101 = objc_msgSend_mutableCopy(geometryCopy, v97, v98, v99, v100);
  TSUAddPoints();
  objc_msgSend_setPosition_(v101, v102, v103, v104, v105);
  objc_msgSend_setSize_(v101, v106, v138, v137, v107);
  v108 = v140;
  v113 = objc_msgSend_legend(self, v109, v110, v111, v112);
  objc_msgSend_setLegendOffset_(v113, v114, *&v108, *(&v108 + 1), v115);

  v116 = v139;
  v121 = objc_msgSend_legend(self, v117, v118, v119, v120);
  objc_msgSend_setLegendSize_(v121, v122, *&v116, *(&v116 + 1), v123);

  v128 = objc_msgSend_sceneAreaLayoutItemCache(self, v124, v125, v126, v127);
  objc_msgSend_invalidate(v128, v129, v130, v131, v132);

  objc_msgSend_setGeometry_clearObjectPlaceholderFlag_(self, v133, v134, v135, v136, v101, 0);
}

- (void)setChartType:(id)type andSetLegendDefaults:(BOOL)defaults gridRowIds:(id)ids gridColumnIds:(id)columnIds forDocumentLocale:(id)locale
{
  defaultsCopy = defaults;
  typeCopy = type;
  idsCopy = ids;
  columnIdsCopy = columnIds;
  localeCopy = locale;
  v19 = typeCopy;
  if (!typeCopy)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v16, v17, v18, "[TSCHChartInfo setChartType:andSetLegendDefaults:gridRowIds:gridColumnIds:forDocumentLocale:]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v27, v28, v29, v30, v21, v26, 1407, 0, "invalid nil value for '%{public}s'", "chartType");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
    v19 = 0;
  }

  if (self->_chartType != v19)
  {
    objc_msgSend_willModify(self, v14, v16, v17, v18);
    chartType = self->_chartType;
    v36 = typeCopy;
    v37 = self->_chartType;
    self->_chartType = v36;
    v38 = chartType;

    v43 = objc_msgSend_model(self, v39, v40, v41, v42);
    objc_msgSend_loadDefaultDataIfNotDirtyWithGridRowIds_gridColumnIds_forDocumentLocale_(v43, v44, v45, v46, v47, idsCopy, columnIdsCopy, localeCopy);
    objc_msgSend_invalidateModel(v43, v48, v49, v50, v51);
    v56 = objc_msgSend_pairWithFirst_second_(MEMORY[0x277D812A8], v52, v53, v54, v55, v38, v36);

    objc_msgSend_chartTypeDidChangeWithDetails_(self, v57, v58, v59, v60, v56);
    if (defaultsCopy)
    {
      objc_msgSend_setDefaultLegendPositionIfNeededWithOptionalLayout_(self, v61, v62, v63, v64, 0);
    }
  }
}

- (BOOL)gridEqualToDefaultGrid
{
  v6 = objc_msgSend_model(self, a2, v2, v3, v4);
  v11 = objc_msgSend_grid(v6, v7, v8, v9, v10);

  v12 = objc_alloc_init(TSCHChartGrid);
  v13 = self->_chartType;
  v18 = objc_msgSend_documentRoot(self, v14, v15, v16, v17);
  v23 = objc_msgSend_documentLocale(v18, v19, v20, v21, v22);

  v28 = objc_msgSend_defaultDataRowCountForChartType_forDocumentLocale_(self, v24, v25, v26, v27, v13, v23);
  v33 = objc_msgSend_defaultDataColumnCountForChartType_forDocumentLocale_(self, v29, v30, v31, v32, v13, v23);
  if (v28 == objc_msgSend_numberOfRows(v11, v34, v35, v36, v37) && v33 == objc_msgSend_numberOfColumns(v11, v38, v39, v40, v41))
  {
    v47 = objc_msgSend_defaultDataFileName(v13, v42, v43, v44, v45);
    if (v47)
    {
      v52 = objc_msgSend_URLForResource_withExtension_subdirectory_(v23, v46, v48, v49, v50, v47, 0, 0);
      if (v52)
      {
        v56 = objc_msgSend_dictionaryWithContentsOfURL_(MEMORY[0x277CBEAC0], v51, v53, v54, v55, v52);
        v61 = v56;
        if (v56)
        {
          v62 = objc_msgSend_objectForKey_(v56, v57, v58, v59, v60, @"Grid");
          v67 = objc_msgSend_rowIds(v11, v63, v64, v65, v66);
          v72 = objc_msgSend_columnIds(v11, v68, v69, v70, v71);
          objc_msgSend_takeDataFromDictionary_rowIds_columnIds_(v12, v73, v74, v75, v76, v62, v67, v72);
        }
      }
    }

    v77 = objc_msgSend_contentsEqualToGrid_(v11, v46, v48, v49, v50, v12);
  }

  else
  {
    v77 = 0;
  }

  return v77;
}

- (id)p_getLocalizableDefaultDataDictionaryForChartType:(id)type forDocumentLocale:(id)locale
{
  localeCopy = locale;
  v11 = objc_msgSend_defaultDataFileName(type, v6, v7, v8, v9);
  if (v11)
  {
    if (!localeCopy)
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v12, v13, v14, "[TSCHChartInfo p_getLocalizableDefaultDataDictionaryForChartType:forDocumentLocale:]");
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 1470, 0, "invalid nil value for '%{public}s'", "documentLocale");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
    }

    v31 = objc_msgSend_URLForResource_withExtension_subdirectory_(localeCopy, v10, v12, v13, v14, v11, 0, 0);
    if (v31 && (objc_msgSend_dictionaryWithContentsOfURL_(MEMORY[0x277CBEAC0], v30, v32, v33, v34, v31), (v35 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v40 = v35;
      v41 = objc_msgSend_objectForKey_(v35, v36, v37, v38, v39, @"Grid");
      v46 = objc_msgSend_objectForKey_(v41, v42, v43, v44, v45, @"_LOCALIZABLE_");
    }

    else
    {
      v46 = 0;
    }
  }

  else
  {
    v46 = 0;
  }

  return v46;
}

- (unint64_t)defaultDataRowCountForChartType:(id)type forDocumentLocale:(id)locale
{
  v7 = objc_msgSend_p_getLocalizableDefaultDataDictionaryForChartType_forDocumentLocale_(self, a2, v4, v5, v6, type, locale);
  v12 = v7;
  if (v7)
  {
    v13 = objc_msgSend_objectForKey_(v7, v8, v9, v10, v11, @"RowNames");
    v18 = objc_msgSend_count(v13, v14, v15, v16, v17);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (unint64_t)defaultDataColumnCountForChartType:(id)type forDocumentLocale:(id)locale
{
  v7 = objc_msgSend_p_getLocalizableDefaultDataDictionaryForChartType_forDocumentLocale_(self, a2, v4, v5, v6, type, locale);
  v12 = v7;
  if (v7)
  {
    v13 = objc_msgSend_objectForKey_(v7, v8, v9, v10, v11, @"ColumnNames");
    v18 = objc_msgSend_count(v13, v14, v15, v16, v17);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (double)p_titleAccommodationWithLegendSize:(CGSize)size optionalLayout:(id)layout
{
  height = size.height;
  layoutCopy = layout;
  v12 = objc_msgSend_chartType(self, v7, v8, v9, v10);
  if (!v12)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v13, v14, v15, "[TSCHChartInfo p_titleAccommodationWithLegendSize:optionalLayout:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 1517, 0, "invalid nil value for '%{public}s'", "chartType");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  if (objc_msgSend_approximatesTitleAccommodationUsingLegendSize(v12, v11, v13, v14, v15))
  {
    v31 = height + height;
    goto LABEL_17;
  }

  context = objc_autoreleasePoolPush();
  if (!layoutCopy)
  {
    v36 = objc_msgSend_chartLayoutWithChartInfo_(TSCHChartLayout, v32, v33, v34, v35, self);
    goto LABEL_9;
  }

  v36 = layoutCopy;
  if (!objc_msgSend_isValid(v36, v37, v38, v39, v40))
  {
LABEL_9:
    v52 = objc_msgSend_geometry(self, v41, v42, v43, v44);
    objc_msgSend_size(v52, v53, v54, v55, v56);
    v49 = v57;
    v51 = v58;

    goto LABEL_10;
  }

  objc_msgSend_chartBodyFrame(v36, v41, v42, v43, v44);
  v49 = v48;
  v51 = v50;
LABEL_10:
  v59 = objc_msgSend_intValueForProperty_defaultValue_(self, v45, v46, v47, v48, 1114, 0);
  objc_msgSend_layoutForChartBodySize_(v36, v60, v49, v51, v61);
  objc_msgSend_chartAreaFrame(v36, v62, v63, v64, v65);
  v67 = v66;
  objc_msgSend_invalidate(v36, v68, v69, v70, v71);
  v72 = MEMORY[0x277CBEAC0];
  v77 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v73, v74, v75, v76, v59 == 0);
  v82 = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], v78, v79, v80, v81, 1114);
  v87 = objc_msgSend_dictionaryWithObject_forKey_(v72, v83, v84, v85, v86, v77, v82);

  v92 = objc_msgSend_p_swapTuplesForMutations_(self, v88, v89, v90, v91, v87);
  v97 = objc_msgSend_applyStyleSwapTuples_(self, v93, v94, v95, v96, v92);

  objc_msgSend_layoutForChartBodySize_(v36, v98, v49, v51, v99);
  objc_msgSend_chartAreaFrame(v36, v100, v101, v102, v103);
  v109 = v59 == 0;
  v110 = v59 != 0;
  if (v109)
  {
    v111 = v67;
  }

  else
  {
    v111 = v108;
  }

  if (v109)
  {
    v112 = v108;
  }

  else
  {
    v112 = v67;
  }

  objc_msgSend_invalidate(v36, v104, v105, v106, v107);
  v113 = MEMORY[0x277CBEAC0];
  v118 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v114, v115, v116, v117, v110);
  v123 = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], v119, v120, v121, v122, 1114);
  v128 = objc_msgSend_dictionaryWithObject_forKey_(v113, v124, v125, v126, v127, v118, v123);

  v133 = objc_msgSend_p_swapTuplesForMutations_(self, v129, v130, v131, v132, v128);
  v138 = objc_msgSend_applyStyleSwapTuples_(self, v134, v135, v136, v137, v133);

  v31 = fmax(v112 - v111, 0.0);
  objc_autoreleasePoolPop(context);
LABEL_17:

  return v31;
}

- (double)p_dataSetNameAccomodationWithOptionalLayout:(id)layout
{
  v110[1] = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  v9 = objc_msgSend_chartType(self, v5, v6, v7, v8);
  if (objc_msgSend_isMultiData(v9, v10, v11, v12, v13))
  {
    v18 = objc_msgSend_intValueForProperty_defaultValue_(self, v14, v15, v16, v17, 1098, 0);

    v23 = 0.0;
    if (v18 != 1)
    {
      if (layoutCopy)
      {
        v24 = layoutCopy;
        if (objc_msgSend_isValid(v24, v25, v26, v27, v28))
        {
          objc_msgSend_chartBodyFrame(v24, v29, v30, v31, v32);
          v34 = v33;
          v36 = v35;
          objc_msgSend_layoutForChartBodySize_(v24, v37, v33, v35, v33);
LABEL_9:
          objc_msgSend_chartBodyFrame(v24, v38, v39, v40, v41);
          v52 = v51;
          v54 = v53;
          v56 = v55;
          v58 = v57;
          objc_msgSend_invalidate(v24, v59, v51, v53, v55);
          v109 = &unk_28856BFD8;
          v110[0] = &unk_28856BFF0;
          v64 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v60, v61, v62, v63, v110, &v109, 1);
          v69 = objc_msgSend_p_swapTuplesForMutations_(self, v65, v66, v67, v68, v64);
          v74 = objc_msgSend_applyStyleSwapTuples_(self, v70, v71, v72, v73, v69);

          objc_msgSend_layoutForChartBodySize_(v24, v75, v34, v36, v76);
          objc_msgSend_chartBodyFrame(v24, v77, v78, v79, v80);
          v82 = v81;
          v84 = v83;
          v86 = v85;
          v88 = v87;
          objc_msgSend_invalidate(v24, v89, v81, v83, v85);
          v107 = &unk_28856BFD8;
          v108 = &unk_28856C008;
          v94 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v90, v91, v92, v93, &v108, &v107, 1);
          v99 = objc_msgSend_p_swapTuplesForMutations_(self, v95, v96, v97, v98, v94);
          v104 = objc_msgSend_applyStyleSwapTuples_(self, v100, v101, v102, v103, v99);

          v111.origin.x = v82;
          v111.origin.y = v84;
          v111.size.width = v86;
          v111.size.height = v88;
          MaxY = CGRectGetMaxY(v111);
          v112.origin.x = v52;
          v112.origin.y = v54;
          v112.size.width = v56;
          v112.size.height = v58;
          v23 = MaxY - CGRectGetMaxY(v112) + 5.0;

          goto LABEL_10;
        }
      }

      else
      {
        v24 = objc_msgSend_chartLayoutWithChartInfo_(TSCHChartLayout, v19, v20, v21, v22, self);
      }

      v42 = objc_msgSend_geometry(self, v29, v30, v31, v32);
      objc_msgSend_size(v42, v43, v44, v45, v46);
      v34 = v47;
      v36 = v48;

      objc_msgSend_layoutForChartBodySize_(v24, v49, v34, v36, v50);
      goto LABEL_9;
    }
  }

  else
  {

    v23 = 0.0;
  }

LABEL_10:

  return v23;
}

- (void)setDefaultLegendPositionIfNeededWithOptionalLayout:(id)layout
{
  objc_msgSend_calculateDefaultLegendPositionIfNeededWithOptionalLayout_(self, a2, v3, v4, v5, layout);
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  if (!CGRectIsNull(v26))
  {
    v15 = objc_msgSend_legend(self, v11, v12, v13, v14);
    objc_msgSend_setLegendOffset_(v15, v16, x, y, v17);

    v24 = objc_msgSend_legend(self, v18, v19, v20, v21);
    objc_msgSend_setLegendSize_(v24, v22, width, height, v23);
  }
}

- (CGRect)calculateDefaultLegendPositionIfNeededWithOptionalLayout:(id)layout
{
  layoutCopy = layout;
  v9 = objc_msgSend_legend(self, v5, v6, v7, v8);
  objc_msgSend_legendSize(v9, v10, v11, v12, v13);
  v14 = MEMORY[0x277CBF3A8];
  v15 = TSUNearlyEqualSizes();

  if (v15)
  {
    v21 = objc_msgSend_geometry(self, v16, v17, v18, v19);
    if (v21)
    {
      if (layoutCopy)
      {
        v25 = layoutCopy;
      }

      else
      {
        v25 = objc_msgSend_chartLayoutWithChartInfo_(TSCHChartLayout, v20, v22, v23, v24, self);
      }

      v45 = v25;
      v46 = objc_msgSend_intValueForProperty_defaultValue_(self, v26, v27, v28, v29, 1114, 0);
      objc_msgSend_size(v21, v47, v48, v49, v50);
      objc_msgSend_layoutForChartBodySize_(v45, v51, v52, v53, v54);
      objc_msgSend_chartAreaFrame(v45, v55, v56, v57, v58);
      v60 = v59;
      objc_msgSend_chartBodyFrame(v45, v61, v62, v63, v59);
      v66 = v60 + -80.0;
      if (v60 * 0.9 >= v60 + -80.0)
      {
        objc_msgSend_legendSizeForChartInfo_initialWidth_(TSCHChartLayout, v64, v60 * 0.9, v66, v65, self);
      }

      else
      {
        objc_msgSend_legendSizeForChartInfo_initialWidth_(TSCHChartLayout, v64, v60 + -80.0, v66, v65, self);
      }

      v69 = v67;
      v70 = v68;
      TSURectWithOriginAndSize();
      if (!v46)
      {
        objc_msgSend_p_titleAccommodationWithLegendSize_optionalLayout_(self, v71, v69, v70, v74, v45);
      }

      objc_msgSend_p_dataSetNameAccomodationWithOptionalLayout_(self, v71, v72, v73, v74, v45);
      v75 = *(MEMORY[0x277CBF398] + 16);
      v93[0] = *MEMORY[0x277CBF398];
      v93[1] = v75;
      v92[0] = v93[0];
      v92[1] = v75;
      v90 = v93[0];
      v91 = v75;
      sub_276283170(0, v93, v92, &v90);
      v89 = *MEMORY[0x277CBF348];
      v88 = *v14;
      sub_27628348C(&v89, &v88, v76, v77, v78, v79, v80, v81, v90, *(&v90 + 1), v91, *(&v91 + 1));
      v86 = v89;
      v87 = v88;
    }

    else
    {
      v30 = MEMORY[0x277D81150];
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v22, v23, v24, "[TSCHChartInfo calculateDefaultLegendPositionIfNeededWithOptionalLayout:]");
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v37, v38, v39, v40, v31, v36, 1614, 0, "invalid nil value for '%{public}s'", "geometry");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43, v44);
      v86 = *MEMORY[0x277CBF398];
      v87 = *(MEMORY[0x277CBF398] + 16);
    }
  }

  else
  {
    v86 = *MEMORY[0x277CBF398];
    v87 = *(MEMORY[0x277CBF398] + 16);
  }

  v82 = *&v86;
  v83 = *&v87;
  v84 = *(&v86 + 1);
  v85 = *(&v87 + 1);
  result.size.height = v85;
  result.size.width = v83;
  result.origin.y = v84;
  result.origin.x = v82;
  return result;
}

- (Class)repClass
{
  v5 = objc_msgSend_chartType(self, a2, v2, v3, v4);
  v10 = objc_msgSend_repClass(v5, v6, v7, v8, v9);

  return v10;
}

- (Class)layoutClass
{
  v5 = objc_msgSend_chartType(self, a2, v2, v3, v4);
  v10 = objc_msgSend_layoutClass(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)isPhantom
{
  mediator = self->_mediator;
  if (mediator)
  {
    LOBYTE(mediator) = objc_msgSend_isPhantom(mediator, a2, v2, v3, v4);
  }

  return mediator;
}

- (id)paragraphStyleAtIndex:(unint64_t)index
{
  styleViewProxyParagraphStyleArray = self->_styleViewProxyParagraphStyleArray;
  if (!styleViewProxyParagraphStyleArray)
  {
    styleViewProxyParagraphStyleArray = self->_paragraphStyles;
  }

  v5 = styleViewProxyParagraphStyleArray;
  objc_msgSend_count(v5, v6, v7, v8, v9);
  if (objc_msgSend_count(v5, v10, v11, v12, v13) <= index)
  {
    objc_msgSend_objectAtIndexedSubscript_(v5, v14, v15, v16, v17, 0);
  }

  else
  {
    objc_msgSend_objectAtIndexedSubscript_(v5, v14, v15, v16, v17, index);
  }
  v18 = ;

  return v18;
}

- (NSArray)paragraphStyles
{
  styleViewProxyParagraphStyleArray = self->_styleViewProxyParagraphStyleArray;
  if (!styleViewProxyParagraphStyleArray)
  {
    styleViewProxyParagraphStyleArray = self->_paragraphStyles;
  }

  v7 = objc_msgSend_copy(styleViewProxyParagraphStyleArray, a2, v2, v3, v4);

  return v7;
}

- (unint64_t)addParagraphStyle:(id)style
{
  styleCopy = style;
  v10 = objc_msgSend_indexOfObject_(self->_paragraphStyles, v5, v6, v7, v8, styleCopy);
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = objc_msgSend_count(self->_paragraphStyles, v9, v11, v12, v13);
    objc_msgSend_addObject_(self->_paragraphStyles, v14, v15, v16, v17, styleCopy);
  }

  return v10;
}

- (TSKDocumentRoot)documentRoot
{
  v5 = objc_msgSend_drawableInfo(self, a2, v2, v3, v4);
  v10 = objc_msgSend_documentRoot(v5, v6, v7, v8, v9);

  return v10;
}

- (TSSStylesheet)documentStylesheet
{
  v5 = objc_msgSend_documentRoot(self, a2, v2, v3, v4);
  v10 = objc_msgSend_stylesheet(v5, v6, v7, v8, v9);

  return v10;
}

- (int)specificPropertyForGeneric:(int)generic
{
  v6 = *&generic;
  v9 = objc_msgSend_genericToSpecificPropertyMap(self->_chartType, a2, v3, v4, v5);
  if (!v9)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v10, v11, v12, "[TSCHChartInfo specificPropertyForGeneric:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 1738, 0, "invalid nil value for '%{public}s'", "map");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  if (objc_msgSend_containsKey_(v9, v8, v10, v11, v12, v6))
  {
    v32 = objc_msgSend_intForKey_(v9, v28, v29, v30, v31, v6);
  }

  else
  {
    v32 = objc_msgSend_defaultPropertyForGeneric_(self, v28, v29, v30, v31, v6);
  }

  return v32;
}

- (int)defaultPropertyForGeneric:(int)generic
{
  v7 = objc_msgSend_p_genericToDefaultPropertyMap(self, a2, v3, v4, v5);
  if (objc_msgSend_containsKey_(v7, v8, v9, v10, v11, generic))
  {
    v16 = objc_msgSend_intForKey_(v7, v12, v13, v14, v15, generic);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (int)intValueForProperty:(int)property defaultValue:(int)value
{
  v6 = 0;
  if (sub_2762E5130(self, self->_style, self->_nonStyle, *&property, &v6))
  {
    return v6;
  }

  else
  {
    return value;
  }
}

- (float)floatValueForProperty:(int)property defaultValue:(float)value
{
  v7 = 0.0;
  v5 = sub_2762E5658(self, self->_style, self->_nonStyle, *&property, &v7);
  result = v7;
  if (!v5)
  {
    return value;
  }

  return result;
}

- (id)objectValueForProperty:(int)property
{
  v3 = *&property;
  style = self->_style;
  nonStyle = self->_nonStyle;
  v9 = 0;
  v6 = sub_2762E579C(self, style, nonStyle, v3, &v9);
  v7 = v9;
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {

    v7 = 0;
  }

  return v7;
}

- (id)nonstyle
{
  v3 = objc_opt_class();
  nonStyle = self->_nonStyle;

  return sub_2762CD788(v3, nonStyle);
}

- (id)defaultProperties
{
  v5 = objc_msgSend_g_genericToDefaultPropertyMap(self, a2, v2, v3, v4);
  v10 = objc_msgSend_arrayOfBoxedKeys(v5, v6, v7, v8, v9);

  return v10;
}

- (id)transformedTuplesWithTuple:(id)tuple
{
  v4 = MEMORY[0x277CBEB18];
  tupleCopy = tuple;
  v6 = objc_alloc_init(v4);
  objc_msgSend_addObject_(v6, v7, v8, v9, v10, tupleCopy);
  v15 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v11, v12, v13, v14);
  v20 = objc_msgSend_mutations(tupleCopy, v16, v17, v18, v19);

  v25 = objc_msgSend_objectForKeyedSubscript_(v20, v21, v22, v23, v24, &unk_28856C020);

  if (v25)
  {
    v30 = objc_msgSend_null(MEMORY[0x277CBEB68], v26, v27, v28, v29);
    objc_msgSend_setObject_forKeyedSubscript_(v15, v31, v32, v33, v34, v30, &unk_28856C038);
  }

  v35 = [TSCHPropertyMutationTuple alloc];
  v40 = objc_msgSend_chartInfo(self, v36, v37, v38, v39);
  v45 = objc_msgSend_initWithStyleOwner_mutations_(v35, v41, v42, v43, v44, v40, v15);

  objc_msgSend_addObject_(v6, v46, v47, v48, v49, v45);
  v54 = objc_msgSend_copy(v6, v50, v51, v52, v53);

  return v54;
}

+ (id)swapTuplesForParagraphStyleMutations:(id)mutations forReferencingProperty:(int)property forStyleOwner:(id)owner
{
  v6 = *&property;
  v172[1] = *MEMORY[0x277D85DE8];
  mutationsCopy = mutations;
  ownerCopy = owner;
  if (!ownerCopy)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v10, v11, v12, "+[TSCHChartInfo swapTuplesForParagraphStyleMutations:forReferencingProperty:forStyleOwner:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 1852, 0, "invalid nil value for '%{public}s'", "styleOwner");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v28 = objc_msgSend_paragraphStyleIndexProperties(TSCHChartInfo, v8, v10, v11, v12);
  v33 = objc_msgSend_specificPropertyForGeneric_(ownerCopy, v29, v30, v31, v32, v6);
  if ((objc_msgSend_containsProperty_(v28, v34, v35, v36, v37, v33) & 1) == 0)
  {
    v42 = objc_msgSend_defaultPropertyForGeneric_(ownerCopy, v38, v39, v40, v41, v6);
    if ((objc_msgSend_containsProperty_(v28, v43, v44, v45, v46, v42) & 1) == 0)
    {
      v152 = MEMORY[0x277D81150];
      v153 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, "+[TSCHChartInfo swapTuplesForParagraphStyleMutations:forReferencingProperty:forStyleOwner:]");
      v158 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v154, v155, v156, v157, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v152, v159, v160, v161, v162, v153, v158, 1855, 0, "Not a paragraphStyle index property");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v163, v164, v165, v166);
LABEL_12:
      v82 = 0;
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

  v72 = sub_2762F40C4(mutationsCopy);
  v78 = objc_msgSend_variationOfStyle_propertyMap_(v71, v73, v74, v75, v76, v61, v72);
  if (v78 == v61)
  {
    v82 = 0;
  }

  else
  {
    v169 = v72;
    v170 = v71;
    v82 = objc_msgSend_array(MEMORY[0x277CBEB18], v77, v79, v80, v81);
    v87 = objc_msgSend_chartInfo(ownerCopy, v83, v84, v85, v86);
    v92 = objc_msgSend_chartStyleState(v87, v88, v89, v90, v91);

    v168 = v92;
    v97 = objc_msgSend_paragraphStyles(v92, v93, v94, v95, v96);
    v102 = objc_msgSend_indexOfObject_(v97, v98, v99, v100, v101, v78);

    if (v102 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v107 = objc_msgSend_chartInfo(ownerCopy, v103, v104, v105, v106);
      v112 = objc_msgSend_paragraphStyles(v107, v108, v109, v110, v111);
      v102 = objc_msgSend_count(v112, v113, v114, v115, v116);

      v117 = [TSCHStyleSwapUndoTuple alloc];
      v122 = objc_msgSend_chartInfo(ownerCopy, v118, v119, v120, v121);
      v127 = objc_msgSend_initWithChartInfo_swapType_index_oldValue_newValue_(v117, v123, v124, v125, v126, v122, 12, v102, 0, v78);

      objc_msgSend_addObject_(v82, v128, v129, v130, v131, v127);
    }

    v132 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v103, v104, v105, v106, v6);
    v171 = v132;
    v137 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v133, v134, v135, v136, v102);
    v172[0] = v137;
    v142 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v138, v139, v140, v141, v172, &v171, 1);
    v147 = objc_msgSend_swapTuplesForMutations_forImport_(ownerCopy, v143, v144, v145, v146, v142, 0);

    objc_msgSend_tsu_addObjectsFromNonNilArray_(v82, v148, v149, v150, v151, v147);
    v72 = v169;
    v71 = v170;
  }

LABEL_15:

  return v82;
}

+ (id)propertiesThatInvalidateModel
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276267B24;
  block[3] = &unk_27A6B6250;
  block[4] = self;
  if (qword_280A471C8 != -1)
  {
    dispatch_once(&qword_280A471C8, block);
  }

  v2 = qword_280A471C0;

  return v2;
}

+ (TSSPropertySet)paragraphStylePropertiesChartsUse
{
  if (qword_280A471D8 != -1)
  {
    sub_2764A7680();
  }

  v3 = qword_280A471D0;

  return v3;
}

+ (id)specificPropertiesThatCanContainCustomNumberFormats
{
  if (qword_280A471E8 != -1)
  {
    sub_2764A7694();
  }

  v3 = qword_280A471E0;

  return v3;
}

+ (id)specificPropertiesThatCanContainCustomDateFormats
{
  if (qword_280A471F8 != -1)
  {
    sub_2764A76A8();
  }

  v3 = qword_280A471F0;

  return v3;
}

+ (id)specificPropertiesThatCanContainCustomFormats
{
  v6 = objc_msgSend_specificPropertiesThatCanContainCustomDateFormats(self, a2, v2, v3, v4);
  v11 = objc_msgSend_specificPropertiesThatCanContainCustomNumberFormats(self, v7, v8, v9, v10);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_276267F30;
  v19[3] = &unk_27A6B6C90;
  v20 = v11;
  v21 = v6;
  v12 = v19;
  v13 = qword_280A47208;
  v14 = v6;
  v15 = v11;
  if (v13 != -1)
  {
    dispatch_once(&qword_280A47208, v12);
  }

  v16 = qword_280A47200;
  v17 = qword_280A47200;

  return v16;
}

+ (id)specificNumberFormatTypeProperties
{
  if (qword_280A47218 != -1)
  {
    sub_2764A76BC();
  }

  v3 = qword_280A47210;

  return v3;
}

- (id)fontNameForInspectors
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_model(self, a2, v2, v3, v4);
  objc_msgSend_valueAxisList(v6, v7, v8, v9, v10);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v11 = v44 = 0u;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, v13, v14, v15, &v41, v45, 16);
  if (v16)
  {
    v21 = v16;
    v22 = *v42;
    while (2)
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v42 != v22)
        {
          objc_enumerationMutation(v11);
        }

        v24 = *(*(&v41 + 1) + 8 * i);
        if (objc_msgSend_supportsAxisValueLabels(v24, v17, v18, v19, v20, v41))
        {
          v30 = objc_msgSend_intValueForProperty_defaultValue_(v24, v17, v18, v19, v20, 1034, 0);

          goto LABEL_11;
        }
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v17, v18, v19, v20, &v41, v45, 16);
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  v30 = objc_msgSend_intValueForProperty_defaultValue_(self, v25, v26, v27, v28, 1126, 0);
LABEL_11:
  v34 = objc_msgSend_paragraphStyleAtIndex_(self, v29, v31, v32, v33, v30, v41);
  v39 = objc_msgSend_valueForProperty_(v34, v35, v36, v37, v38, 16);

  return v39;
}

- (void)p_designUpdateCategoryMajorGridlineStrokeWithCategoryAxisStyles:(id)styles valueAxisStyles:(id)axisStyles
{
  stylesCopy = styles;
  axisStylesCopy = axisStyles;
  v10 = objc_msgSend_count(axisStylesCopy, v6, v7, v8, v9);
  v15 = objc_msgSend_count(stylesCopy, v11, v12, v13, v14);
  if (v10 >= v15)
  {
    v20 = v15;
  }

  else
  {
    v20 = v10;
  }

  if (v20)
  {
    for (i = 0; i != v20; ++i)
    {
      v22 = objc_msgSend_objectAtIndexedSubscript_(axisStylesCopy, v16, v17, v18, v19, i);
      v27 = objc_msgSend_objectAtIndexedSubscript_(stylesCopy, v23, v24, v25, v26, i);
      v32 = objc_msgSend_valueForProperty_(v22, v28, v29, v30, v31, 1251);
      objc_msgSend_setValue_forProperty_(v27, v33, v34, v35, v36, v32, 1250);
    }
  }
}

- (void)p_designUpdateRadarPresetWithPresetIndex:(unint64_t)index seriesStyle:(id)style
{
  styleCopy = style;
  if (index <= 5)
  {
    v74 = styleCopy;
    if (((1 << index) & 9) != 0)
    {
      objc_msgSend_setBoolValue_forProperty_(styleCopy, v6, v7, v8, v9, 1, 1417);
      LODWORD(v61) = 1041865114;
      objc_msgSend_setFloatValue_forProperty_(v74, v62, v61, v63, v64, 1416);
    }

    else if (((1 << index) & 0x12) != 0)
    {
      objc_msgSend_setBoolValue_forProperty_(styleCopy, v6, v7, v8, v9, 0, 1417);
      v14 = objc_msgSend_valueForProperty_(v74, v10, v11, v12, v13, 1505);
      v19 = objc_msgSend_mutableCopy(v14, v15, v16, v17, v18);
      v24 = objc_msgSend_emptyPattern(MEMORY[0x277D803C8], v20, v21, v22, v23);
      objc_msgSend_setPattern_(v19, v25, v26, v27, v28, v24);

      objc_msgSend_setValue_forProperty_(v74, v29, v30, v31, v32, v19, 1505);
      objc_opt_class();
      v37 = objc_msgSend_valueForProperty_(v74, v33, v34, v35, v36, 1415);
      v38 = TSUDynamicCast();

      if (v38)
      {
        v43 = objc_msgSend_mutableCopy(v38, v39, v40, v41, v42);
        v48 = objc_msgSend_color(v38, v44, v45, v46, v47);
        v52 = objc_msgSend_colorWithAlphaComponent_(v48, v49, 0.5, v50, v51);
        objc_msgSend_setColor_(v43, v53, v54, v55, v56, v52);

        objc_msgSend_setValue_forProperty_(v74, v57, v58, v59, v60, v43, 1415);
      }
    }

    else
    {
      v65 = objc_msgSend_nullFill(TSCHStyleUtilities, v6, v7, v8, v9);
      objc_msgSend_setValue_forProperty_(v74, v66, v67, v68, v69, v65, 1415);

      objc_msgSend_setBoolValue_forProperty_(v74, v70, v71, v72, v73, 0, 1417);
    }

    styleCopy = v74;
  }
}

- (id)newChartStylePresetByExampleWithPresetIndex:(unint64_t)index withSeriesCount:(unint64_t)count forTheme:(id)theme designMode:(BOOL)mode
{
  modeCopy = mode;
  v426 = *MEMORY[0x277D85DE8];
  themeCopy = theme;
  selfCopy = self;
  v415 = objc_msgSend_chartStyleState(self, v9, v10, v11, v12);
  v17 = objc_msgSend_documentStylesheet(themeCopy, v13, v14, v15, v16);
  LODWORD(self) = objc_msgSend_isLocked(v17, v18, v19, v20, v21);
  objc_msgSend_setIsLocked_(v17, v22, v23, v24, v25, 0);
  v403 = themeCopy;
  selfCopy2 = self;
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v30 = objc_msgSend_presetStyleDescriptor(TSCHChartStyle, v26, v27, v28, v29);
    v35 = objc_msgSend_unusedStyleIdentifierWithPackageString_styleDescriptor_contentTag_(v17, v31, v32, v33, v34, @"chart", v30, 0);
  }

  else
  {
    v35 = objc_msgSend_chartStyleIdentifierForRoleIndex_(TSCHChartInfo, v26, v27, v28, v29, index);
  }

  v40 = objc_msgSend_chartStyle(v415, v36, v37, v38, v39);
  v45 = objc_msgSend_addDuplicateOfStyle_withIdentifier_(v17, v41, v42, v43, v44, v40, v35);

  v402 = v35;
  v400 = v45;
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v50 = objc_msgSend_presetStyleDescriptor(TSCHLegendStyle, v46, v47, v48, v49);
    v55 = objc_msgSend_unusedStyleIdentifierWithPackageString_styleDescriptor_contentTag_(v17, v51, v52, v53, v54, @"chart", v50, 0);
  }

  else
  {
    v55 = objc_msgSend_legendStyleIdentifierForRoleIndex_(TSCHChartInfo, v46, v47, v48, v49, index);
  }

  v60 = objc_msgSend_legendStyle(v415, v56, v57, v58, v59);
  v399 = v55;
  v398 = objc_msgSend_addDuplicateOfStyle_withIdentifier_(v17, v61, v62, v63, v64, v60, v55);

  v412 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v69 = objc_msgSend_valueAxisStyles(v415, v65, v66, v67, v68);
  v74 = objc_msgSend_count(v69, v70, v71, v72, v73);

  if (v74)
  {
    for (i = 0; i != v74; ++i)
    {
      if (index == 0x7FFFFFFFFFFFFFFFLL)
      {
        v80 = objc_msgSend_presetStyleDescriptorForValueStyleOrdinal_(TSCHChartAxisStyle, v75, v76, v77, v78, i);
        v85 = objc_msgSend_unusedStyleIdentifierWithPackageString_styleDescriptor_contentTag_(v17, v81, v82, v83, v84, @"chart", v80, 0);
      }

      else
      {
        v85 = objc_msgSend_identifierForValueStyleWithRoleIndex_ordinal_(TSCHChartAxisStyle, v75, v76, v77, v78, index, i);
      }

      v90 = objc_msgSend_valueAxisStyles(v415, v86, v87, v88, v89);
      v95 = objc_msgSend_objectAtIndexedSubscript_(v90, v91, v92, v93, v94, i);
      v100 = objc_msgSend_addDuplicateOfStyle_withIdentifier_(v17, v96, v97, v98, v99, v95, v85);

      objc_msgSend_addObject_(v412, v101, v102, v103, v104, v100);
    }
  }

  v411 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v109 = objc_msgSend_categoryAxisStyles(v415, v105, v106, v107, v108);
  v114 = objc_msgSend_count(v109, v110, v111, v112, v113);

  if (v114)
  {
    for (j = 0; j != v114; ++j)
    {
      if (index == 0x7FFFFFFFFFFFFFFFLL)
      {
        v120 = objc_msgSend_presetStyleDescriptorForCategoryStyleOrdinal_(TSCHChartAxisStyle, v115, v116, v117, v118, j);
        v125 = objc_msgSend_unusedStyleIdentifierWithPackageString_styleDescriptor_contentTag_(v17, v121, v122, v123, v124, @"chart", v120, 0);
      }

      else
      {
        v125 = objc_msgSend_identifierForCategoryStyleWithRoleIndex_ordinal_(TSCHChartAxisStyle, v115, v116, v117, v118, index, j);
      }

      v130 = objc_msgSend_categoryAxisStyles(v415, v126, v127, v128, v129);
      v135 = objc_msgSend_objectAtIndexedSubscript_(v130, v131, v132, v133, v134, j);
      v140 = objc_msgSend_addDuplicateOfStyle_withIdentifier_(v17, v136, v137, v138, v139, v135, v125);

      objc_msgSend_addObject_(v411, v141, v142, v143, v144, v140);
    }
  }

  if (modeCopy)
  {
    objc_msgSend_p_designUpdateCategoryMajorGridlineStrokeWithCategoryAxisStyles_valueAxisStyles_(selfCopy, v115, v116, v117, v118, v411, v412);
  }

  v410 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v149 = objc_msgSend_seriesPrivateStyles(v415, v145, v146, v147, v148);
  v154 = objc_msgSend_count(v149, v150, v151, v152, v153);

  v159 = objc_msgSend_seriesThemeStyles(v415, v155, v156, v157, v158);
  v164 = objc_msgSend_count(v159, v160, v161, v162, v163);

  v169 = modeCopy;
  if (count)
  {
    v170 = 0;
    do
    {
      if (v170 >= v154 || (v171 = objc_opt_class(), objc_msgSend_seriesPrivateStyles(v415, v172, v173, v174, v175), v176 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectAtIndexedSubscript_(v176, v177, v178, v179, v180, v170), v181 = objc_claimAutoreleasedReturnValue(), sub_2762CD788(v171, v181), v182 = objc_claimAutoreleasedReturnValue(), v181, v176, !v182))
      {
        if (v170 % v164 >= v154 || (v183 = objc_opt_class(), objc_msgSend_seriesPrivateStyles(v415, v184, v185, v186, v187), v188 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectAtIndexedSubscript_(v188, v189, v190, v191, v192, v170 % v164), v193 = objc_claimAutoreleasedReturnValue(), sub_2762CD788(v183, v193), v182 = objc_claimAutoreleasedReturnValue(), v193, v169 = modeCopy, v188, !v182))
        {
          v194 = objc_msgSend_seriesThemeStyles(v415, v165, v166, v167, v168);
          v182 = objc_msgSend_objectAtIndexedSubscript_(v194, v195, v196, v197, v198, v170 % v164);
        }
      }

      if (index == 0x7FFFFFFFFFFFFFFFLL)
      {
        v199 = objc_msgSend_presetStyleDescriptorForOrdinal_(TSCHChartSeriesStyle, v165, v166, v167, v168, v170);
        v204 = objc_msgSend_unusedStyleIdentifierWithPackageString_styleDescriptor_contentTag_(v17, v200, v201, v202, v203, @"chart", v199, 0);
      }

      else
      {
        v204 = objc_msgSend_seriesStyleIdentifierForRoleIndex_ordinal_(TSCHChartInfo, v165, v166, v167, v168, index, v170);
      }

      v210 = objc_msgSend_addDuplicateOfStyle_withIdentifier_(v17, v205, v206, v207, v208, v182, v204);
      if (v169)
      {
        objc_msgSend_p_designUpdateRadarPresetWithPresetIndex_seriesStyle_(selfCopy, v209, v211, v212, v213, index, v210);
      }

      objc_msgSend_addObject_(v410, v209, v211, v212, v213, v210);

      ++v170;
    }

    while (count != v170);
  }

  v214 = MEMORY[0x277D80EC8];
  v215 = objc_msgSend_context(selfCopy, v165, v166, v167, v168);
  v220 = objc_msgSend_defaultStyleWithContext_(v214, v216, v217, v218, v219, v215);
  v407 = objc_msgSend_fullPropertyMap(v220, v221, v222, v223, v224);

  v409 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v229 = objc_msgSend_paragraphStyles(v415, v225, v226, v227, v228);
  v234 = objc_msgSend_count(v229, v230, v231, v232, v233);

  if (v234)
  {
    for (k = 0; k != v234; ++k)
    {
      if (index == 0x7FFFFFFFFFFFFFFFLL)
      {
        v240 = objc_msgSend_presetStyleDescriptorForOrdinal_(MEMORY[0x277D80EC8], v235, v236, v237, v238, k);
        v245 = objc_msgSend_unusedStyleIdentifierWithPackageString_styleDescriptor_contentTag_(v17, v241, v242, v243, v244, @"chart", v240, 0);
      }

      else
      {
        v245 = objc_msgSend_paragraphStyleIdentifierForRoleIndex_ordinal_(TSCHChartInfo, v235, v236, v237, v238, index, k);
      }

      v250 = objc_msgSend_paragraphStyles(v415, v246, v247, v248, v249);
      v255 = objc_msgSend_objectAtIndexedSubscript_(v250, v251, v252, v253, v254, k);

      v260 = objc_msgSend_propertyMap(v255, v256, v257, v258, v259);
      v265 = objc_msgSend_copy(v260, v261, v262, v263, v264);

      v270 = objc_msgSend_paragraphStylePropertiesChartsUse(TSCHChartInfo, v266, v267, v268, v269);
      objc_msgSend_filterWithProperties_(v265, v271, v272, v273, v274, v270);

      v279 = objc_msgSend_copy(v407, v275, v276, v277, v278);
      objc_msgSend_addValuesFromPropertyMap_(v279, v280, v281, v282, v283, v265);
      v284 = objc_alloc(objc_opt_class());
      v289 = objc_msgSend_context(selfCopy, v285, v286, v287, v288);
      isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v284, v290, v291, v292, v293, v289, 0, v279, 0);

      objc_msgSend_addStyle_withIdentifier_(v17, v295, v296, v297, v298, isVariation, v245);
      objc_msgSend_addObject_(v409, v299, v300, v301, v302, isVariation);
    }
  }

  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v303 = objc_msgSend_presetStyleDescriptorForOrdinal_(TSCHReferenceLineStyle, v235, v236, v237, v238, 0);
    v308 = objc_msgSend_unusedStyleIdentifierWithPackageString_styleDescriptor_contentTag_(v17, v304, v305, v306, v307, @"chart", v303, 0);
  }

  else
  {
    v308 = objc_msgSend_referenceLineStyleIdentifierForRoleIndex_ordinal_(TSCHChartInfo, v235, v236, v237, v238, index, 0);
  }

  v422 = 0u;
  v423 = 0u;
  v420 = 0u;
  v421 = 0u;
  v312 = objc_msgSend_referenceLineStyles(v415, v309, 0.0, v310, v311);
  v405 = objc_msgSend_countByEnumeratingWithState_objects_count_(v312, v313, v314, v315, v316, &v420, v425, 16);
  v414 = v308;
  if (v405)
  {
    v321 = *v421;
    v397 = *v421;
    do
    {
      for (m = 0; m != v405; ++m)
      {
        if (*v421 != v321)
        {
          objc_enumerationMutation(v312);
        }

        v323 = *(*(&v420 + 1) + 8 * m);
        v324 = objc_msgSend_referenceLineStyles(v415, v317, v318, v319, v320);
        v329 = objc_msgSend_objectForKey_(v324, v325, v326, v327, v328, v323);

        v418 = 0u;
        v419 = 0u;
        v416 = 0u;
        v417 = 0u;
        v330 = v329;
        v335 = objc_msgSend_countByEnumeratingWithState_objects_count_(v330, v331, v332, v333, v334, &v416, v424, 16);
        if (v335)
        {
          v336 = v335;
          v337 = *v417;
          while (2)
          {
            for (n = 0; n != v336; ++n)
            {
              if (*v417 != v337)
              {
                objc_enumerationMutation(v330);
              }

              v339 = *(*(&v416 + 1) + 8 * n);
              v340 = objc_opt_class();
              v341 = sub_2762CD788(v340, v339);
              if (v341)
              {
                v351 = v341;

                v308 = v414;
                goto LABEL_61;
              }
            }

            v336 = objc_msgSend_countByEnumeratingWithState_objects_count_(v330, v342, v343, v344, v345, &v416, v424, 16);
            if (v336)
            {
              continue;
            }

            break;
          }
        }

        v321 = v397;
      }

      v308 = v414;
      v405 = objc_msgSend_countByEnumeratingWithState_objects_count_(v312, v317, v318, v319, v320, &v420, v425, 16);
    }

    while (v405);
  }

  v351 = objc_msgSend_referenceLineThemeStyle(v415, v346, v347, v348, v349);
  if (v351)
  {
LABEL_61:
    v365 = objc_msgSend_addDuplicateOfStyle_withIdentifier_(v17, v350, v352, v353, v354, v351, v308);
    v360 = v400;
  }

  else
  {
    v351 = objc_msgSend_firstObject(v410, v350, v352, v353, v354);
    v359 = objc_msgSend_firstObject(v412, v355, v356, v357, v358);
    v360 = v400;
    v365 = objc_msgSend_defaultStyleForPresetFromChartStyle_seriesStyle_paragraphStyles_valueAxisStyle_(TSCHReferenceLineStyle, v361, v362, v363, v364, v400, v351, v409, v359);
  }

  objc_msgSend_upgradeTrendLinesAndErrorBarsForSeriesPresets_valueAxisPresets_paragraphPresets_(TSCHChartStylePreset, v366, v367, v368, v369, v410, v412, v409);
  objc_msgSend_upgradeCalloutLineStylesForSeriesPresets_valueAxisPresets_paragraphPresets_(TSCHChartStylePreset, v370, v371, v372, v373, v410, v412, v409);
  objc_msgSend_upgradeDonutStylesForSeriesPresets_(TSCHChartStylePreset, v374, v375, v376, v377, v410);
  objc_msgSend_upgradeFor3DShadowPropertyMigrationFromChartStyle_seriesStyles_(TSCHChartStylePreset, v378, v379, v380, v381, v360, v410);
  v382 = [TSCHChartStylePreset alloc];
  v387 = objc_msgSend_context(v403, v383, v384, v385, v386);
  v406 = objc_msgSend_initWithContext_chartStyle_legendStyle_valueAxisStyles_categoryAxisStyles_seriesStyles_paragraphStyles_refLineStyle_(v382, v388, v389, v390, v391, v387, v360, v398, v412, v411, v410, v409, v365);

  objc_msgSend_setIsLocked_(v17, v392, v393, v394, v395, selfCopy2);
  return v406;
}

- (id)seriesStyleForSeries:(id)series
{
  seriesCopy = series;
  v9 = objc_msgSend_seriesIndex(seriesCopy, v5, v6, v7, v8);
  v14 = objc_msgSend_model(seriesCopy, v10, v11, v12, v13);
  v19 = objc_msgSend_chartInfo(v14, v15, v16, v17, v18);
  v24 = v19;
  if (v19 != self)
  {

LABEL_4:
    v35 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "[TSCHChartInfo seriesStyleForSeries:]");
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v42, v43, v44, v45, v36, v41, 2271, 0, "series of index %lu does not match model", v9);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48, v49);
    v50 = 0;
    goto LABEL_5;
  }

  v29 = objc_msgSend_model(seriesCopy, v20, v21, v22, v23);
  v34 = objc_msgSend_seriesAtIndex_(v29, v30, v31, v32, v33, v9);

  if (v34 != seriesCopy)
  {
    goto LABEL_4;
  }

  v50 = objc_msgSend_seriesStyleForSeriesIndex_(self, v25, v26, v27, v28, v9);
LABEL_5:

  return v50;
}

- (id)seriesNonStyleForSeries:(id)series
{
  seriesCopy = series;
  v9 = objc_msgSend_seriesIndex(seriesCopy, v5, v6, v7, v8);
  v14 = objc_msgSend_model(seriesCopy, v10, v11, v12, v13);
  v19 = objc_msgSend_chartInfo(v14, v15, v16, v17, v18);
  v24 = v19;
  if (v19 != self)
  {

LABEL_4:
    v35 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "[TSCHChartInfo seriesNonStyleForSeries:]");
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v42, v43, v44, v45, v36, v41, 2284, 0, "series of index %lu does not match model", v9);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48, v49);
    v50 = 0;
    goto LABEL_5;
  }

  v29 = objc_msgSend_model(seriesCopy, v20, v21, v22, v23);
  v34 = objc_msgSend_seriesAtIndex_(v29, v30, v31, v32, v33, v9);

  if (v34 != seriesCopy)
  {
    goto LABEL_4;
  }

  v50 = objc_msgSend_seriesNonstyleForSeriesIndex_(self, v25, v26, v27, v28, v9);
LABEL_5:

  return v50;
}

- (id)styleForAxis:(id)axis
{
  axisCopy = axis;
  v9 = objc_msgSend_axisList(self->_model, v5, v6, v7, v8);
  v14 = objc_msgSend_axisIndex(axisCopy, v10, v11, v12, v13);
  v19 = objc_msgSend_objectAtIndexedSubscript_(v9, v15, v16, v17, v18, v14);

  if (v19 != axisCopy)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "[TSCHChartInfo styleForAxis:]");
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v31, v32, v33, v34, v25, v30, 2300, 0, "chart info asked about an axis it doesn't own");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
  }

  v39 = objc_msgSend_styleIndex(axisCopy, v20, v21, v22, v23);
  if (objc_msgSend_isCategory(axisCopy, v40, v41, v42, v43))
  {
    objc_msgSend_categoryAxisStyleAtIndex_(self, v44, v45, v46, v47, v39);
  }

  else
  {
    objc_msgSend_valueAxisStyleAtIndex_(self, v44, v45, v46, v47, v39);
  }
  v48 = ;

  return v48;
}

- (id)nonStyleForAxis:(id)axis
{
  axisCopy = axis;
  v9 = objc_msgSend_axisIndex(axisCopy, v5, v6, v7, v8);
  v14 = objc_msgSend_model(axisCopy, v10, v11, v12, v13);
  v19 = objc_msgSend_axisList(v14, v15, v16, v17, v18);
  v24 = objc_msgSend_objectAtIndexedSubscript_(v19, v20, v21, v22, v23, v9);

  if (v24 != axisCopy)
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "[TSCHChartInfo nonStyleForAxis:]");
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v36, v37, v38, v39, v30, v35, 2310, 0, "chart info asked about an axis it doesn't own");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42, v43);
  }

  isCategory = objc_msgSend_isCategory(axisCopy, v25, v26, v27, v28);
  v50 = objc_msgSend_nonStyleIndex(axisCopy, v45, v46, v47, v48);
  if (isCategory)
  {
    objc_msgSend_categoryAxisNonstyleAtIndex_(self, v49, v51, v52, v53, v50);
  }

  else
  {
    objc_msgSend_valueAxisNonstyleAtIndex_(self, v49, v51, v52, v53, v50);
  }
  v54 = ;

  return v54;
}

- (id)seriesNonstyleForSeriesIndex:(unint64_t)index
{
  if (objc_msgSend_count(self->_seriesNonStyles, a2, v3, v4, v5) <= index)
  {
    v14 = 0;
  }

  else
  {
    v8 = objc_opt_class();
    v13 = objc_msgSend_objectAtIndexedSubscript_(self->_seriesNonStyles, v9, v10, v11, v12, index);
    v14 = sub_2762CD788(v8, v13);
  }

  return v14;
}

- (unint64_t)valueAxisStyleCount
{
  v6 = objc_msgSend_count(self->_valueAxisStyles, a2, v2, v3, v4);
  if (v6 != objc_msgSend_count(self->_valueAxisNonStyles, v7, v8, v9, v10))
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "[TSCHChartInfo valueAxisStyleCount]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 2355, 0, "value axis style and nonstyle count mismatch");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  valueAxisStyles = self->_valueAxisStyles;

  return objc_msgSend_count(valueAxisStyles, v11, v12, v13, v14);
}

- (unint64_t)categoryAxisStyleCount
{
  v6 = objc_msgSend_count(self->_categoryAxisStyles, a2, v2, v3, v4);
  if (v6 != objc_msgSend_count(self->_categoryAxisNonStyles, v7, v8, v9, v10))
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "[TSCHChartInfo categoryAxisStyleCount]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 2360, 0, "category axis style and nonstyle count mismatch");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  categoryAxisStyles = self->_categoryAxisStyles;

  return objc_msgSend_count(categoryAxisStyles, v11, v12, v13, v14);
}

- (id)valueAxisStyleAtIndex:(unint64_t)index
{
  objc_opt_class();
  v9 = objc_msgSend_objectAtIndexedSubscript_(self->_valueAxisStyles, v5, v6, v7, v8, index);
  v10 = TSUCheckedDynamicCast();

  return v10;
}

- (id)categoryAxisStyleAtIndex:(unint64_t)index
{
  objc_opt_class();
  v9 = objc_msgSend_objectAtIndexedSubscript_(self->_categoryAxisStyles, v5, v6, v7, v8, index);
  v10 = TSUCheckedDynamicCast();

  return v10;
}

- (id)valueAxisNonstyleAtIndex:(unint64_t)index
{
  v9 = objc_msgSend_count(self->_valueAxisNonStyles, a2, v3, v4, v5);
  if (!v9)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v10, v11, v12, "[TSCHChartInfo valueAxisNonstyleAtIndex:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 2376, 0, "No Axis NonStyles");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  if (v9 <= index || (objc_opt_class(), objc_msgSend_objectAtIndexedSubscript_(self->_valueAxisNonStyles, v28, v29, v30, v31, index), v32 = objc_claimAutoreleasedReturnValue(), TSUCheckedDynamicCast(), v33 = objc_claimAutoreleasedReturnValue(), v32, !v33))
  {
    v34 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v10, v11, v12, "[TSCHChartInfo valueAxisNonstyleAtIndex:]");
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v37, v38, v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v41, v42, v43, v44, v35, v40, 2385, 0, "invalid nil value for '%{public}s'", "retVal");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47, v48);
    v33 = 0;
  }

  return v33;
}

- (id)categoryAxisNonstyleAtIndex:(unint64_t)index
{
  v9 = objc_msgSend_count(self->_categoryAxisNonStyles, a2, v3, v4, v5);
  if (!v9)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v10, v11, v12, "[TSCHChartInfo categoryAxisNonstyleAtIndex:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 2392, 0, "No Axis NonStyles");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  if (v9 <= index || (objc_opt_class(), objc_msgSend_objectAtIndexedSubscript_(self->_categoryAxisNonStyles, v28, v29, v30, v31, index), v32 = objc_claimAutoreleasedReturnValue(), TSUCheckedDynamicCast(), v33 = objc_claimAutoreleasedReturnValue(), v32, !v33))
  {
    v34 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v10, v11, v12, "[TSCHChartInfo categoryAxisNonstyleAtIndex:]");
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v37, v38, v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v41, v42, v43, v44, v35, v40, 2401, 0, "invalid nil value for '%{public}s'", "retVal");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47, v48);
    v33 = 0;
  }

  return v33;
}

- (void)setValueAxisNonstyle:(id)nonstyle atIndex:(unint64_t)index
{
  nonstyleCopy = nonstyle;
  v6 = objc_opt_class();
  v8 = sub_2762CD788(v6, nonstyleCopy);
  if (v8)
  {
    objc_msgSend_willModify(self, v7, v9, v10, v11);
    v12 = self->_valueAxisNonStyles;
    objc_opt_class();
    v13 = TSUCheckedDynamicCast();

    objc_msgSend_replaceObjectAtIndex_withObject_(v13, v14, v15, v16, v17, index, nonstyleCopy);
  }
}

- (void)setCategoryAxisNonstyle:(id)nonstyle atIndex:(unint64_t)index
{
  nonstyleCopy = nonstyle;
  v6 = objc_opt_class();
  v8 = sub_2762CD788(v6, nonstyleCopy);
  if (v8)
  {
    objc_msgSend_willModify(self, v7, v9, v10, v11);
    v12 = self->_categoryAxisNonStyles;
    objc_opt_class();
    v13 = TSUCheckedDynamicCast();

    objc_msgSend_replaceObjectAtIndex_withObject_(v13, v14, v15, v16, v17, index, nonstyleCopy);
  }
}

- (void)setSeriesNonstyle:(id)nonstyle atIndex:(unint64_t)index
{
  nonstyleCopy = nonstyle;
  v6 = objc_opt_class();
  v8 = sub_2762CD788(v6, nonstyleCopy);
  if (!nonstyleCopy || v8)
  {
    v12 = objc_msgSend_null(MEMORY[0x277CBEB68], v7, v9, v10, v11);
    objc_msgSend_willModify(self, v13, v14, v15, v16);
    if (objc_msgSend_count(self->_seriesNonStyles, v17, v18, v19, v20) <= index)
    {
      v25 = index - objc_msgSend_count(self->_seriesNonStyles, v21, v22, v23, v24) + 1;
      if (v25 >= 1)
      {
        do
        {
          v26 = self->_seriesNonStyles;
          objc_opt_class();
          v27 = TSUCheckedDynamicCast();

          objc_msgSend_addObject_(v27, v28, v29, v30, v31, v12);
          --v25;
        }

        while (v25);
      }
    }

    if (v8)
    {
      objc_msgSend_replaceObjectAtIndex_withObject_(self->_seriesNonStyles, v21, v22, v23, v24, index, v8);
    }

    else
    {
      objc_msgSend_replaceObjectAtIndex_withObject_(self->_seriesNonStyles, v21, v22, v23, v24, index, v12);
    }
  }
}

- (void)setChartNonstyle:(id)nonstyle
{
  nonstyleCopy = nonstyle;
  v5 = objc_opt_class();
  obj = sub_2762CD788(v5, nonstyleCopy);

  if (obj)
  {
    objc_msgSend_willModify(self, v6, v7, v8, v9);
    objc_storeStrong(&self->_nonStyle, obj);
  }
}

- (id)referenceLineStyleForAxisID:(id)d atIndex:(unint64_t)index privateStyleOnly:(BOOL)only
{
  v10 = objc_msgSend_objectForKey_(self->_refLineStylesMap, a2, v5, v6, v7, d);
  v15 = v10;
  if (v10 && objc_msgSend_count(v10, v11, v12, v13, v14) > index)
  {
    v16 = objc_opt_class();
    v21 = objc_msgSend_objectAtIndexedSubscript_(v15, v17, v18, v19, v20, index);
    v22 = sub_2762CD788(v16, v21);

    if (v22)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v22 = 0;
  }

  if (!only)
  {
    objc_opt_class();
    v22 = TSUCheckedDynamicCast();
  }

LABEL_8:

  return v22;
}

- (id)referenceLineNonStyleForAxisID:(id)d atIndex:(unint64_t)index
{
  v8 = objc_msgSend_objectForKey_(self->_refLineNonStylesMap, a2, v4, v5, v6, d);
  v13 = v8;
  if (!v8 || objc_msgSend_count(v8, v9, v10, v11, v12) <= index || (objc_opt_class(), objc_msgSend_objectAtIndexedSubscript_(v13, v14, v15, v16, v17, index), v18 = objc_claimAutoreleasedReturnValue(), TSUCheckedDynamicCast(), v19 = objc_claimAutoreleasedReturnValue(), v18, objc_msgSend_nonStyle(v19, v20, v21, v22, v23), v24 = objc_claimAutoreleasedReturnValue(), v19, !v24))
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCHChartInfo referenceLineNonStyleForAxisID:atIndex:]");
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v32, v33, v34, v35, v26, v31, 2485, 0, "invalid nil value for '%{public}s'", "retVal");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39);
    v24 = 0;
  }

  return v24;
}

- (unint64_t)p_refLineIndexWithUUID:(id)d nonStyleItems:(id)items
{
  v33 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  itemsCopy = items;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(itemsCopy, v7, v8, v9, v10, &v28, v32, 16);
  if (v11)
  {
    v16 = v11;
    v17 = 0;
    v18 = *v29;
LABEL_3:
    v19 = 0;
    v20 = v17;
    v17 += v16;
    while (1)
    {
      if (*v29 != v18)
      {
        objc_enumerationMutation(itemsCopy);
      }

      v21 = objc_msgSend_uuid(*(*(&v28 + 1) + 8 * v19), v12, v13, v14, v15, v28);
      isEqual = objc_msgSend_isEqual_(dCopy, v22, v23, v24, v25, v21);

      if (isEqual)
      {
        break;
      }

      ++v20;
      if (v16 == ++v19)
      {
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(itemsCopy, v12, v13, v14, v15, &v28, v32, 16);
        if (v16)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v20 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v20;
}

- (id)referenceLineNonStyleForAxisID:(id)d uuid:(id)uuid outIndex:(unint64_t *)index
{
  refLineNonStylesMap = self->_refLineNonStylesMap;
  uuidCopy = uuid;
  v14 = objc_msgSend_objectForKey_(refLineNonStylesMap, v10, v11, v12, v13, d);
  v19 = objc_msgSend_p_refLineIndexWithUUID_nonStyleItems_(self, v15, v16, v17, v18, uuidCopy, v14);

  if (index)
  {
    *index = v19;
  }

  if (v19 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = 0;
  }

  else
  {
    objc_opt_class();
    v25 = objc_msgSend_objectAtIndexedSubscript_(v14, v21, v22, v23, v24, v19);
    v26 = TSUCheckedDynamicCast();
    v20 = objc_msgSend_nonStyle(v26, v27, v28, v29, v30);
  }

  return v20;
}

- (id)referenceLineNonStyleItemsForAxisID:(id)d
{
  dCopy = d;
  objc_opt_class();
  v9 = objc_msgSend_objectForKeyedSubscript_(self->_refLineNonStylesMap, v5, v6, v7, v8, dCopy);

  v10 = TSUCheckedDynamicCast();

  return v10;
}

- (void)setReferenceLineNonStyleItem:(id)item forAxisID:(id)d atIndex:(unint64_t)index
{
  itemCopy = item;
  dCopy = d;
  objc_msgSend_willModify(self, v9, v10, v11, v12);
  refLineNonStylesMap = self->_refLineNonStylesMap;
  v14 = objc_opt_class();
  v19 = objc_msgSend_tsu_objectForKey_withDefaultOfClass_(refLineNonStylesMap, v15, v16, v17, v18, dCopy, v14);

  if (objc_msgSend_count(v19, v20, v21, v22, v23) <= index)
  {
    if (objc_msgSend_count(v19, v24, v25, v26, v27) == index)
    {
      objc_msgSend_addObject_(v19, v28, v29, v30, v31, itemCopy);
    }

    else
    {
      v32 = MEMORY[0x277D81150];
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "[TSCHChartInfo setReferenceLineNonStyleItem:forAxisID:atIndex:]");
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v39, v40, v41, v42, v33, v38, 2523, 0, "setting Reference Line nonstyle item at %lu is not valid", index);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45, v46);
    }
  }

  else
  {
    objc_msgSend_replaceObjectAtIndex_withObject_(v19, v24, v25, v26, v27, index, itemCopy);
  }
}

- (void)setReferenceLineStyle:(id)style forAxisID:(id)d atIndex:(unint64_t)index
{
  styleCopy = style;
  dCopy = d;
  if (!styleCopy)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v10, v11, v12, "[TSCHChartInfo setReferenceLineStyle:forAxisID:atIndex:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 2528, 0, "invalid nil value for '%{public}s'", "style");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  objc_msgSend_willModify(self, v8, v10, v11, v12);
  refLineStylesMap = self->_refLineStylesMap;
  v29 = objc_opt_class();
  v34 = objc_msgSend_tsu_objectForKey_withDefaultOfClass_(refLineStylesMap, v30, v31, v32, v33, dCopy, v29);
  if (objc_msgSend_count(v34, v35, v36, v37, v38) <= index)
  {
    do
    {
      v43 = v34;
      objc_opt_class();
      v44 = TSUCheckedDynamicCast();

      v49 = objc_msgSend_null(MEMORY[0x277CBEB68], v45, v46, v47, v48);
      objc_msgSend_addObject_(v44, v50, v51, v52, v53, v49);
    }

    while (objc_msgSend_count(v43, v54, v55, v56, v57) <= index);
  }

  objc_msgSend_replaceObjectAtIndex_withObject_(v34, v39, v40, v41, v42, index, styleCopy);
}

- (void)addReferenceLineForAxisID:(id)d nonStyle:(id)style style:(id)a5 uuid:(id)uuid
{
  dCopy = d;
  v10 = a5;
  refLineNonStylesMap = self->_refLineNonStylesMap;
  uuidCopy = uuid;
  styleCopy = style;
  v18 = objc_msgSend_objectForKey_(refLineNonStylesMap, v14, v15, v16, v17, dCopy);
  v23 = objc_msgSend_count(v18, v19, v20, v21, v22);
  v24 = [TSCHReferenceLineNonStyleItem alloc];
  v29 = objc_msgSend_initWithNonStyle_uuid_(v24, v25, v26, v27, v28, styleCopy, uuidCopy);

  objc_msgSend_setReferenceLineNonStyleItem_forAxisID_atIndex_(self, v30, v31, v32, v33, v29, dCopy, v23);
  if (v10)
  {
    objc_msgSend_setReferenceLineStyle_forAxisID_atIndex_(self, v34, v35, v36, v37, v10, dCopy, v23);
  }

  v38 = objc_msgSend_model(self, v34, v35, v36, v37);
  objc_msgSend_invalidateModel(v38, v39, v40, v41, v42);
}

- (void)deleteReferenceLineForAxisID:(id)d uuid:(id)uuid
{
  uuidCopy = uuid;
  dCopy = d;
  objc_msgSend_willModify(self, v8, v9, v10, v11);
  refLineNonStylesMap = self->_refLineNonStylesMap;
  v13 = objc_opt_class();
  v60 = objc_msgSend_tsu_objectForKey_withDefaultOfClass_(refLineNonStylesMap, v14, v15, v16, v17, dCopy, v13);
  v22 = objc_msgSend_objectForKeyedSubscript_(self->_refLineStylesMap, v18, v19, v20, v21, dCopy);

  v27 = objc_msgSend_p_refLineIndexWithUUID_nonStyleItems_(self, v23, v24, v25, v26, uuidCopy, v60);
  if (v27 >= objc_msgSend_count(v60, v28, v29, v30, v31))
  {
    v36 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "[TSCHChartInfo deleteReferenceLineForAxisID:uuid:]");
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v43, v44, v45, v46, v37, v42, 2554, 0, "Trying to remove a nonexisting nonstyle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50);
  }

  if (v27 < objc_msgSend_count(v60, v32, v33, v34, v35))
  {
    objc_msgSend_removeObjectAtIndex_(v60, v51, v52, v53, v54, v27);
  }

  if (v22 && v27 < objc_msgSend_count(v22, v51, v52, v53, v54))
  {
    objc_msgSend_removeObjectAtIndex_(v22, v51, v52, v53, v54, v27);
  }

  v55 = objc_msgSend_model(self, v51, v52, v53, v54);
  objc_msgSend_invalidateModel(v55, v56, v57, v58, v59);
}

+ (id)paragraphStyleIdentifierForRoleIndex:(unint64_t)index ordinal:(unint64_t)ordinal
{
  v7 = objc_msgSend_presetStyleDescriptorForOrdinal_(MEMORY[0x277D80EC8], a2, v4, v5, v6, ordinal);
  v8 = String();

  return v8;
}

+ (id)p_chartTypeTo3DScalePropertyPairs
{
  if (qword_280A47228 != -1)
  {
    sub_2764A76D0();
  }

  if (objc_msgSend_count(qword_280A47220, a2, v2, v3, v4) != 6)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v6, v7, v8, "+[TSCHChartInfo p_chartTypeTo3DScalePropertyPairs]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    v20 = objc_msgSend_count(qword_280A47220, v16, v17, v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v21, v22, v23, v24, v10, v15, 2681, 0, "unexpected number of mappings %lu should be 6", v20);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  v29 = qword_280A47220;

  return v29;
}

+ (id)scale3DPropertyToConstantDepthInfoChartScaleMappingsWithBarShape:(int)shape conversionBlock:(id)block
{
  v88 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (!blockCopy)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "+[TSCHChartInfo scale3DPropertyToConstantDepthInfoChartScaleMappingsWithBarShape:conversionBlock:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 2686, 0, "invalid nil value for '%{public}s'", "propertyTo3DScale");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  v81 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v5, v7, v8, v9);
  objc_msgSend_p_chartTypeTo3DScalePropertyPairs(self, v25, v26, v27, v28);
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = v86 = 0u;
  v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, 0.0, v30, v31, &v83, v87, 16);
  if (v32)
  {
    v37 = v32;
    v38 = *v84;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v84 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v40 = *(*(&v83 + 1) + 8 * i);
        v41 = objc_msgSend_first(v40, v33, v34, v35, v36);
        v46 = objc_msgSend_second(v40, v42, v43, v44, v45);
        v51 = v46;
        if (v46)
        {
          v52 = objc_msgSend_unsignedIntegerValue(v46, v47, v48, v49, v50);
          v54 = blockCopy[2](blockCopy, v52);
          if (v54)
          {
            v58 = objc_msgSend_constantDepthInfoChartScaleForInfoChartScale_chartType_barShape_(TSCHChartType, v53, v55, v56, v57, v54, v41, shape);
            objc_msgSend_setObject_forKeyedSubscript_(v81, v59, v60, v61, v62, v58, v51);
          }
        }

        else
        {
          v63 = MEMORY[0x277D81150];
          v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, v48, v49, v50, "+[TSCHChartInfo scale3DPropertyToConstantDepthInfoChartScaleMappingsWithBarShape:conversionBlock:]");
          v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, v66, v67, v68, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v63, v70, v71, v72, v73, v64, v69, 2693, 0, "invalid nil value for '%{public}s'", "propertyNumber");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v74, v75, v76, v77);
        }
      }

      v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v33, v34, v35, v36, &v83, v87, 16);
    }

    while (v37);
  }

  v78 = objc_msgSend_copy(v81, v33, v34, v35, v36);

  return v78;
}

- (BOOL)appearancePreservedForCurrentPreset
{
  v7 = objc_msgSend_preset(self, a2, v2, v3, v4);
  if (v7)
  {
    v11 = objc_msgSend_firstObject(self->_themeSeriesStyles, v6, v8, v9, v10);
    v16 = objc_msgSend_seriesStyles(v7, v12, v13, v14, v15);
    v21 = objc_msgSend_firstObject(v16, v17, v18, v19, v20);
    v22 = v11 == v21 && self->_themePresetRefLineStyle != 0;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)preserveAppearanceForCurrentPresetAdoptingStylesheet:(BOOL)stylesheet
{
  stylesheetCopy = stylesheet;
  if ((objc_msgSend_appearancePreservedForCurrentPreset(self, a2, v3, v4, v5) & 1) == 0)
  {
    v12 = objc_msgSend_chartStyleState(self, v8, v9, v10, v11);
    v63 = objc_msgSend_stylesheet(v12, v13, v14, v15, v16);

    if (v63)
    {
      v21 = objc_msgSend_preset(self, v17, v18, v19, v20);
      v22 = v21 != 0;

      if (v21)
      {
        objc_msgSend_preset(self, v23, v24, v25, v26);
      }

      else
      {
        objc_msgSend_firstPresetFromTheme(self, v23, v24, v25, v26);
      }
      v28 = ;
      if (stylesheetCopy)
      {
        v32 = objc_alloc(MEMORY[0x277D80AD8]);
        v37 = objc_msgSend_initWithTargetStylesheet_(v32, v33, v34, v35, v36, v63);
        v42 = objc_msgSend_chartStyleState(self, v38, v39, v40, v41);
        v47 = objc_msgSend_paragraphStyles(v42, v43, v44, v45, v46);
        v52 = objc_msgSend_presetByAdoptingStylesheet_withMapper_paragraphStyles_(v28, v48, v49, v50, v51, v63, v37, v47);

        v22 = 1;
        v28 = v52;
      }

      v53 = objc_msgSend_swapTuplesForApplyingPreset_withBehavior_(self, v27, v29, v30, v31, v28, 3);
      v58 = objc_msgSend_applyStyleSwapTuples_(self, v54, v55, v56, v57, v53);
      if (!v22)
      {
        objc_msgSend_setPreset_(self, v59, v60, v61, v62, v28);
      }
    }
  }
}

- (void)updateTitlesForExportingModel:(id)model
{
  modelCopy = model;
  v13 = objc_msgSend_chartType(self, v5, v6, v7, v8);
  objc_msgSend_updateTitlesForExportingModel_info_(v13, v9, v10, v11, v12, modelCopy, self);
}

- (id)applyStyleSwapTuples:(id)tuples
{
  v50 = *MEMORY[0x277D85DE8];
  tuplesCopy = tuples;
  v9 = tuplesCopy;
  if (tuplesCopy && objc_msgSend_count(tuplesCopy, v5, v6, v7, v8))
  {
    v10 = objc_alloc(MEMORY[0x277CBEB18]);
    v15 = objc_msgSend_count(v9, v11, v12, v13, v14);
    v20 = objc_msgSend_initWithCapacity_(v10, v16, v17, v18, v19, v15);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v21 = v9;
    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, v23, v24, v25, &v45, v49, 16);
    if (v26)
    {
      v31 = v26;
      v32 = *v46;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v46 != v32)
          {
            objc_enumerationMutation(v21);
          }

          v34 = objc_msgSend_applyStyleSwapTuple_(self, v27, v28, v29, v30, *(*(&v45 + 1) + 8 * i), v45);
          objc_msgSend_addObject_(v20, v35, v36, v37, v38, v34);
        }

        v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v27, v28, v29, v30, &v45, v49, 16);
      }

      while (v31);
    }

    v43 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v39, v40, v41, v42, v20);
  }

  else
  {
    v43 = objc_msgSend_array(MEMORY[0x277CBEA60], v5, v6, v7, v8);
  }

  return v43;
}

- (BOOL)p_refLineNonStyleMapIsValid
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  v5 = objc_msgSend_set(MEMORY[0x277CBEB58], a2, COERCE_DOUBLE(0x2020000000), v2, v3);
  v10 = objc_msgSend_set(MEMORY[0x277D81258], v6, v7, v8, v9);
  refLineNonStylesMap = self->_refLineNonStylesMap;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_27626BBA4;
  v19[3] = &unk_27A6B70C8;
  v12 = v5;
  v20 = v12;
  v13 = v10;
  v21 = v13;
  v22 = &v23;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(refLineNonStylesMap, v14, v15, v16, v17, v19);
  LOBYTE(v10) = *(v24 + 24);

  _Block_object_dispose(&v23, 8);
  return v10;
}

- (id)p_uuidForRefLineOnAxis:(id)axis havingNonStyle:(id)style
{
  axisCopy = axis;
  styleCopy = style;
  v12 = styleCopy;
  if (axisCopy)
  {
    if (styleCopy)
    {
LABEL_3:
      v38 = 0;
      v39 = &v38;
      v40 = 0x3032000000;
      v41 = sub_27626C284;
      v42 = sub_27626C294;
      v43 = 0;
      v13 = objc_msgSend_objectForKeyedSubscript_(self->_refLineNonStylesMap, v8, COERCE_DOUBLE(0x3032000000), v10, v11, axisCopy);
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = sub_27626C29C;
      v35[3] = &unk_27A6B70F0;
      v36 = v12;
      v37 = &v38;
      objc_msgSend_enumerateObjectsUsingBlock_(v13, v14, v15, v16, v17, v35);
      v18 = v39[5];

      _Block_object_dispose(&v38, 8);
      goto LABEL_6;
    }
  }

  else
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHChartInfo p_uuidForRefLineOnAxis:havingNonStyle:]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v26, v27, v28, v29, v20, v25, 2949, 0, "invalid nil value for '%{public}s'", "axisID");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
    if (v12)
    {
      goto LABEL_3;
    }
  }

  v18 = 0;
LABEL_6:

  return v18;
}

- (id)applyStyleSwapTuple:(id)tuple
{
  tupleCopy = tuple;
  v9 = objc_msgSend_styleSwapSupporting(tupleCopy, v5, v6, v7, v8);
  v14 = objc_msgSend_drawableInfo(self, v10, v11, v12, v13);

  if (v9 != v14)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "[TSCHChartInfo applyStyleSwapTuple:]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v26, v27, v28, v29, v20, v25, 2968, 0, "Wrong chart...");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
  }

  v34 = objc_msgSend_inverse(tupleCopy, v15, v16, v17, v18);
  switch(objc_msgSend_swapType(tupleCopy, v35, v36, v37, v38))
  {
    case 0u:
      v43 = MEMORY[0x277D81150];
      v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, v40, v41, v42, "[TSCHChartInfo applyStyleSwapTuple:]");
      v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, v46, v47, v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v50, v51, v52, v53, v44, v49, 3121, 0, "unknown or unimplemented swap type");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55, v56, v57);
      goto LABEL_20;
    case 1u:
      objc_msgSend_willModify(self, v39, v40, v41, v42);
      objc_opt_class();
      v131 = objc_msgSend_afterValue(tupleCopy, v174, v175, v176, v177);
      v178 = TSUCheckedDynamicCast();
      style = self->_style;
      self->_style = v178;
      goto LABEL_19;
    case 2u:
      objc_msgSend_willModify(self, v39, v40, v41, v42);
      objc_opt_class();
      v131 = objc_msgSend_afterValue(tupleCopy, v155, v156, v157, v158);
      v159 = TSUCheckedDynamicCast();
      style = self->_nonStyle;
      self->_nonStyle = v159;
      goto LABEL_19;
    case 3u:
      objc_msgSend_willModify(self, v39, v40, v41, v42);
      objc_opt_class();
      v131 = objc_msgSend_afterValue(tupleCopy, v165, v166, v167, v168);
      v169 = TSUCheckedDynamicCast();
      style = self->_legendStyle;
      self->_legendStyle = v169;
      goto LABEL_19;
    case 4u:
      objc_msgSend_willModify(self, v39, v40, v41, v42);
      objc_opt_class();
      v131 = objc_msgSend_afterValue(tupleCopy, v127, v128, v129, v130);
      v132 = TSUCheckedDynamicCast();
      style = self->_legendNonStyle;
      self->_legendNonStyle = v132;
      goto LABEL_19;
    case 5u:
      objc_msgSend_willModify(self, v39, v40, v41, v42);
      v150 = objc_msgSend_afterValue(tupleCopy, v180, v181, v182, v183);
      valueAxisStyles = self->_valueAxisStyles;
      goto LABEL_28;
    case 6u:
      objc_msgSend_willModify(self, v39, v40, v41, v42);
      v150 = objc_msgSend_afterValue(tupleCopy, v216, v217, v218, v219);
      valueAxisStyles = self->_valueAxisNonStyles;
      goto LABEL_28;
    case 7u:
      objc_msgSend_willModify(self, v39, v40, v41, v42);
      v150 = objc_msgSend_afterValue(tupleCopy, v170, v171, v172, v173);
      valueAxisStyles = self->_categoryAxisStyles;
      goto LABEL_28;
    case 8u:
      objc_msgSend_willModify(self, v39, v40, v41, v42);
      v150 = objc_msgSend_afterValue(tupleCopy, v225, v226, v227, v228);
      valueAxisStyles = self->_categoryAxisNonStyles;
      goto LABEL_28;
    case 9u:
      objc_msgSend_willModify(self, v39, v40, v41, v42);
      v150 = objc_msgSend_afterValue(tupleCopy, v145, v146, v147, v148);
      valueAxisStyles = self->_themeSeriesStyles;
LABEL_28:
      v229 = objc_msgSend_index(tupleCopy, v149, v151, v152, v153);
      sub_27626B5EC(v150, valueAxisStyles, v229, 0);

      goto LABEL_29;
    case 0xAu:
      objc_msgSend_willModify(self, v39, v40, v41, v42);
      v122 = objc_msgSend_afterValue(tupleCopy, v220, v221, v222, v223);
      privateSeriesStyles = self->_privateSeriesStyles;
      goto LABEL_25;
    case 0xBu:
      objc_msgSend_willModify(self, v39, v40, v41, v42);
      v122 = objc_msgSend_afterValue(tupleCopy, v117, v118, v119, v120);
      privateSeriesStyles = self->_seriesNonStyles;
LABEL_25:
      v224 = objc_msgSend_index(tupleCopy, v121, v123, v124, v125);
      v179 = 1;
      sub_27626B5EC(v122, privateSeriesStyles, v224, 1);
      goto LABEL_26;
    case 0xCu:
      objc_msgSend_willModify(self, v39, v40, v41, v42);
      v138 = objc_msgSend_afterValue(tupleCopy, v134, v135, v136, v137);
      paragraphStyles = self->_paragraphStyles;
      v144 = objc_msgSend_index(tupleCopy, v140, v141, v142, v143);
      sub_27626B5EC(v138, paragraphStyles, v144, 0);

      goto LABEL_20;
    case 0xDu:
      v184 = objc_msgSend_index(tupleCopy, v39, v40, v41, v42);
      v122 = objc_msgSend_axisIDFromStyleSwapOrStyleOwnerIndex_(TSCHReferenceLine, v185, v186, v187, v188, v184);
      v193 = objc_msgSend_index(tupleCopy, v189, v190, v191, v192);
      v198 = objc_msgSend_refLineIndexFromStyleSwapOrStyleOwnerIndex_(TSCHReferenceLine, v194, v195, v196, v197, v193);
      objc_opt_class();
      refLineStylesMap = self->_refLineStylesMap;
      v200 = objc_opt_class();
      v205 = objc_msgSend_tsu_objectForKey_withDefaultOfClass_(refLineStylesMap, v201, v202, v203, v204, v122, v200);
      v206 = TSUCheckedDynamicCast();

      objc_msgSend_willModify(self, v207, v208, v209, v210);
      v215 = objc_msgSend_afterValue(tupleCopy, v211, v212, v213, v214);
      v179 = 1;
      sub_27626B5EC(v215, v206, v198, 1);

LABEL_26:
      goto LABEL_30;
    case 0xEu:
      objc_msgSend_willModify(self, v39, v40, v41, v42);
      v62 = objc_msgSend_index(tupleCopy, v58, v59, v60, v61);
      v67 = objc_msgSend_axisIDFromStyleSwapOrStyleOwnerIndex_(TSCHReferenceLine, v63, v64, v65, v66, v62);
      v72 = objc_msgSend_index(tupleCopy, v68, v69, v70, v71);
      v77 = objc_msgSend_refLineIndexFromStyleSwapOrStyleOwnerIndex_(TSCHReferenceLine, v73, v74, v75, v76, v72);
      objc_opt_class();
      refLineNonStylesMap = self->_refLineNonStylesMap;
      v79 = objc_opt_class();
      v84 = objc_msgSend_tsu_objectForKey_withDefaultOfClass_(refLineNonStylesMap, v80, v81, v82, v83, v67, v79);
      v85 = TSUCheckedDynamicCast();

      if (!v85)
      {
        v90 = MEMORY[0x277D81150];
        v91 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v86, v87, v88, v89, "[TSCHChartInfo applyStyleSwapTuple:]");
        objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v92, v93, v94, v95, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
        v97 = v96 = v77;
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v90, v98, v99, v100, v101, v91, v97, 3068, 0, "invalid nil value for '%{public}s'", "lineArray");

        v77 = v96;
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v102, v103, v104, v105);
      }

      if (v77 == objc_msgSend_count(v85, v86, v87, v88, v89))
      {
        v111 = objc_msgSend_refLineUUID(tupleCopy, v106, v107, v108, v109);
        if (v111)
        {
          v115 = objc_msgSend_beforeValue(tupleCopy, v110, v112, v113, v114);
          v116 = v115 == 0;
        }

        else
        {
          v116 = 0;
        }
      }

      else
      {
        v116 = 0;
      }

      if (v77 >= objc_msgSend_count(v85, v106, v107, v108, v109))
      {
        v306 = 0;
      }

      else
      {
        v302 = objc_msgSend_refLineUUID(tupleCopy, v297, v298, v299, v300);
        if (v302)
        {
          v306 = 0;
        }

        else
        {
          v307 = objc_msgSend_afterValue(tupleCopy, v301, v303, v304, v305);
          v306 = v307 == 0;
        }
      }

      if (v77 >= objc_msgSend_count(v85, v297, v298, v299, v300))
      {
        v318 = 0;
        if (v116)
        {
LABEL_59:
          v417 = [TSCHReferenceLineNonStyleItem alloc];
          v422 = objc_msgSend_afterValue(tupleCopy, v418, v419, v420, v421);
          objc_msgSend_refLineUUID(tupleCopy, v423, v424, v425, v426);
          v428 = v427 = v77;
          v433 = objc_msgSend_initWithNonStyle_uuid_(v417, v429, v430, v431, v432, v422, v428);

          sub_27626B5EC(v433, v85, v427, 0);
          goto LABEL_60;
        }
      }

      else
      {
        v313 = objc_msgSend_afterValue(tupleCopy, v308, v309, v310, v311);
        if (v313)
        {
          v317 = objc_msgSend_beforeValue(tupleCopy, v312, v314, v315, v316);
          v318 = v317 != 0;
        }

        else
        {
          v318 = 0;
        }

        if (v116)
        {
          goto LABEL_59;
        }
      }

      if (v306)
      {
        objc_opt_class();
        v323 = objc_msgSend_objectAtIndexedSubscript_(v85, v319, v320, v321, v322, v77);
        v469 = TSUCheckedDynamicCast();

        v467 = [TSCHStyleSwapUndoTuple alloc];
        v471 = v77;
        v328 = objc_msgSend_swapType(v34, v324, v325, v326, v327);
        v333 = v67;
        v334 = objc_msgSend_index(v34, v329, v330, v331, v332);
        v339 = objc_msgSend_beforeValue(v34, v335, v336, v337, v338);
        v344 = objc_msgSend_afterValue(v34, v340, v341, v342, v343);
        v349 = objc_msgSend_uuid(v469, v345, v346, v347, v348);
        v350 = v334;
        v67 = v333;
        v355 = objc_msgSend_initWithChartInfo_swapType_index_oldValue_newValue_refLineUUID_(v467, v351, v352, v353, v354, self, v328, v350, v339, v344, v349);

        sub_27626B5EC(0, v85, v471, 0);
        v34 = v355;
      }

      else if (v318)
      {
        objc_opt_class();
        v360 = objc_msgSend_objectAtIndexedSubscript_(v85, v356, v357, v358, v359, v77);
        v361 = TSUCheckedDynamicCast();

        v366 = objc_msgSend_refLineUUID(tupleCopy, v362, v363, v364, v365);
        v466 = v67;
        v472 = v77;
        if (v366 || (objc_msgSend_uuid(v361, v367, v368, v369, v370), (v366 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v375 = v366;
        }

        else
        {
          v449 = MEMORY[0x277D81150];
          v450 = v361;
          v451 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v371, v372, v373, v374, "[TSCHChartInfo applyStyleSwapTuple:]");
          v456 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v452, v453, v454, v455, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v449, v457, v458, v459, v460, v451, v456, 3096, 0, "invalid nil value for '%{public}s'", "uuid");

          v361 = v450;
          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v461, v462, v463, v464);
          v375 = 0;
        }

        v465 = v361;
        v376 = [TSCHReferenceLineNonStyleItem alloc];
        v381 = objc_msgSend_afterValue(tupleCopy, v377, v378, v379, v380);
        v470 = v375;
        v468 = objc_msgSend_initWithNonStyle_uuid_(v376, v382, v383, v384, v385, v381, v375);

        v386 = [TSCHStyleSwapUndoTuple alloc];
        v391 = objc_msgSend_swapType(v34, v387, v388, v389, v390);
        v396 = objc_msgSend_index(v34, v392, v393, v394, v395);
        v401 = objc_msgSend_beforeValue(v34, v397, v398, v399, v400);
        v406 = objc_msgSend_afterValue(v34, v402, v403, v404, v405);
        v411 = objc_msgSend_uuid(v361, v407, v408, v409, v410);
        v416 = objc_msgSend_initWithChartInfo_swapType_index_oldValue_newValue_refLineUUID_(v386, v412, v413, v414, v415, self, v391, v396, v401, v406, v411);

        sub_27626B5EC(v468, v85, v472, 0);
        v34 = v416;
        v67 = v466;
      }

      else
      {
        v434 = MEMORY[0x277D81150];
        v435 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v308, v309, v310, v311, "[TSCHChartInfo applyStyleSwapTuple:]");
        v440 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v436, v437, v438, v439, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v434, v441, v442, v443, v444, v435, v440, 3109, 0, "Bad reference line non-style tuple.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v445, v446, v447, v448);
      }

LABEL_60:

LABEL_29:
      v179 = 1;
LABEL_30:
      v230 = objc_opt_class();
      v235 = objc_msgSend_propertiesThatInvalidateModel(v230, v231, v232, v233, v234);
      v240 = objc_msgSend_mutatedProperties(tupleCopy, v236, v237, v238, v239);
      v245 = objc_msgSend_intersectsProperties_(v235, v241, v242, v243, v244, v240);

      v246 = v179 | v245;
      v251 = objc_msgSend_mediator(self, v247, v248, v249, v250);
      v252 = objc_opt_class();
      v257 = objc_msgSend_propertiesThatInvalidateMediator(v252, v253, v254, v255, v256);
      v262 = objc_msgSend_mutatedProperties(tupleCopy, v258, v259, v260, v261);
      v267 = objc_msgSend_intersectsProperties_(v257, v263, v264, v265, v266, v262);

      if (v267)
      {
        v272 = objc_msgSend_mediator(self, v268, v269, v270, v271);
        objc_msgSend_invalidateAndSynchronizeMediator(v272, v273, v274, v275, v276);
      }

      if (v246)
      {
        v277 = objc_msgSend_model(self, v268, v269, v270, v271);
        objc_msgSend_invalidateModel(v277, v278, v279, v280, v281);
      }

      v282 = objc_msgSend_model(self, v268, v269, v270, v271);
      objc_msgSend_invalidateCaches(v282, v283, v284, v285, v286);

      v291 = objc_msgSend_sceneAreaLayoutItemCache(self, v287, v288, v289, v290);
      objc_msgSend_invalidate(v291, v292, v293, v294, v295);

      return v34;
    case 0xFu:
      objc_msgSend_willModify(self, v39, v40, v41, v42);
      objc_opt_class();
      v131 = objc_msgSend_afterValue(tupleCopy, v160, v161, v162, v163);
      v164 = TSUCheckedDynamicCast();
      style = self->_themePresetRefLineStyle;
      self->_themePresetRefLineStyle = v164;
LABEL_19:

      goto LABEL_20;
    default:
LABEL_20:
      v179 = 0;
      goto LABEL_30;
  }
}

- (id)styleOwnerFromSwapType:(int)type andIndex:(unint64_t)index
{
  v9 = 0;
  v163 = *MEMORY[0x277D85DE8];
  if (type <= 7)
  {
    if (type <= 4)
    {
      if ((type - 1) >= 2)
      {
        if ((type - 3) >= 2)
        {
          goto LABEL_64;
        }

        selfCopy = objc_msgSend_legend(self, a2, v4, v5, v6);
        goto LABEL_39;
      }

LABEL_38:
      selfCopy = self;
LABEL_39:
      v9 = selfCopy;
      goto LABEL_64;
    }

    if (type == 5)
    {
      if (objc_msgSend_count(self->_valueAxisStyles, a2, v4, v5, v6) > index)
      {
        v35 = objc_msgSend_model(self, v98, v99, v100, v101);
        v40 = objc_msgSend_objectAtIndexedSubscript_(self->_valueAxisStyles, v102, v103, v104, v105, index);
        v155 = 0u;
        v156 = 0u;
        v157 = 0u;
        v158 = 0u;
        v44 = objc_msgSend_axisList(v35, v106, 0.0, v107, v108);
        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v109, v110, v111, v112, &v155, v162, 16);
        if (v9)
        {
          v117 = *v156;
LABEL_43:
          v118 = 0;
          while (1)
          {
            if (*v156 != v117)
            {
              objc_enumerationMutation(v44);
            }

            v55 = *(*(&v155 + 1) + 8 * v118);
            v119 = objc_msgSend_styleForAxis_(self, v113, v114, v115, v116, v55);

            if (v40 == v119)
            {
              goto LABEL_61;
            }

            if (v9 == ++v118)
            {
              v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v113, v114, v115, v116, &v155, v162, 16);
              if (v9)
              {
                goto LABEL_43;
              }

              goto LABEL_62;
            }
          }
        }

        goto LABEL_62;
      }
    }

    else if (type == 6)
    {
      if (objc_msgSend_count(self->_valueAxisNonStyles, a2, v4, v5, v6) > index)
      {
        v35 = objc_msgSend_model(self, v120, v121, v122, v123);
        v40 = objc_msgSend_objectAtIndexedSubscript_(self->_valueAxisNonStyles, v124, v125, v126, v127, index);
        v151 = 0u;
        v152 = 0u;
        v153 = 0u;
        v154 = 0u;
        v44 = objc_msgSend_axisList(v35, v128, 0.0, v129, v130);
        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v131, v132, v133, v134, &v151, v161, 16);
        if (v9)
        {
          v139 = *v152;
LABEL_53:
          v140 = 0;
          while (1)
          {
            if (*v152 != v139)
            {
              objc_enumerationMutation(v44);
            }

            v55 = *(*(&v151 + 1) + 8 * v140);
            v141 = objc_msgSend_nonStyleForAxis_(self, v135, v136, v137, v138, v55);

            if (v40 == v141)
            {
              goto LABEL_61;
            }

            if (v9 == ++v140)
            {
              v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v135, v136, v137, v138, &v151, v161, 16);
              if (v9)
              {
                goto LABEL_53;
              }

              break;
            }
          }
        }

LABEL_62:

LABEL_63:
        goto LABEL_64;
      }
    }

    else if (objc_msgSend_count(self->_categoryAxisStyles, a2, v4, v5, v6) > index)
    {
      v35 = objc_msgSend_model(self, v31, v32, v33, v34);
      v40 = objc_msgSend_objectAtIndexedSubscript_(self->_categoryAxisStyles, v36, v37, v38, v39, index);
      v147 = 0u;
      v148 = 0u;
      v149 = 0u;
      v150 = 0u;
      v44 = objc_msgSend_axisList(v35, v41, 0.0, v42, v43);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v45, v46, v47, v48, &v147, v160, 16);
      if (v9)
      {
        v53 = *v148;
LABEL_15:
        v54 = 0;
        while (1)
        {
          if (*v148 != v53)
          {
            objc_enumerationMutation(v44);
          }

          v55 = *(*(&v147 + 1) + 8 * v54);
          v56 = objc_msgSend_styleForAxis_(self, v49, v50, v51, v52, v55);

          if (v40 == v56)
          {
            break;
          }

          if (v9 == ++v54)
          {
            v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v49, v50, v51, v52, &v147, v160, 16);
            if (v9)
            {
              goto LABEL_15;
            }

            goto LABEL_62;
          }
        }

LABEL_61:
        v9 = v55;
        goto LABEL_62;
      }

      goto LABEL_62;
    }

LABEL_60:
    v9 = 0;
    goto LABEL_64;
  }

  if (type > 11)
  {
    if ((type - 13) >= 2)
    {
      if (type != 12)
      {
        goto LABEL_64;
      }

      goto LABEL_38;
    }

    v35 = objc_msgSend_axisIDFromStyleSwapOrStyleOwnerIndex_(TSCHReferenceLine, a2, v4, v5, v6, index);
    v61 = objc_msgSend_refLineIndexFromStyleSwapOrStyleOwnerIndex_(TSCHReferenceLine, v57, v58, v59, v60, index);
    v66 = objc_msgSend_model(self, v62, v63, v64, v65);
    v71 = objc_msgSend_axisForID_(v66, v67, v68, v69, v70, v35);
    v9 = objc_msgSend_referenceLineAtIndex_(v71, v72, v73, v74, v75, v61);

    goto LABEL_63;
  }

  if ((type - 9) < 3)
  {
    v11 = objc_msgSend_model(self, a2, v4, v5, v6);
    v16 = objc_msgSend_seriesList(v11, v12, v13, v14, v15);
    v21 = objc_msgSend_count(v16, v17, v18, v19, v20);

    if (v21 <= index)
    {
      v9 = 0;
    }

    else
    {
      v26 = objc_msgSend_seriesList(v11, v22, v23, v24, v25);
      v9 = objc_msgSend_objectAtIndexedSubscript_(v26, v27, v28, v29, v30, index);
    }

    goto LABEL_64;
  }

  if (type == 8)
  {
    if (objc_msgSend_count(self->_categoryAxisNonStyles, a2, v4, v5, v6) > index)
    {
      v35 = objc_msgSend_model(self, v76, v77, v78, v79);
      v40 = objc_msgSend_objectAtIndexedSubscript_(self->_categoryAxisNonStyles, v80, v81, v82, v83, index);
      v143 = 0u;
      v144 = 0u;
      v145 = 0u;
      v146 = 0u;
      v44 = objc_msgSend_axisList(v35, v84, 0.0, v85, v86, 0);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v87, v88, v89, v90, &v143, v159, 16);
      if (v9)
      {
        v95 = *v144;
LABEL_30:
        v96 = 0;
        while (1)
        {
          if (*v144 != v95)
          {
            objc_enumerationMutation(v44);
          }

          v55 = *(*(&v143 + 1) + 8 * v96);
          v97 = objc_msgSend_nonStyleForAxis_(self, v91, v92, v93, v94, v55);

          if (v40 == v97)
          {
            goto LABEL_61;
          }

          if (v9 == ++v96)
          {
            v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v91, v92, v93, v94, &v143, v159, 16);
            if (v9)
            {
              goto LABEL_30;
            }

            goto LABEL_62;
          }
        }
      }

      goto LABEL_62;
    }

    goto LABEL_60;
  }

LABEL_64:

  return v9;
}

- (BOOL)hasTwoYValueAxes
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_model(self, a2, v2, v3, v4);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = objc_msgSend_valueAxisList(v5, v6, 0.0, v7, v8, 0);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, v11, v12, v13, &v29, v33, 16);
  if (v15)
  {
    v19 = 0;
    v20 = *v30;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v30 != v20)
        {
          objc_enumerationMutation(v9);
        }

        v22 = objc_msgSend_axisID(*(*(&v29 + 1) + 8 * i), v14, v16, v17, v18);
        v27 = objc_msgSend_type(v22, v23, v24, v25, v26);

        if (v27 == 2)
        {
          ++v19;
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v14, v16, v17, v18, &v29, v33, 16);
    }

    while (v15);
    LOBYTE(v15) = v19 == 2;
  }

  return v15;
}

- (BOOL)shouldOwnPreset:(id)preset
{
  if (!preset)
  {
    return 0;
  }

  v8 = objc_msgSend_stylesheet(preset, a2, v3, v4, v5);
  if (v8)
  {
    v13 = objc_msgSend_documentStylesheet(self, v7, v9, v10, v11);
    if (v8 == v13)
    {
      v33 = 0;
    }

    else
    {
      v17 = objc_msgSend_drawableInfo(self, v12, v14, v15, v16);
      v22 = objc_msgSend_documentRoot(v17, v18, v19, v20, v21);
      v27 = objc_msgSend_theme(v22, v23, v24, v25, v26);
      v32 = objc_msgSend_legacyStylesheet(v27, v28, v29, v30, v31);
      v33 = v8 != v32;
    }
  }

  else
  {
    v33 = 1;
  }

  return v33;
}

- (TSCHChartStylePreset)preset
{
  objc_msgSend_debugVerifyPreset(self, a2, v2, v3, v4);
  objc_opt_class();
  v10 = objc_msgSend_objectAndReturnError_(self->_lazyPreset, v6, v7, v8, v9, 0);
  v11 = TSUCheckedDynamicCast();

  return v11;
}

- (void)setPreset:(id)preset forceOwning:(BOOL)owning
{
  presetCopy = preset;
  objc_msgSend_willModify(self, v6, v7, v8, v9);
  lazyPreset = self->_lazyPreset;
  self->_lazyPreset = 0;

  ownedPreset = self->_ownedPreset;
  self->_ownedPreset = 0;

  if (presetCopy)
  {
    v16 = objc_alloc(MEMORY[0x277D80868]);
    inited = objc_msgSend_initWeakReferenceWithObject_(v16, v17, v18, v19, v20, presetCopy);
    v22 = self->_lazyPreset;
    self->_lazyPreset = inited;

    if (owning)
    {
      goto LABEL_3;
    }

    v34 = objc_msgSend_documentRoot(self, v23, v24, v25, v26);
    v39 = objc_msgSend_accessController(v34, v35, v36, v37, v38);
    objc_msgSend_assertHasReadOrWrite(v39, v40, v41, v42, v43);

    v33 = objc_msgSend_themeChartPresets(self, v44, v45, v46, v47);
    if (objc_msgSend_indexOfObjectIdenticalTo_(v33, v48, v49, v50, v51, presetCopy) != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_7;
    }

    shouldOwnPreset = objc_msgSend_shouldOwnPreset_(self, v52, v53, v54, v55, presetCopy);

    if (shouldOwnPreset)
    {
LABEL_3:
      v27 = objc_alloc(MEMORY[0x277D80868]);
      v32 = objc_msgSend_initWithObject_(v27, v28, v29, v30, v31, presetCopy);
      v33 = self->_ownedPreset;
      self->_ownedPreset = v32;
LABEL_7:
    }
  }

  objc_msgSend_debugVerifyPreset(self, v12, v13, v14, v15);
}

- (id)themeChartPresets
{
  v6 = objc_msgSend_documentRoot(self, a2, v2, v3, v4);
  v11 = objc_msgSend_accessController(v6, v7, v8, v9, v10);
  objc_msgSend_assertHasReadOrWrite(v11, v12, v13, v14, v15);

  v20 = objc_msgSend_documentRoot(self, v16, v17, v18, v19);
  v25 = objc_msgSend_theme(v20, v21, v22, v23, v24);

  v30 = objc_msgSend_presetsOfKind_(v25, v26, v27, v28, v29, *MEMORY[0x277D80B08]);

  return v30;
}

- (TSCHChartStylePreset)firstPresetFromTheme
{
  v6 = objc_msgSend_documentRoot(self, a2, v2, v3, v4);
  v11 = objc_msgSend_accessController(v6, v7, v8, v9, v10);
  objc_msgSend_assertHasReadOrWrite(v11, v12, v13, v14, v15);

  v20 = objc_msgSend_themeChartPresets(self, v16, v17, v18, v19);
  v25 = objc_msgSend_firstObject(v20, v21, v22, v23, v24);

  return v25;
}

- (TSCHChartStylePreset)presetFromThemeIfNecessary
{
  v6 = objc_msgSend_preset(self, a2, v2, v3, v4);
  if (!v6)
  {
    v11 = objc_msgSend_documentRoot(self, v7, v8, v9, v10);
    v16 = objc_msgSend_accessController(v11, v12, v13, v14, v15);
    objc_msgSend_assertHasReadOrWrite(v16, v17, v18, v19, v20);

    v6 = objc_msgSend_firstPresetFromTheme(self, v21, v22, v23, v24);
    if (!v6)
    {
      v29 = MEMORY[0x277D81150];
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "[TSCHChartInfo presetFromThemeIfNecessary]");
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v36, v37, v38, v39, v30, v35, 3394, 0, "invalid nil value for '%{public}s'", "preset");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42, v43);
      v6 = 0;
    }
  }

  return v6;
}

- (id)themeChartPresetForUUID:(id)d
{
  v92 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v9 = objc_msgSend_documentRoot(self, v5, v6, v7, v8);
  v14 = objc_msgSend_accessController(v9, v10, v11, v12, v13);
  objc_msgSend_assertHasReadOrWrite(v14, v15, v16, v17, v18);

  selfCopy = self;
  objc_msgSend_themeChartPresets(self, v19, v20, v21, v22);
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = v90 = 0u;
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v23, v24, v25, v26, &v87, v91, 16);
  if (v27)
  {
    v28 = v27;
    v29 = *v88;
LABEL_3:
    v30 = 0;
    while (1)
    {
      if (*v88 != v29)
      {
        objc_enumerationMutation(obj);
      }

      objc_opt_class();
      v32 = TSUCheckedDynamicCast();
      if (!v32)
      {
        v36 = MEMORY[0x277D81150];
        v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v33, v34, v35, "[TSCHChartInfo themeChartPresetForUUID:]");
        v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v43, v44, v45, v46, v37, v42, 3406, 0, "invalid nil value for '%{public}s'", "themeChartPreset");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50);
      }

      v51 = objc_msgSend_uuid(v32, v31, v33, v34, v35);
      isEqual = objc_msgSend_isEqual_(dCopy, v52, v53, v54, v55, v51);

      if (isEqual)
      {
        break;
      }

      if (v28 == ++v30)
      {
        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v57, v58, v59, v60, &v87, v91, 16);
        if (v28)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }

    if (v32)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_11:
  }

  v65 = MEMORY[0x277D81150];
  v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, v62, v63, v64, "[TSCHChartInfo themeChartPresetForUUID:]");
  v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, v68, v69, v70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v65, v72, v73, v74, v75, v66, v71, 3413, 0, "invalid nil value for '%{public}s'", "preset");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v76, v77, v78, v79);
  v32 = objc_msgSend_firstPresetFromTheme(selfCopy, v80, v81, v82, v83);
LABEL_14:

  return v32;
}

+ (BOOL)updateInitialLabelExplosionIfNeededForChartType:(id)type seriesNonStyles:(id *)styles stylePreset:(id)preset rowCount:(unint64_t)count columnCount:(unint64_t)columnCount
{
  typeCopy = type;
  presetCopy = preset;
  if (!styles || !*styles)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v14, v15, v16, "+[TSCHChartInfo updateInitialLabelExplosionIfNeededForChartType:seriesNonStyles:stylePreset:rowCount:columnCount:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 3423, 0, "*seriesNonStyles cannot be nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
  }

  v32 = objc_msgSend_donutChart(TSCHChartType, v12, v14, v15, v16);

  if (v32 == typeCopy)
  {
    if (count <= columnCount)
    {
      count = columnCount;
    }

    for (; count; --count)
    {
      v37 = objc_msgSend_buildSeriesNonStyle(presetCopy, v33, v34, v35, v36);
      objc_msgSend_defaultLabelExplosionValue(typeCopy, v38, v39, v40, v41);
      *&v42 = v42;
      objc_msgSend_setFloatValue_forProperty_(v37, v43, v42, v44, v45, 1418);
      if (styles)
      {
        objc_msgSend_addObject_(*styles, v46, v47, v48, v49, v37);
      }
    }
  }

  return v32 == typeCopy;
}

- (id)stringForSelectionPath:(id)path
{
  pathCopy = path;
  v5 = pathCopy;
  if (!pathCopy)
  {
    v35 = 0;
    goto LABEL_34;
  }

  v6 = pathCopy;
  selfCopy = self;
  v12 = objc_msgSend_type(v6, v8, v9, v10, v11);
  isEqual = objc_msgSend_isEqual_(@"text", v13, v14, v15, v16, v12);

  if (!isEqual)
  {
    goto LABEL_32;
  }

  v22 = objc_msgSend_name(v6, v18, v19, v20, v21);
  v27 = objc_msgSend_isEqual_(v22, v23, v24, v25, v26, @"chartTitle");

  if (v27)
  {
    v32 = objc_msgSend_objectValueForProperty_(selfCopy, v28, v29, v30, v31, 1124);
    v33 = v32;
    v34 = &stru_288528678;
    if (v32)
    {
      v34 = v32;
    }

    v35 = v34;
    goto LABEL_27;
  }

  v36 = objc_msgSend_name(v6, v28, v29, v30, v31);
  v41 = objc_msgSend_isEqual_(v36, v37, v38, v39, v40, @"chartDataSetName");

  if (v41)
  {
    v33 = objc_msgSend_model(selfCopy, v42, v43, v44, v45);
    v50 = objc_msgSend_dataSetNameForMultiDataModel(v33, v46, v47, v48, v49);
    v51 = v50;
    v52 = &stru_288528678;
    if (v50)
    {
      v52 = v50;
    }

    v35 = v52;
    goto LABEL_26;
  }

  v53 = objc_msgSend_name(v6, v42, v43, v44, v45);
  v58 = objc_msgSend_isEqual_(v53, v54, v55, v56, v57, @"axisTitle");

  if (!v58)
  {
    v79 = objc_msgSend_name(v6, v59, v60, v61, v62);
    v84 = objc_msgSend_isEqual_(v79, v80, v81, v82, v83, @"seriesName");

    if (v84)
    {
      objc_opt_class();
      objc_msgSend_argumentAtIndex_(v6, v89, v90, v91, v92, 0);
      v107 = LABEL_21:;
      v108 = TSUCheckedDynamicCast();
      v113 = objc_msgSend_unsignedIntegerValue(v108, v109, v110, v111, v112);

      v33 = objc_msgSend_model(selfCopy, v114, v115, v116, v117);
      v122 = objc_msgSend_seriesList(v33, v118, v119, v120, v121);
      v51 = objc_msgSend_objectAtIndexedSubscript_(v122, v123, v124, v125, v126, v113);

      v131 = objc_msgSend_name(v51, v127, v128, v129, v130);
LABEL_22:
      v71 = v131;
      v132 = &stru_288528678;
      if (v131)
      {
        v132 = v131;
      }

      v35 = v132;
      goto LABEL_25;
    }

    v93 = objc_msgSend_name(v6, v85, v86, v87, v88);
    v98 = objc_msgSend_isEqual_(v93, v94, v95, v96, v97, @"seriesLabel");

    if (v98)
    {
      objc_opt_class();
      objc_msgSend_argumentAtIndex_(v6, v103, v104, v105, v106, 1);
      goto LABEL_21;
    }

    v133 = objc_msgSend_name(v6, v99, v100, v101, v102);
    v138 = objc_msgSend_isEqual_(v133, v134, v135, v136, v137, @"trendLineName");

    if (v138)
    {
      objc_opt_class();
      v147 = objc_msgSend_argumentAtIndex_(v6, v143, v144, v145, v146, 0);
      v148 = TSUCheckedDynamicCast();
      v153 = objc_msgSend_unsignedIntegerValue(v148, v149, v150, v151, v152);

      v33 = objc_msgSend_model(selfCopy, v154, v155, v156, v157);
      v162 = objc_msgSend_seriesList(v33, v158, v159, v160, v161);
      v51 = objc_msgSend_objectAtIndexedSubscript_(v162, v163, v164, v165, v166, v153);

      v131 = objc_msgSend_trendLineLegendText(v51, v167, v168, v169, v170);
      goto LABEL_22;
    }

    v171 = objc_msgSend_name(v6, v139, v140, v141, v142);
    v176 = objc_msgSend_isEqual_(v171, v172, v173, v174, v175, @"axisLabel");

    if (v176)
    {
      v33 = objc_msgSend_model(selfCopy, v177, v178, v179, v180);
      v51 = objc_msgSend_argumentAtIndex_(v6, v181, v182, v183, v184, 0);
      v71 = objc_msgSend_axisForID_(v33, v185, v186, v187, v188, v51);
      objc_opt_class();
      v193 = objc_msgSend_argumentAtIndex_(v6, v189, v190, v191, v192, 1);
      v194 = TSUCheckedDynamicCast();
      v199 = objc_msgSend_unsignedIntegerValue(v194, v195, v196, v197, v198);

      v204 = objc_msgSend_indexForSelectionPathLabelIndex_(v71, v200, v201, v202, v203, v199);
      v76 = objc_msgSend_nameForCategory_(v33, v205, v206, v207, v208, v204);
      goto LABEL_14;
    }

LABEL_32:
    v35 = 0;
    goto LABEL_33;
  }

  v33 = objc_msgSend_argumentAtIndex_(v6, v59, v60, v61, v62, 0);
  v51 = objc_msgSend_model(selfCopy, v63, v64, v65, v66);
  v71 = objc_msgSend_axisForID_(v51, v67, v68, v69, v70, v33);
  v76 = objc_msgSend_objectValueForProperty_(v71, v72, v73, v74, v75, 1062);
LABEL_14:
  v77 = v76;
  v78 = &stru_288528678;
  if (v76)
  {
    v78 = v76;
  }

  v35 = v78;

LABEL_25:
LABEL_26:

LABEL_27:
LABEL_33:

LABEL_34:

  return v35;
}

- (int)stringPropertyForSelectionPath:(id)path
{
  pathCopy = path;
  v4 = pathCopy;
  if (pathCopy)
  {
    v5 = pathCopy;
    v10 = objc_msgSend_type(v5, v6, v7, v8, v9);
    isEqual = objc_msgSend_isEqual_(@"text", v11, v12, v13, v14, v10);

    if (isEqual)
    {
      v20 = objc_msgSend_name(v5, v16, v17, v18, v19);
      v25 = objc_msgSend_isEqual_(v20, v21, v22, v23, v24, @"chartTitle");

      if (v25)
      {
        isEqual = 1124;
      }

      else
      {
        v30 = objc_msgSend_name(v5, v26, v27, v28, v29);
        v35 = objc_msgSend_isEqual_(v30, v31, v32, v33, v34, @"axisTitle");

        if (v35)
        {
          isEqual = 1062;
        }

        else
        {
          isEqual = 0;
        }
      }
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (id)styleOwnerForSelectionPath:(id)path
{
  pathCopy = path;
  v10 = objc_msgSend_pathType(pathCopy, v6, v7, v8, v9);
  v15 = objc_msgSend_chartTitleType(TSCHSelectionPathType, v11, v12, v13, v14);
  if (objc_msgSend_isEqual_(v10, v16, v17, v18, v19, v15))
  {
    goto LABEL_8;
  }

  v24 = objc_msgSend_pathType(pathCopy, v20, v21, v22, v23);
  v29 = objc_msgSend_chartDataSetNameType(TSCHSelectionPathType, v25, v26, v27, v28);
  if (objc_msgSend_isEqual_(v24, v30, v31, v32, v33, v29))
  {
LABEL_7:

LABEL_8:
LABEL_9:
    selfCopy = self;
LABEL_10:
    v67 = selfCopy;
    goto LABEL_11;
  }

  v38 = objc_msgSend_pathType(pathCopy, v34, v35, v36, v37);
  v43 = objc_msgSend_chartBodyType(TSCHSelectionPathType, v39, v40, v41, v42);
  if (objc_msgSend_isEqual_(v38, v44, v45, v46, v47, v43))
  {
LABEL_6:

    goto LABEL_7;
  }

  aSelector = a2;
  v52 = objc_msgSend_pathType(pathCopy, v48, v49, v50, v51);
  v57 = objc_msgSend_axisLineType(TSCHSelectionPathType, v53, v54, v55, v56);
  if (objc_msgSend_isEqual_(v52, v58, v59, v60, v61, v57))
  {

    goto LABEL_6;
  }

  objc_msgSend_pathType(pathCopy, v62, v63, v64, v65);
  v69 = v435 = self;
  objc_msgSend_seriesValueSummaryLabelType(TSCHSelectionPathType, v70, v71, v72, v73);
  v74 = v436 = pathCopy;
  isEqual = objc_msgSend_isEqual_(v69, v75, v76, v77, v78, v74);

  pathCopy = v436;
  self = v435;

  if (isEqual)
  {
    goto LABEL_9;
  }

  v83 = objc_msgSend_pathType(v436, v79, v80, v81, v82);
  v88 = objc_msgSend_legendSeriesNameType(TSCHSelectionPathType, v84, v85, v86, v87);
  if (objc_msgSend_isEqual_(v83, v89, v90, v91, v92, v88))
  {
    goto LABEL_18;
  }

  v97 = objc_msgSend_pathType(v436, v93, v94, v95, v96);
  v102 = objc_msgSend_legendTrendLineNameType(TSCHSelectionPathType, v98, v99, v100, v101);
  if (objc_msgSend_isEqual_(v97, v103, v104, v105, v106, v102))
  {

LABEL_18:
LABEL_19:
    selfCopy = objc_msgSend_legend(self, v111, v112, v113, v114);
    goto LABEL_10;
  }

  v115 = objc_msgSend_pathType(v436, v107, v108, v109, v110);
  v120 = objc_msgSend_legendType(TSCHSelectionPathType, v116, v117, v118, v119);
  v125 = objc_msgSend_isEqual_(v115, v121, v122, v123, v124, v120);

  self = v435;
  pathCopy = v436;

  if (v125)
  {
    goto LABEL_19;
  }

  v126 = objc_msgSend_pathType(v436, v111, v112, v113, v114);
  v131 = objc_msgSend_axisTitleType(TSCHSelectionPathType, v127, v128, v129, v130);
  if (objc_msgSend_isEqual_(v126, v132, v133, v134, v135, v131))
  {
    goto LABEL_30;
  }

  v140 = objc_msgSend_pathType(v436, v136, v137, v138, v139);
  v145 = objc_msgSend_axisLabelsType(TSCHSelectionPathType, v141, v142, v143, v144);
  if (objc_msgSend_isEqual_(v140, v146, v147, v148, v149, v145))
  {
LABEL_29:

LABEL_30:
LABEL_31:
    if (objc_msgSend_argumentsCount(pathCopy, v196, v197, v198, v199))
    {
      objc_opt_class();
      v208 = objc_msgSend_argumentAtIndex_(pathCopy, v204, v205, v206, v207, 0);
      v209 = TSUDynamicCast();
    }

    else
    {
      v209 = 0;
    }

    v210 = objc_msgSend_model(v435, v200, v201, v202, v203);
    v67 = objc_msgSend_axisForID_(v210, v211, v212, v213, v214, v209);

    goto LABEL_35;
  }

  v154 = objc_msgSend_pathType(v436, v150, v151, v152, v153);
  v159 = objc_msgSend_valueAxisType(TSCHSelectionPathType, v155, v156, v157, v158);
  if (objc_msgSend_isEqual_(v154, v160, v161, v162, v163, v159))
  {
LABEL_28:

    goto LABEL_29;
  }

  v168 = objc_msgSend_pathType(v436, v164, v165, v166, v167);
  v173 = objc_msgSend_categoryAxisType(TSCHSelectionPathType, v169, v170, v171, v172);
  if (objc_msgSend_isEqual_(v168, v174, v175, v176, v177, v173))
  {
LABEL_27:

    goto LABEL_28;
  }

  v432 = v168;
  v182 = objc_msgSend_pathType(v436, v178, v179, v180, v181);
  v187 = objc_msgSend_seriesLabelType(TSCHSelectionPathType, v183, v184, v185, v186);
  v429 = v182;
  if (objc_msgSend_isEqual_(v182, v188, v189, v190, v191, v187))
  {

    v168 = v432;
    goto LABEL_27;
  }

  v215 = objc_msgSend_pathType(v436, v192, v193, v194, v195);
  v220 = objc_msgSend_gridLineType(TSCHSelectionPathType, v216, v217, v218, v219);
  v427 = objc_msgSend_isEqual_(v215, v221, v222, v223, v224, v220);

  pathCopy = v436;
  if (v427)
  {
    goto LABEL_31;
  }

  v225 = objc_msgSend_pathType(v436, v196, v197, v198, v199);
  v230 = objc_msgSend_seriesValueLabelType(TSCHSelectionPathType, v226, v227, v228, v229);
  if (objc_msgSend_isEqual_(v225, v231, v232, v233, v234, v230))
  {
    goto LABEL_47;
  }

  v239 = objc_msgSend_pathType(v436, v235, v236, v237, v238);
  v244 = objc_msgSend_seriesType(TSCHSelectionPathType, v240, v241, v242, v243);
  if (objc_msgSend_isEqual_(v239, v245, v246, v247, v248, v244))
  {
LABEL_46:

LABEL_47:
    goto LABEL_48;
  }

  v253 = objc_msgSend_pathType(v436, v249, v250, v251, v252);
  v258 = objc_msgSend_seriesSymbolType(TSCHSelectionPathType, v254, v255, v256, v257);
  if (objc_msgSend_isEqual_(v253, v259, v260, v261, v262, v258))
  {
LABEL_45:

    goto LABEL_46;
  }

  v267 = objc_msgSend_pathType(v436, v263, v264, v265, v266);
  v272 = objc_msgSend_errorBarType(TSCHSelectionPathType, v268, v269, v270, v271);
  v273 = v267;
  if (objc_msgSend_isEqual_(v267, v274, v275, v276, v277, v272))
  {
LABEL_44:

    goto LABEL_45;
  }

  v282 = objc_msgSend_pathType(v436, v278, v279, v280, v281);
  v430 = objc_msgSend_trendLineType(TSCHSelectionPathType, v283, v284, v285, v286);
  v433 = v282;
  if (objc_msgSend_isEqual_(v282, v287, v288, v289, v290))
  {

    goto LABEL_44;
  }

  v319 = objc_msgSend_pathType(v436, v291, v292, v293, v294);
  v425 = objc_msgSend_trendLineEquationType(TSCHSelectionPathType, v320, v321, v322, v323);
  v426 = v319;
  if (objc_msgSend_isEqual_(v319, v324, v325, v326, v327))
  {
    v428 = 1;
  }

  else
  {
    v424 = objc_msgSend_pathType(v436, v328, v329, v330, v331);
    v336 = objc_msgSend_trendLineR2Type(TSCHSelectionPathType, v332, v333, v334, v335);
    v428 = objc_msgSend_isEqual_(v424, v337, v338, v339, v340, v336);
  }

  if (v428)
  {
LABEL_48:
    if (objc_msgSend_argumentsCount(v436, v295, v296, v297, v298))
    {
      objc_opt_class();
      v303 = objc_msgSend_argumentAtIndex_(v436, v299, v300, v301, v302, 0);
      v209 = TSUDynamicCast();

      if (v209)
      {
        v308 = objc_msgSend_unsignedIntegerValue(v209, v304, v305, v306, v307);
        v313 = objc_msgSend_model(v435, v309, v310, v311, v312);
        v318 = objc_msgSend_seriesAtIndex_(v313, v314, v315, v316, v317, v308);
LABEL_51:
        v67 = v318;

LABEL_35:
LABEL_36:
        pathCopy = v436;
        goto LABEL_11;
      }
    }

    goto LABEL_63;
  }

  v341 = objc_msgSend_pathType(v436, v295, v296, v297, v298);
  v346 = objc_msgSend_referenceLineType(TSCHSelectionPathType, v342, v343, v344, v345);
  if (objc_msgSend_isEqual_(v341, v347, v348, v349, v350, v346))
  {
    goto LABEL_59;
  }

  v355 = objc_msgSend_pathType(v436, v351, v352, v353, v354);
  v360 = objc_msgSend_referenceLineLabelType(TSCHSelectionPathType, v356, v357, v358, v359);
  if (objc_msgSend_isEqual_(v355, v361, v362, v363, v364, v360))
  {

LABEL_59:
LABEL_60:
    if (objc_msgSend_argumentsCount(v436, v369, v370, v371, v372))
    {
      objc_opt_class();
      v377 = objc_msgSend_argumentAtIndex_(v436, v373, v374, v375, v376, 0);
      v209 = TSUDynamicCast();

      if (v209)
      {
        v382 = objc_msgSend_unsignedIntegerValue(v209, v378, v379, v380, v381);
        v313 = objc_msgSend_model(v435, v383, v384, v385, v386);
        v318 = objc_msgSend_referenceLineForStyleSwapIndex_(v313, v387, v388, v389, v390, v382);
        goto LABEL_51;
      }
    }

LABEL_63:
    v67 = 0;
    goto LABEL_36;
  }

  v391 = objc_msgSend_pathType(v436, v365, v366, v367, v368);
  v396 = objc_msgSend_referenceLineValueLabelType(TSCHSelectionPathType, v392, v393, v394, v395);
  v401 = objc_msgSend_isEqual_(v391, v397, v398, v399, v400, v396);

  if (v401)
  {
    goto LABEL_60;
  }

  v402 = MEMORY[0x277D81150];
  v403 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v369, v370, v371, v372, "[TSCHChartInfo styleOwnerForSelectionPath:]");
  v408 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v404, v405, v406, v407, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
  v409 = NSStringFromSelector(aSelector);
  v414 = objc_msgSend_pathType(v436, v410, v411, v412, v413);
  v415 = v402;
  pathCopy = v436;
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v415, v416, v417, v418, v419, v403, v408, 3572, 0, "We have a TSCHSelectionPathType not accounted for in %@: %@", v409, v414);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v420, v421, v422, v423);
  v67 = 0;
LABEL_11:

  return v67;
}

- (int)paragraphStylePropertyForSelectionPath:(id)path
{
  pathCopy = path;
  v10 = objc_msgSend_pathType(pathCopy, v6, v7, v8, v9);
  v15 = objc_msgSend_seriesType(TSCHSelectionPathType, v11, v12, v13, v14);
  if (objc_msgSend_isEqual_(v10, v16, v17, v18, v19, v15))
  {

LABEL_4:
    objc_opt_class();
    v43 = objc_msgSend_styleOwnerForSelectionPath_(self, v39, v40, v41, v42, pathCopy);
    v44 = TSUDynamicCast();

    v49 = objc_msgSend_intValueForProperty_defaultValue_(v44, v45, v46, v47, v48, 1181, 0) != 0;
    goto LABEL_6;
  }

  v24 = objc_msgSend_pathType(pathCopy, v20, v21, v22, v23);
  v29 = objc_msgSend_seriesSymbolType(TSCHSelectionPathType, v25, v26, v27, v28);
  isEqual = objc_msgSend_isEqual_(v24, v30, v31, v32, v33, v29);

  if (isEqual)
  {
    goto LABEL_4;
  }

  v49 = 0;
LABEL_6:
  v50 = objc_msgSend_pathType(pathCopy, v35, v36, v37, v38);
  v55 = objc_msgSend_chartTitleType(TSCHSelectionPathType, v51, v52, v53, v54);
  v60 = objc_msgSend_isEqual_(v50, v56, v57, v58, v59, v55);

  if (v60)
  {
    v65 = 1126;
    goto LABEL_14;
  }

  v66 = objc_msgSend_pathType(pathCopy, v61, v62, v63, v64);
  v71 = objc_msgSend_chartDataSetNameType(TSCHSelectionPathType, v67, v68, v69, v70);
  v76 = objc_msgSend_isEqual_(v66, v72, v73, v74, v75, v71);

  if (v76)
  {
    v65 = 1099;
    goto LABEL_14;
  }

  v81 = objc_msgSend_pathType(pathCopy, v77, v78, v79, v80);
  v86 = objc_msgSend_legendSeriesNameType(TSCHSelectionPathType, v82, v83, v84, v85);
  if (objc_msgSend_isEqual_(v81, v87, v88, v89, v90, v86))
  {

LABEL_13:
    v65 = 1214;
    goto LABEL_14;
  }

  v95 = objc_msgSend_pathType(pathCopy, v91, v92, v93, v94);
  v100 = objc_msgSend_legendTrendLineNameType(TSCHSelectionPathType, v96, v97, v98, v99);
  v105 = objc_msgSend_isEqual_(v95, v101, v102, v103, v104, v100);

  if (v105)
  {
    goto LABEL_13;
  }

  v111 = objc_msgSend_pathType(pathCopy, v106, v107, v108, v109);
  v116 = objc_msgSend_axisTitleType(TSCHSelectionPathType, v112, v113, v114, v115);
  v121 = objc_msgSend_isEqual_(v111, v117, v118, v119, v120, v116);

  if (v121)
  {
    v65 = 1063;
  }

  else
  {
    v126 = objc_msgSend_pathType(pathCopy, v122, v123, v124, v125);
    v131 = objc_msgSend_axisLabelsType(TSCHSelectionPathType, v127, v128, v129, v130);
    v136 = objc_msgSend_isEqual_(v126, v132, v133, v134, v135, v131);

    if (v136 & 1) != 0 || (objc_msgSend_pathType(pathCopy, v137, v138, v139, v140), v141 = objc_claimAutoreleasedReturnValue(), objc_msgSend_seriesLabelType(TSCHSelectionPathType, v142, v143, v144, v145), v146 = objc_claimAutoreleasedReturnValue(), v151 = objc_msgSend_isEqual_(v141, v147, v148, v149, v150, v146), v146, v141, (v151))
    {
      v65 = 1034;
    }

    else
    {
      v156 = objc_msgSend_pathType(pathCopy, v152, v153, v154, v155);
      v161 = objc_msgSend_seriesValueSummaryLabelType(TSCHSelectionPathType, v157, v158, v159, v160);
      v166 = objc_msgSend_isEqual_(v156, v162, v163, v164, v165, v161);

      if (v166)
      {
        v65 = 1121;
      }

      else if (v49 || (objc_msgSend_pathType(pathCopy, v167, v168, v169, v170), v171 = objc_claimAutoreleasedReturnValue(), objc_msgSend_seriesValueLabelType(TSCHSelectionPathType, v172, v173, v174, v175), v176 = objc_claimAutoreleasedReturnValue(), v181 = objc_msgSend_isEqual_(v171, v177, v178, v179, v180, v176), v176, v171, v181))
      {
        objc_opt_class();
        v190 = objc_msgSend_styleOwnerForSelectionPath_(self, v186, v187, v188, v189, pathCopy);
        v191 = TSUDynamicCast();

        v196 = objc_msgSend_valueLabelPosition(v191, v192, v193, v194, v195);
        v201 = objc_msgSend_seriesType(v191, v197, v198, v199, v200);
        LOBYTE(v196) = objc_msgSend_filterChartLabelPosition_forSeries_(v201, v202, v203, v204, v205, v196, v191);

        if ((v196 & 2) != 0)
        {
          v65 = 1169;
        }

        else
        {
          v65 = 1164;
        }
      }

      else
      {
        v206 = objc_msgSend_pathType(pathCopy, v182, v183, v184, v185);
        v211 = objc_msgSend_trendLineEquationType(TSCHSelectionPathType, v207, v208, v209, v210);
        v216 = objc_msgSend_isEqual_(v206, v212, v213, v214, v215, v211);

        if (v216)
        {
          v65 = 1205;
        }

        else
        {
          v221 = objc_msgSend_pathType(pathCopy, v217, v218, v219, v220);
          v226 = objc_msgSend_trendLineR2Type(TSCHSelectionPathType, v222, v223, v224, v225);
          v231 = objc_msgSend_isEqual_(v221, v227, v228, v229, v230, v226);

          if (v231)
          {
            v65 = 1207;
          }

          else
          {
            v236 = objc_msgSend_pathType(pathCopy, v232, v233, v234, v235);
            v241 = objc_msgSend_referenceLineLabelType(TSCHSelectionPathType, v237, v238, v239, v240);
            v246 = objc_msgSend_isEqual_(v236, v242, v243, v244, v245, v241);

            if (v246)
            {
              v65 = 1220;
            }

            else
            {
              v251 = objc_msgSend_pathType(pathCopy, v247, v248, v249, v250);
              v256 = objc_msgSend_referenceLineValueLabelType(TSCHSelectionPathType, v252, v253, v254, v255);
              v261 = objc_msgSend_isEqual_(v251, v257, v258, v259, v260, v256);

              if (v261)
              {
                v65 = 1227;
              }

              else
              {
                v266 = objc_msgSend_pathType(pathCopy, v262, v263, v264, v265);
                v271 = objc_msgSend_type(v266, v267, v268, v269, v270);
                v276 = objc_msgSend_isEqual_(@"text", v272, v273, v274, v275, v271);

                if (v276)
                {
                  v281 = MEMORY[0x277D81150];
                  v282 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v277, v278, v279, v280, "[TSCHChartInfo paragraphStylePropertyForSelectionPath:]");
                  v287 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v283, v284, v285, v286, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
                  v288 = NSStringFromSelector(a2);
                  v293 = objc_msgSend_pathType(pathCopy, v289, v290, v291, v292);
                  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v281, v294, v295, v296, v297, v282, v287, 3621, 0, "We have a paragraph-style-accepting TSCHSelectionPathType not accounted for in %@: %@", v288, v293);

                  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v298, v299, v300, v301);
                }

                v65 = 0;
              }
            }
          }
        }
      }
    }
  }

LABEL_14:

  return v65;
}

- (id)paragraphStyleForSelectionPath:(id)path
{
  pathCopy = path;
  v9 = objc_msgSend_paragraphStylePropertyForSelectionPath_(self, v5, v6, v7, v8, pathCopy);
  if (v9)
  {
    v14 = v9;
    v15 = objc_msgSend_styleOwnerForSelectionPath_(self, v10, v11, v12, v13, pathCopy);
    v20 = v15;
    if (!v15 || (v21 = objc_msgSend_intValueForProperty_defaultValue_(v15, v16, v17, v18, v19, v14, 0xFFFFFFFFLL), (v21 & 0x80000000) != 0) || (v26 = v21, objc_msgSend_paragraphStyles(self, v22, v23, v24, v25), v27 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend_count(v27, v28, v29, v30, v31), v27, v32 <= v26))
    {
      v37 = 0;
    }

    else
    {
      v37 = objc_msgSend_paragraphStyleAtIndex_(self, v33, v34, v35, v36, v26);
    }
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

- (id)scaleAllStrokesInStyle:(id)style byRatio:(double)ratio
{
  styleCopy = style;
  if (styleCopy)
  {
    v6 = objc_alloc_init(MEMORY[0x277D80AB8]);
    v7 = objc_opt_class();
    v12 = objc_msgSend_properties(v7, v8, v9, v10, v11);
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = sub_27626F648;
    v62[3] = &unk_27A6B7118;
    v13 = styleCopy;
    v63 = v13;
    ratioCopy = ratio;
    v14 = v6;
    v64 = v14;
    objc_msgSend_enumeratePropertiesUsingBlock_(v12, v15, v16, v17, v18, v62);
    if (objc_msgSend_count(v14, v19, v20, v21, v22))
    {
      v27 = objc_msgSend_stylesheet(v13, v23, v24, v25, v26);
      isLocked = objc_msgSend_isLocked(v27, v28, v29, v30, v31);

      v37 = objc_msgSend_stylesheet(v13, v33, v34, v35, v36);
      objc_msgSend_setIsLocked_(v37, v38, v39, v40, v41, 0);

      v46 = objc_msgSend_stylesheet(v13, v42, v43, v44, v45);
      v51 = objc_msgSend_variationOfStyle_propertyMap_(v46, v47, v48, v49, v50, v13, v14);

      if (isLocked)
      {
        v56 = objc_msgSend_stylesheet(v13, v52, v53, v54, v55);
        objc_msgSend_setIsLocked_(v56, v57, v58, v59, v60, 1);
      }
    }

    else
    {
      v51 = v13;
    }
  }

  else
  {
    v51 = 0;
  }

  return v51;
}

- (NSArray)fillsForSeriesAndTheme
{
  v7 = objc_msgSend_count(self->_themeSeriesStyles, a2, v2, v3, v4);
  if (!v7)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCHChartInfo fillsForSeriesAndTheme]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 3908, 0, "No series styles in theme");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v6, v8, v9, v10, v7);
  v31 = objc_msgSend_columnSeries(TSCHChartSeriesType, v27, v28, v29, v30);
  v36 = v31;
  if (v7)
  {
    v37 = 0;
    while (1)
    {
      v38 = objc_msgSend_model(self, v32, v33, v34, v35);
      v43 = objc_msgSend_numberOfSeries(v38, v39, v40, v41, v42);

      if (v37 >= v43)
      {
        break;
      }

      v48 = objc_msgSend_model(self, v44, v45, v46, v47);
      v53 = objc_msgSend_seriesAtIndex_(v48, v49, v50, v51, v52, v37);

      v58 = objc_msgSend_fillForSeries(v53, v54, v55, v56, v57);
      v63 = objc_msgSend_seriesType(v53, v59, v60, v61, v62);

      if (!v58)
      {
        goto LABEL_9;
      }

LABEL_12:
      objc_msgSend_addObject_(v26, v44, v45, v46, v47, v58);

      ++v37;
      v36 = v63;
      if (v7 == v37)
      {
        goto LABEL_15;
      }
    }

    v63 = v36;
LABEL_9:
    v64 = objc_msgSend_seriesStyleForSeriesIndex_(self, v44, v45, v46, v47, v37);
    v69 = objc_msgSend_specificFillSetFillProperty(v63, v65, v66, v67, v68);
    v58 = objc_msgSend_valueForProperty_(v64, v70, v71, v72, v73, v69);

    if (!v58)
    {
      v74 = objc_msgSend_seriesStyleForSeriesIndex_(self, v44, v45, v46, v47, v37);
      v58 = objc_msgSend_valueForProperty_(v74, v75, v76, v77, v78, 1411);

      if (!v58)
      {
        v58 = objc_msgSend_null(MEMORY[0x277CBEB68], v44, v45, v46, v47);
      }
    }

    goto LABEL_12;
  }

  v63 = v31;
LABEL_15:

  return v26;
}

- (CGRect)chartBodyBoundsForSageImportWithSageChartType:(BOOL)type isSpiceDoc:(BOOL)doc
{
  if (type)
  {
    docCopy = doc;
    v9 = objc_msgSend_helperWithImportedChartInfo_importedInfoGeometry_(TSCHSageGeometryHelper, a2, v4, v5, v6, self, 0);
    objc_msgSend_computeSageLayoutCBBForSpiceDoc_(v9, v10, v11, v12, v13, docCopy);
  }

  else
  {
    v9 = objc_msgSend_chartLayoutWithChartInfo_(TSCHChartLayout, a2, v4, v5, v6, self, doc);
    v22 = objc_msgSend_geometry(self, v18, v19, v20, v21);
    objc_msgSend_size(v22, v23, v24, v25, v26);
    objc_msgSend_layoutForCircumscribingSize_(v9, v27, v28, v29, v30);

    objc_msgSend_chartBodyFrame(v9, v31, v32, v33, v34);
  }

  v35 = v14;
  v36 = v15;
  v37 = v16;
  v38 = v17;

  v62.origin.x = v35;
  v62.origin.y = v36;
  v62.size.width = v37;
  v62.size.height = v38;
  if (CGRectIsNull(v62))
  {
    v43 = MEMORY[0x277D81150];
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, v40, v41, v42, "[TSCHChartInfo chartBodyBoundsForSageImportWithSageChartType:isSpiceDoc:]");
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, v46, v47, v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v50, v51, v52, v53, v44, v49, 3943, 0, "chart body bounds is null");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55, v56, v57);
  }

  v58 = v35;
  v59 = v36;
  v60 = v37;
  v61 = v38;
  result.size.height = v61;
  result.size.width = v60;
  result.origin.y = v59;
  result.origin.x = v58;
  return result;
}

- (void)upgradeWithHorizontalMin:(id)min horizontalMax:(id)max valueMin:(id)valueMin valueMax:(id)valueMax
{
  v149 = *MEMORY[0x277D85DE8];
  minCopy = min;
  maxCopy = max;
  valueMinCopy = valueMin;
  valueMaxCopy = valueMax;
  v141 = objc_msgSend_array(MEMORY[0x277CBEB18], v10, v11, v12, v13);
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  selfCopy = self;
  v17 = objc_msgSend_model(self, v14, 0.0, v15, v16);
  v22 = objc_msgSend_valueAxisList(v17, v18, v19, v20, v21);

  obj = v22;
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, v24, v25, v26, &v144, v148, 16);
  if (v27)
  {
    v32 = v27;
    v140 = *v145;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v145 != v140)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v144 + 1) + 8 * i);
        v35 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v28, v29, v30, v31);
        v40 = objc_msgSend_axisID(v34, v36, v37, v38, v39);
        if (objc_msgSend_type(v40, v41, v42, v43, v44) == 1)
        {
          v49 = objc_msgSend_chartType(selfCopy, v45, v46, v47, v48);
          v54 = objc_msgSend_scatterChart(TSCHChartType, v50, v51, v52, v53);
          isEqual = objc_msgSend_isEqual_(v49, v55, v56, v57, v58, v54);

          v60 = maxCopy;
          if (isEqual)
          {
            v61 = minCopy;
          }

          else
          {
            v60 = valueMaxCopy;
            v61 = valueMinCopy;
          }
        }

        else
        {

          v60 = valueMaxCopy;
          v61 = valueMinCopy;
        }

        v62 = v60;
        v63 = v61;
        v68 = objc_msgSend_currentAxisScaleSetting(v34, v64, v65, v66, v67);
        v73 = objc_msgSend_analysis(v34, v69, v70, v71, v72);
        objc_msgSend_modelMax(v73, v74, v75, v76, v77);
        v79 = v78;
        objc_msgSend_modelMin(v73, v80, v78, v81, v82);
        v87 = v84;
        v88 = v84 == v79;
        if (v84 <= v79)
        {
          v84 = v84 + 1.0;
          if (v88)
          {
            v89 = v87 + 1.0;
          }

          else
          {
            v89 = v79;
          }
        }

        else
        {
          v89 = v84;
          v87 = v79;
        }

        if (v68 == 2)
        {
          if (!v62 && v89 < 1.0)
          {
            v90 = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], v83, v84, v85, v86, 1064);
            objc_msgSend_setObject_forKeyedSubscript_(v35, v91, v92, v93, v94, &unk_28856ED00, v90);
          }

          if (v87 > 1.0)
          {
            if (!v63 || (objc_msgSend_doubleValue(v63, v83, v84, v85, v86), v84 <= 0.0))
            {
              v95 = &unk_28856ED00;
LABEL_29:
              v101 = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], v83, v84, v85, v86, 1065);
              objc_msgSend_setObject_forKeyedSubscript_(v35, v102, v103, v104, v105, v95, v101);
            }
          }
        }

        else
        {
          if (!v62 && v89 < 0.0)
          {
            v96 = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], v83, v84, v85, v86, 1064);
            objc_msgSend_setObject_forKeyedSubscript_(v35, v97, v98, v99, v100, &unk_28856ED10, v96);
          }

          if (!v63)
          {
            v95 = &unk_28856ED10;
            if (v87 > 0.0)
            {
              goto LABEL_29;
            }
          }
        }

        if (v62)
        {
          objc_msgSend_doubleValue(v62, v83, v84, v85, v86);
          if (v89 > v84)
          {
            v106 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v83, v89, v85, v86);
            v111 = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], v107, v108, v109, v110, 1064);
            objc_msgSend_setObject_forKeyedSubscript_(v35, v112, v113, v114, v115, v106, v111);
          }
        }

        if (v63)
        {
          objc_msgSend_doubleValue(v63, v83, v84, v85, v86);
          if (v87 < v84)
          {
            v116 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v83, v87, v85, v86);
            v121 = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], v117, v118, v119, v120, 1065);
            objc_msgSend_setObject_forKeyedSubscript_(v35, v122, v123, v124, v125, v116, v121);
          }
        }

        v126 = objc_msgSend_swapTuplesForMutations_forImport_(v34, v83, v84, v85, v86, v35, 0);
        objc_msgSend_addObjectsFromArray_(v141, v127, v128, v129, v130, v126);
      }

      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v28, v29, v30, v31, &v144, v148, 16);
    }

    while (v32);
  }

  v135 = objc_msgSend_applyStyleSwapTuples_(selfCopy, v131, v132, v133, v134, v141);
}

- (void)upgradeAxisLabelFormatWithValuePrefix:(id)prefix valueSuffix:(id)suffix valueUseSeparator:(BOOL)separator horizontalPrefix:(id)horizontalPrefix horizontalSuffix:(id)horizontalSuffix horizontalUseSeparator:(BOOL)useSeparator
{
  useSeparatorCopy = useSeparator;
  separatorCopy = separator;
  v197 = *MEMORY[0x277D85DE8];
  prefixCopy = prefix;
  suffixCopy = suffix;
  horizontalPrefixCopy = horizontalPrefix;
  horizontalSuffixCopy = horizontalSuffix;
  v187 = objc_msgSend_array(MEMORY[0x277CBEB18], v13, v14, v15, v16);
  selfCopy = self;
  v191 = 0u;
  v192 = 0u;
  v193 = 0u;
  v194 = 0u;
  v20 = objc_msgSend_model(self, v17, 0.0, v18, v19);
  v25 = objc_msgSend_valueAxisList(v20, v21, v22, v23, v24);

  obj = v25;
  v190 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, v27, v28, v29, &v191, v196, 16);
  if (v190)
  {
    v34 = 0x277CCA000;
    v185 = *v192;
    v182 = prefixCopy;
    do
    {
      for (i = 0; i != v190; ++i)
      {
        if (*v192 != v185)
        {
          objc_enumerationMutation(obj);
        }

        v36 = *(*(&v191 + 1) + 8 * i);
        v37 = objc_msgSend_chartType(selfCopy, v30, v31, v32, v33);
        v42 = objc_msgSend_scatterChart(TSCHChartType, v38, v39, v40, v41);
        v47 = v42;
        if (v37 == v42)
        {
          v51 = objc_msgSend_axisID(v36, v43, v44, v45, v46);
          v56 = objc_msgSend_type(v51, v52, v53, v54, v55);

          v34 = 0x277CCA000uLL;
          v48 = horizontalPrefixCopy;
          if (v56 == 1)
          {
            v49 = horizontalSuffixCopy;
          }

          else
          {
            v48 = prefixCopy;
            v49 = suffixCopy;
          }

          if (v56 == 1)
          {
            v50 = useSeparatorCopy;
          }

          else
          {
            v50 = separatorCopy;
          }
        }

        else
        {

          v48 = prefixCopy;
          v49 = suffixCopy;
          v50 = separatorCopy;
        }

        v57 = v48;
        v58 = v49;
        v63 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v59, v60, v61, v62);
        objc_opt_class();
        v68 = objc_msgSend_valueForProperty_(v36, v64, v65, v66, v67, 1052);
        v69 = TSUDynamicCast();

        if (objc_msgSend_BOOLValue(v69, v70, v71, v72, v73))
        {
          if ((objc_msgSend_isEqualToString_(v57, v74, v75, v76, v77, &stru_288528678) & 1) != 0 || objc_msgSend_isEqualToString_(v57, v78, v79, v80, v81, @"None"))
          {

            v57 = 0;
          }

          if ((objc_msgSend_isEqualToString_(v58, v82, v83, v84, v85, &stru_288528678) & 1) != 0 || objc_msgSend_isEqualToString_(v58, v86, v87, v88, v89, @"None"))
          {

            v58 = 0;
          }

          v184 = v69;
          if (objc_msgSend_currentAxisScaleSetting(v36, v90, v91, v92, v93) == 2)
          {
            v98 = *(v34 + 2992);
            v99 = objc_msgSend_analysis(v36, v94, v95, v96, v97);
            objc_msgSend_modelMin(v99, v100, v101, v102, v103);
            v108 = objc_msgSend_numberWithDouble_(v98, v104, v105, v106, v107);
            v195 = v108;
            objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v109, v110, v111, v112, &v195, 1);
            v114 = v113 = v34;

            v115 = v114;
            v116 = 4;
          }

          else
          {
            v117 = objc_msgSend_analysis(v36, v94, v95, v96, v97);
            objc_msgSend_majorGridLocations(v117, v118, v119, v120, v121);
            v114 = v113 = v34;

            v115 = v114;
            v116 = 3;
          }

          v122 = sub_27628AE54(v115, v116);

          v127 = objc_msgSend_tsch_numberWithStyleProperty_(*(v113 + 2992), v123, v124, v125, v126, 1043);
          objc_msgSend_setObject_forKeyedSubscript_(v63, v128, v129, v130, v131, &unk_28856C0E0, v127);

          v136 = objc_msgSend_numberFormatWithFormatType_decimalPlaces_showThousandsSeparator_(TSCHNumberFormat, v132, v133, v134, v135, 256, v122, v50);
          v141 = v136;
          if (v57 | v58)
          {
            v142 = objc_msgSend_mutableCopy(v136, v137, v138, v139, v140);

            objc_msgSend_setPrefixString_(v142, v143, v144, v145, v146, v57);
            objc_msgSend_setSuffixString_(v142, v147, v148, v149, v150, v58);
            v155 = objc_msgSend_copy(v142, v151, v152, v153, v154);
            v160 = objc_msgSend_tsch_numberWithStyleProperty_(*(v113 + 2992), v156, v157, v158, v159, 1042);
            objc_msgSend_setObject_forKeyedSubscript_(v63, v161, v162, v163, v164, v155, v160);

            v141 = v142;
          }

          else
          {
            v155 = objc_msgSend_tsch_numberWithStyleProperty_(*(v113 + 2992), v137, v138, v139, v140, 1042);
            objc_msgSend_setObject_forKeyedSubscript_(v63, v165, v166, v167, v168, v141, v155);
            v58 = 0;
            v57 = 0;
          }

          prefixCopy = v182;
          v34 = 0x277CCA000;
          v69 = v184;
        }

        v169 = objc_msgSend_swapTuplesForMutations_forImport_(v36, v74, v75, v76, v77, v63, 0);
        objc_msgSend_addObjectsFromArray_(v187, v170, v171, v172, v173, v169);
      }

      v190 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v30, v31, v32, v33, &v191, v196, 16);
    }

    while (v190);
  }

  v178 = objc_msgSend_applyStyleSwapTuples_(selfCopy, v174, v175, v176, v177, v187);
}

- (void)upgradeChartRoundedCornerRadiusWithValue:(double)value
{
  v6 = MEMORY[0x277CBEAC0];
  v7 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], a2, value, v3, v4);
  v12 = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], v8, v9, v10, v11, 1111);
  v27 = objc_msgSend_dictionaryWithObject_forKey_(v6, v13, v14, v15, v16, v7, v12);

  v21 = objc_msgSend_p_swapTuplesForMutations_(self, v17, v18, v19, v20, v27);
  v26 = objc_msgSend_applyStyleSwapTuples_(self, v22, v23, v24, v25, v21);
}

- (void)upgradeStackedSummaryLabelPropertiesWithTitleParagraphStyleIndex:(unint64_t)index
{
  v40[5] = *MEMORY[0x277D85DE8];
  v8 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, a2, v3, v4, v5);
  if (objc_msgSend_supportsNumberFormatSameAsSource(v8, v9, v10, v11, v12))
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  v39[0] = &unk_28856C0F8;
  v39[1] = &unk_28856C128;
  v40[0] = &unk_28856C110;
  v40[1] = MEMORY[0x277CBEC28];
  v40[2] = &unk_28856ED20;
  v39[2] = &unk_28856C140;
  v39[3] = &unk_28856C158;
  v18 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v14, v15, v16, v17, v13);
  v40[3] = v18;
  v39[4] = &unk_28856C170;
  v23 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v19, v20, v21, v22, index);
  v40[4] = v23;
  v28 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v24, v25, v26, v27, v40, v39, 5);

  v33 = objc_msgSend_p_swapTuplesForMutations_(self, v29, v30, v31, v32, v28);
  v38 = objc_msgSend_applyStyleSwapTuples_(self, v34, v35, v36, v37, v33);
}

- (void)performDeferredUpgradeAndImportOperations
{
  v6 = MEMORY[0x277CBF398];
  if (self->_needsCalcEngineDependentUpgrade)
  {
    v7 = objc_msgSend_geometry(self, a2, v2, v3, v4);
    v12 = objc_msgSend_copy(v7, v8, v9, v10, v11);

    v17 = objc_msgSend_intValueForProperty_defaultValue_(self, v13, v14, v15, v16, 1113, 1);
    if (CGRectIsNull(self->_innerChartFrame) || !v17)
    {
      objc_msgSend_size(v12, v18, v19, v20, v21);
      TSURectWithSize();
      width = v21;
      height = v24;
    }

    else
    {
      width = self->_innerChartFrame.size.width;
      height = self->_innerChartFrame.size.height;
    }

    v26 = objc_msgSend_legend(self, v18, v19, v20, v21);
    if (v26)
    {
      v30 = objc_msgSend_legend(self, v25, v27, v28, v29);
      objc_msgSend_legendOffset(v30, v31, v32, v33, v34);
      v39 = objc_msgSend_legend(self, v35, v36, v37, v38);
      objc_msgSend_legendSize(v39, v40, v41, v42, v43);
      TSURectWithOriginAndSize();
    }

    v48 = objc_msgSend_chartLayoutWithChartInfo_(TSCHChartLayout, v44, v45, v46, v47, self);
    objc_msgSend_setForceOmitLegend_(v48, v49, v50, v51, v52, 1);
    objc_msgSend_setForceOmitLabelPlacement_(v48, v53, v54, v55, v56, 1);
    objc_msgSend_layoutForCircumscribingSize_(v48, v57, width, height, v58);
    objc_msgSend_chartBodyFrame(v48, v59, v60, v61, v62);
    TSUAddPoints();
    objc_msgSend_chartBodyFrame(v48, v63, v64, v65, v66);
    TSURectWithOriginAndSize();
    v67 = v6[1];
    v259 = *v6;
    v260 = v67;
    v257 = v259;
    v258 = v67;
    v249 = v67;
    v250 = v259;
    v255 = v259;
    v256 = v67;
    sub_276283170(0, &v259.x, &v257, &v255.x);
    v254 = *MEMORY[0x277CBF348];
    v253 = *MEMORY[0x277CBF3A8];
    sub_27628348C(&v254, &v253, v68, v69, v70, v71, v72, v73, *&v255.x, *&v255.y, *&v256.width, *&v256.height);
    v78 = objc_msgSend_mutableCopy(v12, v74, v75, v76, v77);
    objc_msgSend_setSize_(v78, v79, v258.width, v258.height, v80);
    if (!v17)
    {
      v248 = *(MEMORY[0x277CBF3A0] + 24);
      v247 = *(MEMORY[0x277CBF3A0] + 8);
      v246 = *MEMORY[0x277CBF3A0];
      sub_276283170(0, &v259.x, &v257, &v255.x);
    }

    objc_msgSend_position(v12, v81, v82, v83, v84, v246, v247, v248);
    TSUAddPoints();
    objc_msgSend_setPosition_(v78, v85, v86, v87, v88);
    objc_msgSend_willModify(self, v89, v90, v91, v92);
    objc_msgSend_setGeometry_omitLegendResize_(self, v93, v94, v95, v96, v78, 1);
    v97 = v254;
    v102 = objc_msgSend_legend(self, v98, v99, v100, v101);
    objc_msgSend_setLegendOffset_(v102, v103, *&v97, *(&v97 + 1), v104);

    v105 = v253;
    v110 = objc_msgSend_legend(self, v106, v107, v108, v109);
    objc_msgSend_setLegendSize_(v110, v111, *&v105, *(&v105 + 1), v112);

    self->_innerChartFrame.origin = v250;
    self->_innerChartFrame.size = v249;
    self->_needsCalcEngineDependentUpgrade = 0;
  }

  if (self->_needsCalcEngineDependentImport)
  {
    if (self->_isOlderThanSage)
    {
      objc_msgSend_upgradeWithHorizontalMin_horizontalMax_valueMin_valueMax_(self, a2, v2, v3, v4, self->_horizontalMin, self->_horizontalMax, self->_valueMin, self->_valueMax);
      objc_msgSend_upgradeAxisLabelFormatWithValuePrefix_valueSuffix_valueUseSeparator_horizontalPrefix_horizontalSuffix_horizontalUseSeparator_(self, v113, v114, v115, v116, self->_valuePrefix, self->_valueSuffix, self->_valueUseSeparator, self->_horizontalPrefix, self->_horizontalSuffix, self->_horizontalUseSeparator);
    }

    v117 = objc_msgSend_chartType(self, a2, v2, v3, v4);
    v123 = objc_msgSend_bubbleChart(TSCHChartType, v118, v119, v120, v121);
    if (v117 == v123)
    {
      v132 = 0;
    }

    else
    {
      v127 = objc_msgSend_chartType(self, v122, v124, v125, v126);
      v132 = objc_msgSend_isMultiData(v127, v128, v129, v130, v131) ^ 1;
    }

    objc_msgSend_chartBodyBoundsForSageImportWithSageChartType_isSpiceDoc_(self, v133, v134, v135, v136, v132, self->_isOlderThanSage);
    v138 = v137;
    v140 = v139;
    objc_msgSend_minimumChartBodySize(self, v141, v142, v143, v137);
    if (v138 < v145)
    {
      v138 = v145;
    }

    if (v140 < v146)
    {
      v140 = v146;
    }

    v148 = objc_msgSend_geometry(self, v144, v145, v146, v147);
    v153 = objc_msgSend_mutableCopy(v148, v149, v150, v151, v152);

    objc_msgSend_position(v153, v154, v155, v156, v157);
    TSUAddPoints();
    objc_msgSend_setPosition_(v153, v158, v159, v160, v161);
    objc_msgSend_setSize_(v153, v162, v138, v140, v163);
    v259 = 0;
    v260 = 0;
    v257 = 0;
    v258 = 0;
    v255 = 0;
    v256 = 0;
    v254 = 0uLL;
    v253 = 0uLL;
    v251 = 0.0;
    v252 = 0.0;
    v167 = objc_msgSend_chartLayoutWithChartInfo_(TSCHChartLayout, v164, 0.0, v165, v166, self);
    objc_msgSend_setForceOmitLegend_(v167, v168, v169, v170, v171, 1);
    objc_msgSend_setForceOmitLabelPlacement_(v167, v172, v173, v174, v175, 1);
    v180 = objc_msgSend_geometry(self, v176, v177, v178, v179);
    objc_msgSend_size(v180, v181, v182, v183, v184);
    objc_msgSend_layoutForChartBodySize_(v167, v185, v186, v187, v188);

    objc_msgSend_chartAreaFrame(v167, v189, v190, v191, v192);
    objc_msgSend_chartBodyFrame(v167, v193, v194, v195, v196);
    v201 = objc_msgSend_legend(self, v197, v198, v199, v200);
    objc_msgSend_legendOffset(v201, v202, v203, v204, v205);
    v210 = objc_msgSend_legend(self, v206, v207, v208, v209);
    objc_msgSend_legendSize(v210, v211, v212, v213, v214);
    sub_2762833A4(&v253, &v259.x, &v257, &v255.x);

    TSUAddPoints();
    TSURectWithOriginAndSize();
    sub_27628348C(&v254, &v251, v215, v216, v217, v218, v219, v220, *&v255.x, *&v255.y, *&v256.width, *&v256.height);
    objc_msgSend_willModify(self, v221, v222, v223, v224);
    objc_msgSend_setGeometry_omitLegendResize_(self, v225, v226, v227, v228, v153, 1);
    v229 = v254;
    v234 = objc_msgSend_legend(self, v230, v231, v232, v233);
    objc_msgSend_setLegendOffset_(v234, v235, *&v229, *(&v229 + 1), v236);

    v237 = v251;
    v238 = v252;
    v243 = objc_msgSend_legend(self, v239, v240, v241, v242);
    objc_msgSend_setLegendSize_(v243, v244, v237, v238, v245);

    self->_needsCalcEngineDependentImport = 0;
  }
}

- (BOOL)isEquivalentForCrossDocumentPasteMasterComparison:(id)comparison
{
  if (self != comparison)
  {
    comparisonCopy = comparison;
    objc_opt_class();
    v5 = TSUDynamicCast();

    if (v5)
    {
      v10 = objc_msgSend_mediator(self, v6, v7, v8, v9);
      if (v10)
      {
      }

      else
      {
        v16 = objc_msgSend_mediator(v5, v11, v12, v13, v14);

        if (!v16)
        {
          v21 = objc_msgSend_geometry(self, v17, v18, v19, v20);
          v26 = objc_msgSend_geometry(v5, v22, v23, v24, v25);
          isEqual = objc_msgSend_isEqual_(v21, v27, v28, v29, v30, v26);

          if (isEqual)
          {
            v36 = objc_msgSend_chartType(self, v32, v33, v34, v35);
            v41 = objc_msgSend_chartType(v5, v37, v38, v39, v40);
            v46 = objc_msgSend_isEqual_(v36, v42, v43, v44, v45, v41);

            if (v46)
            {
              v51 = objc_msgSend_legend(self, v47, v48, v49, v50);
              v56 = objc_msgSend_legend(v5, v52, v53, v54, v55);
              isEquivalentForCrossDocumentPasteMasterComparison = objc_msgSend_isEquivalentForCrossDocumentPasteMasterComparison_(v51, v57, v58, v59, v60, v56);

              if (isEquivalentForCrossDocumentPasteMasterComparison)
              {
                v66 = objc_msgSend_model(self, v62, v63, v64, v65);
                v71 = objc_msgSend_model(v5, v67, v68, v69, v70);
                v76 = objc_msgSend_isEquivalentForCrossDocumentPasteMasterComparison_(v66, v72, v73, v74, v75, v71);

                if (v76)
                {
                  v94[0] = MEMORY[0x277D85DD0];
                  v94[1] = 3221225472;
                  v94[2] = sub_27627105C;
                  v94[3] = &unk_27A6B7160;
                  v95 = &unk_28851DDA0;
                  v77 = MEMORY[0x277C98B30](v94);
                  v78 = sub_276270FA8(v77, self->_nonStyle, *(v5 + 64));
                  if (v78 && sub_276270FA8(v78, self->_legendNonStyle, *(v5 + 80)) && (v77)[2](v77, self->_valueAxisNonStyles, *(v5 + 112)) && (v77)[2](v77, self->_categoryAxisNonStyles, *(v5 + 120)) && (v77)[2](v77, self->_seriesNonStyles, *(v5 + 144)))
                  {
                    v83 = objc_msgSend_chartStyleState(self, v79, v80, v81, v82);
                    v88 = objc_msgSend_chartStyleState(v5, v84, v85, v86, v87);
                    IsEquivalent_ignoringSeriesThemeStyles = objc_msgSend_otherStateIsEquivalent_ignoringSeriesThemeStyles_(v83, v89, v90, v91, v92, v88, 1);
                  }

                  else
                  {
                    IsEquivalent_ignoringSeriesThemeStyles = 0;
                  }

                  goto LABEL_18;
                }
              }
            }
          }
        }
      }
    }

    IsEquivalent_ignoringSeriesThemeStyles = 0;
LABEL_18:

    return IsEquivalent_ignoringSeriesThemeStyles;
  }

  return 1;
}

- (int64_t)mixingTypeWithObject:(id)object context:(id)context
{
  contextCopy = context;
  objectCopy = object;
  objc_opt_class();
  v7 = TSUDynamicCast();

  if (!v7)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHChartInfo mixingTypeWithObject:context:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 4306, 0, "nil object after cast");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  objc_opt_class();
  v27 = TSUClassAndProtocolCast();
  objc_opt_class();
  v28 = TSUClassAndProtocolCast();
  TSDMixingTypeWithObjects();
  TSDMixingTypeBestFromMixingTypes();

  objc_opt_class();
  v29 = TSUClassAndProtocolCast();
  objc_opt_class();
  v30 = TSUClassAndProtocolCast();
  TSDMixingTypeWithObjects();
  TSDMixingTypeBestFromMixingTypes();

  objc_opt_class();
  v31 = TSUClassAndProtocolCast();
  objc_opt_class();
  v32 = TSUClassAndProtocolCast();
  TSDMixingTypeWithObjects();
  TSDMixingTypeBestFromMixingTypes();

  objc_opt_class();
  v33 = TSUClassAndProtocolCast();
  objc_opt_class();
  v34 = TSUClassAndProtocolCast();
  TSDMixingTypeWithObjects();
  TSDMixingTypeBestFromMixingTypes();

  objc_opt_class();
  v35 = TSUClassAndProtocolCast();
  objc_opt_class();
  v36 = TSUClassAndProtocolCast();
  TSDMixingTypeWithObjects();
  TSDMixingTypeBestFromMixingTypes();

  objc_opt_class();
  v37 = TSUClassAndProtocolCast();
  objc_opt_class();
  v38 = TSUClassAndProtocolCast();
  TSDMixingTypeWithObjects();
  TSDMixingTypeBestFromMixingTypes();

  TSDMixingTypeWithObjects();
  v39 = TSDMixingTypeBestFromMixingTypes();

  return v39;
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  v7 = TSUDynamicCast();

  v8 = objc_alloc(objc_opt_class());
  v14 = objc_msgSend_p_init(v8, v9, v10, v11, v12);
  if (v14)
  {
    style = self->_style;
    v19 = objc_msgSend_context(self, v13, v15, v16, v17);
    v20 = sub_276263BE4(style, 0, v19);
    v21 = *(v14 + 56);
    *(v14 + 56) = v20;

    nonStyle = self->_nonStyle;
    v27 = objc_msgSend_context(self, v23, v24, v25, v26);
    v28 = sub_276263BE4(nonStyle, 0, v27);
    v29 = *(v14 + 64);
    *(v14 + 64) = v28;

    v33 = objc_msgSend_mixedObjectWithFraction_ofObject_(self->_chartType, v30, fraction, v31, v32, v7[2]);
    v34 = *(v14 + 16);
    *(v14 + 16) = v33;

    v38 = objc_msgSend_mixedObjectWithFraction_ofObject_(self->_legend, v35, fraction, v36, v37, v7[3]);
    v39 = *(v14 + 24);
    *(v14 + 24) = v38;

    objc_msgSend_setChartInfo_(*(v14 + 24), v40, v41, v42, v43, v14);
    legendStyle = self->_legendStyle;
    v49 = objc_msgSend_context(self, v45, v46, v47, v48);
    v50 = sub_276263BE4(legendStyle, 0, v49);
    v51 = *(v14 + 72);
    *(v14 + 72) = v50;

    legendNonStyle = self->_legendNonStyle;
    v57 = objc_msgSend_context(self, v53, v54, v55, v56);
    v58 = sub_276263BE4(legendNonStyle, 0, v57);
    v59 = *(v14 + 80);
    *(v14 + 80) = v58;

    TSUMixRects();
    *(v14 + 200) = v60;
    *(v14 + 208) = v61;
    *(v14 + 216) = v62;
    *(v14 + 224) = v63;
    valueAxisStyles = self->_valueAxisStyles;
    v66 = objc_msgSend_context(self, v65, v60, v61, v62, *&fraction);
    v67 = sub_276263BE4(valueAxisStyles, 0, v66);
    v68 = *(v14 + 96);
    *(v14 + 96) = v67;

    categoryAxisStyles = self->_categoryAxisStyles;
    v74 = objc_msgSend_context(self, v70, v71, v72, v73);
    v75 = sub_276263BE4(categoryAxisStyles, 0, v74);
    v76 = *(v14 + 104);
    *(v14 + 104) = v75;

    themeSeriesStyles = self->_themeSeriesStyles;
    v82 = objc_msgSend_context(self, v78, v79, v80, v81);
    v83 = sub_276263BE4(themeSeriesStyles, 0, v82);
    v84 = *(v14 + 128);
    *(v14 + 128) = v83;

    privateSeriesStyles = self->_privateSeriesStyles;
    v90 = objc_msgSend_context(self, v86, v87, v88, v89);
    v91 = sub_276263BE4(privateSeriesStyles, 0, v90);
    v92 = *(v14 + 136);
    *(v14 + 136) = v91;

    paragraphStyles = self->_paragraphStyles;
    v98 = objc_msgSend_context(self, v94, v95, v96, v97);
    v99 = sub_276263BE4(paragraphStyles, 0, v98);
    v100 = *(v14 + 168);
    *(v14 + 168) = v99;

    valueAxisNonStyles = self->_valueAxisNonStyles;
    v106 = objc_msgSend_context(self, v102, v103, v104, v105);
    v107 = sub_276263BE4(valueAxisNonStyles, 0, v106);
    v108 = *(v14 + 112);
    *(v14 + 112) = v107;

    categoryAxisNonStyles = self->_categoryAxisNonStyles;
    v114 = objc_msgSend_context(self, v110, v111, v112, v113);
    v115 = sub_276263BE4(categoryAxisNonStyles, 0, v114);
    v116 = *(v14 + 120);
    *(v14 + 120) = v115;

    seriesNonStyles = self->_seriesNonStyles;
    v122 = objc_msgSend_context(self, v118, v119, v120, v121);
    v123 = sub_276263BE4(seriesNonStyles, 0, v122);
    v124 = *(v14 + 144);
    *(v14 + 144) = v123;

    TSUMixPoints();
    *(v14 + 232) = v125;
    *(v14 + 240) = v126;
    v129 = objc_msgSend_mixedObjectWithFraction_ofObject_(self->_model, v127, fraction, v126, v128, v7[4]);
    v130 = *(v14 + 32);
    *(v14 + 32) = v129;

    objc_msgSend_setChartInfo_(*(v14 + 32), v131, v132, v133, v134, v14);
    objc_msgSend_invalidateModel(*(v14 + 32), v135, v136, v137, v138);
  }

  return v14;
}

- (BOOL)seriesStyleIsPrivate:(id)private
{
  v25 = *MEMORY[0x277D85DE8];
  privateCopy = private;
  if (privateCopy)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = self->_themeSeriesStyles;
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, v7, v8, v9, &v20, v24, 16);
    if (v10)
    {
      v15 = v10;
      v16 = *v21;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v5);
          }

          if (*(*(&v20 + 1) + 8 * i) == privateCopy)
          {
            v18 = 0;
            goto LABEL_12;
          }
        }

        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v11, v12, v13, v14, &v20, v24, 16);
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v18 = 1;
LABEL_12:
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

- (unint64_t)indexOfParagraphStyleAddingIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  v10 = objc_msgSend_indexOfObject_(self->_paragraphStyles, v5, v6, v7, v8, necessaryCopy);
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = objc_msgSend_count(self->_paragraphStyles, v9, v11, v12, v13);
    objc_msgSend_addObject_(self->_paragraphStyles, v14, v15, v16, v17, necessaryCopy);
  }

  return v10;
}

- (TSCHChartDrawableInfo)drawableInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_drawableInfo);

  return WeakRetained;
}

- (CGPoint)previewOrigin
{
  x = self->_previewOrigin.x;
  y = self->_previewOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)innerChartFrame
{
  x = self->_innerChartFrame.origin.x;
  y = self->_innerChartFrame.origin.y;
  width = self->_innerChartFrame.size.width;
  height = self->_innerChartFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)getSeriesStyleForSeriesIndex:(unint64_t)index
{
  v8 = objc_msgSend_count(self->_themeSeriesStyles, a2, v3, v4, v5);
  v14 = objc_msgSend_count(self->_privateSeriesStyles, v9, v10, v11, v12);
  if (!v8)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v15, v16, v17, "[TSCHChartInfo(CHETStateSupport) getSeriesStyleForSeriesIndex:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v25, v26, v27, v28, v19, v24, 4431, 0, "No theme styles for this chart... how odd.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  }

  if (v14 <= index)
  {
    v33 = 0;
  }

  else
  {
    v33 = objc_msgSend_objectAtIndex_(self->_privateSeriesStyles, v13, v15, v16, v17, index);
    if (v33)
    {
      v34 = objc_msgSend_null(MEMORY[0x277CBEB68], v13, v15, v16, v17);
      isEqual = objc_msgSend_isEqual_(v33, v35, v36, v37, v38, v34);

      if (!isEqual)
      {
        v40 = objc_opt_class();
        v41 = sub_2762CD788(v40, v33);
        if (v41)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }
    }
  }

  if (!v8 || (objc_msgSend_objectAtIndex_(self->_themeSeriesStyles, v13, v15, v16, v17, index % v8), v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_opt_class(), sub_2762CD788(v43, v42), v41 = objc_claimAutoreleasedReturnValue(), v42, !v41))
  {
LABEL_11:
    v44 = MEMORY[0x277D81150];
    v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v15, v16, v17, "[TSCHChartInfo(CHETStateSupport) getSeriesStyleForSeriesIndex:]");
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, v47, v48, v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v51, v52, v53, v54, v45, v50, 4450, 0, "invalid nil value for '%{public}s'", "retVal");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56, v57, v58);
    v41 = 0;
  }

LABEL_12:

  return v41;
}

- (id)getSeriesNonstyleForSeriesIndex:(unint64_t)index
{
  if (objc_msgSend_count(self->_seriesNonStyles, a2, v3, v4, v5) <= index)
  {
    v14 = 0;
  }

  else
  {
    v8 = objc_opt_class();
    v13 = objc_msgSend_objectAtIndex_(self->_seriesNonStyles, v9, v10, v11, v12, index);
    v14 = sub_2762CD788(v8, v13);
  }

  return v14;
}

- (float)minFrameDimensionForRadius:(float)radius withMaxExplosion:(float)explosion
{
  TSUClamp();
  *&v5 = v5;
  v6 = fmaxf(radius, 0.0);
  return ceilf((v6 * (*&v5 + 1.0)) + (v6 * (*&v5 + 1.0)));
}

- (float)radiusForFrame:(CGRect)frame withMaxExplosion:(float)explosion
{
  height = frame.size.height;
  width = frame.size.width;
  TSUClamp();
  v7 = v6;
  if (height >= width)
  {
    v8 = width;
  }

  else
  {
    v8 = height;
  }

  v9 = floor(v8 * 0.5 / (v7 + 1.0));
  if (v9 < 0.0)
  {
    return 0.0;
  }

  return v9;
}

- (float)maximumExplosionOfAllSeriesExcept:(id)except
{
  exceptCopy = except;
  v9 = objc_msgSend_model(self, v5, v6, v7, v8);
  v14 = objc_msgSend_numberOfSeries(v9, v10, v11, v12, v13);
  if (v14)
  {
    v19 = v14;
    v20 = 0;
    v21 = 0.0;
    do
    {
      if (!exceptCopy || (objc_msgSend_containsIndex_(exceptCopy, v15, v16, v17, v18, v20) & 1) == 0)
      {
        v22 = objc_msgSend_seriesAtIndex_(v9, v15, v16, v17, v18, v20);
        objc_msgSend_floatValueForProperty_defaultValue_(v22, v23, 0.0, v24, v25, 1211);
        if (v26 >= v21)
        {
          v21 = v26;
        }
      }

      ++v20;
    }

    while (v19 != v20);
  }

  else
  {
    v21 = 0.0;
  }

  return v21;
}

- (BOOL)isSingleCircleSpecialCaseOutSeries:(id *)series
{
  v7 = objc_msgSend_model(self, a2, v3, v4, v5);
  v12 = objc_msgSend_numberOfSeries(v7, v8, v9, v10, v11);
  v17 = v12;
  if (series)
  {
    *series = 0;
  }

  if (v12)
  {
    v18 = objc_msgSend_seriesAtIndex_(v7, v13, v14, v15, v16, 0);
    v23 = objc_msgSend_axisIDForAxisType_(v18, v19, v20, v21, v22, 3);

    objc_opt_class();
    v28 = objc_msgSend_axisForID_(v7, v24, v25, v26, v27, v23);
    v29 = TSUDynamicCast();

    objc_msgSend_totalForGroupIndex_(v29, v30, v31, v32, v33, 0);
    v38 = v35 == 0.0 || v17 == 1;
    v39 = v38;
    if (v38)
    {
      if (series)
      {
        objc_msgSend_seriesAtIndex_(v7, v34, v35, v36, v37, 0);
        *series = v40 = 0;
      }

      else
      {
        v40 = 0;
      }
    }

    else
    {
      v42 = v35;
      v43 = 0;
      do
      {
        v44 = objc_msgSend_seriesAtIndex_(v7, v34, v35, v36, v37, v43);
        v49 = objc_msgSend_valueForAxis_groupIndex_(v44, v45, v46, v47, v48, v29, 0);
        v54 = v49;
        if (v49)
        {
          objc_msgSend_doubleValue(v49, v50, v51, v52, v53);
        }

        else
        {
          v55 = 0.0;
        }

        v56 = fabs(v55);
        v40 = v56 == v42;
        if (series && v56 == v42)
        {
          v57 = v44;
          *series = v44;
        }

        ++v43;
      }

      while (v56 != v42 && v43 < v17);
    }

    v41 = v39 | v40;
  }

  else
  {
    v41 = 1;
  }

  return v41;
}

- (BOOL)p_containsCalloutLinesWithModelSync:(BOOL)sync
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_model(self, a2, v3, v4, v5);
  v12 = v7;
  if (sync)
  {
    objc_msgSend_seriesList(v7, v8, v9, v10, v11);
  }

  else
  {
    objc_msgSend_noSyncSeriesList(v7, v8, v9, v10, v11);
  }
  v13 = ;

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v17 = objc_msgSend_reverseObjectEnumerator(v13, v14, 0.0, v15, v16, 0);
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, v19, v20, v21, &v32, v36, 16);
  if (v22)
  {
    v27 = v22;
    v28 = *v33;
LABEL_6:
    v29 = 0;
    while (1)
    {
      if (*v33 != v28)
      {
        objc_enumerationMutation(v17);
      }

      v30 = 1;
      if (objc_msgSend_intValueForProperty_defaultValue_(*(*(&v32 + 1) + 8 * v29), v23, v24, v25, v26, 1138, 1))
      {
        break;
      }

      if (v27 == ++v29)
      {
        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v23, v24, v25, v26, &v32, v36, 16);
        if (v27)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v30 = 0;
  }

  return v30;
}

+ (double)beginValueForStackedBarSeries:(id)series groupIndex:(unint64_t)index unitSpaceIntercept:(double)intercept relativelyPositive:(BOOL)positive valueAxis:(id)axis
{
  positiveCopy = positive;
  seriesCopy = series;
  axisCopy = axis;
  v17 = objc_msgSend_seriesIndex(seriesCopy, v13, v14, v15, v16);
  if (v17)
  {
    v22 = v17;
    v24 = objc_msgSend_model(seriesCopy, v18, v19, v20, v21);
    v28 = v22 - 1;
    while (1)
    {
      v29 = objc_msgSend_seriesAtIndex_(v24, v23, v25, v26, v27, v28);
      objc_msgSend_unitSpaceValueForSeries_groupIndex_(axisCopy, v30, v31, v32, v33, v29, index);
      v35 = v34;
      v36 = v34 < intercept;
      if (positiveCopy)
      {
        v36 = v34 >= intercept;
      }

      if (v36)
      {
        break;
      }

      if (--v28 >= v22)
      {
        goto LABEL_9;
      }
    }

    intercept = v35;
LABEL_9:
  }

  return intercept;
}

- (id)p_summaryLabelDataFormatterFromCurrentModel
{
  v6 = objc_msgSend_intValueForProperty_defaultValue_(self, a2, v2, v3, v4, 1119, 2);
  v11 = objc_msgSend_chartInfo(self, v7, v8, v9, v10);
  v16 = objc_msgSend_mediator(v11, v12, v13, v14, v15);

  v21 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, v17, v18, v19, v20);
  v26 = objc_msgSend_supportsNumberFormatSameAsSource(v21, v22, v23, v24, v25);

  if (v6 == 1)
  {
    v31 = v26;
  }

  else
  {
    v31 = 0;
  }

  if (v16)
  {
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  v33 = objc_msgSend_model(self, v27, v28, v29, v30);
  v38 = objc_msgSend_firstValueAxis(v33, v34, v35, v36, v37);

  if (v32)
  {
    v43 = objc_msgSend_drawableInfo(self, v39, v40, v41, v42);
    v48 = objc_msgSend_documentRoot(v43, v44, v45, v46, v47);
    v53 = objc_msgSend_dataFormatterForAxis_documentRoot_(v16, v49, v50, v51, v52, v38, v48);
LABEL_17:

LABEL_18:
    goto LABEL_19;
  }

  v54 = objc_msgSend_gridValueType(v38, v39, v40, v41, v42);
  switch(v54)
  {
    case 3:
      v43 = objc_msgSend_objectValueForProperty_(self, v55, v56, v57, v58, 1117);
      v53 = TSUCheckedProtocolCast();
      goto LABEL_18;
    case 2:
      objc_opt_class();
      v91 = objc_msgSend_objectValueForProperty_(self, v87, v88, v89, v90, 1116);
      v43 = TSUCheckedDynamicCast();

      if (!v43)
      {
        v96 = MEMORY[0x277D81150];
        v97 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v92, v93, v94, v95, "[TSCHChartInfo(BarColumnAdditions) p_summaryLabelDataFormatterFromCurrentModel]");
        v102 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v98, v99, v100, v101, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v96, v103, v104, v105, v106, v97, v102, 4612, 0, "invalid nil value for '%{public}s'", "formatObject");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v107, v108, v109, v110);
      }

      v48 = objc_msgSend_drawableInfo(self, v92, v93, v94, v95);
      v72 = objc_msgSend_documentRoot(v48, v111, v112, v113, v114);
      v53 = objc_msgSend_dataFormatterForDocumentRoot_(v43, v115, v116, v117, v118, v72);
      goto LABEL_16;
    case 1:
      objc_opt_class();
      v63 = objc_msgSend_objectValueForProperty_(self, v59, v60, v61, v62, 1118);
      v43 = TSUCheckedDynamicCast();

      v48 = objc_msgSend_drawableInfo(self, v64, v65, v66, v67);
      v72 = objc_msgSend_documentRoot(v48, v68, v69, v70, v71);
      v77 = objc_msgSend_chartInfo(self, v73, v74, v75, v76);
      v82 = objc_msgSend_pasteboardCustomFormatList(v77, v78, v79, v80, v81);
      v53 = objc_msgSend_dataFormatterForDocumentRoot_pasteboardCustomFormatList_(v43, v83, v84, v85, v86, v72, v82);

LABEL_16:
      goto LABEL_17;
  }

  v120 = MEMORY[0x277D81150];
  v121 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, v56, v57, v58, "[TSCHChartInfo(BarColumnAdditions) p_summaryLabelDataFormatterFromCurrentModel]");
  v126 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v122, v123, v124, v125, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v120, v127, v128, v129, v130, v121, v126, 4620, 0, "Unsupported grid value type.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v131, v132, v133, v134);
  v53 = 0;
LABEL_19:

  return v53;
}

- (void)loadFromPreUFFArchive:(const void *)archive unarchiver:(id)unarchiver persistentChartInfo:(id)info
{
  unarchiverCopy = unarchiver;
  infoCopy = info;
  objc_storeWeak(&self->_drawableInfo, infoCopy);
  v14 = objc_msgSend_context(infoCopy, v10, v11, v12, v13);
  v147 = v14;
  v146 = objc_msgSend_array(MEMORY[0x277CBEB18], v15, v16, v17, v18);
  v19 = [TSCHChartModel alloc];
  v24 = objc_msgSend_initWithChartInfo_(v19, v20, v21, v22, v23, self);
  v29 = v24;
  if (*(archive + 22))
  {
    objc_msgSend_loadFromPreUFFArchive_unarchiver_contextForUpgradeOnly_(v24, v25, v26, v27, v28, *(archive + 22), unarchiverCopy, v14);
  }

  else
  {
    objc_msgSend_loadFromPreUFFArchive_unarchiver_contextForUpgradeOnly_(v24, v25, v26, v27, v28, &unk_2812F2650, unarchiverCopy, v14);
  }

  objc_msgSend_setModel_(self, v30, v31, v32, v33, v29);
  v34 = *(archive + 4);
  if ((v34 & 0x200) != 0)
  {
    self->_previewOrigin = vcvtq_f64_f32(*(*(archive + 30) + 24));
  }

  else
  {
    self->_previewOrigin = *MEMORY[0x277CBF348];
    v34 = *(archive + 4);
  }

  v35 = *(archive + 67);
  if ((v34 & 0x4000) == 0)
  {
    v35 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v145 = v35;
  v168[0] = 0;
  v168[1] = v168;
  v168[2] = 0x3032000000;
  v168[3] = sub_2762AA990;
  v168[4] = sub_2762AA9A0;
  v169 = 0;
  if ((v34 & 0x4400) == 0x400)
  {
    v36 = *(archive + 31);
    v167[0] = MEMORY[0x277D85DD0];
    v167[1] = 3221225472;
    v167[2] = sub_2762AA9A8;
    v167[3] = &unk_27A6B7458;
    v167[4] = v168;
    v37 = unarchiverCopy;
    v38 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v37, v39, v40, v41, v42, v36, v38, 0, v167);

    v34 = *(archive + 4);
  }

  if ((v34 & 4) != 0)
  {
    v43 = *(archive + 23);
    v166[0] = MEMORY[0x277D85DD0];
    v166[1] = 3221225472;
    v166[2] = sub_2762AA9B8;
    v166[3] = &unk_27A6B7480;
    v166[4] = self;
    v44 = unarchiverCopy;
    v45 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v44, v46, v47, v48, v49, v43, v45, 0, v166);

    v34 = *(archive + 4);
  }

  if ((v34 & 8) != 0)
  {
    v50 = objc_alloc_init(TSCHLegendModel);
    objc_msgSend_setChartInfo_(v50, v51, v52, v53, v54, self);
    if (*(archive + 24))
    {
      objc_msgSend_loadFromPreUFFArchive_(v50, v55, v56, v57, v58, *(archive + 24), v145, v146);
    }

    else
    {
      objc_msgSend_loadFromPreUFFArchive_(v50, v55, v56, v57, v58, &qword_2812F2618, v145, v146);
    }

    objc_msgSend_setLegend_(self, v59, v60, v61, v62, v50);
    v63 = *(archive + 24);
    if (v63)
    {
      v64 = *(archive + 24);
    }

    else
    {
      v64 = &qword_2812F2618;
    }

    if ((v64[2] & 4) != 0)
    {
      v65 = v64[5];
      v165[0] = MEMORY[0x277D85DD0];
      v165[1] = 3221225472;
      v165[2] = sub_2762AA9D0;
      v165[3] = &unk_27A6B74A8;
      v165[4] = self;
      v66 = unarchiverCopy;
      v67 = objc_opt_class();
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v66, v68, v69, v70, v71, v65, v67, 0, v165);

      v63 = *(archive + 24);
    }

    if (!v63)
    {
      v63 = &qword_2812F2618;
    }

    if ((v63[2] & 8) != 0)
    {
      v72 = v63[6];
      v164[0] = MEMORY[0x277D85DD0];
      v164[1] = 3221225472;
      v164[2] = sub_2762AA9E8;
      v164[3] = &unk_27A6B74D0;
      v164[4] = self;
      v73 = unarchiverCopy;
      v74 = objc_opt_class();
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v73, v75, v76, v77, v78, v72, v74, 0, v164);
    }
  }

  v79 = *(MEMORY[0x277CBF398] + 16);
  self->_innerChartFrame.origin = *MEMORY[0x277CBF398];
  self->_innerChartFrame.size = v79;
  if ((*(archive + 16) & 0x80) != 0)
  {
    v80 = *(archive + 28);
    v163[0] = MEMORY[0x277D85DD0];
    v163[1] = 3221225472;
    v163[2] = sub_2762AAA00;
    v163[3] = &unk_27A6B74F8;
    v163[4] = self;
    v81 = unarchiverCopy;
    v82 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v81, v83, v84, v85, v86, v80, v82, 0, v163);
  }

  if (*(archive + 8) >= 1)
  {
    v162[0] = MEMORY[0x277D85DD0];
    v162[1] = 3221225472;
    v162[2] = sub_2762AAA18;
    v162[3] = &unk_27A6B7520;
    v162[4] = self;
    v87 = unarchiverCopy;
    v88 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v87, v89, v90, v91, v92, archive + 24, v88, 0, v162);
  }

  if (*(archive + 14) >= 1)
  {
    v161[0] = MEMORY[0x277D85DD0];
    v161[1] = 3221225472;
    v161[2] = sub_2762AAA30;
    v161[3] = &unk_27A6B7520;
    v161[4] = self;
    v93 = unarchiverCopy;
    v94 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v93, v95, v96, v97, v98, archive + 48, v94, 0, v161);
  }

  if (*(archive + 32) >= 1)
  {
    v160[0] = MEMORY[0x277D85DD0];
    v160[1] = 3221225472;
    v160[2] = sub_2762AAA48;
    v160[3] = &unk_27A6B7520;
    v160[4] = self;
    v99 = unarchiverCopy;
    v100 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v99, v101, v102, v103, v104, archive + 120, v100, 0, v160);
  }

  if ((*(archive + 16) & 0x20) != 0)
  {
    v105 = *(archive + 26);
    if (*(v105 + 48))
    {
      v159[0] = MEMORY[0x277D85DD0];
      v159[1] = 3221225472;
      v159[2] = sub_2762AAA60;
      v159[3] = &unk_27A6B7520;
      v159[4] = self;
      v106 = unarchiverCopy;
      v107 = objc_opt_class();
      objc_msgSend_readSparseReferenceArrayMessage_class_protocol_completion_(v106, v108, v109, v110, v111, v105, v107, 0, v159);
    }
  }

  if (*(archive + 20) >= 1)
  {
    v158[0] = MEMORY[0x277D85DD0];
    v158[1] = 3221225472;
    v158[2] = sub_2762AAA78;
    v158[3] = &unk_27A6B7520;
    v158[4] = self;
    v112 = unarchiverCopy;
    v113 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v112, v114, v115, v116, v117, archive + 72, v113, 0, v158);
  }

  if (*(archive + 26) >= 1)
  {
    v157[0] = MEMORY[0x277D85DD0];
    v157[1] = 3221225472;
    v157[2] = sub_2762AAA90;
    v157[3] = &unk_27A6B7520;
    v157[4] = self;
    v118 = unarchiverCopy;
    v119 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v118, v120, v121, v122, v123, archive + 96, v119, 0, v157);
  }

  if ((*(archive + 16) & 0x40) != 0)
  {
    v124 = *(archive + 27);
    v156[0] = MEMORY[0x277D85DD0];
    v156[1] = 3221225472;
    v156[2] = sub_2762AAAA8;
    v156[3] = &unk_27A6B7520;
    v156[4] = self;
    v125 = unarchiverCopy;
    v126 = objc_opt_class();
    objc_msgSend_readSparseReferenceArrayMessage_class_protocol_completion_(v125, v127, v128, v129, v130, v124, v126, 0, v156);
  }

  v155[0] = MEMORY[0x277D85DD0];
  v155[1] = 3221225472;
  v155[2] = sub_2762AAAC0;
  v155[3] = &unk_27A6B7520;
  v155[4] = self;
  v131 = unarchiverCopy;
  v132 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v131, v133, v134, v135, v136, archive + 144, v132, 0, v155);

  self->_needsCalcEngineDependentImport = *(archive + 272) & ((*(archive + 4) & 0x8000u) >> 15);
  v137 = *(archive + 64);
  v148[0] = MEMORY[0x277D85DD0];
  v148[1] = 3221225472;
  v148[2] = sub_2762AAAD8;
  v148[3] = &unk_27A6B7548;
  v148[4] = self;
  v152 = v168;
  v138 = infoCopy;
  v149 = v138;
  v153 = v145;
  v139 = v147;
  v150 = v139;
  v140 = v146;
  v151 = v140;
  v154 = v137;
  objc_msgSend_addFinalizeHandler_(v131, v141, v142, v143, v144, v148);

  _Block_object_dispose(v168, 8);
}

- (id)g_genericToDefaultPropertyMap
{
  if (qword_280A47270 != -1)
  {
    sub_2764A7758();
  }

  v3 = qword_280A47268;

  return v3;
}

- (id)g_operationPropertyNameForGenericProperty:(int)property
{
  v6 = *&property;
  v8 = objc_msgSend_specificPropertyForGeneric_(self, a2, v3, v4, v5);
  if (v8 || (v8 = objc_msgSend_defaultPropertyForGeneric_(self, v9, v10, v11, v12, v6), v8))
  {
    v13 = v8;
  }

  else
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCHChartInfo(__PropertyMaps_GEN) g_operationPropertyNameForGenericProperty:]");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPropertyMaps.GEN.m");
    v33 = String();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v34, v35, v36, v37, v27, v32, 117, 0, "No specific property found for generic %@", v33);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
    v13 = 0;
  }

  v14 = objc_msgSend_g_specificPropertyToOperationNameBimap(TSCHBaseStyle, v9, v10, v11, v12);
  v19 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v15, v16, v17, v18, v13);
  v24 = objc_msgSend_objectForKeyedSubscript_(v14, v20, v21, v22, v23, v19);

  return v24;
}

+ (id)paragraphStyleIndexProperties
{
  if (qword_280A472C0 != -1)
  {
    sub_2764A77BC();
  }

  v3 = qword_280A472B8;

  return v3;
}

+ (id)paragraphStyleIndexPropertiesInUse
{
  if (qword_280A472D0 != -1)
  {
    sub_2764A77D0();
  }

  v3 = qword_280A472C8;

  return v3;
}

+ (id)genericParagraphStyleIndexProperties
{
  if (qword_280A472E0 != -1)
  {
    sub_2764A77E4();
  }

  v3 = qword_280A472D8;

  return v3;
}

+ (id)genericParagraphStyleIndexPropertiesInUse
{
  if (qword_280A472F0 != -1)
  {
    sub_2764A77F8();
  }

  v3 = qword_280A472E8;

  return v3;
}

- (id)styleOwnerForRef:(id)ref
{
  refCopy = ref;
  v9 = objc_msgSend_type(refCopy, v5, v6, v7, v8);
  v14 = objc_msgSend_index(refCopy, v10, v11, v12, v13);

  if (v9 == 2)
  {
    selfCopy = objc_msgSend_legend(self, v15, v16, v17, v18);
    goto LABEL_5;
  }

  if (v9 == 1)
  {
    selfCopy = self;
LABEL_5:
    v20 = selfCopy;
    goto LABEL_18;
  }

  v21 = objc_msgSend_model(self, v15, v16, v17, v18);
  v26 = v21;
  switch(v9)
  {
    case 5:
      v52 = objc_msgSend_axisIDFromStyleSwapOrStyleOwnerIndex_(TSCHReferenceLine, v22, v23, v24, v25, v14);
      v57 = objc_msgSend_refLineIndexFromStyleSwapOrStyleOwnerIndex_(TSCHReferenceLine, v53, v54, v55, v56, v14);
      v62 = objc_msgSend_axisForID_(v26, v58, v59, v60, v61, v52);
      v20 = objc_msgSend_referenceLineAtIndex_(v62, v63, v64, v65, v66, v57);

      goto LABEL_16;
    case 4:
      v42 = objc_msgSend_seriesList(v21, v22, v23, v24, v25);
      v47 = objc_msgSend_count(v42, v43, v44, v45, v46);

      if (v47 > v14)
      {
        v37 = objc_msgSend_seriesList(v26, v48, v49, v50, v51);
        goto LABEL_13;
      }

      break;
    case 3:
      v27 = objc_msgSend_axisList(v21, v22, v23, v24, v25);
      v32 = objc_msgSend_count(v27, v28, v29, v30, v31);

      if (v32 > v14)
      {
        v37 = objc_msgSend_axisList(v26, v33, v34, v35, v36);
LABEL_13:
        v52 = v37;
        v20 = objc_msgSend_objectAtIndexedSubscript_(v37, v38, v39, v40, v41, v14);
LABEL_16:

        goto LABEL_17;
      }

      break;
  }

  v20 = 0;
LABEL_17:

LABEL_18:

  return v20;
}

- (id)styleOwnerRefForStyleOwner:(id)owner
{
  ownerCopy = owner;
  if (self == ownerCopy)
  {
    objc_msgSend_styleOwnerReferenceWithType_index_(TSCHStyleOwnerReference, v4, v6, v7, v8, 1, 0);
    goto LABEL_21;
  }

  v9 = objc_msgSend_legend(self, v4, v6, v7, v8);

  if (v9 == ownerCopy)
  {
    objc_msgSend_styleOwnerReferenceWithType_index_(TSCHStyleOwnerReference, v10, v11, v12, v13, 2, 0);
    goto LABEL_21;
  }

  objc_opt_class();
  v14 = TSUDynamicCast();
  v19 = v14;
  if (v14 && (objc_msgSend_model(v14, v15, v16, v17, v18), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend_noSyncAxisList(v20, v21, v22, v23, v24), v25 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend_indexOfObjectIdenticalTo_(v25, v26, v27, v28, v29, v19), v25, v20, v30 != 0x7FFFFFFFFFFFFFFFLL))
  {

    objc_msgSend_styleOwnerReferenceWithType_index_(TSCHStyleOwnerReference, v99, v100, v101, v102, 3, v30);
  }

  else
  {

    objc_opt_class();
    v31 = TSUDynamicCast();
    if (v31)
    {
      v36 = v31;
      v37 = objc_msgSend_model(v31, v32, v33, v34, v35);
      v42 = objc_msgSend_noSyncSeriesList(v37, v38, v39, v40, v41);
      lastSeriesIndex = self->_lastSeriesIndex;
      if (objc_msgSend_count(v42, v44, v45, v46, v47) <= lastSeriesIndex)
      {
        v52 = 0;
      }

      else
      {
        v52 = lastSeriesIndex;
      }

      v53 = objc_msgSend_count(v42, v48, v49, v50, v51);
      v58 = objc_msgSend_indexOfObjectIdenticalTo_inRange_(v42, v54, v55, v56, v57, ownerCopy, v52, v53 - v52);
      if (v58 != 0x7FFFFFFFFFFFFFFFLL || (v58 = objc_msgSend_indexOfObjectIdenticalTo_inRange_(v42, v59, v60, v61, v62, ownerCopy, 0, v52), v58 != 0x7FFFFFFFFFFFFFFFLL))
      {
        v94 = v58;
        self->_lastSeriesIndex = v58;

        objc_msgSend_styleOwnerReferenceWithType_index_(TSCHStyleOwnerReference, v95, v96, v97, v98, 4, v94);
        goto LABEL_21;
      }
    }

    objc_opt_class();
    v63 = TSUDynamicCast();
    if (v63)
    {
      v68 = v63;
      v69 = objc_msgSend_axis(v63, v64, v65, v66, v67);

      if (!v69)
      {
        v74 = MEMORY[0x277D81150];
        v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, v71, v72, v73, "[TSCHChartInfo(TSCHStyleOwnerReferenceSupporting) styleOwnerRefForStyleOwner:]");
        v80 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, v77, v78, v79, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleOwningImplementation.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v74, v81, v82, v83, v84, v75, v80, 657, 0, "creating style owner ref for orphaned reference line %@", v68);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v85, v86, v87, v88);
      }

      v89 = objc_msgSend_styleSwapIndex(v68, v70, v71, v72, v73);

      objc_msgSend_styleOwnerReferenceWithType_index_(TSCHStyleOwnerReference, v90, v91, v92, v93, 5, v89);
    }

    else
    {
      v103 = MEMORY[0x277D81150];
      v104 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, v65, v66, v67, "[TSCHChartInfo(TSCHStyleOwnerReferenceSupporting) styleOwnerRefForStyleOwner:]");
      v109 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v105, v106, v107, v108, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleOwningImplementation.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v103, v110, v111, v112, v113, v104, v109, 663, 0, "unable to create style owner ref for %@", ownerCopy);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v114, v115, v116, v117);
      objc_msgSend_styleOwnerReferenceWithType_index_(TSCHStyleOwnerReference, v118, v119, v120, v121, 0, 0);
    }
  }

  v122 = LABEL_21:;

  return v122;
}

- (unint64_t)nonStyleIndexForStyleOwnerRef:(id)ref
{
  refCopy = ref;
  v9 = refCopy;
  if (!refCopy)
  {
    goto LABEL_12;
  }

  v10 = objc_msgSend_type(refCopy, v5, v6, v7, v8);
  if (v10 > 3)
  {
    if (v10 != 4)
    {
      if (v10 != 5)
      {
        goto LABEL_11;
      }

      v36 = objc_msgSend_index(v9, v11, v12, v13, v14);
      v41 = objc_msgSend_refLineIndexFromStyleSwapOrStyleOwnerIndex_(TSCHReferenceLine, v37, v38, v39, v40, v36);
LABEL_10:
      v35 = v41;
      goto LABEL_13;
    }

LABEL_9:
    v41 = objc_msgSend_index(v9, v11, v12, v13, v14);
    goto LABEL_10;
  }

  if ((v10 - 1) < 2)
  {
    goto LABEL_9;
  }

  if (v10 != 3)
  {
LABEL_11:
    v42 = MEMORY[0x277D81150];
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "[TSCHChartInfo(TSCHStyleOwnerReferenceSupporting) nonStyleIndexForStyleOwnerRef:]");
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, v45, v46, v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleOwningImplementation.m");
    v53 = objc_msgSend_type(v9, v49, v50, v51, v52);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v54, v55, v56, v57, v43, v48, 685, 0, "invalid style owner type %ld", v53);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59, v60, v61);
LABEL_12:
    v35 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_13;
  }

  v15 = objc_msgSend_model(self, v11, v12, v13, v14);
  v20 = objc_msgSend_noSyncAxisList(v15, v16, v17, v18, v19);
  v25 = objc_msgSend_index(v9, v21, v22, v23, v24);
  v30 = objc_msgSend_objectAtIndexedSubscript_(v20, v26, v27, v28, v29, v25);

  v35 = objc_msgSend_nonStyleIndex(v30, v31, v32, v33, v34);
LABEL_13:

  return v35;
}

- (id)allStyleOwners
{
  v87 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB58], a2, v2, v3, v4, self);
  v11 = objc_msgSend_legend(self, v7, v8, v9, v10);

  if (v11)
  {
    v16 = objc_msgSend_legend(self, v12, v13, v14, v15);
    objc_msgSend_addObject_(v6, v17, v18, v19, v20, v16);
  }

  v21 = objc_msgSend_model(self, v12, v13, v14, v15);
  v26 = objc_msgSend_axisList(v21, v22, v23, v24, v25);
  objc_msgSend_addObjectsFromArray_(v6, v27, v28, v29, v30, v26);

  v35 = objc_msgSend_model(self, v31, v32, v33, v34);
  v40 = objc_msgSend_seriesList(v35, v36, v37, v38, v39);
  objc_msgSend_addObjectsFromArray_(v6, v41, v42, v43, v44, v40);

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v48 = objc_msgSend_model(self, v45, 0.0, v46, v47, 0);
  v53 = objc_msgSend_axisList(v48, v49, v50, v51, v52);

  v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v54, v55, v56, v57, &v82, v86, 16);
  if (v58)
  {
    v63 = v58;
    v64 = *v83;
    do
    {
      for (i = 0; i != v63; ++i)
      {
        if (*v83 != v64)
        {
          objc_enumerationMutation(v53);
        }

        v67 = objc_msgSend_referenceLines(*(*(&v82 + 1) + 8 * i), v59, v60, v61, v62);
        if (v67)
        {
          objc_msgSend_addObjectsFromArray_(v6, v66, v68, v69, v70, v67);
        }
      }

      v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v59, v60, v61, v62, &v82, v86, 16);
    }

    while (v63);
  }

  v75 = objc_msgSend_chartType(self, v71, v72, v73, v74);
  v80 = objc_msgSend_filteredStyleOwnersFromStyleOwners_(v75, v76, v77, v78, v79, v6);

  return v80;
}

- (id)styleOwnerForPath:(id)path
{
  pathCopy = path;
  if (!pathCopy)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v6, v7, v8, "[TSCHChartInfo(TSCHStyleOwnerCollaborationSupporting) styleOwnerForPath:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleOwningImplementation.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 1202, 0, "invalid nil value for '%{public}s'", "styleOwnerPath");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v24 = objc_msgSend_styleOwnerForChart_(pathCopy, v4, v6, v7, v8, self);

  return v24;
}

- (id)styleOwnerPathForRef:(id)ref
{
  v7 = objc_msgSend_styleOwnerForRef_(self, a2, v3, v4, v5, ref);
  v12 = objc_msgSend_styleOwnerPathForStyleOwner_(self, v8, v9, v10, v11, v7);

  return v12;
}

- (id)styleOwnerRefForSemanticTag:(id)tag
{
  tagCopy = tag;
  v9 = objc_msgSend_type(tagCopy, v5, v6, v7, v8);
  v10 = sub_2762E60FC(v9);
  v16 = objc_msgSend_index(tagCopy, v11, v12, v13, v14);
  if (v10 != 3)
  {
    goto LABEL_24;
  }

  v20 = objc_msgSend_model(self, v15, v17, v18, v19);
  v25 = objc_msgSend_axisList(v20, v21, v22, v23, v24);

  v30 = objc_msgSend_count(v25, v26, v27, v28, v29);
  if (!v30)
  {
    v36 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_23;
  }

  v35 = v30;
  v36 = 0;
  while (1)
  {
    v38 = objc_msgSend_objectAtIndexedSubscript_(v25, v31, v32, v33, v34, v36);
    if (v9 > 6)
    {
      break;
    }

    if (v9 == 5)
    {
      v54 = &OBJC_IVAR___TSCHChartInfo__valueAxisStyles;
      goto LABEL_14;
    }

    if (v9 == 6)
    {
      v42 = objc_msgSend_tsu_rangeCheckedObjectAtIndex_(self->_valueAxisNonStyles, v37, v39, v40, v41, v16);
      v47 = objc_msgSend_nonstyle(v38, v43, v44, v45, v46);
      goto LABEL_15;
    }

LABEL_17:

LABEL_18:
    if (v35 == ++v36)
    {
      v36 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_22;
    }
  }

  if (v9 != 7)
  {
    if (v9 == 8)
    {
      v48 = objc_msgSend_tsu_rangeCheckedObjectAtIndex_(self->_categoryAxisNonStyles, v37, v39, v40, v41, v16);
      v53 = objc_msgSend_nonstyle(v38, v49, v50, v51, v52);

      if (v48 == v53)
      {
        goto LABEL_22;
      }

      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v54 = &OBJC_IVAR___TSCHChartInfo__categoryAxisStyles;
LABEL_14:
  v42 = objc_msgSend_tsu_rangeCheckedObjectAtIndex_(*(&self->super.isa + *v54), v37, v39, v40, v41, v16);
  v47 = objc_msgSend_style(v38, v55, v56, v57, v58);
LABEL_15:
  if (v42 != v47)
  {

    goto LABEL_17;
  }

LABEL_22:
  v10 = 3;
LABEL_23:

  v16 = v36;
LABEL_24:
  if (v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v59 = 0;
  }

  else
  {
    v59 = objc_msgSend_styleOwnerReferenceWithType_index_(TSCHStyleOwnerReference, v15, v17, v18, v19, v10, v16);
  }

  return v59;
}

- (id)styleOwnerRefForStyleOwnerPath:(id)path
{
  v7 = objc_msgSend_styleOwnerForPath_(self, a2, v3, v4, v5, path);
  v12 = objc_msgSend_styleOwnerRefForStyleOwner_(self, v8, v9, v10, v11, v7);

  return v12;
}

- (void)applyChartStyleState:(id)state
{
  if (state)
  {
    v12 = objc_msgSend_tuplesToApplyState_(self, a2, v3, v4, v5);
    v11 = objc_msgSend_applyStyleSwapTuples_(self, v7, v8, v9, v10, v12);
  }
}

- (id)p_presetByAdoptingStylesheet:(id)stylesheet forPreset:(id)preset withMapper:(id)mapper paragraphStyles:(id)styles
{
  stylesheetCopy = stylesheet;
  mapperCopy = mapper;
  stylesCopy = styles;
  presetCopy = preset;
  v18 = objc_msgSend_documentStylesheet(self, v14, v15, v16, v17);

  if (v18 == stylesheetCopy)
  {
    v24 = objc_msgSend_uuid(presetCopy, v19, v20, v21, v22);

    v23 = objc_msgSend_themeChartPresetForUUID_(self, v25, v26, v27, v28, v24);

    if (!v23)
    {
      v33 = MEMORY[0x277D81150];
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "[TSCHChartInfo(AdoptStylesheet) p_presetByAdoptingStylesheet:forPreset:withMapper:paragraphStyles:]");
      v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfoAdoptStylesheet.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v40, v41, v42, v43, v34, v39, 442, 0, "invalid nil value for '%{public}s'", "stylesheetAdoptedPreset");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47);
      v23 = 0;
    }
  }

  else
  {
    v23 = objc_msgSend_presetByAdoptingStylesheet_withMapper_paragraphStyles_(presetCopy, v19, v20, v21, v22, stylesheetCopy, mapperCopy, stylesCopy);
  }

  return v23;
}

- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper
{
  stylesheetCopy = stylesheet;
  mapperCopy = mapper;
  v7 = objc_autoreleasePoolPush();
  v12 = objc_msgSend_chartStyleState(self, v8, v9, v10, v11);
  v17 = objc_msgSend_documentRoot(stylesheetCopy, v13, v14, v15, v16);
  v23 = objc_msgSend_stylesheet(v17, v18, v19, v20, v21);
  if (v23 == stylesheetCopy)
  {
    v31 = objc_msgSend_documentRoot(stylesheetCopy, v22, v24, v25, v26);
    v36 = objc_msgSend_accessController(v31, v32, v33, v34, v35);
    v41 = objc_msgSend_hasWrite(v36, v37, v38, v39, v40);

    if (v41)
    {
      v42 = objc_msgSend_stateByOptimizingParagraphStyleTableWithStylesheet_withMapper_(v12, v27, v28, v29, v30, stylesheetCopy, mapperCopy);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v42 = objc_msgSend_stateByAdoptingStylesheet_withMapper_(v12, v27, v28, v29, v30, stylesheetCopy, mapperCopy);
LABEL_6:
  v47 = v42;
  objc_msgSend_applyChartStyleState_(self, v43, v44, v45, v46, v42);
  v52 = objc_msgSend_preset(self, v48, v49, v50, v51);
  v57 = objc_msgSend_paragraphStyles(v12, v53, v54, v55, v56);
  v62 = objc_msgSend_p_presetByAdoptingStylesheet_forPreset_withMapper_paragraphStyles_(self, v58, v59, v60, v61, stylesheetCopy, v52, mapperCopy, v57);

  objc_autoreleasePoolPop(v7);
  v67 = objc_msgSend_documentStylesheet(self, v63, v64, v65, v66);
  objc_msgSend_setPreset_forceOwning_(self, v68, v69, v70, v71, v62, v67 != stylesheetCopy);

  objc_msgSend_debugVerifyPreset(self, v72, v73, v74, v75);
}

- (unint64_t)p_paragraphStyleIndexOfFirstCategoryAxisParagraphStyle
{
  categoryAxisStyles = self->_categoryAxisStyles;
  if (!categoryAxisStyles || !objc_msgSend_count(categoryAxisStyles, a2, v2, v3, v4))
  {
    return 0;
  }

  v11 = objc_msgSend_firstObject(self->_categoryAxisStyles, v7, v8, v9, v10);
  v16 = v11;
  if (v11)
  {
    v17 = objc_msgSend_intValueForProperty_(v11, v12, v13, v14, v15, 1241);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)viewOverrideMapForStyleOwner:(id)owner
{
  ownerCopy = owner;
  v9 = objc_msgSend_model(self, v5, v6, v7, v8);
  v14 = objc_msgSend_syncRoot(v9, v10, v11, v12, v13);

  objc_sync_enter(v14);
  if (!self->_styleViewProxyMap)
  {
    objc_sync_exit(v14);
    v48 = 0;
LABEL_10:

    goto LABEL_11;
  }

  v19 = objc_msgSend_chartInfo(ownerCopy, v15, v16, v17, v18);
  v24 = objc_msgSend_styleOwnerRefForStyleOwner_(v19, v20, v21, v22, v23, ownerCopy);

  v29 = objc_msgSend_objectForKey_(self->_styleViewProxyMap, v25, v26, v27, v28, v24);
  if (objc_msgSend_type(v24, v30, v31, v32, v33) == 4 || objc_msgSend_type(v24, v34, v35, v36, v37) == 3)
  {
    v38 = objc_msgSend_type(v24, v34, v35, v36, v37);
    v43 = objc_msgSend_styleOwnerReferenceWithType_index_(TSCHStyleOwnerReference, v39, v40, v41, v42, v38, 0x7FFFFFFFFFFFFFFFLL);
    v48 = objc_msgSend_objectForKey_(self->_styleViewProxyMap, v44, v45, v46, v47, v43);
  }

  else
  {
    v48 = 0;
  }

  objc_sync_exit(v14);
  if (v29)
  {
    if (v48)
    {
      v53 = objc_msgSend_copy(v29, v49, v50, v51, v52);

      objc_msgSend_addValuesFromPropertyMap_(v53, v54, v55, v56, v57, v48);
      v14 = v48;
      v48 = v53;
      goto LABEL_10;
    }

    v48 = v29;
  }

LABEL_11:

  return v48;
}

- (void)p_invalidateCachesInLayouts:(id)layouts
{
  v25 = *MEMORY[0x277D85DE8];
  layoutsCopy = layouts;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(layoutsCopy, v4, 0.0, v5, v6, &v20, v24, 16);
  if (v7)
  {
    v12 = v7;
    v13 = *v21;
    do
    {
      v14 = 0;
      do
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(layoutsCopy);
        }

        v15 = objc_msgSend_model(*(*(&v20 + 1) + 8 * v14), v8, v9, v10, v11);
        objc_msgSend_invalidateCaches(v15, v16, v17, v18, v19);

        ++v14;
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(layoutsCopy, v8, v9, v10, v11, &v20, v24, 16);
    }

    while (v12);
  }
}

- (void)addViewStyleProxyForMutationTuples:(id)tuples layouts:(id)layouts
{
  v229 = *MEMORY[0x277D85DE8];
  tuplesCopy = tuples;
  layoutsCopy = layouts;
  if (!objc_msgSend_count(layoutsCopy, v6, v7, v8, v9))
  {
    v14 = tuplesCopy;
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "[TSCHChartInfo(TSCHStyleViewProxySupport) addViewStyleProxyForMutationTuples:layouts:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleViewProxy.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 144, 0, "Should have at least one layout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
    tuplesCopy = v14;
  }

  v208 = tuplesCopy;
  if (objc_msgSend_count(tuplesCopy, v10, v11, v12, v13))
  {
    v210 = objc_msgSend_propertySet(MEMORY[0x277D80AA8], v30, v31, v32, v33);
    v212 = objc_msgSend_array(MEMORY[0x277CBEB18], v34, v35, v36, v37);
    v211 = objc_msgSend_array(MEMORY[0x277CBEB18], v38, v39, v40, v41);
    v46 = objc_msgSend_model(self, v42, v43, v44, v45);
    obj = objc_msgSend_syncRoot(v46, v47, v48, v49, v50);

    objc_sync_enter(obj);
    if (!self->_styleViewProxyMap)
    {
      v51 = objc_alloc_init(MEMORY[0x277CBEB38]);
      styleViewProxyMap = self->_styleViewProxyMap;
      self->_styleViewProxyMap = v51;
    }

    v225 = 0u;
    v226 = 0u;
    v223 = 0u;
    v224 = 0u;
    v209 = tuplesCopy;
    v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v209, v53, v54, v55, v56, &v223, v228, 16);
    if (v58)
    {
      v213 = *v224;
      do
      {
        v62 = 0;
        v214 = v58;
        do
        {
          if (*v224 != v213)
          {
            objc_enumerationMutation(v209);
          }

          v63 = *(*(&v223 + 1) + 8 * v62);
          v64 = objc_msgSend_mutations(v63, v57, v59, v60, v61);
          v217 = v62;
          if (objc_msgSend_count(v64, v65, v66, v67, v68))
          {
            v218 = v64;
            v216 = objc_msgSend_styleOwnerRef(v63, v69, v70, v71, v72);
            v77 = objc_msgSend_objectForKey_(self->_styleViewProxyMap, v73, v74, v75, v76);
            v82 = objc_msgSend_copy(v77, v78, v79, v80, v81);

            if (!v82)
            {
              v82 = objc_msgSend_propertyMap(MEMORY[0x277D80AB8], v83, v84, v85, v86);
            }

            v87 = objc_msgSend_propertySet(MEMORY[0x277D80AA8], v83, v84, v85, v86);
            v221 = 0u;
            v222 = 0u;
            v219 = 0u;
            v220 = 0u;
            v88 = v218;
            v92 = objc_msgSend_allKeys(v218, v89, 0.0, v90, v91);
            v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(v92, v93, v94, v95, v96, &v219, v227, 16);
            if (v98)
            {
              v102 = *v220;
              do
              {
                for (i = 0; i != v98; ++i)
                {
                  if (*v220 != v102)
                  {
                    objc_enumerationMutation(v92);
                  }

                  v104 = *(*(&v219 + 1) + 8 * i);
                  v105 = objc_msgSend_tsch_stylePropertyValue(v104, v97, v99, v100, v101);
                  v110 = objc_msgSend_objectForKey_(v88, v106, v107, v108, v109, v104);
                  objc_msgSend_setBoxedObject_forProperty_(v82, v111, v112, v113, v114, v110, v105);

                  v119 = objc_msgSend_styleOwner(v63, v115, v116, v117, v118);
                  v124 = objc_msgSend_specificMutationPropertyForGeneric_styleOwner_allowSpecificProperties_(TSCHPropertyMutationHelper, v120, v121, v122, v123, v105, v119, 0);

                  objc_msgSend_addProperty_(v87, v125, v126, v127, v128, v124);
                  v88 = v218;
                }

                v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(v92, v97, v99, v100, v101, &v219, v227, 16);
              }

              while (v98);
            }

            objc_msgSend_addProperties_(v210, v129, v130, v131, v132, v87);
            v137 = objc_msgSend_styleOwner(v63, v133, v134, v135, v136);
            objc_msgSend_addObject_(v212, v138, v139, v140, v141, v137);

            objc_msgSend_addObject_(v211, v142, v143, v144, v145, v87);
            objc_msgSend_setObject_forKey_(self->_styleViewProxyMap, v146, v147, v148, v149, v82, v216);

            v64 = v218;
          }

          v62 = v217 + 1;
        }

        while (v217 + 1 != v214);
        v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v209, v57, v59, v60, v61, &v223, v228, 16);
      }

      while (v58);
    }

    objc_sync_exit(obj);
    if (objc_msgSend_count(v210, v150, v151, v152, v153))
    {
      v158 = objc_msgSend_count(v212, v154, v155, v156, v157);
      if (v158 != objc_msgSend_count(v211, v159, v160, v161, v162))
      {
        v167 = MEMORY[0x277D81150];
        v168 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v163, v164, v165, v166, "[TSCHChartInfo(TSCHStyleViewProxySupport) addViewStyleProxyForMutationTuples:layouts:]");
        v173 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v169, v170, v171, v172, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleViewProxy.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v167, v174, v175, v176, v177, v168, v173, 194, 0, "tuples arrays mismatch %@ %@", v212, v211);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v178, v179, v180, v181);
      }

      v183 = objc_msgSend_count(v212, v163, v164, v165, v166);
      if (v183)
      {
        for (j = 0; j != v183; ++j)
        {
          v188 = objc_msgSend_objectAtIndexedSubscript_(v212, v182, v184, v185, v186, j);
          if (objc_opt_respondsToSelector())
          {
            v193 = objc_msgSend_objectAtIndexedSubscript_(v211, v189, v190, v191, v192, j);
            objc_msgSend_propertiesWereMutated_(v188, v194, v195, v196, v197, v193);
          }
        }
      }

      objc_msgSend_chartDidInvalidateWithProperties_(self, v182, v184, v185, v186, v210);
      objc_msgSend_invalidateCaches(self->_model, v198, v199, v200, v201);
      objc_msgSend_p_invalidateCachesInLayouts_(self, v202, v203, v204, v205, layoutsCopy);
    }
  }
}

- (void)setViewStyleProxyParagraphStyleArray:(id)array layouts:(id)layouts
{
  arrayCopy = array;
  layoutsCopy = layouts;
  if (!objc_msgSend_count(layoutsCopy, v7, v8, v9, v10))
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "[TSCHChartInfo(TSCHStyleViewProxySupport) setViewStyleProxyParagraphStyleArray:layouts:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleViewProxy.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 217, 0, "Should have at least one layout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  v30 = objc_msgSend_model(self, v11, v12, v13, v14);
  v35 = objc_msgSend_syncRoot(v30, v31, v32, v33, v34);

  objc_sync_enter(v35);
  v40 = objc_msgSend_copy(arrayCopy, v36, v37, v38, v39);
  styleViewProxyParagraphStyleArray = self->_styleViewProxyParagraphStyleArray;
  self->_styleViewProxyParagraphStyleArray = v40;

  objc_sync_exit(v35);
}

- (void)clearViewStyleProxyForLayouts:(id)layouts
{
  v89 = *MEMORY[0x277D85DE8];
  layoutsCopy = layouts;
  if (!layoutsCopy)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v6, v7, v8, "[TSCHChartInfo(TSCHStyleViewProxySupport) clearViewStyleProxyForLayouts:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleViewProxy.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 228, 0, "Always pass layouts if they're available. If not, pass an empty array.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v24 = objc_msgSend_model(self, v4, v6, v7, v8);
  v29 = objc_msgSend_syncRoot(v24, v25, v26, v27, v28);

  objc_sync_enter(v29);
  v30 = self->_styleViewProxyMap;
  styleViewProxyMap = self->_styleViewProxyMap;
  self->_styleViewProxyMap = 0;

  styleViewProxyParagraphStyleArray = self->_styleViewProxyParagraphStyleArray;
  if (styleViewProxyParagraphStyleArray)
  {
    self->_styleViewProxyParagraphStyleArray = 0;
  }

  objc_sync_exit(v29);

  if (objc_msgSend_count(v30, v33, v34, v35, v36))
  {
    v41 = objc_msgSend_propertySet(MEMORY[0x277D80AA8], v37, v38, v39, v40);
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v45 = objc_msgSend_allKeys(v30, v42, 0.0, v43, v44, 0);
    v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, v47, v48, v49, &v84, v88, 16);
    if (v50)
    {
      v55 = v50;
      v56 = *v85;
      do
      {
        for (i = 0; i != v55; ++i)
        {
          if (*v85 != v56)
          {
            objc_enumerationMutation(v45);
          }

          v58 = objc_msgSend_objectForKey_(v30, v51, v52, v53, v54, *(*(&v84 + 1) + 8 * i));
          v63 = objc_msgSend_allProperties(v58, v59, v60, v61, v62);
          objc_msgSend_addProperties_(v41, v64, v65, v66, v67, v63);
        }

        v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v51, v52, v53, v54, &v84, v88, 16);
      }

      while (v55);
    }

    if (objc_msgSend_count(v41, v68, v69, v70, v71))
    {
      objc_msgSend_chartDidInvalidateWithProperties_(self, v72, v73, v74, v75, v41);
      objc_msgSend_invalidateCaches(self->_model, v76, v77, v78, v79);
      objc_msgSend_p_invalidateCachesInLayouts_(self, v80, v81, v82, v83, layoutsCopy);
    }
  }
}

- (TSCHChartStyleState)chartStyleState
{
  v6 = objc_msgSend_styleState(TSCHChartStyleState, a2, v2, v3, v4);
  v7 = objc_opt_class();
  v8 = sub_2762CD788(v7, self->_style);
  objc_msgSend_setChartStyle_(v6, v9, v10, v11, v12, v8);

  v13 = objc_opt_class();
  v14 = sub_2762CD788(v13, self->_legendStyle);
  objc_msgSend_setLegendStyle_(v6, v15, v16, v17, v18, v14);

  objc_msgSend_setValueAxisStyles_(v6, v19, v20, v21, v22, self->_valueAxisStyles);
  objc_msgSend_setCategoryAxisStyles_(v6, v23, v24, v25, v26, self->_categoryAxisStyles);
  objc_msgSend_setSeriesThemeStyles_(v6, v27, v28, v29, v30, self->_themeSeriesStyles);
  objc_msgSend_setSeriesPrivateStyles_(v6, v31, v32, v33, v34, self->_privateSeriesStyles);
  objc_msgSend_setParagraphStyles_(v6, v35, v36, v37, v38, self->_paragraphStyles);
  v39 = MEMORY[0x277CBEB38];
  v44 = objc_msgSend_count(self->_refLineStylesMap, v40, v41, v42, v43);
  v49 = objc_msgSend_dictionaryWithCapacity_(v39, v45, v46, v47, v48, v44);
  refLineStylesMap = self->_refLineStylesMap;
  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = sub_27636ADC4;
  v81[3] = &unk_27A6B9FF8;
  v82 = v49;
  v51 = v49;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(refLineStylesMap, v52, v53, v54, v55, v81);
  objc_msgSend_setReferenceLineStyles_(v6, v56, v57, v58, v59, v51);
  v60 = objc_opt_class();
  v61 = sub_2762CD788(v60, self->_themePresetRefLineStyle);
  objc_msgSend_setReferenceLineThemeStyle_(v6, v62, v63, v64, v65, v61);

  v70 = objc_msgSend_preset(self, v66, v67, v68, v69);
  v75 = objc_msgSend_chartStyleState(v70, v71, v72, v73, v74);
  objc_msgSend_setThemeChartStyleState_(v6, v76, v77, v78, v79, v75);

  return v6;
}

- (id)tuplesToApplyState:(id)state
{
  v219 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if (!stateCopy)
  {
    v9 = MEMORY[0x277D81150];
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v6, v7, v8, "[TSCHChartInfo(StyleState) tuplesToApplyState:]");
    v11 = v10 = self;
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStyleState.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v17, v18, v19, v20, v11, v16, 1018, 0, "invalid nil value for '%{public}s'", "state");

    self = v10;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  v217[0] = MEMORY[0x277D85DD0];
  v217[1] = 3221225472;
  v217[2] = sub_27636B508;
  v217[3] = &unk_27A6BA020;
  v217[4] = self;
  v25 = MEMORY[0x277C98B30](v217);
  v30 = objc_msgSend_array(MEMORY[0x277CBEB18], v26, v27, v28, v29);
  v31 = [TSCHStyleSwapUndoTuple alloc];
  style = self->_style;
  v37 = objc_msgSend_chartStyle(stateCopy, v33, v34, v35, v36);
  v42 = objc_msgSend_initWithChartInfo_swapType_index_oldValue_newValue_(v31, v38, v39, v40, v41, self, 1, 0, style, v37);
  objc_msgSend_addObject_(v30, v43, v44, v45, v46, v42);

  v47 = [TSCHStyleSwapUndoTuple alloc];
  legendStyle = self->_legendStyle;
  v53 = objc_msgSend_legendStyle(stateCopy, v49, v50, v51, v52);
  v58 = objc_msgSend_initWithChartInfo_swapType_index_oldValue_newValue_(v47, v54, v55, v56, v57, self, 3, 0, legendStyle, v53);
  objc_msgSend_addObject_(v30, v59, v60, v61, v62, v58);

  valueAxisStyles = self->_valueAxisStyles;
  v68 = objc_msgSend_valueAxisStyles(stateCopy, v64, v65, v66, v67);
  v69 = (*(v25 + 16))(v25, valueAxisStyles, v68, 5, 0);
  objc_msgSend_addObjectsFromArray_(v30, v70, v71, v72, v73, v69);

  categoryAxisStyles = self->_categoryAxisStyles;
  v79 = objc_msgSend_categoryAxisStyles(stateCopy, v75, v76, v77, v78);
  v80 = (*(v25 + 16))(v25, categoryAxisStyles, v79, 7, 0);
  objc_msgSend_addObjectsFromArray_(v30, v81, v82, v83, v84, v80);

  themeSeriesStyles = self->_themeSeriesStyles;
  v90 = objc_msgSend_seriesThemeStyles(stateCopy, v86, v87, v88, v89);
  v91 = (*(v25 + 16))(v25, themeSeriesStyles, v90, 9, 0);
  objc_msgSend_addObjectsFromArray_(v30, v92, v93, v94, v95, v91);

  privateSeriesStyles = self->_privateSeriesStyles;
  v101 = objc_msgSend_seriesPrivateStyles(stateCopy, v97, v98, v99, v100);
  v102 = (*(v25 + 16))(v25, privateSeriesStyles, v101, 10, 0);
  objc_msgSend_addObjectsFromArray_(v30, v103, v104, v105, v106, v102);

  paragraphStyles = self->_paragraphStyles;
  v112 = objc_msgSend_paragraphStyles(stateCopy, v108, v109, v110, v111);
  v211 = v25;
  v113 = (*(v25 + 16))(v25, paragraphStyles, v112, 12, 0);
  objc_msgSend_addObjectsFromArray_(v30, v114, v115, v116, v117, v113);

  v118 = MEMORY[0x277CBEB98];
  v123 = objc_msgSend_allKeys(self->_refLineStylesMap, v119, v120, v121, v122);
  v128 = objc_msgSend_referenceLineStyles(stateCopy, v124, v125, v126, v127);
  v133 = objc_msgSend_allKeys(v128, v129, v130, v131, v132);
  v138 = objc_msgSend_arrayByAddingObjectsFromArray_(v123, v134, v135, v136, v137, v133);
  v143 = objc_msgSend_setWithArray_(v118, v139, v140, v141, v142, v138);

  v215 = 0u;
  v216 = 0u;
  v213 = 0u;
  v214 = 0u;
  obj = v143;
  v148 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v144, v145, v146, v147, &v213, v218, 16);
  if (v148)
  {
    v153 = v148;
    v154 = *v214;
    do
    {
      for (i = 0; i != v153; ++i)
      {
        if (*v214 != v154)
        {
          objc_enumerationMutation(obj);
        }

        v156 = *(*(&v213 + 1) + 8 * i);
        v157 = objc_msgSend_objectForKey_(self->_refLineStylesMap, v149, v150, v151, v152, v156);
        v162 = objc_msgSend_referenceLineStyles(stateCopy, v158, v159, v160, v161);
        objc_msgSend_objectForKey_(v162, v163, v164, v165, v166, v156);
        selfCopy = self;
        v169 = v168 = stateCopy;
        v212[0] = MEMORY[0x277D85DD0];
        v212[1] = 3221225472;
        v212[2] = sub_27636B724;
        v212[3] = &unk_27A6BA048;
        v212[4] = v156;
        v170 = (v211)[2](v211, v157, v169, 13, v212);
        objc_msgSend_addObjectsFromArray_(v30, v171, v172, v173, v174, v170);

        stateCopy = v168;
        self = selfCopy;
      }

      v153 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v149, v150, v151, v152, &v213, v218, 16);
    }

    while (v153);
  }

  if (self->_themePresetRefLineStyle && (objc_msgSend_referenceLineThemeStyle(stateCopy, v175, v176, v177, v178), objc_claimAutoreleasedReturnValue(), self->_themePresetRefLineStyle) || (objc_msgSend_referenceLineThemeStyle(stateCopy, v175, v176, v177, v178), v179 = objc_claimAutoreleasedReturnValue(), v179, v179))
  {
    v184 = [TSCHStyleSwapUndoTuple alloc];
    themePresetRefLineStyle = self->_themePresetRefLineStyle;
    v190 = objc_msgSend_referenceLineThemeStyle(stateCopy, v186, v187, v188, v189);
    v195 = objc_msgSend_initWithChartInfo_swapType_index_oldValue_newValue_(v184, v191, v192, v193, v194, self, 15, 0, themePresetRefLineStyle, v190);
    objc_msgSend_addObject_(v30, v196, v197, v198, v199, v195);
  }

  v200 = objc_msgSend_indexesOfObjectsPassingTest_(v30, v180, v181, v182, v183, &unk_28851EEE0);
  objc_msgSend_removeObjectsAtIndexes_(v30, v201, v202, v203, v204, v200);
  objc_msgSend_sortUsingFunction_context_(v30, v205, v206, v207, v208, sub_276313484, 0);

  return v30;
}

- (void)loadFromUnityArchive:(const void *)archive unarchiver:(id)unarchiver persistentChartInfo:(id)info
{
  unarchiverCopy = unarchiver;
  infoCopy = info;
  objc_storeWeak(&self->_drawableInfo, infoCopy);
  v327 = objc_msgSend_context(infoCopy, v10, v11, v12, v13);
  v326 = objc_msgSend_array(MEMORY[0x277CBEB18], v14, v15, v16, v17);
  v22 = objc_msgSend_isFromCopy(unarchiverCopy, v18, v19, v20, v21);
  v322 = objc_msgSend_sourceType(unarchiverCopy, v23, v24, v25, v26);
  v321 = *(archive + 70);
  v27 = [TSCHChartModel alloc];
  v325 = objc_msgSend_initWithChartInfo_(v27, v28, v29, v30, v31, self);
  objc_msgSend_loadFromUnityArchive_unarchiver_contextForUpgradeOnly_chartInfo_(v325, v32, v33, v34, v35, archive, unarchiverCopy, v327, self);
  objc_msgSend_setModel_(self, v36, v37, v38, v39, v325);
  v372[0] = 0;
  v372[1] = v372;
  v372[2] = 0x3032000000;
  v372[3] = sub_276379FB4;
  v372[4] = sub_276379FC4;
  v373 = 0;
  if ((*(archive + 40) & 2) != 0)
  {
    v40 = *(archive + 25);
    if (v22)
    {
      v371[0] = MEMORY[0x277D85DD0];
      v371[1] = 3221225472;
      v371[2] = sub_276379FCC;
      v371[3] = &unk_27A6B7458;
      v371[4] = v372;
      v41 = unarchiverCopy;
      v42 = v371;
      v43 = objc_opt_class();
      objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v41, v44, v45, v46, v47, v40, v43, 0, v42);
    }

    else
    {
      v370[0] = MEMORY[0x277D85DD0];
      v370[1] = 3221225472;
      v370[2] = sub_276379FDC;
      v370[3] = &unk_27A6BA108;
      v370[4] = self;
      v41 = unarchiverCopy;
      v42 = v370;
      v48 = objc_opt_class();
      objc_msgSend_readWeakLazyReferenceMessage_class_protocol_completion_(v41, v49, v50, v51, v52, v40, v48, 0, v42);
    }
  }

  if ((*(archive + 41) & 4) != 0)
  {
    v53 = *(archive + 34);
    v369[0] = MEMORY[0x277D85DD0];
    v369[1] = 3221225472;
    v369[2] = sub_276379FF4;
    v369[3] = &unk_27A6BA108;
    v369[4] = self;
    v54 = unarchiverCopy;
    v55 = v369;
    v56 = objc_opt_class();
    objc_msgSend_readLazyReferenceMessage_class_protocol_completion_(v54, v57, v58, v59, v60, v53, v56, 0, v55);
  }

  if (google::protobuf::internal::ExtensionSet::Has((archive + 16)))
  {
    UInt32 = google::protobuf::internal::ExtensionSet::GetUInt32((archive + 16));
    v62 = qword_280A462D8;
    v67 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v63, v64, v65, v66, UInt32);
    objc_setAssociatedObject(self, v62, v67, 0x303);
  }

  if (google::protobuf::internal::ExtensionSet::Has((archive + 16)))
  {
    String = google::protobuf::internal::ExtensionSet::GetString();
    v69 = *(String + 23);
    if ((v69 & 0x80u) != 0)
    {
      v69 = *(String + 8);
    }

    if (v69 >= 0x10)
    {
      v70 = google::protobuf::internal::ExtensionSet::GetString();
      if (*(v70 + 23) >= 0)
      {
        v71 = v70;
      }

      else
      {
        v71 = *v70;
      }

      *byte7 = *(v71 + 7);
      v72 = CFUUIDCreateWithBytes(0, *v71, *(v71 + 1), *(v71 + 2), *(v71 + 3), *(v71 + 4), *(v71 + 5), *(v71 + 6), byte7[0], byte7[1], byte7[2], byte7[3], byte7[4], byte7[5], byte7[6], byte7[7], *(v71 + 15));
      v73 = v72;
      if (v72)
      {
        v76 = CFUUIDGetUUIDBytes(v72);
        v75 = *&v76.byte8;
        v74 = *&v76.byte0;
      }

      else
      {
        v74 = 0;
        v75 = 0;
      }

      v350[0] = v74;
      v350[1] = v75;
      v77 = objc_alloc(MEMORY[0x277CCAD78]);
      v82 = objc_msgSend_initWithUUIDBytes_(v77, v78, v79, v80, v81, v350);
      objc_setAssociatedObject(self, qword_280A462E0, v82, 1);
      if (v73)
      {
        CFRelease(v73);
      }
    }
  }

  v83 = *(archive + 10);
  if ((v83 & 0x10) != 0)
  {
    v84 = *(archive + 28);
    v368[0] = MEMORY[0x277D85DD0];
    v368[1] = 3221225472;
    v368[2] = sub_27637A00C;
    v368[3] = &unk_27A6B7480;
    v368[4] = self;
    v85 = unarchiverCopy;
    v86 = v368;
    v87 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v85, v88, v89, v90, v91, v84, v87, 0, v86);

    v83 = *(archive + 10);
  }

  if ((v83 & 0x20) != 0)
  {
    v92 = *(archive + 29);
    v367[0] = MEMORY[0x277D85DD0];
    v367[1] = 3221225472;
    v367[2] = sub_27637A024;
    v367[3] = &unk_27A6B74F8;
    v367[4] = self;
    v93 = unarchiverCopy;
    v94 = v367;
    v95 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v93, v96, v97, v98, v99, v92, v95, 0, v94);

    v83 = *(archive + 10);
  }

  if ((v83 & 0x40) != 0)
  {
    v100 = *(archive + 30);
    v366[0] = MEMORY[0x277D85DD0];
    v366[1] = 3221225472;
    v366[2] = sub_27637A03C;
    v366[3] = &unk_27A6B74A8;
    v366[4] = self;
    v101 = unarchiverCopy;
    v102 = v366;
    v103 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v101, v104, v105, v106, v107, v100, v103, 0, v102);

    v83 = *(archive + 10);
  }

  if ((v83 & 0x80) != 0)
  {
    v108 = *(archive + 31);
    v365[0] = MEMORY[0x277D85DD0];
    v365[1] = 3221225472;
    v365[2] = sub_27637A054;
    v365[3] = &unk_27A6B74D0;
    v365[4] = self;
    v109 = unarchiverCopy;
    v110 = v365;
    v111 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v109, v112, v113, v114, v115, v108, v111, 0, v110);
  }

  if (*(archive + 14) >= 1)
  {
    v364[0] = MEMORY[0x277D85DD0];
    v364[1] = 3221225472;
    v364[2] = sub_27637A06C;
    v364[3] = &unk_27A6B7520;
    v364[4] = self;
    v116 = unarchiverCopy;
    v117 = v364;
    v118 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v116, v119, v120, v121, v122, archive + 48, v118, 0, v117);
  }

  if (*(archive + 20) >= 1)
  {
    v363[0] = MEMORY[0x277D85DD0];
    v363[1] = 3221225472;
    v363[2] = sub_27637A084;
    v363[3] = &unk_27A6B7520;
    v363[4] = self;
    v123 = unarchiverCopy;
    v124 = v363;
    v125 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v123, v126, v127, v128, v129, archive + 72, v125, 0, v124);
  }

  if (*(archive + 26) >= 1)
  {
    v362[0] = MEMORY[0x277D85DD0];
    v362[1] = 3221225472;
    v362[2] = sub_27637A09C;
    v362[3] = &unk_27A6B7520;
    v362[4] = self;
    v130 = unarchiverCopy;
    v131 = v362;
    v132 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v130, v133, v134, v135, v136, archive + 96, v132, 0, v131);
  }

  if (*(archive + 32) >= 1)
  {
    v361[0] = MEMORY[0x277D85DD0];
    v361[1] = 3221225472;
    v361[2] = sub_27637A0B4;
    v361[3] = &unk_27A6B7520;
    v361[4] = self;
    v137 = unarchiverCopy;
    v138 = v361;
    v139 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v137, v140, v141, v142, v143, archive + 120, v139, 0, v138);
  }

  if (*(archive + 38) >= 1)
  {
    v360[0] = MEMORY[0x277D85DD0];
    v360[1] = 3221225472;
    v360[2] = sub_27637A0CC;
    v360[3] = &unk_27A6B7520;
    v360[4] = self;
    v144 = unarchiverCopy;
    v145 = v360;
    v146 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v144, v147, v148, v149, v150, archive + 144, v146, 0, v145);
  }

  v151 = *(archive + 10);
  if ((v151 & 0x100) != 0)
  {
    v152 = *(archive + 32);
    if (*(v152 + 48))
    {
      v359[0] = MEMORY[0x277D85DD0];
      v359[1] = 3221225472;
      v359[2] = sub_27637A0E4;
      v359[3] = &unk_27A6B7520;
      v359[4] = self;
      v153 = unarchiverCopy;
      v154 = v359;
      v155 = objc_opt_class();
      objc_msgSend_readSparseReferenceArrayMessage_class_protocol_completion_(v153, v156, v157, v158, v159, v152, v155, 0, v154);

      v151 = *(archive + 10);
    }
  }

  if ((v151 & 0x200) != 0)
  {
    v160 = *(archive + 33);
    v358[0] = MEMORY[0x277D85DD0];
    v358[1] = 3221225472;
    v358[2] = sub_27637A0FC;
    v358[3] = &unk_27A6B7520;
    v358[4] = self;
    v161 = unarchiverCopy;
    v162 = v358;
    v163 = objc_opt_class();
    objc_msgSend_readSparseReferenceArrayMessage_class_protocol_completion_(v161, v164, v165, v166, v167, v160, v163, 0, v162);
  }

  if (*(archive + 44) >= 1)
  {
    v357[0] = MEMORY[0x277D85DD0];
    v357[1] = 3221225472;
    v357[2] = sub_27637A114;
    v357[3] = &unk_27A6B7520;
    v357[4] = self;
    v168 = unarchiverCopy;
    v169 = v357;
    v170 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v168, v171, v172, v173, v174, archive + 168, v170, 0, v169);
  }

  if (google::protobuf::internal::ExtensionSet::Has((archive + 16)))
  {
    v175 = MEMORY[0x277CCACA8];
    v176 = google::protobuf::internal::ExtensionSet::GetString();
    v181 = objc_msgSend_tsp_stringWithProtobufString_(v175, v177, v178, v179, v180, v176);
    v186 = objc_msgSend_copy(v181, v182, v183, v184, v185);
    lastAppliedFillSetLookupString = self->_lastAppliedFillSetLookupString;
    self->_lastAppliedFillSetLookupString = v186;
  }

  v323 = objc_alloc_init(TSCHLegendModel);
  v324 = infoCopy;
  objc_msgSend_setChartInfo_(v323, v188, v189, v190, v191, self);
  objc_msgSend_loadFromUnityArchive_(v323, v192, v193, v194, v195, archive);
  objc_msgSend_setLegend_(self, v196, v197, v198, v199, v323);
  v200 = *(MEMORY[0x277CBF398] + 16);
  self->_innerChartFrame.origin = *MEMORY[0x277CBF398];
  self->_innerChartFrame.size = v200;
  self->_needsCalcEngineDependentImport = *(archive + 293) & ((*(archive + 10) & 0x8000u) >> 15);
  if (google::protobuf::internal::ExtensionSet::Has((archive + 16)))
  {
    Bool = google::protobuf::internal::ExtensionSet::GetBool((archive + 16));
  }

  else
  {
    Bool = 0;
  }

  if (google::protobuf::internal::ExtensionSet::Has((archive + 16)))
  {
    Message = google::protobuf::internal::ExtensionSet::GetMessage();
    TSCH::ChartGarlicMinMaxUpgrade::ChartGarlicMinMaxUpgrade(v350, Message);
    v205 = v351;
    if (v351)
    {
      v206 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v202, v352, v203, v204);
      horizontalMin = self->_horizontalMin;
      self->_horizontalMin = v206;

      v205 = v351;
    }

    if ((v205 & 2) != 0)
    {
      v208 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v202, v353, v203, v204);
      horizontalMax = self->_horizontalMax;
      self->_horizontalMax = v208;

      v205 = v351;
    }

    if ((v205 & 4) != 0)
    {
      v210 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v202, v354, v203, v204);
      valueMin = self->_valueMin;
      self->_valueMin = v210;

      v205 = v351;
    }

    if ((v205 & 8) != 0)
    {
      v212 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v202, v355, v203, v204);
      valueMax = self->_valueMax;
      self->_valueMax = v212;
    }

    self->_isOlderThanSage = 1;
    TSCH::ChartGarlicMinMaxUpgrade::~ChartGarlicMinMaxUpgrade(v350);
  }

  if (google::protobuf::internal::ExtensionSet::Has((archive + 16)))
  {
    v214 = google::protobuf::internal::ExtensionSet::GetMessage();
    TSCH::ChartGarlicLabelFormatUpgrade::ChartGarlicLabelFormatUpgrade(v350, v214);
    v219 = v351;
    if (v351)
    {
      v220 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v215, v216, v217, v218, *&v352 & 0xFFFFFFFFFFFFFFFELL);
      valuePrefix = self->_valuePrefix;
      self->_valuePrefix = v220;

      v219 = v351;
    }

    if ((v219 & 2) != 0)
    {
      v222 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v215, v216, v217, v218, *&v353 & 0xFFFFFFFFFFFFFFFELL);
      valueSuffix = self->_valueSuffix;
      self->_valueSuffix = v222;

      v219 = v351;
    }

    if ((v219 & 0x10) != 0)
    {
      self->_valueUseSeparator = v356;
    }

    if ((v219 & 4) != 0)
    {
      v224 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v215, v216, v217, v218, *&v354 & 0xFFFFFFFFFFFFFFFELL);
      horizontalPrefix = self->_horizontalPrefix;
      self->_horizontalPrefix = v224;

      v219 = v351;
    }

    if ((v219 & 8) != 0)
    {
      v226 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v215, v216, v217, v218, *&v355 & 0xFFFFFFFFFFFFFFFELL);
      horizontalSuffix = self->_horizontalSuffix;
      self->_horizontalSuffix = v226;

      v219 = v351;
    }

    if ((v219 & 0x20) != 0)
    {
      self->_horizontalUseSeparator = v356;
    }

    self->_isOlderThanSage = 1;
    TSCH::ChartGarlicLabelFormatUpgrade::~ChartGarlicLabelFormatUpgrade(v350);
  }

  if (google::protobuf::internal::ExtensionSet::Has((archive + 16)))
  {
    v228 = google::protobuf::internal::ExtensionSet::GetMessage();
    v349[0] = MEMORY[0x277D85DD0];
    v349[1] = 3221225472;
    v349[2] = sub_27637A12C;
    v349[3] = &unk_27A6BA130;
    v349[4] = self;
    v229 = unarchiverCopy;
    v230 = v349;
    v231 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v229, v232, v233, v234, v235, v228, v231, 0, v230);
  }

  if (google::protobuf::internal::ExtensionSet::Has((archive + 16)))
  {
    archiveCopy = archive;
    v236 = google::protobuf::internal::ExtensionSet::GetMessage();
    v328 = *(v236 + 32);
    selfCopy = self;
    if (v328 >= 1)
    {
      for (i = 0; i != v328; ++i)
      {
        v238 = *(*(v236 + 40) + 8 * i + 8);
        v239 = [TSCHChartAxisID alloc];
        if (*(v238 + 48))
        {
          v244 = objc_msgSend_initWithArchive_(v239, v240, v241, v242, v243, *(v238 + 48));
        }

        else
        {
          v244 = objc_msgSend_initWithArchive_(v239, v240, v241, v242, v243, &TSCH::_ChartAxisIDArchive_default_instance_);
        }

        v249 = v244;
        v250 = *(v238 + 32);
        v251 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v245, v246, v247, v248, v250);
        if (v250 >= 1)
        {
          v252 = 8;
          do
          {
            v253 = *(*(v238 + 40) + v252);
            v254 = [TSCHReferenceLineNonStyleItem alloc];
            v259 = objc_msgSend_initFromUnarchiver_message_(v254, v255, v256, v257, v258, unarchiverCopy, v253);
            objc_msgSend_addObject_(v251, v260, v261, v262, v263, v259);

            v252 += 8;
            --v250;
          }

          while (v250);
        }

        refLineNonStylesMap = selfCopy->_refLineNonStylesMap;
        if (refLineNonStylesMap)
        {
          v265 = refLineNonStylesMap;
          v266 = selfCopy->_refLineNonStylesMap;
          selfCopy->_refLineNonStylesMap = v265;
        }

        else
        {
          v266 = objc_alloc_init(MEMORY[0x277CBEB38]);
          objc_storeStrong(&selfCopy->_refLineNonStylesMap, v266);
        }

        objc_msgSend_setObject_forKey_(selfCopy->_refLineNonStylesMap, v267, v268, v269, v270, v251, v249);
      }
    }

    v271 = *(v236 + 56);
    if (v271 >= 1)
    {
      v272 = 8;
      do
      {
        v273 = *(*(v236 + 64) + v272);
        v274 = [TSCHChartAxisID alloc];
        if (*(v273 + 24))
        {
          v279 = objc_msgSend_initWithArchive_(v274, v275, v276, v277, v278, *(v273 + 24));
        }

        else
        {
          v279 = objc_msgSend_initWithArchive_(v274, v275, v276, v277, v278, &TSCH::_ChartAxisIDArchive_default_instance_);
        }

        v280 = *(v273 + 32);
        v347[0] = MEMORY[0x277D85DD0];
        v347[1] = 3221225472;
        v347[2] = sub_27637A1A4;
        v347[3] = &unk_27A6BA0B8;
        v347[4] = selfCopy;
        v281 = v279;
        v348 = v281;
        v282 = unarchiverCopy;
        v283 = v347;
        v285 = objc_opt_class();
        if (v280)
        {
          objc_msgSend_readSparseReferenceArrayMessage_class_protocol_completion_(v282, v284, v286, v287, v288, v280, v285, 0, v283);
        }

        else
        {
          objc_msgSend_readSparseReferenceArrayMessage_class_protocol_completion_(v282, v284, v286, v287, v288, MEMORY[0x277D80A68], v285, 0, v283);
        }

        v272 += 8;
        --v271;
      }

      while (v271);
    }

    self = selfCopy;
    archive = archiveCopy;
    if (*(v236 + 16))
    {
      v289 = *(v236 + 72);
      v346[0] = MEMORY[0x277D85DD0];
      v346[1] = 3221225472;
      v346[2] = sub_27637A280;
      v346[3] = &unk_27A6BA0E0;
      v346[4] = selfCopy;
      v290 = unarchiverCopy;
      v291 = v346;
      v292 = objc_opt_class();
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v290, v293, v294, v295, v296, v289, v292, 0, v291);
    }
  }

  v297 = google::protobuf::internal::ExtensionSet::Has((archive + 16));
  if (v297)
  {
    LOBYTE(v297) = google::protobuf::internal::ExtensionSet::GetBool((archive + 16));
  }

  self->_appearancePreservedForPreset = v297;
  if (google::protobuf::internal::ExtensionSet::Has((archive + 16)))
  {
    v298 = google::protobuf::internal::ExtensionSet::GetBool((archive + 16));
  }

  else
  {
    v298 = 0;
  }

  if (google::protobuf::internal::ExtensionSet::Has((archive + 16)))
  {
    v299 = google::protobuf::internal::ExtensionSet::GetBool((archive + 16));
  }

  else
  {
    v299 = 0;
  }

  if (google::protobuf::internal::ExtensionSet::Has((archive + 16)))
  {
    v300 = google::protobuf::internal::ExtensionSet::GetBool((archive + 16));
  }

  else
  {
    v300 = 0;
  }

  if (google::protobuf::internal::ExtensionSet::Has((archive + 16)))
  {
    v301 = google::protobuf::internal::ExtensionSet::GetBool((archive + 16));
  }

  else
  {
    v301 = 0;
  }

  v330 = v301;
  if (google::protobuf::internal::ExtensionSet::Has((archive + 16)))
  {
    v302 = google::protobuf::internal::ExtensionSet::GetBool((archive + 16));
    v303 = v299;
    v304 = v298;
  }

  else
  {
    v303 = v299;
    v304 = v298;
    v302 = 0;
  }

  if (google::protobuf::internal::ExtensionSet::Has((archive + 16)))
  {
    v309 = google::protobuf::internal::ExtensionSet::GetBool((archive + 16));
  }

  else
  {
    v309 = 0;
  }

  v310 = objc_msgSend_fileFormatVersion(unarchiverCopy, v305, v306, v307, v308);
  v331[0] = MEMORY[0x277D85DD0];
  v331[1] = 3221225472;
  v331[2] = sub_27637A298;
  v331[3] = &unk_27A6BA158;
  v331[4] = self;
  v311 = v327;
  v332 = v311;
  v312 = v326;
  v333 = v312;
  v335 = v372;
  v339 = v304;
  v340 = v300;
  v341 = v303;
  v342 = v309;
  v343 = v330;
  v344 = v302;
  v337 = v321;
  v338 = v322;
  v345 = Bool;
  v313 = v324;
  v334 = v313;
  v336 = v310;
  objc_msgSend_addFinalizeHandler_(unarchiverCopy, v314, v315, v316, v317, v331);

  _Block_object_dispose(v372, 8);
}

- (BOOL)p_isDownsampledStackedChart
{
  for (i = 0; ; ++i)
  {
    v7 = objc_msgSend_seriesList(self->_model, a2, v2, v3, v4);
    v12 = objc_msgSend_count(v7, v8, v9, v10, v11);

    if (i >= v12)
    {
      break;
    }

    v17 = objc_msgSend_seriesList(self->_model, v13, v14, v15, v16);
    v22 = objc_msgSend_objectAtIndexedSubscript_(v17, v18, v19, v20, v21, i);

    v27 = objc_msgSend_seriesType(v22, v23, v24, v25, v26);
    v33 = objc_msgSend_stackedColumnSeries(TSCHChartSeriesType, v28, v29, v30, v31);
    if (v27 != v33)
    {
      v37 = objc_msgSend_stackedBarSeries(TSCHChartSeriesType, v32, v34, v35, v36);
      v42 = v37;
      if (v27 != v37)
      {
        v43 = objc_msgSend_stackedAreaSeries(TSCHChartSeriesType, v38, v39, v40, v41);

        if (v27 != v43)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

LABEL_9:
    if (objc_msgSend_isDownsampled(v22, v44, v45, v46, v47))
    {

      return i < v12;
    }

LABEL_10:
  }

  return i < v12;
}

- (void)p_applySeriesTuplesWithThemeSeriesStyles:(id)styles privateSeriesStyles:(id)seriesStyles propertyDictionary:(id)dictionary
{
  stylesCopy = styles;
  seriesStylesCopy = seriesStyles;
  dictionaryCopy = dictionary;
  v13 = objc_msgSend_count(stylesCopy, v9, v10, v11, v12);
  v18 = objc_msgSend_count(seriesStylesCopy, v14, v15, v16, v17);
  if (v13 <= v18)
  {
    v23 = v18;
    objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v19, v20, v21, v22, v18);
  }

  else
  {
    v23 = v13;
    objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v19, v20, v21, v22, v13);
  }
  v25 = ;
  if (v23)
  {
    for (i = 0; i != v23; ++i)
    {
      if (i >= objc_msgSend_count(seriesStylesCopy, v24, v26, v27, v28) || (objc_opt_class(), objc_msgSend_objectAtIndexedSubscript_(seriesStylesCopy, v34, v35, v36, v37, i), v38 = objc_claimAutoreleasedReturnValue(), TSUDynamicCast(), v39 = objc_claimAutoreleasedReturnValue(), v38, !v39))
      {
        if (i >= objc_msgSend_count(stylesCopy, v30, v31, v32, v33))
        {
          v39 = 0;
        }

        else
        {
          objc_opt_class();
          v44 = objc_msgSend_objectAtIndexedSubscript_(stylesCopy, v40, v41, v42, v43, i);
          v39 = TSUCheckedDynamicCast();
        }
      }

      v45 = objc_msgSend_stylesheet(v39, v30, v31, v32, v33);
      v50 = v45;
      if (v39 && v45)
      {
        isLocked = objc_msgSend_isLocked(v45, v46, v47, v48, v49);
        objc_msgSend_setIsLocked_(v50, v52, v53, v54, v55, 0);
        v60 = objc_msgSend_propertyMapWithDictionary_(MEMORY[0x277D80AB8], v56, v57, v58, v59, dictionaryCopy);
        v65 = objc_msgSend_variationOfStyle_propertyMap_(v50, v61, v62, v63, v64, v39, v60);

        objc_msgSend_setIsLocked_(v50, v66, v67, v68, v69, isLocked);
        v70 = [TSCHStyleSwapUndoTuple alloc];
        v75 = objc_msgSend_initWithChartInfo_swapType_index_oldValue_newValue_(v70, v71, v72, v73, v74, self, 10, i, v39, v65);
        objc_msgSend_addObject_(v25, v76, v77, v78, v79, v75);
      }
    }
  }

  v80 = objc_msgSend_applyStyleSwapTuples_(self, v24, v26, v27, v28, v25);
}

- (void)p_upgradeLineChartsFor10
{
  v96 = *MEMORY[0x277D85DE8];
  v89 = objc_msgSend_seriesList(self->_model, a2, v2, v3, v4);
  v11 = objc_msgSend_count(v89, v6, v7, v8, v9);
  seriesNonStyles = self->_seriesNonStyles;
  if (seriesNonStyles)
  {
    seriesNonStyles = objc_msgSend_count(seriesNonStyles, v10, v12, v13, v14);
  }

  v16 = v11 - seriesNonStyles;
  if (v11 > seriesNonStyles)
  {
    v17 = objc_msgSend_null(MEMORY[0x277CBEB68], v10, v12, v13, v14);
    if (v16 >= 1)
    {
      do
      {
        v18 = self->_seriesNonStyles;
        objc_opt_class();
        v19 = TSUCheckedDynamicCast();

        objc_msgSend_addObject_(v19, v20, v21, v22, v23, v17);
        --v16;
      }

      while (v16);
    }
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  obj = v89;
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, v25, v26, v27, &v91, v95, 16);
  if (v29)
  {
    v33 = *v92;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v92 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v35 = *(*(&v91 + 1) + 8 * i);
        v36 = objc_msgSend_seriesType(v35, v28, v30, v31, v32);
        v41 = objc_msgSend_lineSeries(TSCHChartSeriesType, v37, v38, v39, v40);
        v46 = v41;
        if (v36 == v41)
        {
        }

        else
        {
          v47 = objc_msgSend_mixedLineSeries(TSCHChartSeriesType, v42, v43, v44, v45);
          v48 = v36 == v47;

          if (!v48)
          {
            goto LABEL_24;
          }
        }

        v53 = objc_msgSend_seriesIndex(v35, v49, v50, v51, v52);
        v58 = objc_msgSend_objectAtIndexedSubscript_(self->_seriesNonStyles, v54, v55, v56, v57, v53);
        v59 = objc_opt_class();
        v61 = sub_2762CD788(v59, v58);
        if (!v61 || (objc_msgSend_null(MEMORY[0x277CBEB68], v60, v62, v63, v64), v65 = objc_claimAutoreleasedReturnValue(), v66 = v61 == v65, v65, v66))
        {
          v67 = objc_msgSend_context(self, v60, v62, v63, v64);
          v72 = objc_msgSend_defaultStyleWithContext_(TSCHChartSeriesNonStyle, v68, v69, v70, v71, v67);

          v61 = v72;
        }

        if ((objc_msgSend_definesProperty_(v61, v60, v62, v63, v64, 1472) & 1) == 0)
        {
          objc_msgSend_willModifyForUpgrade(v61, v73, v74, v75, v76);
          objc_msgSend_setIntValue_forProperty_(v61, v77, v78, v79, v80, 1, 1472);
        }

        if ((objc_msgSend_definesProperty_(v61, v73, v74, v75, v76, 1474) & 1) == 0)
        {
          objc_msgSend_willModifyForUpgrade(v61, v81, v82, v83, v84);
          objc_msgSend_setIntValue_forProperty_(v61, v85, v86, v87, v88, 1, 1474);
        }

        objc_msgSend_replaceObjectAtIndex_withObject_(self->_seriesNonStyles, v81, v82, v83, v84, v53, v61);

LABEL_24:
      }

      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v28, v30, v31, v32, &v91, v95, 16);
    }

    while (v29);
  }
}

- (void)saveToUnityArchive:(void *)archive persistentChartInfo:(id)info archiver:(id)archiver
{
  infoCopy = info;
  archiverCopy = archiver;
  v13 = objc_msgSend_model(self, v9, v10, v11, v12);
  objc_msgSend_setShouldCacheMediatorData_(v13, v14, v15, v16, v17, 0);

  objc_msgSend_p_saveToUnityArchive_persistentChartInfo_archiver_(self, v18, v19, v20, v21, archive, infoCopy, archiverCopy);
  v26 = objc_msgSend_model(self, v22, v23, v24, v25);
  objc_msgSend_setShouldCacheMediatorData_(v26, v27, v28, v29, v30, 1);
}

- (void)p_saveToUnityArchive:(void *)archive persistentChartInfo:(id)info archiver:(id)archiver
{
  v785 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  archiverCopy = archiver;
  selfCopy = self;
  objc_msgSend_debugVerifyPreset(self, v8, v9, v10, v11);
  v758 = objc_msgSend_targetType(archiverCopy, v12, v13, v14, v15);
  obj = objc_msgSend_isForCopy(archiverCopy, v16, v17, v18, v19);
  v747 = objc_msgSend_context(infoCopy, v20, v21, v22, v23);
  selfCopy2 = self;
  if (((self->_mediator != 0) & obj) == 1)
  {
    v29 = objc_msgSend_model(self, v24, v25, v26, v27);
    v35 = objc_msgSend_grid(v29, v30, v31, v32, v33);
    if (v35)
    {
      v39 = objc_msgSend_cachedChartMediatorGridDirection(v29, v34, v36, v37, v38);
      v40 = qword_280A462E8;
      v45 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v41, v42, v43, v44, v39);
      objc_setAssociatedObject(v35, v40, v45, 0x303);
    }

    selfCopy2 = selfCopy;
  }

  v46 = objc_msgSend_model(selfCopy2, v24, v25, v26, v27);
  v51 = objc_msgSend_grid(v46, v47, v48, v49, v50);
  objc_msgSend_validateRowColumnIdMapsAndFix_(v51, v52, v53, v54, v55, 1);

  v60 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, v56, v57, v58, v59);
  v65 = objc_msgSend_supportsNumberFormatSameAsSource(v60, v61, v62, v63, v64);

  v761 = objc_msgSend_array(MEMORY[0x277CBEB18], v66, v67, v68, v69);
  v760 = objc_msgSend_array(MEMORY[0x277CBEB18], v70, v71, v72, v73);
  v754 = objc_msgSend_array(MEMORY[0x277CBEB18], v74, v75, v76, v77);
  v745 = objc_msgSend_array(MEMORY[0x277CBEB18], v78, v79, v80, v81);
  if (v65 && v758 == 1)
  {
    v86 = objc_msgSend_valueAxisList(selfCopy->_model, v82, v83, v84, v85);
    v91 = objc_msgSend_count(v86, v87, v88, v89, v90);

    if (v91)
    {
      v96 = v91;
      for (i = 0; i != v96; ++i)
      {
        v98 = objc_msgSend_valueAxisList(selfCopy->_model, v92, v93, v94, v95);
        v103 = objc_msgSend_objectAtIndexedSubscript_(v98, v99, v100, v101, v102, i);

        chartType = selfCopy->_chartType;
        v109 = objc_msgSend_axisID(v103, v105, v106, v107, v108);
        v114 = objc_msgSend_styleIndexForAxisID_(chartType, v110, v111, v112, v113, v109);
        v115 = v761;
        while (1)
        {

          if (v114 < objc_msgSend_count(v115, v116, v117, v118, v119))
          {
            break;
          }

          v109 = objc_msgSend_null(MEMORY[0x277CBEB68], v120, v121, v122, v123);
          v115 = v761;
          objc_msgSend_addObject_(v761, v124, v125, v126, v127, v109);
        }

        if (objc_msgSend_adjustedNumberFormatType(v103, v120, v121, v122, v123) == 1)
        {
          v132 = objc_msgSend_model(selfCopy, v128, v129, v130, v131);
          v137 = objc_msgSend_axisID(v103, v133, v134, v135, v136);
          v142 = objc_msgSend_cachedDataFormatterPersistableStyleObjectForID_(v132, v138, v139, v140, v141, v137);

          if (v142)
          {
            sub_27637E9CC(v143, v103, v142, 0x412u, 1029, 0x406u, v761, v114);
          }
        }
      }
    }

    v144 = objc_msgSend_categoryAxisList(selfCopy->_model, v92, v93, v94, v95);
    v149 = objc_msgSend_count(v144, v145, v146, v147, v148);

    if (v149)
    {
      v154 = v149;
      for (j = 0; j != v154; ++j)
      {
        v156 = objc_msgSend_categoryAxisList(selfCopy->_model, v150, v151, v152, v153);
        v161 = objc_msgSend_objectAtIndexedSubscript_(v156, v157, v158, v159, v160, j);

        v162 = selfCopy->_chartType;
        v167 = objc_msgSend_axisID(v161, v163, v164, v165, v166);
        v172 = objc_msgSend_styleIndexForAxisID_(v162, v168, v169, v170, v171, v167);
        v173 = v760;
        while (1)
        {

          if (v172 < objc_msgSend_count(v173, v174, v175, v176, v177))
          {
            break;
          }

          v167 = objc_msgSend_null(MEMORY[0x277CBEB68], v178, v179, v180, v181);
          v173 = v760;
          objc_msgSend_addObject_(v760, v182, v183, v184, v185, v167);
        }

        if (objc_msgSend_adjustedNumberFormatType(v161, v178, v179, v180, v181) == 1)
        {
          v190 = objc_msgSend_model(selfCopy, v186, v187, v188, v189);
          v195 = objc_msgSend_axisID(v161, v191, v192, v193, v194);
          v200 = objc_msgSend_cachedDataFormatterPersistableStyleObjectForID_(v190, v196, v197, v198, v199, v195);

          if (v200)
          {
            sub_27637E9CC(v201, v161, v200, 0x412u, 1029, 0x406u, v760, v172);
          }
        }
      }
    }

    v202 = objc_msgSend_seriesList(selfCopy->_model, v150, v151, v152, v153);
    v207 = objc_msgSend_count(v202, v203, v204, v205, v206);

    if (v207)
    {
      for (k = 0; k != v207; ++k)
      {
        v213 = objc_msgSend_seriesList(selfCopy->_model, v208, v209, v210, v211);
        v218 = objc_msgSend_objectAtIndexedSubscript_(v213, v214, v215, v216, v217, k);

        v223 = objc_msgSend_null(MEMORY[0x277CBEB68], v219, v220, v221, v222);
        objc_msgSend_addObject_(v754, v224, v225, v226, v227, v223);

        if (objc_msgSend_adjustedNumberFormatType(v218, v228, v229, v230, v231) == 1)
        {
          v236 = objc_msgSend_model(selfCopy, v232, v233, v234, v235);
          v241 = objc_msgSend_seriesIndex(v218, v237, v238, v239, v240);
          v246 = objc_msgSend_cachedDataFormatterPersistableStyleObjectAtSeriesIndex_(v236, v242, v243, v244, v245, v241);

          if (v246)
          {
            sub_27637E9CC(v247, v218, v246, 0x48Eu, 1136, 0x471u, v754, k);
          }
        }
      }
    }

    v248 = objc_msgSend_null(MEMORY[0x277CBEB68], v208, v209, v210, v211);
    objc_msgSend_addObject_(v745, v249, v250, v251, v252, v248);

    if (objc_msgSend_adjustedSummaryLabelNumberFormatType(selfCopy, v253, v254, v255, v256) == 1)
    {
      v257 = objc_msgSend_model(selfCopy, v82, v83, v84, v85);
      v262 = objc_msgSend_cachedDataFormatterPersistableStyleObjectSummaryLabels(v257, v258, v259, v260, v261);

      if (v262)
      {
        sub_27637E9CC(v263, selfCopy, v262, 0x45Eu, 1116, 0x45Du, v745, 0);
      }
    }
  }

  objc_msgSend_saveToUnityArchive_forCopy_(selfCopy->_model, v82, v83, v84, v85, archive, obj);
  *&__dst = 0x400000007;
  DWORD2(__dst) = 0;
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForFieldPath_message_(archiverCopy, v264, COERCE_DOUBLE(0x400000007), v265, v266, &__dst, archive);
  objc_opt_class();
  v742 = TSUCheckedDynamicCast();
  if (!v742)
  {
    v271 = MEMORY[0x277D81150];
    v272 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v267, v268, v269, v270, "[TSCHChartInfo(NewArchiving) p_saveToUnityArchive:persistentChartInfo:archiver:]");
    v277 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v273, v274, v275, v276, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo_UnityArchiving.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v271, v278, v279, v280, v281, v272, v277, 1008, 0, "invalid nil value for '%{public}s'", "chartStyle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v282, v283, v284, v285);
  }

  *(archive + 10) |= 0x10u;
  v286 = *(archive + 28);
  if (!v286)
  {
    v287 = *(archive + 1);
    if (v287)
    {
      v287 = *(v287 & 0xFFFFFFFFFFFFFFFELL);
    }

    v286 = MEMORY[0x277C97B90](v287);
    *(archive + 28) = v286;
  }

  objc_msgSend_setStrongReference_message_(archiverCopy, v267, v268, v269, v270, v742, v286);
  v288 = sub_2762A73F0(selfCopy->_chartType);
  *(archive + 10) |= 0x800u;
  *(archive + 70) = v288;
  v778 = 0;
  v779 = 0;
  v289 = selfCopy->_chartType;
  v777 = 0;
  v294 = objc_msgSend_alternateArchiveChartTypeAndReturnWriterVersion_readerVersion_featureID_(v289, v290, v291, v292, v293, &v778, &v779, &v777);
  v740 = v777;
  v741 = v294;
  if (v294)
  {
    objc_msgSend_setMessageVersion_(archiverCopy, v295, v296, v297, v298, v779);
    objc_msgSend_requiresDocumentReadVersion_writeVersion_featureIdentifier_(archiverCopy, v299, v300, v301, v302, v779, v778, v740);
    v307 = objc_msgSend_alternateDiffToMergeBeforeVersion_fileFormatVersion_message_(archiverCopy, v303, v304, v305, v306, v778, v779, archive);
    google::protobuf::internal::AssignDescriptors();
    v312 = objc_msgSend_messageWithNewFunction_descriptor_(v307, v308, v309, v310, v311, sub_276380ED4, off_2812ED048[2]);

    v313 = sub_2762A73F0(v741);
    *(v312 + 40) |= 0x800u;
    *(v312 + 280) = v313;
  }

  objc_msgSend_saveToUnityArchive_(selfCopy->_legend, v295, v296, v297, v298, archive);
  objc_opt_class();
  v743 = TSUCheckedDynamicCast();
  if (!v743)
  {
    v318 = MEMORY[0x277D81150];
    v319 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v314, v315, v316, v317, "[TSCHChartInfo(NewArchiving) p_saveToUnityArchive:persistentChartInfo:archiver:]");
    v324 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v320, v321, v322, v323, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo_UnityArchiving.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v318, v325, v326, v327, v328, v319, v324, 1033, 0, "invalid nil value for '%{public}s'", "legendStyle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v329, v330, v331, v332);
  }

  *(archive + 10) |= 0x40u;
  v333 = *(archive + 30);
  if (!v333)
  {
    v334 = *(archive + 1);
    if (v334)
    {
      v334 = *(v334 & 0xFFFFFFFFFFFFFFFELL);
    }

    v333 = MEMORY[0x277C97B90](v334);
    *(archive + 30) = v333;
  }

  objc_msgSend_setStrongReference_message_(archiverCopy, v314, v315, v316, v317, v743, v333);
  objc_opt_class();
  v335 = TSUCheckedDynamicCast();
  v340 = v335;
  if (v758 == 1)
  {
    v342 = objc_msgSend_fullyPopulatedStyleFromStyle_context_(TSCHStyleUtilities, v336, v337, v338, v339, v335, v747);

    v341 = v342;
  }

  else
  {
    v341 = v335;
  }

  v746 = v341;

  if (!v746)
  {
    v347 = MEMORY[0x277D81150];
    v348 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v343, v344, v345, v346, "[TSCHChartInfo(NewArchiving) p_saveToUnityArchive:persistentChartInfo:archiver:]");
    v353 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v349, v350, v351, v352, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo_UnityArchiving.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v347, v354, v355, v356, v357, v348, v353, 1039, 0, "invalid nil value for '%{public}s'", "legendNonStyle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v358, v359, v360, v361);
  }

  *(archive + 10) |= 0x80u;
  if (!*(archive + 31))
  {
    v362 = *(archive + 1);
    if (v362)
    {
      v362 = *(v362 & 0xFFFFFFFFFFFFFFFELL);
    }

    *(archive + 31) = MEMORY[0x277C97B90](v362);
  }

  objc_msgSend_setStrongReference_message_(archiverCopy, v343, v344, v345, v346);
  objc_opt_class();
  v363 = TSUCheckedDynamicCast();
  v368 = v363;
  if (v758 == 1)
  {
    v370 = objc_msgSend_fullyPopulatedStyleFromStyle_context_(TSCHStyleUtilities, v364, v365, v366, v367, v363, v747);

    v369 = v370;
  }

  else
  {
    v369 = v363;
  }

  v748 = v369;

  if (!v748)
  {
    v375 = MEMORY[0x277D81150];
    v376 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v371, v372, v373, v374, "[TSCHChartInfo(NewArchiving) p_saveToUnityArchive:persistentChartInfo:archiver:]");
    v381 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v377, v378, v379, v380, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo_UnityArchiving.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v375, v382, v383, v384, v385, v376, v381, 1045, 0, "invalid nil value for '%{public}s'", "chartNonStyle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v386, v387, v388, v389);
  }

  *(archive + 10) |= 0x20u;
  if (!*(archive + 29))
  {
    v390 = *(archive + 1);
    if (v390)
    {
      v390 = *(v390 & 0xFFFFFFFFFFFFFFFELL);
    }

    *(archive + 29) = MEMORY[0x277C97B90](v390);
  }

  objc_msgSend_setStrongReference_message_(archiverCopy, v371, v372, v373, v374);
  if (v758 == 1)
  {
    objc_opt_class();
    v395 = TSUCheckedDynamicCast();
    objc_opt_class();
    v400 = objc_msgSend_firstObject(v745, v396, v397, v398, v399);
    v401 = TSUDynamicCast();

    objc_msgSend_setOverrideMapForSameAsSource_(v395, v402, v403, v404, v405, v401);
  }

  objc_msgSend_setStrongReferenceArray_message_(archiverCopy, v391, v392, v393, v394, selfCopy->_valueAxisStyles, archive + 48);
  if (v758 == 1)
  {
    valueAxisNonStyles = selfCopy->_valueAxisNonStyles;
    v412 = objc_opt_class();
    v749 = objc_msgSend_fullyPopulatedStylesFromArray_context_styleClass_(TSCHStyleUtilities, v413, v414, v415, v416, valueAxisNonStyles, v747, v412);

    v421 = objc_msgSend_count(v761, v417, v418, v419, v420);
    v426 = objc_msgSend_count(v749, v422, v423, v424, v425);
    if (v421 >= v426)
    {
      v427 = v426;
    }

    else
    {
      v427 = v421;
    }

    if (v427)
    {
      for (m = 0; m != v427; ++m)
      {
        v429 = objc_msgSend_objectAtIndexedSubscript_(v749, v406, v408, v409, v410, m);
        objc_opt_class();
        v434 = objc_msgSend_objectAtIndexedSubscript_(v761, v430, v431, v432, v433, m);
        v435 = TSUDynamicCast();

        objc_msgSend_setOverrideMapForSameAsSource_(v429, v436, v437, v438, v439, v435);
      }
    }

    v407 = v749;
  }

  else
  {
    v407 = selfCopy->_valueAxisNonStyles;
  }

  v750 = v407;
  objc_msgSend_setStrongReferenceArray_message_(archiverCopy, v406, v408, v409, v410);
  objc_msgSend_setStrongReferenceArray_message_(archiverCopy, v440, v441, v442, v443, selfCopy->_categoryAxisStyles, archive + 96);
  if (v758 == 1)
  {
    categoryAxisNonStyles = selfCopy->_categoryAxisNonStyles;
    v450 = objc_opt_class();
    v751 = objc_msgSend_fullyPopulatedStylesFromArray_context_styleClass_(TSCHStyleUtilities, v451, v452, v453, v454, categoryAxisNonStyles, v747, v450);

    v459 = objc_msgSend_count(v760, v455, v456, v457, v458);
    v464 = objc_msgSend_count(v751, v460, v461, v462, v463);
    if (v459 >= v464)
    {
      v465 = v464;
    }

    else
    {
      v465 = v459;
    }

    if (v465)
    {
      for (n = 0; n != v465; ++n)
      {
        v467 = objc_msgSend_objectAtIndexedSubscript_(v751, v444, v446, v447, v448, n);
        objc_opt_class();
        v472 = objc_msgSend_objectAtIndexedSubscript_(v760, v468, v469, v470, v471, n);
        v473 = TSUDynamicCast();

        objc_msgSend_setOverrideMapForSameAsSource_(v467, v474, v475, v476, v477, v473);
      }
    }

    v445 = v751;
  }

  else
  {
    v445 = selfCopy->_categoryAxisNonStyles;
  }

  v752 = v445;
  objc_msgSend_setStrongReferenceArray_message_(archiverCopy, v444, v446, v447, v448);
  objc_msgSend_setStrongReferenceArray_message_(archiverCopy, v478, v479, v480, v481, selfCopy->_themeSeriesStyles, archive + 144);
  privateSeriesStyles = selfCopy->_privateSeriesStyles;
  *(archive + 10) |= 0x100u;
  v487 = *(archive + 32);
  if (!v487)
  {
    v488 = *(archive + 1);
    if (v488)
    {
      v488 = *(v488 & 0xFFFFFFFFFFFFFFFELL);
    }

    v487 = MEMORY[0x277C97B20](v488);
    *(archive + 32) = v487;
  }

  objc_msgSend_setSparseReferenceArray_message_(archiverCopy, v482, v483, v484, v485, privateSeriesStyles, v487);
  if (v758 == 1)
  {
    seriesNonStyles = selfCopy->_seriesNonStyles;
    v494 = objc_opt_class();
    v753 = objc_msgSend_fullyPopulatedStylesFromArray_context_styleClass_(TSCHStyleUtilities, v495, v496, v497, v498, seriesNonStyles, v747, v494);

    v503 = objc_msgSend_count(v754, v499, v500, v501, v502);
    v508 = objc_msgSend_count(v753, v504, v505, v506, v507);
    if (v503 >= v508)
    {
      v509 = v508;
    }

    else
    {
      v509 = v503;
    }

    if (v509)
    {
      for (ii = 0; ii != v509; ++ii)
      {
        v511 = objc_msgSend_objectAtIndexedSubscript_(v753, v489, v490, v491, v492, ii);
        objc_opt_class();
        v516 = objc_msgSend_objectAtIndexedSubscript_(v754, v512, v513, v514, v515, ii);
        v517 = TSUDynamicCast();

        objc_msgSend_setOverrideMapForSameAsSource_(v511, v518, v519, v520, v521, v517);
      }
    }
  }

  else
  {
    v753 = selfCopy->_seriesNonStyles;
  }

  *(archive + 10) |= 0x200u;
  v522 = *(archive + 33);
  if (!v522)
  {
    v523 = *(archive + 1);
    if (v523)
    {
      v523 = *(v523 & 0xFFFFFFFFFFFFFFFELL);
    }

    v522 = MEMORY[0x277C97B20](v523);
    *(archive + 33) = v522;
  }

  objc_msgSend_setSparseReferenceArray_message_(archiverCopy, v489, v490, v491, v492, v753, v522);
  objc_msgSend_setStrongReferenceArray_message_(archiverCopy, v524, v525, v526, v527, selfCopy->_paragraphStyles, archive + 168);
  lazyPreset = selfCopy->_lazyPreset;
  if (lazyPreset)
  {
    *(archive + 10) |= 2u;
    v533 = *(archive + 25);
    if (!v533)
    {
      v534 = *(archive + 1);
      if (v534)
      {
        v534 = *(v534 & 0xFFFFFFFFFFFFFFFELL);
      }

      v533 = MEMORY[0x277C97B90](v534);
      *(archive + 25) = v533;
    }

    objc_msgSend_setWeakLazyReference_message_(archiverCopy, v528, v529, v530, v531, lazyPreset, v533);
  }

  ownedPreset = selfCopy->_ownedPreset;
  if (ownedPreset)
  {
    *(archive + 10) |= 0x400u;
    v536 = *(archive + 34);
    if (!v536)
    {
      v537 = *(archive + 1);
      if (v537)
      {
        v537 = *(v537 & 0xFFFFFFFFFFFFFFFELL);
      }

      v536 = MEMORY[0x277C97B90](v537);
      *(archive + 34) = v536;
    }

    objc_msgSend_setStrongLazyReference_message_(archiverCopy, v528, v529, v530, v531, ownedPreset, v536);
  }

  valueMax = selfCopy->_lazyPreset;
  if (valueMax && v758 == 1)
  {
    v539 = objc_msgSend_objectAndReturnError_(valueMax, v528, v529, v530, v531, 0);
    v545 = objc_msgSend_uuid(v539, v540, v541, v542, v543);
    if (v545)
    {
      sub_27630B864(&__dst, v545);
      v549 = __dst;
      v550 = google::protobuf::internal::ExtensionSet::MutableString((archive + 16), TSCH::ChartPasteboardAdditionsArchive::preset_uuid_for_pasteboard, 12, 0);
      v551 = v550;
      if (*(v550 + 23) < 0)
      {
        operator delete(*v550);
      }

      *v551 = v549;
      *(v551 + 16) = 0;
      *(v551 + 23) = 16;
    }

    v552 = objc_msgSend_drawableInfo(selfCopy, v544, v546, v547, v548);
    v557 = objc_msgSend_documentRoot(v552, v553, v554, v555, v556);
    v562 = objc_msgSend_theme(v557, v558, v559, v560, v561);
    v567 = objc_msgSend_objectAndReturnError_(selfCopy->_lazyPreset, v563, v564, v565, v566, 0);
    v572 = objc_msgSend_indexOfPreset_(v562, v568, v569, v570, v571, v567);

    if (v572 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v573 = 0;
    }

    else
    {
      v573 = v572;
    }

    google::protobuf::internal::ExtensionSet::SetUInt32((archive + 16), TSCH::ChartPasteboardAdditionsArchive::preset_index_for_pasteboard, 13, v573, 0);
  }

  if (obj)
  {
    v574 = objc_msgSend_drawableInfo(selfCopy, v528, v529, v530, v531);
    v579 = objc_msgSend_documentRoot(v574, v575, v576, v577, v578);

    TSP::Reference::default_instance(v580);
    v581 = google::protobuf::internal::ExtensionSet::MutableMessage();
    if (objc_msgSend_targetType(archiverCopy, v582, v583, v584, v585) == 2 && (pasteboardCustomFormatList = selfCopy->_pasteboardCustomFormatList) != 0)
    {
      v591 = pasteboardCustomFormatList;
    }

    else
    {
      v591 = objc_msgSend_customFormatList(v579, v586, v587, v588, v589);
    }

    objc_opt_class();
    v592 = TSUCheckedDynamicCast();
    objc_msgSend_setStrongReference_message_(archiverCopy, v593, v594, v595, v596, v592, v581);
  }

  v597 = selfCopy;
  needsCalcEngineDependentImport = selfCopy->_needsCalcEngineDependentImport;
  *(archive + 10) |= 0x8000u;
  *(archive + 293) = needsCalcEngineDependentImport;
  if (selfCopy->_isOlderThanSage)
  {
    TSCH::ChartGarlicMinMaxUpgrade::default_instance(valueMax);
    v600 = google::protobuf::internal::ExtensionSet::MutableMessage();
    horizontalMin = selfCopy->_horizontalMin;
    if (horizontalMin)
    {
      objc_msgSend_doubleValue(horizontalMin, v599, v601, v602, v603);
      *(v600 + 16) |= 1u;
      *(v600 + 24) = v601;
    }

    horizontalMax = selfCopy->_horizontalMax;
    if (horizontalMax)
    {
      objc_msgSend_doubleValue(horizontalMax, v599, v601, v602, v603);
      *(v600 + 16) |= 2u;
      *(v600 + 32) = v601;
    }

    valueMin = selfCopy->_valueMin;
    if (valueMin)
    {
      objc_msgSend_doubleValue(valueMin, v599, v601, v602, v603);
      *(v600 + 16) |= 4u;
      *(v600 + 40) = v601;
    }

    v597 = selfCopy;
    valueMax = selfCopy->_valueMax;
    if (valueMax)
    {
      valueMax = objc_msgSend_doubleValue(valueMax, v599, v601, v602, v603);
      *(v600 + 16) |= 8u;
      *(v600 + 48) = v607;
      v597 = selfCopy;
    }
  }

  if (v597->_isOlderThanSage)
  {
    TSCH::ChartGarlicLabelFormatUpgrade::default_instance(valueMax);
    v609 = google::protobuf::internal::ExtensionSet::MutableMessage();
    valuePrefix = selfCopy->_valuePrefix;
    if (valuePrefix)
    {
      v614 = objc_msgSend_tsp_protobufString(valuePrefix, v608, v610, v611, v612);
      *(v609 + 16) |= 1u;
      sub_2762F3BA4(&__dst, v614);
      google::protobuf::internal::ArenaStringPtr::Set();
      if (SHIBYTE(v784) < 0)
      {
        operator delete(__dst);
      }
    }

    valueSuffix = selfCopy->_valueSuffix;
    if (valueSuffix)
    {
      v616 = objc_msgSend_tsp_protobufString(valueSuffix, v608, v610, v611, v612);
      *(v609 + 16) |= 2u;
      sub_2762F3BA4(&__dst, v616);
      google::protobuf::internal::ArenaStringPtr::Set();
      if (SHIBYTE(v784) < 0)
      {
        operator delete(__dst);
      }
    }

    valueUseSeparator = selfCopy->_valueUseSeparator;
    *(v609 + 16) |= 0x10u;
    *(v609 + 56) = valueUseSeparator;
    horizontalPrefix = selfCopy->_horizontalPrefix;
    if (horizontalPrefix)
    {
      v619 = objc_msgSend_tsp_protobufString(horizontalPrefix, v608, v610, v611, v612);
      *(v609 + 16) |= 4u;
      sub_2762F3BA4(&__dst, v619);
      google::protobuf::internal::ArenaStringPtr::Set();
      if (SHIBYTE(v784) < 0)
      {
        operator delete(__dst);
      }
    }

    horizontalSuffix = selfCopy->_horizontalSuffix;
    if (horizontalSuffix)
    {
      v621 = objc_msgSend_tsp_protobufString(horizontalSuffix, v608, v610, v611, v612);
      *(v609 + 16) |= 8u;
      sub_2762F3BA4(&__dst, v621);
      google::protobuf::internal::ArenaStringPtr::Set();
      if (SHIBYTE(v784) < 0)
      {
        operator delete(__dst);
      }
    }

    horizontalUseSeparator = selfCopy->_horizontalUseSeparator;
    *(v609 + 16) |= 0x20u;
    *(v609 + 57) = horizontalUseSeparator;
  }

  google::protobuf::internal::ExtensionSet::SetBool((archive + 16), TSCH::scene3d_settings_constant_depth, 8, 1, 0);
  v627 = objc_msgSend_length(selfCopy->_lastAppliedFillSetLookupString, v623, v624, v625, v626);
  if (v627)
  {
    v632 = objc_msgSend_tsp_protobufString(selfCopy->_lastAppliedFillSetLookupString, v628, v629, v630, v631);
    sub_2762F3BA4(__p, v632);
    v633 = TSCH::last_applied_fill_set_lookup_string;
    if (SHIBYTE(v776) < 0)
    {
      sub_2762FA4FC(&__dst, __p[0], __p[1]);
    }

    else
    {
      __dst = *__p;
      v784 = v776;
    }

    v627 = google::protobuf::internal::ExtensionSet::MutableString((archive + 16), v633, 9, 0);
    v634 = v627;
    if (*(v627 + 23) < 0)
    {
      operator delete(*v627);
    }

    v635 = __dst;
    *(v634 + 16) = v784;
    *v634 = v635;
    if (SHIBYTE(v776) < 0)
    {
      operator delete(__p[0]);
    }
  }

  TSCH::ChartReferenceLinesArchive::default_instance(v627);
  v636 = google::protobuf::internal::ExtensionSet::MutableMessage();
  v773 = 0u;
  v774 = 0u;
  v771 = 0u;
  v772 = 0u;
  obja = selfCopy->_refLineNonStylesMap;
  v642 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v637, v638, v639, v640, &v771, v782, 16);
  if (v642)
  {
    v759 = *v772;
    do
    {
      for (jj = 0; jj != v642; ++jj)
      {
        if (*v772 != v759)
        {
          objc_enumerationMutation(obja);
        }

        v647 = *(*(&v771 + 1) + 8 * jj);
        v648 = *(v636 + 40);
        if (!v648)
        {
          goto LABEL_175;
        }

        v649 = *(v636 + 32);
        v650 = *v648;
        if (v649 < *v648)
        {
          *(v636 + 32) = v649 + 1;
          v651 = *&v648[2 * v649 + 2];
          goto LABEL_177;
        }

        if (v650 == *(v636 + 36))
        {
LABEL_175:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v636 + 24));
          v648 = *(v636 + 40);
          v650 = *v648;
        }

        *v648 = v650 + 1;
        v651 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartAxisReferenceLineNonStylesArchive>(*(v636 + 24));
        v652 = *(v636 + 32);
        v653 = *(v636 + 40) + 8 * v652;
        *(v636 + 32) = v652 + 1;
        *(v653 + 8) = v651;
LABEL_177:
        *(v651 + 16) |= 1u;
        v654 = *(v651 + 48);
        if (!v654)
        {
          v655 = *(v651 + 8);
          if (v655)
          {
            v655 = *(v655 & 0xFFFFFFFFFFFFFFFELL);
          }

          v654 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartAxisIDArchive>(v655);
          *(v651 + 48) = v654;
        }

        objc_msgSend_saveToArchive_(v647, v641, v643, v644, v645, v654);
        objc_opt_class();
        v660 = objc_msgSend_objectForKeyedSubscript_(selfCopy->_refLineNonStylesMap, v656, v657, v658, v659, v647);
        v661 = TSUCheckedDynamicCast();

        v769 = 0u;
        v770 = 0u;
        v767 = 0u;
        v768 = 0u;
        v662 = v661;
        v668 = objc_msgSend_countByEnumeratingWithState_objects_count_(v662, v663, v664, v665, v666, &v767, v781, 16);
        if (v668)
        {
          v672 = *v768;
          do
          {
            for (kk = 0; kk != v668; ++kk)
            {
              if (*v768 != v672)
              {
                objc_enumerationMutation(v662);
              }

              v674 = *(*(&v767 + 1) + 8 * kk);
              v675 = *(v651 + 40);
              if (!v675)
              {
                goto LABEL_191;
              }

              v676 = *(v651 + 32);
              v677 = *v675;
              if (v676 < *v675)
              {
                *(v651 + 32) = v676 + 1;
                objc_msgSend_saveToArchiver_message_(v674, v667, v669, v670, v671, archiverCopy, *&v675[2 * v676 + 2]);
                continue;
              }

              if (v677 == *(v651 + 36))
              {
LABEL_191:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v651 + 24));
                v675 = *(v651 + 40);
                v677 = *v675;
              }

              *v675 = v677 + 1;
              v678 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartReferenceLineNonStyleItem>(*(v651 + 24));
              v679 = *(v651 + 32);
              v680 = *(v651 + 40) + 8 * v679;
              *(v651 + 32) = v679 + 1;
              *(v680 + 8) = v678;
              objc_msgSend_saveToArchiver_message_(v674, v681, v682, v683, v684, archiverCopy, v678);
            }

            v668 = objc_msgSend_countByEnumeratingWithState_objects_count_(v662, v667, v669, v670, v671, &v767, v781, 16);
          }

          while (v668);
        }
      }

      v642 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v641, v643, v644, v645, &v771, v782, 16);
    }

    while (v642);
  }

  v765 = 0u;
  v766 = 0u;
  v763 = 0u;
  v764 = 0u;
  v685 = selfCopy->_refLineStylesMap;
  v691 = objc_msgSend_countByEnumeratingWithState_objects_count_(v685, v686, v687, v688, v689, &v763, v780, 16);
  if (!v691)
  {
    goto LABEL_219;
  }

  v695 = *v764;
  do
  {
    for (mm = 0; mm != v691; ++mm)
    {
      if (*v764 != v695)
      {
        objc_enumerationMutation(v685);
      }

      v697 = *(*(&v763 + 1) + 8 * mm);
      v698 = *(v636 + 64);
      if (!v698)
      {
        goto LABEL_207;
      }

      v699 = *(v636 + 56);
      v700 = *v698;
      if (v699 < *v698)
      {
        *(v636 + 56) = v699 + 1;
        v701 = *&v698[2 * v699 + 2];
        goto LABEL_209;
      }

      if (v700 == *(v636 + 60))
      {
LABEL_207:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v636 + 48));
        v698 = *(v636 + 64);
        v700 = *v698;
      }

      *v698 = v700 + 1;
      v701 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartAxisReferenceLineStylesArchive>(*(v636 + 48));
      v702 = *(v636 + 56);
      v703 = *(v636 + 64) + 8 * v702;
      *(v636 + 56) = v702 + 1;
      *(v703 + 8) = v701;
LABEL_209:
      *(v701 + 16) |= 1u;
      v704 = *(v701 + 24);
      if (!v704)
      {
        v705 = *(v701 + 8);
        if (v705)
        {
          v705 = *(v705 & 0xFFFFFFFFFFFFFFFELL);
        }

        v704 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartAxisIDArchive>(v705);
        *(v701 + 24) = v704;
      }

      objc_msgSend_saveToArchive_(v697, v690, v692, v693, v694, v704);
      v711 = objc_msgSend_objectForKey_(selfCopy->_refLineStylesMap, v706, v707, v708, v709, v697);
      *(v701 + 16) |= 2u;
      v715 = *(v701 + 32);
      if (!v715)
      {
        v716 = *(v701 + 8);
        if (v716)
        {
          v716 = *(v716 & 0xFFFFFFFFFFFFFFFELL);
        }

        v715 = MEMORY[0x277C97B20](v716);
        *(v701 + 32) = v715;
      }

      objc_msgSend_setSparseReferenceArray_message_(archiverCopy, v710, v712, v713, v714, v711, v715);
    }

    v691 = objc_msgSend_countByEnumeratingWithState_objects_count_(v685, v690, v692, v693, v694, &v763, v780, 16);
  }

  while (v691);
LABEL_219:

  objc_opt_class();
  v718 = TSUCheckedDynamicCast();
  if (v718)
  {
    *(v636 + 16) |= 1u;
    v722 = *(v636 + 72);
    if (!v722)
    {
      v723 = *(v636 + 8);
      if (v723)
      {
        v723 = *(v723 & 0xFFFFFFFFFFFFFFFELL);
      }

      v722 = MEMORY[0x277C97B90](v723);
      *(v636 + 72) = v722;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v717, v719, v720, v721, v718, v722);
    archiveCopy2 = archive;
  }

  else
  {
    v725 = MEMORY[0x277D81150];
    v726 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v717, v719, v720, v721, "[TSCHChartInfo(NewArchiving) p_saveToUnityArchive:persistentChartInfo:archiver:]");
    v731 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v727, v728, v729, v730, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo_UnityArchiving.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v725, v732, v733, v734, v735, v726, v731, 1228, 0, "invalid nil value for '%{public}s'", "themePresetRefLineStyle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v736, v737, v738, v739);
    archiveCopy2 = archive;
  }

  google::protobuf::internal::ExtensionSet::SetBool((archiveCopy2 + 16), TSCH::ChartPreserveAppearanceForPresetArchive::appearance_preserved_for_preset, 8, 1, 0);
  google::protobuf::internal::ExtensionSet::SetBool((archiveCopy2 + 16), TSCH::ChartSupportsProportionalBendedCalloutLinesArchive::supports_proportional_bended_callout_lines, 8, 1, 0);
  google::protobuf::internal::ExtensionSet::SetBool((archiveCopy2 + 16), TSCH::ChartSupportsRoundedCornersArchive::supports_rounded_corners, 8, 1, 0);
  google::protobuf::internal::ExtensionSet::SetBool((archiveCopy2 + 16), TSCH::ChartSupportsSeriesPropertySpacingArchive::supports_series_value_label_spacing, 8, 1, 0);
  google::protobuf::internal::ExtensionSet::SetBool((archiveCopy2 + 16), TSCH::ChartSupportsSeriesPropertySpacingArchive::supports_series_error_bar_spacing, 8, 1, 0);
  google::protobuf::internal::ExtensionSet::SetBool((archiveCopy2 + 16), TSCH::ChartSupportsStackedSummaryLabelsArchive::supports_stacked_summary_labels, 8, 1, 0);
}

- (id)swapTuplesForApplyingPreset:(id)preset withBehavior:(unint64_t)behavior
{
  presetCopy = preset;
  if (!presetCopy)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCHChartInfo(ApplyPreset) swapTuplesForApplyingPreset:withBehavior:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfoApplyPreset.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 48, 0, "invalid nil value for '%{public}s'", "preset");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
    goto LABEL_7;
  }

  if (behavior == 3)
  {
    objc_msgSend_p_swapTuplesForApplyingPreset_preservingAppearance_(self, v6, v8, v9, v10, presetCopy, 1);
    goto LABEL_10;
  }

  if (behavior == 2)
  {
    objc_msgSend_p_swapTuplesForApplyingPreset_preservingAppearance_(self, v6, v8, v9, v10, presetCopy, 0);
    v11 = LABEL_10:;
    goto LABEL_11;
  }

  if (behavior != 1)
  {
LABEL_7:
    v27 = 0;
    goto LABEL_12;
  }

  v11 = objc_msgSend_p_swapTuplesForApplyingPresetRemovingOverrides_(self, v6, v8, v9, v10, presetCopy);
LABEL_11:
  v27 = v11;
LABEL_12:

  return v27;
}

- (id)p_swapTuplesForApplyingPresetRemovingOverrides:(id)overrides
{
  v7 = objc_msgSend_chartStyleState(overrides, a2, v3, v4, v5);
  v12 = objc_msgSend_tuplesToApplyState_(self, v8, v9, v10, v11, v7);

  return v12;
}

- (id)p_swapTuplesForApplyingPreset:(id)preset preservingAppearance:(BOOL)appearance
{
  appearanceCopy = appearance;
  v790 = *MEMORY[0x277D85DE8];
  presetCopy = preset;
  v10 = objc_msgSend_model(self, v6, v7, v8, v9);
  v15 = objc_msgSend_numberOfSeries(v10, v11, v12, v13, v14);

  v20 = objc_msgSend_model(self, v16, v17, v18, v19);
  v25 = objc_msgSend_maxNumberOfReferenceLines(v20, v21, v22, v23, v24);

  v30 = objc_msgSend_chartStyleState(presetCopy, v26, v27, v28, v29);
  v35 = objc_msgSend_stateByExpandingForSeriesCount_andReferenceLineCount_(v30, v31, v32, v33, v34, v15, v25);
  v40 = objc_msgSend_preset(self, v36, v37, v38, v39);
  v45 = objc_msgSend_chartStyleState(v40, v41, v42, v43, v44);

  v714 = v45;
  v50 = objc_msgSend_stateByExpandingForSeriesCount_andReferenceLineCount_(v45, v46, v47, v48, v49, v15, v25);
  selfCopy = self;
  v719 = objc_msgSend_chartStyleState(self, v51, v52, v53, v54);
  v720 = objc_msgSend_stateByExpandingForSeriesCount_andReferenceLineCount_(v719, v55, v56, v57, v58, v15, v25);
  v722 = v30;
  objc_msgSend_setThemeChartStyleState_(v720, v59, v60, v61, v62, v30);
  v718 = presetCopy;
  v68 = objc_msgSend_stylesheet(presetCopy, v63, v64, v65, v66);
  if (!v68)
  {
    v72 = MEMORY[0x277D81150];
    v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, v69, v70, v71, "[TSCHChartInfo(ApplyPreset) p_swapTuplesForApplyingPreset:preservingAppearance:]");
    v78 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, v75, v76, v77, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfoApplyPreset.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v72, v79, v80, v81, v82, v73, v78, 115, 0, "invalid nil value for '%{public}s'", "presetStylesheet");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v83, v84, v85, v86);
  }

  v87 = v68;
  v717 = v87;
  v96 = appearanceCopy;
  if (objc_msgSend_isLocked(v87, v88, v89, v90, v91))
  {
    v785 = 0u;
    v786 = 0u;
    v783 = 0u;
    v784 = 0u;
    v97 = objc_msgSend_allStyles(v719, v92, 0.0, v94, v95);
    v102 = objc_msgSend_countByEnumeratingWithState_objects_count_(v97, v98, v99, v100, v101, &v783, v789, 16);
    if (v102)
    {
      v103 = v102;
      v104 = v50;
      v105 = v35;
      v106 = *v784;
      while (2)
      {
        for (i = 0; i != v103; ++i)
        {
          if (*v784 != v106)
          {
            objc_enumerationMutation(v97);
          }

          objc_opt_class();
          v108 = TSUCheckedDynamicCast();
          v113 = objc_msgSend_stylesheet(v108, v109, v110, v111, v112);
          isLocked = objc_msgSend_isLocked(v113, v114, v115, v116, v117);

          if ((isLocked & 1) == 0)
          {
            v87 = objc_msgSend_stylesheet(v108, v119, v120, v121, v122);

            goto LABEL_14;
          }
        }

        v103 = objc_msgSend_countByEnumeratingWithState_objects_count_(v97, v123, v124, v125, v126, &v783, v789, 16);
        if (v103)
        {
          continue;
        }

        break;
      }

      v87 = v717;
LABEL_14:
      v35 = v105;
      v50 = v104;
      v96 = appearanceCopy;
    }
  }

  if (objc_msgSend_isLocked(v87, v92, v93, v94, v95))
  {
    v131 = objc_msgSend_documentStylesheet(selfCopy, v127, v128, v129, v130);

    v87 = v131;
  }

  if (!v87)
  {
    v132 = MEMORY[0x277D81150];
    v133 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v127, v128, v129, v130, "[TSCHChartInfo(ApplyPreset) p_swapTuplesForApplyingPreset:preservingAppearance:]");
    v138 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v134, v135, v136, v137, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfoApplyPreset.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v132, v139, v140, v141, v142, v133, v138, 131, 0, "invalid nil value for '%{public}s'", "ss");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v143, v144, v145, v146);
  }

  v725 = v87;
  objc_msgSend_isLocked(v87, v127, v128, v129, v130);
  v733 = objc_msgSend_dictionary(MEMORY[0x277D81278], v147, v148, v149, v150);
  v155 = objc_msgSend_array(MEMORY[0x277CBEB18], v151, v152, v153, v154);
  v160 = objc_msgSend_orderedSet(MEMORY[0x277CBEB40], v156, v157, v158, v159);
  v165 = objc_msgSend_semanticUsagesOfParagraphStylePropertiesWithPropertySetType_(v35, v161, v162, v163, v164, 1);
  v170 = objc_msgSend_semanticUsagesOfParagraphStylePropertiesWithPropertySetType_(v720, v166, v167, v168, v169, 1);
  v711 = v165;
  objc_msgSend_addObjectsFromArray_(v160, v171, v172, v173, v174, v165);
  v710 = v170;
  objc_msgSend_addObjectsFromArray_(v160, v175, v176, v177, v178, v170);
  v183 = objc_msgSend_set(v160, v179, v180, v181, v182);
  v188 = objc_msgSend_semanticUsagesToParagraphStyleMapWithPropertySetType_filteredBySemanticUsages_(v35, v184, v185, v186, v187, 0, v183);

  v721 = objc_msgSend_semanticTagToStyleMap(v35, v189, v190, v191, v192);
  v197 = objc_msgSend_set(v160, v193, v194, v195, v196);
  v713 = v50;
  v729 = objc_msgSend_semanticUsagesToParagraphStyleMapWithPropertySetType_filteredBySemanticUsages_(v50, v198, v199, v200, v201, 0, v197);

  v712 = v160;
  v206 = objc_msgSend_set(v160, v202, v203, v204, v205);
  v738 = objc_msgSend_semanticUsagesToParagraphStyleMapWithPropertySetType_filteredBySemanticUsages_(v720, v207, v208, v209, v210, 0, v206);

  v728 = objc_msgSend_semanticTagToStyleMap(v720, v211, v212, v213, v214);
  v715 = v35;
  v219 = objc_msgSend_paragraphStyles(v35, v215, v216, v217, v218);
  v744 = v155;
  objc_msgSend_addObjectsFromArray_(v155, v220, v221, v222, v223, v219);

  v781 = 0u;
  v782 = 0u;
  v779 = 0u;
  v780 = 0u;
  obj = v188;
  v228 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v224, v225, v226, v227, &v779, v788, 16);
  if (v228)
  {
    v233 = v228;
    v234 = *v780;
    v741 = *v780;
    do
    {
      for (j = 0; j != v233; ++j)
      {
        if (*v780 != v234)
        {
          objc_enumerationMutation(obj);
        }

        v236 = *(*(&v779 + 1) + 8 * j);
        v237 = objc_msgSend_semanticTag(v236, v229, v230, v231, v232);
        v242 = objc_msgSend_type(v237, v238, v239, v240, v241);

        if (v242 == 9)
        {
          v243 = objc_msgSend_semanticTag(v236, v229, v230, v231, v232);
          v248 = objc_msgSend_objectForKey_(v721, v244, v245, v246, v247, v243);

          v253 = objc_msgSend_objectForKey_(obj, v249, v250, v251, v252, v236);
          v259 = objc_msgSend_indexOfObject_(v744, v254, v255, v256, v257, v253);
          if (v259 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v263 = MEMORY[0x277D81150];
            v264 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v258, v260, v261, v262, "[TSCHChartInfo(ApplyPreset) p_swapTuplesForApplyingPreset:preservingAppearance:]");
            v269 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v265, v266, v267, v268, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfoApplyPreset.m");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v263, v270, v271, v272, v273, v264, v269, 162, 0, "paragraphStyle not found %@ in %@", v253, v744);

            v234 = v741;
            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v274, v275, v276, v277);
            v259 = objc_msgSend_count(v744, v278, v279, v280, v281);
            objc_msgSend_addObject_(v744, v282, v283, v284, v285, v253);
          }

          if (!v248)
          {
            v286 = MEMORY[0x277D81150];
            v287 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v258, v260, v261, v262, "[TSCHChartInfo(ApplyPreset) p_swapTuplesForApplyingPreset:preservingAppearance:]");
            v292 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v288, v289, v290, v291, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfoApplyPreset.m");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v286, v293, v294, v295, v296, v287, v292, 168, 0, "invalid nil value for '%{public}s'", "styleForUsage");

            v234 = v741;
            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v297, v298, v299, v300);
          }

          v301 = objc_opt_class();
          v306 = objc_msgSend_tsu_objectForKey_withDefaultOfClass_(v733, v302, v303, v304, v305, v248, v301);
          v311 = objc_msgSend_property(v236, v307, v308, v309, v310);
          objc_msgSend_setIntValue_forProperty_(v306, v312, v313, v314, v315, v259, v311);

          v96 = appearanceCopy;
        }
      }

      v233 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v229, v230, v231, v232, &v779, v788, 16);
    }

    while (v233);
  }

  v777 = 0u;
  v778 = 0u;
  v775 = 0u;
  v776 = 0u;
  v735 = v738;
  v730 = objc_msgSend_countByEnumeratingWithState_objects_count_(v735, v316, v317, v318, v319, &v775, v787, 16);
  if (v730)
  {
    v724 = *v776;
    do
    {
      for (k = 0; k != v730; ++k)
      {
        if (*v776 != v724)
        {
          objc_enumerationMutation(v735);
        }

        v321 = *(*(&v775 + 1) + 8 * k);
        objc_opt_class();
        v326 = objc_msgSend_objectForKey_(v735, v322, v323, v324, v325, v321);
        v327 = TSUCheckedDynamicCast();

        objc_opt_class();
        v332 = objc_msgSend_objectForKey_(v729, v328, v329, v330, v331, v321);
        v333 = TSUCheckedDynamicCast();

        objc_opt_class();
        v338 = objc_msgSend_objectForKey_(obj, v334, v335, v336, v337, v321);
        v339 = TSUCheckedDynamicCast();

        if (!v339)
        {
          v344 = objc_msgSend_fallbackSemanticUsageForSemanticUsage_(v722, v340, v341, v342, v343, v321);
          v339 = objc_msgSend_objectForKey_(obj, v345, v346, v347, v348, v344);
          if (!v339)
          {
            v353 = MEMORY[0x277D81150];
            v354 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v349, v350, v351, v352, "[TSCHChartInfo(ApplyPreset) p_swapTuplesForApplyingPreset:preservingAppearance:]");
            v359 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v355, v356, v357, v358, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfoApplyPreset.m");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v353, v360, v361, v362, v363, v354, v359, 181, 0, "invalid nil value for '%{public}s'", "styleToVary");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v364, v365, v366, v367);
            v372 = objc_msgSend_paragraphStyles(v722, v368, v369, v370, v371);
            v339 = objc_msgSend_firstObject(v372, v373, v374, v375, v376);
          }
        }

        v377 = objc_msgSend_propertyMap(v327, v340, v341, v342, v343);
        v382 = v377;
        v736 = v377;
        v739 = v333;
        if (v96)
        {
          v384 = v377;
        }

        else
        {
          v388 = objc_msgSend_propertyMap(v333, v378, v379, v380, v381);
          v384 = objc_msgSend_propertyMapByRemovingValuesFromPropertyMap_(v382, v389, v390, v391, v392, v388);
        }

        v742 = v327;
        v393 = objc_msgSend_paragraphStylePropertiesChartsUse(TSCHChartInfo, v383, v385, v386, v387);
        objc_msgSend_filterWithProperties_(v384, v394, v395, v396, v397, v393);

        v402 = objc_msgSend_variationOfStyle_propertyMap_(v725, v398, v399, v400, v401, v339, v384);
        v408 = objc_msgSend_indexOfObject_(v744, v403, v404, v405, v406, v402);
        if (v408 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v408 = objc_msgSend_count(v744, v407, v409, v410, v411);
          objc_msgSend_addObject_(v744, v412, v413, v414, v415, v402);
        }

        v416 = objc_msgSend_semanticTag(v321, v407, v409, v410, v411);
        v421 = objc_msgSend_objectForKey_(v728, v417, v418, v419, v420, v416);

        if (!v421)
        {
          v426 = MEMORY[0x277D81150];
          v427 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v422, v423, v424, v425, "[TSCHChartInfo(ApplyPreset) p_swapTuplesForApplyingPreset:preservingAppearance:]");
          v432 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v428, v429, v430, v431, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfoApplyPreset.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v426, v433, v434, v435, v436, v427, v432, 218, 0, "invalid nil value for '%{public}s'", "styleForUsage");

          v96 = appearanceCopy;
          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v437, v438, v439, v440);
        }

        v441 = objc_opt_class();
        v446 = objc_msgSend_tsu_objectForKey_withDefaultOfClass_(v733, v442, v443, v444, v445, v421, v441);
        v451 = objc_msgSend_property(v321, v447, v448, v449, v450);
        objc_msgSend_setIntValue_forProperty_(v446, v452, v453, v454, v455, v408, v451);
      }

      v730 = objc_msgSend_countByEnumeratingWithState_objects_count_(v735, v456, v457, v458, v459, &v775, v787, 16);
    }

    while (v730);
  }

  v464 = objc_msgSend_chartStyle(v718, v460, v461, v462, v463);
  v469 = objc_msgSend_chartStyle(v720, v465, v466, v467, v468);
  v470 = sub_276383F54(v725, v464, v469, v733, v96);
  objc_msgSend_setChartStyle_(v720, v471, v472, v473, v474, v470);

  v479 = objc_msgSend_legendStyle(v718, v475, v476, v477, v478);
  v484 = objc_msgSend_legendStyle(v720, v480, v481, v482, v483);
  v485 = sub_276383F54(v725, v479, v484, v733, v96);
  objc_msgSend_setLegendStyle_(v720, v486, v487, v488, v489, v485);

  v494 = objc_msgSend_refLineStyle(v718, v490, v491, v492, v493);
  v499 = objc_msgSend_referenceLineThemeStyle(v720, v495, v496, v497, v498);
  v500 = sub_276383F54(v725, v494, v499, v733, v96);
  objc_msgSend_setReferenceLineThemeStyle_(v720, v501, v502, v503, v504, v500);

  v509 = objc_msgSend_array(MEMORY[0x277CBEB18], v505, v506, v507, v508);
  v514 = objc_msgSend_valueAxisStyles(v722, v510, v511, v512, v513);
  v519 = objc_msgSend_count(v514, v515, v516, v517, v518);

  v524 = objc_msgSend_valueAxisStyles(v720, v520, v521, v522, v523);
  v768[0] = MEMORY[0x277D85DD0];
  v768[1] = 3221225472;
  v768[2] = sub_27638420C;
  v768[3] = &unk_27A6BA180;
  v525 = v725;
  v769 = v525;
  v526 = v722;
  v770 = v526;
  v773 = v519;
  v527 = v733;
  v771 = v527;
  v774 = v96;
  v528 = v509;
  v772 = v528;
  objc_msgSend_enumerateObjectsUsingBlock_(v524, v529, v530, v531, v532, v768);

  v537 = objc_msgSend_valueAxisStyles(v720, v533, v534, v535, v536);
  v740 = v528;
  objc_msgSend_setArray_(v537, v538, v539, v540, v541, v528);

  v546 = objc_msgSend_array(MEMORY[0x277CBEB18], v542, v543, v544, v545);
  v551 = objc_msgSend_categoryAxisStyles(v526, v547, v548, v549, v550);
  v556 = objc_msgSend_count(v551, v552, v553, v554, v555);

  v561 = objc_msgSend_categoryAxisStyles(v720, v557, v558, v559, v560);
  v761[0] = MEMORY[0x277D85DD0];
  v761[1] = 3221225472;
  v761[2] = sub_2763842C8;
  v761[3] = &unk_27A6BA180;
  v562 = v525;
  v762 = v562;
  v563 = v526;
  v763 = v563;
  v766 = v556;
  v564 = v527;
  v764 = v564;
  v767 = v96;
  v565 = v546;
  v765 = v565;
  objc_msgSend_enumerateObjectsUsingBlock_(v561, v566, v567, v568, v569, v761);

  v574 = objc_msgSend_categoryAxisStyles(v720, v570, v571, v572, v573);
  v734 = v565;
  objc_msgSend_setArray_(v574, v575, v576, v577, v578, v565);

  v731 = objc_msgSend_seriesThemeStyles(v719, v579, v580, v581, v582);
  v587 = objc_msgSend_count(v731, v583, v584, v585, v586);
  v737 = v563;
  v743 = objc_msgSend_seriesThemeStyles(v563, v588, v589, v590, v591);
  v596 = objc_msgSend_count(v743, v592, v593, v594, v595);
  v602 = objc_msgSend_array(MEMORY[0x277CBEB18], v597, v598, v599, v600);
  if (v587)
  {
    for (m = 0; m != v587; ++m)
    {
      objc_opt_class();
      v611 = objc_msgSend_objectAtIndexedSubscript_(v743, v607, v608, v609, v610, m % v596);
      v612 = TSUCheckedDynamicCast();

      v613 = sub_276383F54(v562, v612, v612, v564, v96);
      objc_msgSend_addObject_(v602, v614, v615, v616, v617, v613);
    }
  }

  v618 = objc_msgSend_seriesThemeStyles(v720, v601, v603, v604, v605);
  objc_msgSend_setArray_(v618, v619, v620, v621, v622, v602);

  v627 = objc_msgSend_array(MEMORY[0x277CBEB18], v623, v624, v625, v626);
  v632 = objc_msgSend_seriesThemeStyles(v720, v628, v629, v630, v631);
  v726 = objc_msgSend_count(v632, v633, v634, v635, v636);

  v641 = objc_msgSend_seriesPrivateStyles(v720, v637, v638, v639, v640);
  v752[0] = MEMORY[0x277D85DD0];
  v752[1] = 3221225472;
  v752[2] = sub_276384384;
  v752[3] = &unk_27A6BA1A8;
  v753 = v731;
  v758 = v587;
  v642 = v564;
  v760 = v96;
  v754 = v642;
  v755 = v627;
  v643 = v562;
  v756 = v643;
  v757 = v720;
  v759 = v726;
  v644 = v720;
  v645 = v627;
  v732 = v731;
  objc_msgSend_enumerateObjectsUsingBlock_(v641, v646, v647, v648, v649, v752);

  v654 = objc_msgSend_seriesPrivateStyles(v644, v650, v651, v652, v653);
  objc_msgSend_setArray_(v654, v655, v656, v657, v658, v645);

  v663 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v659, v660, v661, v662);
  v668 = objc_msgSend_referenceLineStyles(v644, v664, v665, v666, v667);
  v746[0] = MEMORY[0x277D85DD0];
  v746[1] = 3221225472;
  v746[2] = sub_276384524;
  v746[3] = &unk_27A6BA1F8;
  v747 = v663;
  v748 = v643;
  v749 = v718;
  v750 = v642;
  v751 = v96;
  v669 = v642;
  v670 = v718;
  v671 = v643;
  v672 = v663;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v668, v673, v674, v675, v676, v746);

  v681 = objc_msgSend_referenceLineStyles(v644, v677, v678, v679, v680);
  objc_msgSend_setDictionary_(v681, v682, v683, v684, v685, v672);

  v690 = objc_msgSend_paragraphStyles(v644, v686, v687, v688, v689);
  objc_msgSend_setArray_(v690, v691, v692, v693, v694, v744);

  v699 = objc_msgSend_stateByOptimizingParagraphStyleTableWithStylesheet_(v644, v695, v696, v697, v698, v671);
  v704 = objc_msgSend_stateByReducingSeriesPrivateStylesAndReferenceLineStyles(v699, v700, v701, v702, v703);
  v727 = objc_msgSend_tuplesToApplyState_(selfCopy, v705, v706, v707, v708, v704);

  return v727;
}

@end
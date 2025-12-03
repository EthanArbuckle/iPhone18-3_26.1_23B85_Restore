@interface TSCHChartDrawableInfo
- (BOOL)aspectRatioLocked;
- (BOOL)canAspectRatioLockBeChangedByUser;
- (BOOL)canSizeBeChangedIncrementally;
- (BOOL)hasBackgroundLayerForPieChart;
- (BOOL)hasReferenceLines;
- (BOOL)isEquivalentForCrossDocumentPasteMasterComparison:(id)comparison;
- (BOOL)isEquivalentForSerializationRoundTrip:(id)trip;
- (BOOL)isVisibleAtBeginningOfMagicChartBuildForDeliveryStyle:(unint64_t)style;
- (BOOL)requiresStagesBuildingInReverse;
- (BOOL)shouldAddMultiDataBuildWhenAddingToDocument;
- (BOOL)suppliesFinalTextures;
- (BOOL)validatedLoadFromUnarchiver:(id)unarchiver;
- (CGRect)visibleBoundsForPositioning;
- (CGSize)targetSizeForImageData:(id)data associatedHint:(id)hint;
- (Class)layoutClass;
- (Class)repClass;
- (NSSet)referencedStyles;
- (TSCHChartDrawableInfo)initWithContext:(id)context chart:(id)chart;
- (TSCHChartDrawableInfo)initWithContext:(id)context chartType:(id)type legendShowing:(id)showing chartBodyFrame:(id)frame chartAreaFrame:(id)areaFrame circumscribingFrame:(id)circumscribingFrame legendFrame:(id)legendFrame stylePreset:(id)self0 privateSeriesStyles:(id)self1 chartNonStyle:(id)self2 legendNonStyle:(id)self3 valueAxisNonStyles:(id)self4 categoryAxisNonStyles:(id)self5 seriesNonStyles:(id)self6 refLineNonStylesMap:(id)self7 refLineStylesMap:(id)self8;
- (TSCHChartInfo)chart;
- (TSCHChunkManager)chunkManager;
- (id)animationFilters;
- (id)applyStyleSwapTuple:(id)tuple;
- (id)applyStyleSwapTuples:(id)tuples;
- (id)changeDetailsForCustomFormatListDidUpdateToCustomFormat:(id)format key:(id)key;
- (id)geometry;
- (id)infoGeometryForVisiblePositioningInfoGeometry:(id)geometry;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)p_copyFor3DAs2DWithContext:(id)context chartFrame:(CGRect)frame legendFrame:(CGRect)legendFrame;
- (id)p_drawableGeometry;
- (id)styleOwnerFromSwapType:(int)type andIndex:(unint64_t)index;
- (id)textureDeliveryStylesLocalized:(BOOL)localized animationFilter:(id)filter;
- (id)transformedGeometryWithTransform:(CGAffineTransform *)transform inBounds:(CGRect)bounds;
- (id)typeName;
- (int64_t)mixingTypeWithObject:(id)object context:(id)context;
- (unint64_t)chunkCountForTextureDeliveryStyle:(unint64_t)style animationFilter:(id)filter;
- (unint64_t)multiDataSetIndex;
- (unint64_t)numberOfMultiDataSets;
- (unint64_t)textureDeliveryStyleFromDeliveryString:(id)string;
- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper;
- (void)finalizeDataOnDeepCopyBeforeSerializingForDragAndDrop;
- (void)hideAllTitles;
- (void)loadFromPreUFFArchiveWithUnarchiver:(id)unarchiver;
- (void)p_setDrawableGeometry:(id)geometry clearObjectPlaceholderFlag:(BOOL)flag;
- (void)reassignPasteboardCustomFormatKeys;
- (void)saveToArchiver:(id)archiver;
- (void)setGeometry:(id)geometry omitLegendResize:(BOOL)resize;
- (void)setInsertionCenterPosition:(CGPoint)position;
- (void)setPersistentMediator:(id)mediator;
- (void)tsaMoveToPosition:(CGPoint)position size:(CGSize)size;
- (void)upgradeFormatsForCustomFormatListU2_0;
- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)wasRemovedFromDocumentRoot:(id)root;
- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)willBeRemovedFromDocumentRoot:(id)root;
- (void)willModify;
@end

@implementation TSCHChartDrawableInfo

- (id)p_copyFor3DAs2DWithContext:(id)context chartFrame:(CGRect)frame legendFrame:(CGRect)legendFrame
{
  width = legendFrame.size.width;
  height = frame.size.height;
  v7 = frame.size.width;
  v9 = objc_msgSend_replicateForReinsertion(self, a2, frame.origin.x, frame.origin.y, frame.size.width, context);
  v14 = objc_msgSend_chart(v9, v10, v11, v12, v13);
  v19 = objc_msgSend_chart(self, v15, v16, v17, v18);
  v24 = objc_msgSend_chartType(v19, v20, v21, v22, v23);
  v29 = objc_msgSend_otherDimensionChartType(v24, v25, v26, v27, v28);
  v34 = objc_msgSend_documentRoot(self, v30, v31, v32, v33);
  v39 = objc_msgSend_documentLocale(v34, v35, v36, v37, v38);
  objc_msgSend_setChartType_andSetLegendDefaults_gridRowIds_gridColumnIds_forDocumentLocale_(v14, v40, v41, v42, v43, v29, 1, 0, 0, v39);

  v48 = objc_msgSend_chart(v9, v44, v45, v46, v47);
  v53 = objc_msgSend_chartLayoutWithChartInfo_(TSCHChartLayout, v49, v50, v51, v52, v48);

  objc_msgSend_setForceOmitLegend_(v53, v54, v55, v56, v57, 1);
  objc_msgSend_setForceOmitLabelPlacement_(v53, v58, v59, v60, v61, 1);
  objc_msgSend_layoutForChartAreaSize_(v53, v62, v7, height, v63);
  objc_msgSend_chartBodyFrame(v53, v64, v65, v66, v67);
  v69 = v68;
  v71 = v70;
  v72 = objc_alloc_init(MEMORY[0x277D80358]);
  TSUAddPoints();
  objc_msgSend_setPosition_(v72, v73, v74, v75, v76);
  objc_msgSend_setSize_(v72, v77, v69, v71, v78);
  v83 = objc_msgSend_chart(v9, v79, v80, v81, v82);
  objc_msgSend_legendSizeForChartInfo_initialWidth_(TSCHChartLayout, v84, width, v85, v86, v83);

  objc_msgSend_position(v72, v87, v88, v89, v90);
  objc_msgSend_size(v72, v91, v92, v93, v94);
  TSURectWithOriginAndSize();
  TSURectWithOriginAndSize();
  v142 = *MEMORY[0x277CBF348];
  v141 = *MEMORY[0x277CBF3A8];
  sub_27628348C(&v142, &v141, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104);
  v105 = v142;
  v110 = objc_msgSend_chart(v9, v106, v107, v108, v109);
  v115 = objc_msgSend_legend(v110, v111, v112, v113, v114);
  objc_msgSend_setLegendOffset_(v115, v116, *&v105, *(&v105 + 1), v117);

  v118 = v141;
  v123 = objc_msgSend_chart(v9, v119, v120, v121, v122);
  v128 = objc_msgSend_legend(v123, v124, v125, v126, v127);
  objc_msgSend_setLegendSize_(v128, v129, *&v118, *(&v118 + 1), v130);

  v135 = objc_msgSend_chart(v9, v131, v132, v133, v134);
  objc_msgSend_setGeometry_omitLegendResize_(v135, v136, v137, v138, v139, v72, 1);

  return v9;
}

- (void)loadFromPreUFFArchiveWithUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, v6, v7, v8, *off_2812EE5D0);

  if (*(v9 + 168))
  {
    v10 = *(v9 + 168);
  }

  else
  {
    v10 = MEMORY[0x277D804B0];
  }

  v24.receiver = self;
  v24.super_class = TSCHChartDrawableInfo;
  [(TSCHChartDrawableInfo *)&v24 loadFromArchive:v10 unarchiver:unarchiverCopy];
  v11 = [TSCHChartInfo alloc];
  v16 = objc_msgSend_p_init(v11, v12, v13, v14, v15);
  chart = self->_chart;
  self->_chart = v16;

  if ((*(v9 + 17) & 1) != 0 && (objc_msgSend_isCrossAppPaste(unarchiverCopy, v18, v19, v20, v21) & 1) == 0)
  {
    if (*(v9 + 232))
    {
      v22 = *(v9 + 232);
    }

    else
    {
      v22 = MEMORY[0x277D80A18];
    }

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_2762A9E84;
    v23[3] = &unk_27A6B7430;
    v23[4] = self;
    sub_2762A9DD8(unarchiverCopy, v22, &unk_2885AE800, v23);
  }

  objc_msgSend_loadFromPreUFFArchive_unarchiver_persistentChartInfo_(self->_chart, v18, v19, v20, v21, v9, unarchiverCopy, self);
}

- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper
{
  v17.receiver = self;
  v17.super_class = TSCHChartDrawableInfo;
  mapperCopy = mapper;
  stylesheetCopy = stylesheet;
  [(TSCHChartDrawableInfo *)&v17 adoptStylesheet:stylesheetCopy withMapper:mapperCopy];
  v12 = objc_msgSend_chart(self, v8, v9, v10, v11, v17.receiver, v17.super_class);
  objc_msgSend_adoptStylesheet_withMapper_(v12, v13, v14, v15, v16, stylesheetCopy, mapperCopy);
}

- (TSCHChartDrawableInfo)initWithContext:(id)context chart:(id)chart
{
  contextCopy = context;
  chartCopy = chart;
  if (!chartCopy)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, "[TSCHChartDrawableInfo initWithContext:chart:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 94, 0, "invalid nil value for '%{public}s'", "chart");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v27 = objc_msgSend_geometry(chartCopy, v7, v9, v10, v11);
  v32 = objc_msgSend_copy(v27, v28, v29, v30, v31);
  v39.receiver = self;
  v39.super_class = TSCHChartDrawableInfo;
  v33 = [(TSCHChartDrawableInfo *)&v39 initWithContext:contextCopy geometry:v32];

  if (v33)
  {
    objc_storeStrong(&v33->_chart, chart);
    objc_msgSend_setDrawableInfo_(v33->_chart, v34, v35, v36, v37, v33);
  }

  return v33;
}

- (TSCHChartDrawableInfo)initWithContext:(id)context chartType:(id)type legendShowing:(id)showing chartBodyFrame:(id)frame chartAreaFrame:(id)areaFrame circumscribingFrame:(id)circumscribingFrame legendFrame:(id)legendFrame stylePreset:(id)self0 privateSeriesStyles:(id)self1 chartNonStyle:(id)self2 legendNonStyle:(id)self3 valueAxisNonStyles:(id)self4 categoryAxisNonStyles:(id)self5 seriesNonStyles:(id)self6 refLineNonStylesMap:(id)self7 refLineStylesMap:(id)self8
{
  stylesMapCopy = stylesMap;
  mapCopy = map;
  seriesNonStylesCopy = seriesNonStyles;
  axisNonStylesCopy = axisNonStyles;
  nonStylesCopy = nonStyles;
  nonStyleCopy = nonStyle;
  styleCopy = style;
  stylesCopy = styles;
  presetCopy = preset;
  legendFrameCopy = legendFrame;
  circumscribingFrameCopy = circumscribingFrame;
  areaFrameCopy = areaFrame;
  frameCopy = frame;
  showingCopy = showing;
  typeCopy = type;
  contextCopy = context;
  v26 = [TSCHChartInfo alloc];
  v51 = objc_msgSend_documentRoot(contextCopy, v27, v28, v29, v30);
  v49 = objc_msgSend_documentLocale(v51, v31, v32, v33, v34);
  v47 = objc_msgSend_initWithChartType_legendShowing_chartBodyFrame_chartAreaFrame_circumscribingFrame_legendFrame_stylePreset_privateSeriesStyles_chartNonStyle_legendNonStyle_valueAxisNonStyles_categoryAxisNonStyles_seriesNonStyles_refLineNonStylesMap_refLineStylesMap_forDocumentLocale_(v26, v35, v36, v37, v38, typeCopy, showingCopy, frameCopy, areaFrameCopy, circumscribingFrameCopy, legendFrameCopy, presetCopy, stylesCopy, styleCopy, nonStyleCopy, nonStylesCopy, axisNonStylesCopy, seriesNonStylesCopy, mapCopy, stylesMapCopy, v49);

  v43 = objc_msgSend_initWithContext_chart_(self, v39, v40, v41, v42, contextCopy, v47);
  return v43;
}

- (void)willModify
{
  v2.receiver = self;
  v2.super_class = TSCHChartDrawableInfo;
  [(TSCHChartDrawableInfo *)&v2 willModify];
}

- (TSCHChartInfo)chart
{
  chart = self->_chart;
  if (!chart)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCHChartDrawableInfo chart]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 371, 0, "invalid nil value for '%{public}s'", "_chart");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    chart = self->_chart;
  }

  return chart;
}

- (void)setPersistentMediator:(id)mediator
{
  mediatorCopy = mediator;
  if (self->_mediatorPersistentObject)
  {
    v9 = objc_msgSend_chart(self, v4, v6, v7, v8);
    v14 = objc_msgSend_mediator(v9, v10, v11, v12, v13);
    v19 = objc_msgSend_mediator(self->_mediatorPersistentObject, v15, v16, v17, v18);

    if (v14 != v19)
    {
      v24 = MEMORY[0x277D81150];
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "[TSCHChartDrawableInfo setPersistentMediator:]");
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableInfo.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v31, v32, v33, v34, v25, v30, 377, 0, "Unexpected state setting persistent mediator");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
    }
  }

  mediatorPersistentObject = self->_mediatorPersistentObject;
  self->_mediatorPersistentObject = 0;

  v40 = self->_mediatorPersistentObject;
  self->_mediatorPersistentObject = mediatorCopy;
  v41 = mediatorCopy;

  v46 = objc_msgSend_mediator(self->_mediatorPersistentObject, v42, v43, v44, v45);
  v51 = objc_msgSend_chart(self, v47, v48, v49, v50);
  objc_msgSend_setMediator_(v51, v52, v53, v54, v55, v46);

  v60 = objc_msgSend_mediator(self->_mediatorPersistentObject, v56, v57, v58, v59);
  v65 = objc_msgSend_chart(self, v61, v62, v63, v64);
  objc_msgSend_setChartInfo_(v60, v66, v67, v68, v69, v65);

  v79 = objc_msgSend_mediator(self->_mediatorPersistentObject, v70, v71, v72, v73);
  v74 = TSUProtocolCast();

  objc_msgSend_setObjectToNotify_(v79, v75, v76, v77, v78, v74, &unk_288591920);
}

- (void)p_setDrawableGeometry:(id)geometry clearObjectPlaceholderFlag:(BOOL)flag
{
  if (flag)
  {
    v17.receiver = self;
    v17.super_class = TSCHChartDrawableInfo;
    geometryCopy = geometry;
    [(TSCHChartDrawableInfo *)&v17 setGeometry:geometryCopy];
  }

  else
  {
    geometryCopy2 = geometry;
    v11 = objc_msgSend_matchesObjectPlaceholderGeometry(self, v7, v8, v9, v10);
    v16.receiver = self;
    v16.super_class = TSCHChartDrawableInfo;
    [(TSCHChartDrawableInfo *)&v16 setGeometry:geometryCopy2];

    objc_msgSend_setMatchesObjectPlaceholderGeometry_(self, v12, v13, v14, v15, v11);
  }
}

- (id)p_drawableGeometry
{
  v4.receiver = self;
  v4.super_class = TSCHChartDrawableInfo;
  geometry = [(TSCHChartDrawableInfo *)&v4 geometry];

  return geometry;
}

- (id)geometry
{
  v6 = objc_msgSend_chart(self, a2, v2, v3, v4);
  v11 = v6;
  if (v6)
  {
    geometry = objc_msgSend_geometry(v6, v7, v8, v9, v10);
  }

  else
  {
    v15.receiver = self;
    v15.super_class = TSCHChartDrawableInfo;
    geometry = [(TSCHChartDrawableInfo *)&v15 geometry];
  }

  v13 = geometry;

  return v13;
}

- (void)setGeometry:(id)geometry omitLegendResize:(BOOL)resize
{
  resizeCopy = resize;
  geometryCopy = geometry;
  v11 = objc_msgSend_chart(self, v7, v8, v9, v10);
  v16 = v11;
  if (v11)
  {
    objc_msgSend_setGeometry_omitLegendResize_(v11, v12, v13, v14, v15, geometryCopy, resizeCopy);
  }

  else
  {
    objc_msgSend_p_setDrawableGeometry_clearObjectPlaceholderFlag_(self, v12, v13, v14, v15, geometryCopy, 1);
  }
}

- (unint64_t)multiDataSetIndex
{
  v6 = objc_msgSend_documentRoot(self, a2, v2, v3, v4);
  v11 = objc_msgSend_UIStateForChart_(v6, v7, v8, v9, v10, self);

  v16 = objc_msgSend_chart(self, v12, v13, v14, v15);
  v21 = objc_msgSend_chartType(v16, v17, v18, v19, v20);
  isMultiData = objc_msgSend_isMultiData(v21, v22, v23, v24, v25);

  if (isMultiData)
  {
    v32 = objc_msgSend_model(v16, v27, v28, v29, v30);
    if (v11 && objc_msgSend_isValidMultiDataSetIndex(v11, v31, v33, v34, v35))
    {
      v36 = objc_msgSend_numberOfMultiDataSets(v32, v31, v33, v34, v35);
      if (v36 <= 1)
      {
        v41 = 1;
      }

      else
      {
        v41 = v36;
      }

      v42 = objc_msgSend_multiDataSetIndex(v11, v37, v38, v39, v40);
      if (v42 >= v41 - 1)
      {
        v43 = v41 - 1;
      }

      else
      {
        v43 = v42;
      }
    }

    else
    {
      v43 = objc_msgSend_archivedMultiDataSetIndex(v32, v31, v33, v34, v35);
    }
  }

  else
  {
    v43 = 0;
  }

  return v43;
}

- (unint64_t)numberOfMultiDataSets
{
  v5 = objc_msgSend_chart(self, a2, v2, v3, v4);
  v10 = objc_msgSend_chartType(v5, v6, v7, v8, v9);
  isMultiData = objc_msgSend_isMultiData(v10, v11, v12, v13, v14);

  if (isMultiData)
  {
    v20 = objc_msgSend_model(v5, v16, v17, v18, v19);
    v25 = objc_msgSend_numberOfMultiDataSets(v20, v21, v22, v23, v24);

    if (v25 <= 1)
    {
      v26 = 1;
    }

    else
    {
      v26 = v25;
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (void)hideAllTitles
{
  v9 = objc_msgSend_chart(self, a2, v2, v3, v4);
  objc_msgSend_hideAllTitles(v9, v5, v6, v7, v8);
}

- (CGRect)visibleBoundsForPositioning
{
  v6 = objc_msgSend_chart(self, a2, v2, v3, v4);
  v11 = objc_msgSend_chartLayoutWithChartInfo_(TSCHChartLayout, v7, v8, v9, v10, v6);

  v16 = objc_msgSend_geometry(self, v12, v13, v14, v15);
  objc_msgSend_size(v16, v17, v18, v19, v20);
  objc_msgSend_layoutForChartBodySize_(v11, v21, v22, v23, v24);

  objc_msgSend_outerLayoutFrame(v11, v25, v26, v27, v28);
  objc_msgSend_chartBodyFrame(v11, v29, v30, v31, v32);
  v37 = objc_msgSend_geometry(self, v33, v34, v35, v36);
  objc_msgSend_position(v37, v38, v39, v40, v41);
  TSUSubtractPoints();
  TSURectWithOriginAndSize();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;

  v50 = v43;
  v51 = v45;
  v52 = v47;
  v53 = v49;
  result.size.height = v53;
  result.size.width = v52;
  result.origin.y = v51;
  result.origin.x = v50;
  return result;
}

- (id)infoGeometryForVisiblePositioningInfoGeometry:(id)geometry
{
  geometryCopy = geometry;
  v9 = objc_msgSend_chart(self, v5, v6, v7, v8);
  v14 = objc_msgSend_infoGeometryForVisiblePositioningInfoGeometry_(v9, v10, v11, v12, v13, geometryCopy);

  return v14;
}

- (void)tsaMoveToPosition:(CGPoint)position size:(CGSize)size
{
  height = size.height;
  width = size.width;
  y = position.y;
  x = position.x;
  v9 = objc_msgSend_chart(self, a2, position.x, position.y, size.width);
  objc_msgSend_chartMoveToPosition_size_(v9, v8, x, y, width, height);
}

- (void)setInsertionCenterPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  v7 = objc_msgSend_chart(self, a2, position.x, position.y, v3);
  v14 = objc_msgSend_infoGeometryForVisuallyCenteringOnUnscaledCanvasPoint_(v7, v8, x, y, v9);

  objc_msgSend_setGeometry_(self, v10, v11, v12, v13, v14);
}

- (TSCHChunkManager)chunkManager
{
  chunkManager = self->_chunkManager;
  if (!chunkManager)
  {
    v4 = [TSCHChunkManager alloc];
    v9 = objc_msgSend_chart(self, v5, v6, v7, v8);
    v14 = objc_msgSend_initWithChartInfo_(v4, v10, v11, v12, v13, v9);
    v15 = self->_chunkManager;
    self->_chunkManager = v14;

    chunkManager = self->_chunkManager;
  }

  return chunkManager;
}

- (unint64_t)textureDeliveryStyleFromDeliveryString:(id)string
{
  stringCopy = string;
  v9 = objc_msgSend_chunkManager(self, v5, v6, v7, v8);
  v14 = objc_msgSend_textureDeliveryStyleFromDeliveryString_(v9, v10, v11, v12, v13, stringCopy);

  return v14;
}

- (id)textureDeliveryStylesLocalized:(BOOL)localized animationFilter:(id)filter
{
  localizedCopy = localized;
  filterCopy = filter;
  v11 = objc_msgSend_chunkManager(self, v7, v8, v9, v10);
  v16 = objc_msgSend_textureDeliveryStylesLocalized_animationFilter_(v11, v12, v13, v14, v15, localizedCopy, filterCopy);

  return v16;
}

- (unint64_t)chunkCountForTextureDeliveryStyle:(unint64_t)style animationFilter:(id)filter
{
  v8 = objc_msgSend_chunkManager(self, a2, v4, v5, v6, style, filter);
  v13 = objc_msgSend_chartDeliveryStyleFromTSDDeliveryStyle_(v8, v9, v10, v11, v12, style);
  v18 = objc_msgSend_chunkCountForChartDeliveryStyle_(v8, v14, v15, v16, v17, v13);

  return v18;
}

- (id)animationFilters
{
  v6 = objc_msgSend_chunkManager(self, a2, v2, v3, v4);
  v14.receiver = self;
  v14.super_class = TSCHChartDrawableInfo;
  animationFilters = [(TSCHChartDrawableInfo *)&v14 animationFilters];
  v12 = objc_msgSend_animationFiltersWithDefaultFilters_(v6, v8, v9, v10, v11, animationFilters);

  return v12;
}

- (BOOL)requiresStagesBuildingInReverse
{
  v5 = objc_msgSend_chart(self, a2, v2, v3, v4);
  v10 = objc_msgSend_chartType(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_requiresStagesBuildingInReverse(v10, v11, v12, v13, v14);

  return v15;
}

- (BOOL)suppliesFinalTextures
{
  v5 = objc_msgSend_chart(self, a2, v2, v3, v4);
  v10 = objc_msgSend_chartType(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_suppliesFinalTextures(v10, v11, v12, v13, v14);

  return v15;
}

- (BOOL)shouldAddMultiDataBuildWhenAddingToDocument
{
  v5 = objc_msgSend_chart(self, a2, v2, v3, v4);
  v10 = objc_msgSend_chartType(v5, v6, v7, v8, v9);
  isMultiData = objc_msgSend_isMultiData(v10, v11, v12, v13, v14);

  return isMultiData;
}

- (BOOL)hasReferenceLines
{
  v5 = objc_msgSend_chart(self, a2, v2, v3, v4);
  v10 = objc_msgSend_model(v5, v6, v7, v8, v9);
  hasReferenceLines = objc_msgSend_hasReferenceLines(v10, v11, v12, v13, v14);

  return hasReferenceLines;
}

- (BOOL)hasBackgroundLayerForPieChart
{
  v5 = objc_msgSend_chunkManager(self, a2, v2, v3, v4);
  hasBackgroundLayerForPieChart = objc_msgSend_hasBackgroundLayerForPieChart(v5, v6, v7, v8, v9);

  return hasBackgroundLayerForPieChart;
}

- (BOOL)isVisibleAtBeginningOfMagicChartBuildForDeliveryStyle:(unint64_t)style
{
  v8 = objc_msgSend_chart(self, a2, v3, v4, v5);
  v13 = objc_msgSend_chartType(v8, v9, v10, v11, v12);
  isMultiData = objc_msgSend_isMultiData(v13, v14, v15, v16, v17);

  if ((isMultiData & 1) == 0)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "[TSCHChartDrawableInfo isVisibleAtBeginningOfMagicChartBuildForDeliveryStyle:]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableInfo.m");
    v34 = objc_msgSend_chart(self, v30, v31, v32, v33);
    v39 = objc_msgSend_chartType(v34, v35, v36, v37, v38);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v40, v41, v42, v43, v24, v29, 905, 0, "should not request for magic build visibilty for non-multidata chart types %@", v39);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47);
  }

  v48 = objc_msgSend_chunkManager(self, v19, v20, v21, v22);
  isVisibleAtBeginningOfMagicChartBuildForDeliveryStyle = objc_msgSend_isVisibleAtBeginningOfMagicChartBuildForDeliveryStyle_(v48, v49, v50, v51, v52, style);

  return isVisibleAtBeginningOfMagicChartBuildForDeliveryStyle;
}

- (id)typeName
{
  v5 = objc_msgSend_chart(self, a2, v2, v3, v4);
  v10 = objc_msgSend_chartType(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_name(v10, v11, v12, v13, v14);

  return v15;
}

- (int64_t)mixingTypeWithObject:(id)object context:(id)context
{
  contextCopy = context;
  objectCopy = object;
  objc_opt_class();
  v8 = TSUDynamicCast();

  if (!v8)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCHChartDrawableInfo mixingTypeWithObject:context:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDrawableInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 948, 0, "nil object after cast");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v28 = objc_msgSend_chart(self, v9, v10, v11, v12);
  v33 = objc_msgSend_chart(v8, v29, v30, v31, v32);
  v34 = TSDMixingTypeWithObjects();

  if (v34 >= 4)
  {
    v35 = 4;
  }

  else
  {
    v35 = v34;
  }

  return v35;
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  v7 = TSUDynamicCast();

  v12 = objc_msgSend_chart(self, v8, v9, v10, v11);
  v17 = objc_msgSend_chart(v7, v13, v14, v15, v16);
  v21 = objc_msgSend_mixedObjectWithFraction_ofObject_(v12, v18, fraction, v19, v20, v17);

  v26 = objc_msgSend_p_drawableGeometry(self, v22, v23, v24, v25);
  v31 = objc_msgSend_p_drawableGeometry(v7, v27, v28, v29, v30);
  v35 = objc_msgSend_mixedObjectWithFraction_ofObject_(v26, v32, fraction, v33, v34, v31);

  v36 = [TSCHChartDrawableInfo alloc];
  v41 = objc_msgSend_context(self, v37, v38, v39, v40);
  v46 = objc_msgSend_initWithContext_chart_(v36, v42, v43, v44, v45, v41, v21);

  objc_msgSend_p_setDrawableGeometry_clearObjectPlaceholderFlag_(v46, v47, v48, v49, v50, v35, 0);

  return v46;
}

- (NSSet)referencedStyles
{
  v5 = MEMORY[0x277D812C0];
  v6 = objc_msgSend_chart(self, a2, v2, v3, v4);
  v11 = objc_msgSend_chartStyleState(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_allStyles(v11, v12, v13, v14, v15);
  v21 = objc_msgSend_setWithArray_(v5, v17, v18, v19, v20, v16);

  return v21;
}

- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  v22.receiver = self;
  v22.super_class = TSCHChartDrawableInfo;
  contextCopy = context;
  rootCopy = root;
  [(TSCHChartDrawableInfo *)&v22 willBeAddedToDocumentRoot:rootCopy dolcContext:contextCopy];
  v12 = objc_msgSend_chart(self, v8, v9, v10, v11);
  objc_msgSend_updateAfterPaste(v12, v13, v14, v15, v16);

  v17 = TSUProtocolCast();
  objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v17, v18, v19, v20, v21, rootCopy, contextCopy, &unk_2885ACC18);
}

- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  v12.receiver = self;
  v12.super_class = TSCHChartDrawableInfo;
  contextCopy = context;
  rootCopy = root;
  [(TSCHChartDrawableInfo *)&v12 wasAddedToDocumentRoot:rootCopy dolcContext:contextCopy];
  v7 = TSUProtocolCast();
  objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v7, v8, v9, v10, v11, rootCopy, contextCopy, &unk_2885ACC18);
}

- (void)willBeRemovedFromDocumentRoot:(id)root
{
  v9.receiver = self;
  v9.super_class = TSCHChartDrawableInfo;
  rootCopy = root;
  [(TSCHChartDrawableInfo *)&v9 willBeRemovedFromDocumentRoot:rootCopy];
  v4 = TSUProtocolCast();
  objc_msgSend_willBeRemovedFromDocumentRoot_(v4, v5, v6, v7, v8, rootCopy, &unk_2885ACC18);
}

- (void)wasRemovedFromDocumentRoot:(id)root
{
  v9.receiver = self;
  v9.super_class = TSCHChartDrawableInfo;
  rootCopy = root;
  [(TSCHChartDrawableInfo *)&v9 wasRemovedFromDocumentRoot:rootCopy];
  v4 = TSUProtocolCast();
  objc_msgSend_wasRemovedFromDocumentRoot_(v4, v5, v6, v7, v8, rootCopy, &unk_2885ACC18);
}

- (id)transformedGeometryWithTransform:(CGAffineTransform *)transform inBounds:(CGRect)bounds
{
  v49.receiver = self;
  v49.super_class = TSCHChartDrawableInfo;
  v5 = *&transform->c;
  v48[0] = *&transform->a;
  v48[1] = v5;
  v48[2] = *&transform->tx;
  v6 = [(TSCHChartDrawableInfo *)&v49 transformedGeometryWithTransform:v48 inBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  v11 = objc_msgSend_chart(self, v7, v8, v9, v10);
  objc_msgSend_minimumChartBodySizeForTransformingGeometryForChart_(TSCHChartInfo, v12, v13, v14, v15, v11);
  v17 = v16;
  v19 = v18;

  objc_msgSend_size(v6, v20, v21, v22, v23);
  v25 = v24;
  objc_msgSend_size(v6, v26, v24, v27, v28);
  if (v25 < v17 || v31 < v19)
  {
    objc_msgSend_size(v6, v29, v30, v31, v32);
    v35 = fmax(v34, v17);
    objc_msgSend_size(v6, v36, v34, v37, v38);
    v40 = fmax(v39, v19);
    v46 = objc_msgSend_mutableCopy(v6, v41, v42, v39, v43);
    objc_msgSend_setSize_(v46, v44, v35, v40, v45);
  }

  else
  {
    v46 = v6;
  }

  return v46;
}

- (Class)repClass
{
  v5 = objc_msgSend_chart(self, a2, v2, v3, v4);
  v10 = objc_msgSend_chartType(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_repClass(v10, v11, v12, v13, v14);

  return v15;
}

- (Class)layoutClass
{
  v5 = objc_msgSend_chartType(self->_chart, a2, v2, v3, v4);
  v10 = objc_msgSend_layoutClass(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)canAspectRatioLockBeChangedByUser
{
  v6 = objc_msgSend_chartType(self->_chart, a2, v2, v3, v4);
  if (objc_msgSend_hasFixedFrameRatio(v6, v7, v8, v9, v10))
  {
    canAspectRatioLockBeChangedByUser = 0;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = TSCHChartDrawableInfo;
    canAspectRatioLockBeChangedByUser = [(TSCHChartDrawableInfo *)&v13 canAspectRatioLockBeChangedByUser];
  }

  return canAspectRatioLockBeChangedByUser;
}

- (BOOL)canSizeBeChangedIncrementally
{
  v5 = objc_msgSend_chartType(self->_chart, a2, v2, v3, v4);
  v10 = objc_msgSend_supportsIncrementalResize(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)aspectRatioLocked
{
  v6 = objc_msgSend_chartType(self->_chart, a2, v2, v3, v4);
  if (objc_msgSend_hasFixedFrameRatio(v6, v7, v8, v9, v10))
  {
    aspectRatioLocked = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = TSCHChartDrawableInfo;
    aspectRatioLocked = [(TSCHChartDrawableInfo *)&v13 aspectRatioLocked];
  }

  return aspectRatioLocked;
}

- (id)applyStyleSwapTuple:(id)tuple
{
  tupleCopy = tuple;
  v9 = objc_msgSend_chart(self, v5, v6, v7, v8);
  v14 = objc_msgSend_applyStyleSwapTuple_(v9, v10, v11, v12, v13, tupleCopy);

  return v14;
}

- (id)applyStyleSwapTuples:(id)tuples
{
  tuplesCopy = tuples;
  v9 = objc_msgSend_chart(self, v5, v6, v7, v8);
  v14 = objc_msgSend_applyStyleSwapTuples_(v9, v10, v11, v12, v13, tuplesCopy);

  return v14;
}

- (id)styleOwnerFromSwapType:(int)type andIndex:(unint64_t)index
{
  v8 = *&type;
  v9 = objc_msgSend_chart(self, a2, v4, v5, v6);
  v14 = objc_msgSend_styleOwnerFromSwapType_andIndex_(v9, v10, v11, v12, v13, v8, index);

  return v14;
}

- (void)finalizeDataOnDeepCopyBeforeSerializingForDragAndDrop
{
  v17.receiver = self;
  v17.super_class = TSCHChartDrawableInfo;
  [(TSCHChartDrawableInfo *)&v17 finalizeDataOnDeepCopyBeforeSerializingForDragAndDrop];
  v7 = objc_msgSend_chart(self, v3, v4, v5, v6);
  v12 = objc_msgSend_model(v7, v8, v9, v10, v11);
  objc_msgSend_validateIfNeeded(v12, v13, v14, v15, v16);
}

- (CGSize)targetSizeForImageData:(id)data associatedHint:(id)hint
{
  v4 = 1.79769313e308;
  v5 = 1.79769313e308;
  result.height = v5;
  result.width = v4;
  return result;
}

- (id)changeDetailsForCustomFormatListDidUpdateToCustomFormat:(id)format key:(id)key
{
  if (objc_msgSend_formatType(format, a2, v4, v5, v6) == 272)
  {
    objc_msgSend_propertySetWithProperties_(MEMORY[0x277D80AC0], v7, v8, v9, v10, 1371, 1235, 1352, 0);
  }

  else
  {
    objc_msgSend_propertySetWithProperties_(MEMORY[0x277D80AC0], v7, v8, v9, v10, 1432, 1433, 1258, 1354, 0);
  }
  v11 = ;
  v12 = objc_alloc(MEMORY[0x277D80AC8]);
  v17 = objc_msgSend_initWithChangedProperties_(v12, v13, v14, v15, v16, v11);

  return v17;
}

- (void)upgradeFormatsForCustomFormatListU2_0
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_documentRoot(self, a2, v2, v3, v4);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v10 = objc_msgSend_chart(self, v7, 0.0, v8, v9, 0);
  v15 = objc_msgSend_allStylesAndNonStylesThatCanHaveCustomNumberFormats(v10, v11, v12, v13, v14);

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
        objc_msgSend_upgradePreU2_0CustomFormatsForDocumentRoot_(v26, v27, v28, v29, v30, v6);

        ++v23;
      }

      while (v21 != v23);
      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v31, v32, v33, v34, &v35, v39, 16);
    }

    while (v21);
  }
}

- (void)reassignPasteboardCustomFormatKeys
{
  v9 = objc_msgSend_chart(self, a2, v2, v3, v4);
  objc_msgSend_reassignPasteboardCustomFormatKeys(v9, v5, v6, v7, v8);
}

- (BOOL)isEquivalentForCrossDocumentPasteMasterComparison:(id)comparison
{
  if (self == comparison)
  {
    return 1;
  }

  comparisonCopy = comparison;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (!v5 || self->_mediatorPersistentObject || v5[26])
  {
    isEquivalentForCrossDocumentPasteMasterComparison = 0;
  }

  else
  {
    v12 = objc_msgSend_chart(self, v6, v7, v8, v9);
    v17 = objc_msgSend_chart(v5, v13, v14, v15, v16);
    isEquivalentForCrossDocumentPasteMasterComparison = objc_msgSend_isEquivalentForCrossDocumentPasteMasterComparison_(v12, v18, v19, v20, v21, v17);
  }

  return isEquivalentForCrossDocumentPasteMasterComparison;
}

- (BOOL)isEquivalentForSerializationRoundTrip:(id)trip
{
  if (self == trip)
  {
    return 1;
  }

  tripCopy = trip;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (v5)
  {
    v10 = objc_msgSend_chart(self, v6, v7, v8, v9);
    v15 = objc_msgSend_chart(v5, v11, v12, v13, v14);
    isEquivalentForCrossDocumentPasteMasterComparison = objc_msgSend_isEquivalentForCrossDocumentPasteMasterComparison_(v10, v16, v17, v18, v19, v15);
  }

  else
  {
    isEquivalentForCrossDocumentPasteMasterComparison = 0;
  }

  return isEquivalentForCrossDocumentPasteMasterComparison;
}

- (BOOL)validatedLoadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (objc_msgSend_messageType(unarchiverCopy, v5, v6, v7, v8) == 5000)
  {
    objc_msgSend_loadFromPreUFFArchiveWithUnarchiver_(self, v9, v10, v11, v12, unarchiverCopy);
  }

  else
  {
    v13 = unarchiverCopy;
    google::protobuf::internal::AssignDescriptors();
    v18 = objc_msgSend_messageWithDescriptor_(v13, v14, v15, v16, v17, *off_2812ED048);

    if (*(v18 + 48))
    {
      v19 = *(v18 + 48);
    }

    else
    {
      v19 = MEMORY[0x277D804B0];
    }

    v55.receiver = self;
    v55.super_class = TSCHChartDrawableInfo;
    [(TSCHChartDrawableInfo *)&v55 loadFromArchive:v19 unarchiver:v13];
    if (!google::protobuf::internal::ExtensionSet::Has((v18 + 16)))
    {
      v38 = MEMORY[0x277D81150];
      v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "[TSCHChartDrawableInfo(Archiving) validatedLoadFromUnarchiver:]");
      v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, v41, v42, v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo_Archiving.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v45, v46, v47, v48, v39, v44, 132, 0, "We're in the wrong unarchiving method");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51, v52);
      v37 = 0;
      goto LABEL_16;
    }

    Message = google::protobuf::internal::ExtensionSet::GetMessage();
    v25 = [TSCHChartInfo alloc];
    v30 = objc_msgSend_p_init(v25, v26, v27, v28, v29);
    chart = self->_chart;
    self->_chart = v30;

    if ((*(Message + 40) & 8) != 0 && (objc_msgSend_isCrossAppPaste(v13, v32, v33, v34, v35) & 1) == 0)
    {
      if (*(Message + 216))
      {
        v36 = *(Message + 216);
      }

      else
      {
        v36 = MEMORY[0x277D80A18];
      }

      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = sub_2763811BC;
      v54[3] = &unk_27A6B7430;
      v54[4] = self;
      sub_2762A9DD8(v13, v36, &unk_2885AE800, v54);
    }

    objc_msgSend_loadFromUnityArchive_unarchiver_persistentChartInfo_(self->_chart, v32, v33, v34, v35, Message, v13, self);
  }

  v37 = 1;
LABEL_16:

  return v37;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, v6, v7, v8, sub_276381AC8, *off_2812ED048);

  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = sub_276381538;
  v63[3] = &unk_27A6B6A48;
  v66 = v9;
  v10 = archiverCopy;
  v64 = v10;
  selfCopy = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v10, v11, v12, v13, v14, 1, v9, v63);
  v56 = MEMORY[0x277D85DD0];
  v57 = 3221225472;
  v58 = sub_2763815C0;
  v59 = &unk_27A6B6A48;
  v62 = v9;
  selfCopy2 = self;
  v15 = v10;
  v61 = v15;
  objc_msgSend_pushScopeForField_message_usingBlock_(v15, v16, v17, v18, v19, 10000, v9, &v56);
  v24 = objc_msgSend_model(self->_chart, v20, v21, v22, v23, v56, v57, v58, v59, selfCopy2);
  objc_msgSend_setShouldCacheMediatorData_(v24, v25, v26, v27, v28, 0);

  v33 = objc_msgSend_chartType(self->_chart, v29, v30, v31, v32);
  if (objc_msgSend_supportsCalloutLines(v33, v34, v35, v36, v37))
  {
    v42 = objc_msgSend_containsCalloutLinesWithoutModelSync(self->_chart, v38, v39, v40, v41);

    if (v42)
    {
      objc_msgSend_requiresDocumentReadVersion_writeVersion_featureIdentifier_(v15, v43, v44, v45, v46, *MEMORY[0x277D80968], *MEMORY[0x277D80978], @"TSCHLeaderLines");
    }
  }

  else
  {
  }

  if (objc_msgSend_hasRoundedCorners(self->_chart, v43, v44, v45, v46) && objc_msgSend_supportsRoundedCornersWithoutModelSync(self->_chart, v47, v48, v49, v50))
  {
    objc_msgSend_requiresDocumentReadVersion_writeVersion_featureIdentifier_(v15, v47, v48, v49, v50, *MEMORY[0x277D80968], *MEMORY[0x277D80998], @"TSCHRoundedCorners");
  }

  v51 = objc_msgSend_model(self->_chart, v47, v48, v49, v50);
  objc_msgSend_setShouldCacheMediatorData_(v51, v52, v53, v54, v55, 1);
}

@end
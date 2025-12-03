@interface TSCH3DChartType
+ (NSSet)allAnimationFilters;
+ (tvec3<float>)adjustedScaleForInfoChartScale:(void *)scale chartType:(id)type barShape:(int)shape;
- (BOOL)needsRefinementForInwardLayout;
- (BOOL)supportsColumnShape;
- (BOOL)supportsInterSetDepthGap;
- (CGSize)minimumChartBodySize;
- (CGSize)minimumChartBodySizeForTransformingGeometry;
- (Class)stageClass;
- (NSString)columnShapeUIName;
- (TSCH3DAxisLabelPositioner)categoryLabelPositioner;
- (TSCH3DAxisLabelPositioner)valueLabelPositioner;
- (double)maxDepthRatio;
- (double)minDepthRatio;
- (double)sageMaxDepthRatio;
- (double)spiceMaxDepthRatio;
- (id)animationDeliveryStylesForFilter:(id)filter;
- (id)animationFiltersWithDefaultFilters:(id)filters;
- (id)sceneWithChartInfo:(id)info layoutSettings:(id *)settings styleProvidingSource:(id)source;
- (int)deprecated3DBevelEdgesSpecificProperty;
- (int)deprecated3DShadowSpecificProperty;
- (int)labelOrientation;
- (tvec3<float>)adjustedScaleForInfoChartScale:(void *)scale barShape:(int)shape;
- (unint64_t)depthRatioDimension;
@end

@implementation TSCH3DChartType

+ (tvec3<float>)adjustedScaleForInfoChartScale:(void *)scale chartType:(id)type barShape:(int)shape
{
  v6 = *&shape;
  v8 = v5;
  typeCopy = type;
  if (!typeCopy)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v11, v12, v13, "+[TSCH3DChartType adjustedScaleForInfoChartScale:chartType:barShape:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartType.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 1246, 0, "invalid nil value for '%{public}s'", "chartType");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  *v8 = *scale;
  *(v8 + 8) = *(scale + 2);
  objc_opt_class();
  v29 = TSUDynamicCast();
  v34 = v29;
  if (v29)
  {
    objc_msgSend_adjustedScaleForInfoChartScale_barShape_(v29, v30, v31, v32, v33, scale, v6);
    *v8 = v37;
    *(v8 + 8) = v38;
  }

  result.var0 = v35;
  result.var1 = *(&v35 + 4);
  result.var2 = v36;
  return result;
}

- (tvec3<float>)adjustedScaleForInfoChartScale:(void *)scale barShape:(int)shape
{
  v9 = v4;
  v10 = *scale;
  *v4 = *scale;
  LODWORD(v10) = *(scale + 2);
  *(v4 + 8) = LODWORD(v10);
  v11 = objc_msgSend_supportsColumnShape(self, a2, v10, v5, v6);
  if (shape == 1 && v11)
  {
    v11 = objc_msgSend_depthRatioDimension(self, v12, v13, v14, v15);
    *(v9 + 8) = *(v9 + 4 * v11);
  }

  result.var2 = v12;
  result.var0 = v11;
  result.var1 = *(&v11 + 4);
  return result;
}

- (id)animationDeliveryStylesForFilter:(id)filter
{
  filterCopy = filter;
  v36.receiver = self;
  v36.super_class = TSCH3DChartType;
  v5 = [(TSCH2DChartType *)&v36 animationDeliveryStylesForFilter:filterCopy];
  v10 = objc_msgSend_mutableCopy(v5, v6, v7, v8, v9);

  if (objc_msgSend_isEqualToString_(filterCopy, v11, v12, v13, v14, *MEMORY[0x277D805A0]))
  {
    v19 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAB58], v15, v16, v17, v18, 0);

    v10 = v19;
  }

  v20 = objc_opt_class();
  v25 = objc_msgSend_allAnimationFilters(v20, v21, v22, v23, v24);
  v30 = objc_msgSend_containsObject_(v25, v26, v27, v28, v29, filterCopy);

  if (v30)
  {
    objc_msgSend_addIndex_(v10, v31, v32, v33, v34, 102);
  }

  return v10;
}

- (int)labelOrientation
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_labelOrientation(v5, v6, v7, v8, v9);

  return v10;
}

- (TSCH3DAxisLabelPositioner)valueLabelPositioner
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_valueLabelPositioner(v5, v6, v7, v8, v9);

  return v10;
}

- (TSCH3DAxisLabelPositioner)categoryLabelPositioner
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_categoryLabelPositioner(v5, v6, v7, v8, v9);

  return v10;
}

- (Class)stageClass
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_stageClass(v5, v6, v7, v8, v9);

  return v10;
}

- (id)sceneWithChartInfo:(id)info layoutSettings:(id *)settings styleProvidingSource:(id)source
{
  infoCopy = info;
  sourceCopy = source;
  v14 = objc_msgSend_feature(self, v10, v11, v12, v13);
  v38 = *settings;
  v18 = objc_msgSend_initialSceneWithChartInfo_layoutSettings_(v14, v15, *&v38.var0, v16, v17, infoCopy, &v38);

  v23 = objc_msgSend_defaultSeriesType_(self, v19, v20, v21, v22, 0);
  v38 = *settings;
  v27 = objc_msgSend_infoWithScene_chartInfo_chartType_seriesType_layoutSettings_styleProvidingSource_(TSCH3DChartSceneInfo, v24, *&v38.var0, v25, v26, v18, infoCopy, self, v23, &v38, sourceCopy);
  v32 = objc_msgSend_stageClass(self, v28, v29, v30, v31);
  objc_msgSend_addObjectsToSceneWithSceneInfo_(v32, v33, v34, v35, v36, v27);

  return v18;
}

- (id)animationFiltersWithDefaultFilters:(id)filters
{
  v4 = MEMORY[0x277CBEB58];
  v21.receiver = self;
  v21.super_class = TSCH3DChartType;
  v5 = [(TSCHChartType *)&v21 animationFiltersWithDefaultFilters:filters];
  v10 = objc_msgSend_setWithSet_(v4, v6, v7, v8, v9, v5);

  v15 = objc_msgSend_animationFilters(self, v11, v12, v13, v14);
  objc_msgSend_unionSet_(v10, v16, v17, v18, v19, v15);

  return v10;
}

+ (NSSet)allAnimationFilters
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_27624C5D8;
  block[3] = &unk_27A6B6250;
  block[4] = self;
  if (qword_280A47178 != -1)
  {
    dispatch_once(&qword_280A47178, block);
  }

  v2 = qword_280A47170;

  return v2;
}

- (BOOL)supportsColumnShape
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_supportsColumnShape(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)supportsInterSetDepthGap
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_supportsInterSetDepthGap(v5, v6, v7, v8, v9);

  return v10;
}

- (NSString)columnShapeUIName
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_columnShapeUIName(v5, v6, v7, v8, v9);

  return v10;
}

- (CGSize)minimumChartBodySize
{
  v2 = 0.0;
  v3 = 0.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)minimumChartBodySizeForTransformingGeometry
{
  v2 = 100.0;
  v3 = 100.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (double)minDepthRatio
{
  objc_msgSend_sageMaxDepthRatio(self, a2, v2, v3, v4);
  v9 = v6;
  if (v6 == 0.0)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v6, v7, v8, "[TSCH3DChartType minDepthRatio]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartType.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 1516, 0, "invalid ratio to derive min depth %f", *&v9);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  return 1.0 / v9;
}

- (double)maxDepthRatio
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  objc_msgSend_maxDepthRatio(v5, v6, v7, v8, v9);
  v11 = v10;

  return v11;
}

- (double)sageMaxDepthRatio
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  objc_msgSend_sageMaxDepthRatio(v5, v6, v7, v8, v9);
  v11 = v10;

  return v11;
}

- (double)spiceMaxDepthRatio
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  objc_msgSend_spiceMaxDepthRatio(v5, v6, v7, v8, v9);
  v11 = v10;

  return v11;
}

- (unint64_t)depthRatioDimension
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  isHorizontal = objc_msgSend_isHorizontal(v5, v6, v7, v8, v9);

  return isHorizontal;
}

- (BOOL)needsRefinementForInwardLayout
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  isHorizontal = objc_msgSend_isHorizontal(v5, v6, v7, v8, v9);

  return isHorizontal;
}

- (int)deprecated3DBevelEdgesSpecificProperty
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_deprecated3DBevelEdgesSpecificProperty(v5, v6, v7, v8, v9);

  return v10;
}

- (int)deprecated3DShadowSpecificProperty
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_deprecated3DShadowSpecificProperty(v5, v6, v7, v8, v9);

  return v10;
}

@end
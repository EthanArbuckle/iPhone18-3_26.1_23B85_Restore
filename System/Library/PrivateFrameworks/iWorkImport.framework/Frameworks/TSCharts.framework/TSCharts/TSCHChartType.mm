@interface TSCHChartType
+ (CGSize)fallbackMinimumChartBodySize;
+ (NSSet)all3DChartTypes;
+ (TSCHChartType)areaChart;
+ (TSCHChartType)areaChart3D;
+ (TSCHChartType)barChart;
+ (TSCHChartType)barChart3D;
+ (TSCHChartType)bubbleChart;
+ (TSCHChartType)columnChart;
+ (TSCHChartType)columnChart3D;
+ (TSCHChartType)donutChart;
+ (TSCHChartType)donutChart3D;
+ (TSCHChartType)lineChart;
+ (TSCHChartType)lineChart3D;
+ (TSCHChartType)mixedChart;
+ (TSCHChartType)multiDataBarChart;
+ (TSCHChartType)multiDataBubbleChart;
+ (TSCHChartType)multiDataColumnChart;
+ (TSCHChartType)multiDataScatterChart;
+ (TSCHChartType)pieChart;
+ (TSCHChartType)pieChart3D;
+ (TSCHChartType)radarChart;
+ (TSCHChartType)scatterChart;
+ (TSCHChartType)stackedAreaChart;
+ (TSCHChartType)stackedAreaChart3D;
+ (TSCHChartType)stackedBarChart;
+ (TSCHChartType)stackedBarChart3D;
+ (TSCHChartType)stackedColumnChart;
+ (TSCHChartType)stackedColumnChart3D;
+ (TSCHChartType)twoYAxisChart;
+ (double)sageDepthFactorForExportingChartInfo:(id)a3;
+ (id)allChartTypes;
+ (id)chartTypeForUserInterfaceTag:(int64_t)a3;
+ (id)chartTypePlaceholderForDefault3DScaleProperty;
+ (id)constantDepthInfoChartScaleForInfoChartScale:(id)a3 chartType:(id)a4 barShape:(int)a5;
+ (id)multipleChartsSelected;
+ (id)multipleChartsSelected2D;
+ (id)multipleChartsSelected3D;
- (BOOL)drawValueLabelsForZero;
- (BOOL)editableFormatForValueStrings;
- (BOOL)hasExplodableSeriesElements;
- (BOOL)hasFixedFrameRatio;
- (BOOL)isHorizontal;
- (BOOL)rendersBackgroundAxis;
- (BOOL)rendersUsingRadialGeometry;
- (BOOL)requiresStagesBuildingInReverse;
- (BOOL)requiresYAxisOrdinal;
- (BOOL)reverseSingleColumnLegendOrder;
- (BOOL)suppliesFinalTextures;
- (BOOL)supportsAxisNames;
- (BOOL)supportsBackgroundFill;
- (BOOL)supportsBorderFrame;
- (BOOL)supportsBorderStroke;
- (BOOL)supportsBubbleOptions;
- (BOOL)supportsCalloutLines;
- (BOOL)supportsCategoryAxisMinorTickmarks;
- (BOOL)supportsCategoryAxisSeriesNames;
- (BOOL)supportsCategoryLabelExplosion;
- (BOOL)supportsCategoryLabelsInChartRangeEditor;
- (BOOL)supportsConnectingLines;
- (BOOL)supportsEditing;
- (BOOL)supportsEditingForAxisID:(id)a3;
- (BOOL)supportsElementChunking;
- (BOOL)supportsElementSeriesNames;
- (BOOL)supportsEllipticalGridlines;
- (BOOL)supportsErrorBars;
- (BOOL)supportsGroupedShadows;
- (BOOL)supportsInnerRadius;
- (BOOL)supportsLabelExplosion;
- (BOOL)supportsMultipleSeriesTypes;
- (BOOL)supportsMultipleValueScales;
- (BOOL)supportsMultipleValuesPerSeries;
- (BOOL)supportsPercentNumberFormatting;
- (BOOL)supportsPlaceTitleAtCenter;
- (BOOL)supportsReferenceLines;
- (BOOL)supportsSeriesLabels;
- (BOOL)supportsSharedAndSeparateX;
- (BOOL)supportsShowLabelsInFrontOption;
- (BOOL)supportsStartAngleRotation;
- (BOOL)supportsSymbolOverhang;
- (BOOL)supportsTrendLines;
- (BOOL)supportsValueLabelSpacing;
- (BOOL)supportsValueLabels;
- (CGSize)minimumChartBodySize;
- (CGSize)mungeBodySize:(CGSize)a3;
- (Class)presetImagerClass;
- (Class)valueAxisClassForID:(id)a3 scale:(int64_t)a4;
- (NSArray)categoryAxisIDs;
- (NSArray)supportedAxisScales;
- (NSArray)valueAxisIDs;
- (NSSet)supportedSeriesTypes;
- (NSString)localizedActionStringForWedgeExplosion;
- (NSString)localizedDeliveryTypeForWedge;
- (NSString)localizedTitleForDeliveryTypeWedge;
- (NSString)name;
- (TSCH3DChartRotationLimit)rotation3DLimit;
- (TSCHChartType)init;
- (TSCHChartType)initWithFeatureClass:(Class)a3;
- (TSCHChartType)otherDimensionChartType;
- (TSUIntToIntDictionary)genericToSpecificPropertyMap;
- (UIEdgeInsets)swatchImageEdgeInsetsForSize:(CGSize)a3;
- (double)maxDepthRatio;
- (double)maxInnerRadiusPercentage;
- (double)minInnerRadiusPercentage;
- (float)defaultLabelExplosionPercentage;
- (id)alternateArchiveChartTypeAndReturnWriterVersion:(unint64_t *)a3 readerVersion:(unint64_t *)a4 featureID:(id *)a5;
- (id)animationDeliveryStylesForFilter:(id)a3;
- (id)cellsAddedWarning;
- (id)cellsCreatedWarning;
- (id)defaultDataFileName;
- (id)filteredStyleOwnersFromStyleOwners:(id)a3;
- (id)g_genericToSpecificPropertyMapArea;
- (id)g_genericToSpecificPropertyMapBar;
- (id)g_genericToSpecificPropertyMapBubble;
- (id)g_genericToSpecificPropertyMapColumn;
- (id)g_genericToSpecificPropertyMapDonut;
- (id)g_genericToSpecificPropertyMapLine;
- (id)g_genericToSpecificPropertyMapMixed;
- (id)g_genericToSpecificPropertyMapPie;
- (id)g_genericToSpecificPropertyMapRadar;
- (id)g_genericToSpecificPropertyMapScatter;
- (id)g_genericToSpecificPropertyMapStackedArea;
- (id)g_genericToSpecificPropertyMapStackedBar;
- (id)g_genericToSpecificPropertyMapStackedColumn;
- (id)g_genericToSpecificPropertyMapTwoAxis;
- (id)imageWithPreset:(id)a3 target:(int)a4 imageSize:(CGSize)a5 imageScale:(double)a6 swatchFrame:(CGRect)a7 documentRoot:(id)a8 shouldCache:(BOOL *)a9;
- (id)localizedWedgeDragLabelWithPercent:(unint64_t)a3;
- (id)p_debugDescription;
- (id)seriesPlotColumnsWarning;
- (id)seriesPlotRowsWarning;
- (id)seriesTypeForSeriesElementType:(int)a3 defaultSeriesIndex:(unint64_t)a4;
- (id)seriesWarning;
- (id)titlePositionerWithInfo:(id)a3 scene:(id)a4;
- (id)userInterfaceNameForPlaceTitleAtCenter:(BOOL)a3;
- (int)representativeGridValueAxisType;
- (int)seriesElementTypeForSeriesType:(id)a3;
- (int)stackingSignRule;
- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4;
- (unint64_t)gridOffsetToSeriesForScatterFormat:(int)a3;
- (unint64_t)maxCellsToCheckForGridValueType;
- (unint64_t)styleIndexForAxisID:(id)a3;
- (void)updateTitlesForExportingModel:(id)a3 info:(id)a4;
@end

@implementation TSCHChartType

- (id)titlePositionerWithInfo:(id)a3 scene:(id)a4
{
  v7 = objc_msgSend_positionerWithInfo_scene_(TSCH3DVerticalChartTitlePositioner, a2, v4, v5, v6, a3, a4);

  return v7;
}

- (TSCH3DChartRotationLimit)rotation3DLimit
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.var3 = v5;
  result.var2 = v4;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

+ (CGSize)fallbackMinimumChartBodySize
{
  v2 = 30.0;
  v3 = 30.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (TSCHChartType)init
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCHChartType init]");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartType.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 94, 0, "Use designated initializer.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  return 0;
}

- (TSCHChartType)initWithFeatureClass:(Class)a3
{
  if (!a3)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCHChartType initWithFeatureClass:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartType.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 99, 0, "invalid nil value for '%{public}s'", "pFeatureClass");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v32.receiver = self;
  v32.super_class = TSCHChartType;
  v23 = [(TSCHChartType *)&v32 init];
  if (v23)
  {
    v24 = [a3 alloc];
    v29 = objc_msgSend_initWithChartType_(v24, v25, v26, v27, v28, v23);
    feature = v23->_feature;
    v23->_feature = v29;
  }

  return v23;
}

- (NSString)name
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"Chart", &stru_288528678, @"TSCharts");

  return v10;
}

- (double)maxDepthRatio
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  objc_msgSend_maxDepthRatio(v5, v6, v7, v8, v9);
  v11 = v10;

  return v11;
}

- (TSCHChartType)otherDimensionChartType
{
  v6 = objc_msgSend_pieChart(TSCHChartType, a2, v2, v3, v4);

  if (v6 == self)
  {
    v116 = objc_msgSend_pieChart3D(TSCHChartType, v7, v8, v9, v10);
  }

  else
  {
    v11 = objc_msgSend_donutChart(TSCHChartType, v7, v8, v9, v10);

    if (v11 == self)
    {
      v116 = objc_msgSend_donutChart3D(TSCHChartType, v12, v13, v14, v15);
    }

    else
    {
      v16 = objc_msgSend_barChart(TSCHChartType, v12, v13, v14, v15);

      if (v16 == self)
      {
        v116 = objc_msgSend_barChart3D(TSCHChartType, v17, v18, v19, v20);
      }

      else
      {
        v21 = objc_msgSend_columnChart(TSCHChartType, v17, v18, v19, v20);

        if (v21 == self)
        {
          v116 = objc_msgSend_columnChart3D(TSCHChartType, v22, v23, v24, v25);
        }

        else
        {
          v26 = objc_msgSend_lineChart(TSCHChartType, v22, v23, v24, v25);

          if (v26 == self)
          {
            v116 = objc_msgSend_lineChart3D(TSCHChartType, v27, v28, v29, v30);
          }

          else
          {
            v31 = objc_msgSend_areaChart(TSCHChartType, v27, v28, v29, v30);

            if (v31 == self)
            {
              v116 = objc_msgSend_areaChart3D(TSCHChartType, v32, v33, v34, v35);
            }

            else
            {
              v36 = objc_msgSend_scatterChart(TSCHChartType, v32, v33, v34, v35);

              if (v36 == self)
              {
                goto LABEL_23;
              }

              v41 = objc_msgSend_bubbleChart(TSCHChartType, v37, v38, v39, v40);

              if (v41 == self)
              {
                goto LABEL_23;
              }

              v46 = objc_msgSend_stackedBarChart(TSCHChartType, v42, v43, v44, v45);

              if (v46 == self)
              {
                v116 = objc_msgSend_stackedBarChart3D(TSCHChartType, v47, v48, v49, v50);
              }

              else
              {
                v51 = objc_msgSend_stackedColumnChart(TSCHChartType, v47, v48, v49, v50);

                if (v51 == self)
                {
                  v116 = objc_msgSend_stackedColumnChart3D(TSCHChartType, v52, v53, v54, v55);
                }

                else
                {
                  v56 = objc_msgSend_stackedAreaChart(TSCHChartType, v52, v53, v54, v55);

                  if (v56 == self)
                  {
                    v116 = objc_msgSend_stackedAreaChart3D(TSCHChartType, v57, v58, v59, v60);
                  }

                  else
                  {
                    v61 = objc_msgSend_mixedChart(TSCHChartType, v57, v58, v59, v60);

                    if (v61 == self)
                    {
                      goto LABEL_23;
                    }

                    v66 = objc_msgSend_twoYAxisChart(TSCHChartType, v62, v63, v64, v65);

                    if (v66 == self)
                    {
                      goto LABEL_23;
                    }

                    v71 = objc_msgSend_columnChart3D(TSCHChartType, v67, v68, v69, v70);

                    if (v71 == self)
                    {
                      v116 = objc_msgSend_columnChart(TSCHChartType, v72, v73, v74, v75);
                    }

                    else
                    {
                      v76 = objc_msgSend_lineChart3D(TSCHChartType, v72, v73, v74, v75);

                      if (v76 == self)
                      {
                        v116 = objc_msgSend_lineChart(TSCHChartType, v77, v78, v79, v80);
                      }

                      else
                      {
                        v81 = objc_msgSend_areaChart3D(TSCHChartType, v77, v78, v79, v80);

                        if (v81 == self)
                        {
                          v116 = objc_msgSend_areaChart(TSCHChartType, v82, v83, v84, v85);
                        }

                        else
                        {
                          v86 = objc_msgSend_stackedAreaChart3D(TSCHChartType, v82, v83, v84, v85);

                          if (v86 == self)
                          {
                            v116 = objc_msgSend_stackedAreaChart(TSCHChartType, v87, v88, v89, v90);
                          }

                          else
                          {
                            v91 = objc_msgSend_pieChart3D(TSCHChartType, v87, v88, v89, v90);

                            if (v91 == self)
                            {
                              v116 = objc_msgSend_pieChart(TSCHChartType, v92, v93, v94, v95);
                            }

                            else
                            {
                              v96 = objc_msgSend_donutChart3D(TSCHChartType, v92, v93, v94, v95);

                              if (v96 == self)
                              {
                                v116 = objc_msgSend_donutChart(TSCHChartType, v97, v98, v99, v100);
                              }

                              else
                              {
                                v101 = objc_msgSend_stackedColumnChart3D(TSCHChartType, v97, v98, v99, v100);

                                if (v101 == self)
                                {
                                  v116 = objc_msgSend_stackedColumnChart(TSCHChartType, v102, v103, v104, v105);
                                }

                                else
                                {
                                  v106 = objc_msgSend_barChart3D(TSCHChartType, v102, v103, v104, v105);

                                  if (v106 == self)
                                  {
                                    v116 = objc_msgSend_barChart(TSCHChartType, v107, v108, v109, v110);
                                  }

                                  else
                                  {
                                    v111 = objc_msgSend_stackedBarChart3D(TSCHChartType, v107, v108, v109, v110);

                                    if (v111 != self)
                                    {
LABEL_23:
                                      v116 = 0;
                                      goto LABEL_30;
                                    }

                                    v116 = objc_msgSend_stackedBarChart(TSCHChartType, v112, v113, v114, v115);
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_30:

  return v116;
}

- (BOOL)supportsEllipticalGridlines
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_supportsEllipticalGridlines(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)supportsCategoryLabelExplosion
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_supportsCategoryLabelExplosion(v5, v6, v7, v8, v9);

  return v10;
}

+ (TSCHChartType)pieChart
{
  if (qword_280A46F80 != -1)
  {
    sub_2764A743C();
  }

  v3 = qword_280A46F88;

  return v3;
}

+ (TSCHChartType)donutChart
{
  if (qword_280A46F90 != -1)
  {
    sub_2764A7450();
  }

  v3 = qword_280A46F98;

  return v3;
}

+ (TSCHChartType)barChart
{
  if (qword_280A46FA0 != -1)
  {
    sub_2764A7464();
  }

  v3 = qword_280A46FA8;

  return v3;
}

+ (TSCHChartType)columnChart
{
  if (qword_280A46FB0 != -1)
  {
    sub_2764A7478();
  }

  v3 = qword_280A46FB8;

  return v3;
}

+ (TSCHChartType)lineChart
{
  if (qword_280A46FC0 != -1)
  {
    sub_2764A748C();
  }

  v3 = qword_280A46FC8;

  return v3;
}

+ (TSCHChartType)areaChart
{
  if (qword_280A46FD0 != -1)
  {
    sub_2764A74A0();
  }

  v3 = qword_280A46FD8;

  return v3;
}

+ (TSCHChartType)scatterChart
{
  if (qword_280A46FE0 != -1)
  {
    sub_2764A74B4();
  }

  v3 = qword_280A46FE8;

  return v3;
}

+ (TSCHChartType)stackedBarChart
{
  if (qword_280A46FF0 != -1)
  {
    sub_2764A74C8();
  }

  v3 = qword_280A46FF8;

  return v3;
}

+ (TSCHChartType)stackedColumnChart
{
  if (qword_280A47000 != -1)
  {
    sub_2764A74DC();
  }

  v3 = qword_280A47008;

  return v3;
}

+ (TSCHChartType)stackedAreaChart
{
  if (qword_280A47010 != -1)
  {
    sub_2764A74F0();
  }

  v3 = qword_280A47018;

  return v3;
}

+ (TSCHChartType)mixedChart
{
  if (qword_280A47020 != -1)
  {
    sub_2764A7504();
  }

  v3 = qword_280A47028;

  return v3;
}

+ (TSCHChartType)twoYAxisChart
{
  if (qword_280A47030 != -1)
  {
    sub_2764A7518();
  }

  v3 = qword_280A47038;

  return v3;
}

+ (TSCHChartType)bubbleChart
{
  if (qword_280A47040 != -1)
  {
    sub_2764A752C();
  }

  v3 = qword_280A47048;

  return v3;
}

+ (id)multipleChartsSelected
{
  if (qword_280A47050 != -1)
  {
    sub_2764A7540();
  }

  v3 = qword_280A47058;

  return v3;
}

+ (id)multipleChartsSelected2D
{
  if (qword_280A47060 != -1)
  {
    sub_2764A7554();
  }

  v3 = qword_280A47068;

  return v3;
}

+ (TSCHChartType)columnChart3D
{
  if (qword_280A47070 != -1)
  {
    sub_2764A7568();
  }

  v3 = qword_280A47078;

  return v3;
}

+ (TSCHChartType)lineChart3D
{
  if (qword_280A47080 != -1)
  {
    sub_2764A757C();
  }

  v3 = qword_280A47088;

  return v3;
}

+ (TSCHChartType)areaChart3D
{
  if (qword_280A47090 != -1)
  {
    sub_2764A7590();
  }

  v3 = qword_280A47098;

  return v3;
}

+ (TSCHChartType)stackedAreaChart3D
{
  if (qword_280A470A0 != -1)
  {
    sub_2764A75A4();
  }

  v3 = qword_280A470A8;

  return v3;
}

+ (TSCHChartType)pieChart3D
{
  if (qword_280A470B0 != -1)
  {
    sub_2764A75B8();
  }

  v3 = qword_280A470B8;

  return v3;
}

+ (TSCHChartType)donutChart3D
{
  if (qword_280A470C0 != -1)
  {
    sub_2764A75CC();
  }

  v3 = qword_280A470C8;

  return v3;
}

+ (TSCHChartType)stackedColumnChart3D
{
  if (qword_280A470D0 != -1)
  {
    sub_2764A75E0();
  }

  v3 = qword_280A470D8;

  return v3;
}

+ (TSCHChartType)barChart3D
{
  if (qword_280A470E0 != -1)
  {
    sub_2764A75F4();
  }

  v3 = qword_280A470E8;

  return v3;
}

+ (TSCHChartType)stackedBarChart3D
{
  if (qword_280A470F0 != -1)
  {
    sub_2764A7608();
  }

  v3 = qword_280A470F8;

  return v3;
}

+ (id)multipleChartsSelected3D
{
  if (qword_280A47100 != -1)
  {
    sub_2764A761C();
  }

  v3 = qword_280A47108;

  return v3;
}

+ (TSCHChartType)multiDataColumnChart
{
  if (qword_280A47110 != -1)
  {
    sub_2764A7630();
  }

  v3 = qword_280A47118;

  return v3;
}

+ (TSCHChartType)multiDataBarChart
{
  if (qword_280A47120 != -1)
  {
    sub_2764A7644();
  }

  v3 = qword_280A47128;

  return v3;
}

+ (TSCHChartType)multiDataScatterChart
{
  if (qword_280A47130 != -1)
  {
    sub_2764A7658();
  }

  v3 = qword_280A47138;

  return v3;
}

+ (TSCHChartType)multiDataBubbleChart
{
  if (qword_280A47140 != -1)
  {
    sub_2764A766C();
  }

  v3 = qword_280A47148;

  return v3;
}

- (id)imageWithPreset:(id)a3 target:(int)a4 imageSize:(CGSize)a5 imageScale:(double)a6 swatchFrame:(CGRect)a7 documentRoot:(id)a8 shouldCache:(BOOL *)a9
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v16 = a5.height;
  v17 = a5.width;
  v18 = *&a4;
  v20 = a3;
  v21 = a8;
  v26 = objc_msgSend_presetImagerClass(self, v22, v23, v24, v25);
  v31 = objc_msgSend_presetImagerForChartType_(v26, v27, v28, v29, v30, self);
  v33 = objc_msgSend_imageWithPreset_target_imageSize_imageScale_swatchFrame_documentRoot_shouldCache_(v31, v32, v17, v16, a6, v20, v18, v21, a9, x, y, width, height);

  return v33;
}

- (UIEdgeInsets)swatchImageEdgeInsetsForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v7 = objc_msgSend_presetImagerClass(self, a2, a3.width, a3.height, v3);
  v12 = objc_msgSend_presetImagerForChartType_(v7, v8, v9, v10, v11, self);
  objc_msgSend_swatchImageEdgeInsetsForSize_(v12, v13, width, height, v14);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = v16;
  v24 = v18;
  v25 = v20;
  v26 = v22;
  result.right = v26;
  result.bottom = v25;
  result.left = v24;
  result.top = v23;
  return result;
}

+ (id)allChartTypes
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276247F0C;
  block[3] = &unk_27A6B6250;
  block[4] = a2;
  if (qword_280A47158 != -1)
  {
    dispatch_once(&qword_280A47158, block);
  }

  v2 = qword_280A47150;

  return v2;
}

+ (NSSet)all3DChartTypes
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276248180;
  block[3] = &unk_27A6B6250;
  block[4] = a1;
  if (qword_280A47168 != -1)
  {
    dispatch_once(&qword_280A47168, block);
  }

  v2 = qword_280A47160;

  return v2;
}

- (id)animationDeliveryStylesForFilter:(id)a3
{
  v6 = objc_msgSend_indexSet(MEMORY[0x277CCAA78], a2, v3, v4, v5, a3);

  return v6;
}

- (CGSize)minimumChartBodySize
{
  v2 = 30.0;
  v3 = 30.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (NSSet)supportedSeriesTypes
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_supportedSeriesTypes(v5, v6, v7, v8, v9);

  return v10;
}

- (Class)presetImagerClass
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_presetImagerClass(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)supportsBorderFrame
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_supportsBorderFrame(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)supportsBorderStroke
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_supportsBorderStroke(v5, v6, v7, v8, v9);

  return v10;
}

- (TSUIntToIntDictionary)genericToSpecificPropertyMap
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_genericToSpecificPropertyMap(v5, v6, v7, v8, v9);

  return v10;
}

- (NSArray)valueAxisIDs
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_valueAxisIDs(v5, v6, v7, v8, v9);

  return v10;
}

- (NSArray)categoryAxisIDs
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_categoryAxisIDs(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)supportsEditingForAxisID:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_feature(self, v5, v6, v7, v8);
  v14 = objc_msgSend_supportsEditingForAxisID_(v9, v10, v11, v12, v13, v4);

  return v14;
}

- (Class)valueAxisClassForID:(id)a3 scale:(int64_t)a4
{
  v6 = a3;
  v11 = objc_msgSend_feature(self, v7, v8, v9, v10);
  v16 = objc_msgSend_valueAxisClassForID_scale_(v11, v12, v13, v14, v15, v6, a4);

  return v16;
}

- (unint64_t)styleIndexForAxisID:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_feature(self, v5, v6, v7, v8);
  v14 = objc_msgSend_styleIndexForAxisID_(v9, v10, v11, v12, v13, v4);

  return v14;
}

- (id)defaultDataFileName
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_defaultDataFileName(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)reverseSingleColumnLegendOrder
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_reverseSingleColumnLegendOrder(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)supportsMultipleSeriesTypes
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_supportsMultipleSeriesTypes(v5, v6, v7, v8, v9);

  return v10;
}

- (id)seriesTypeForSeriesElementType:(int)a3 defaultSeriesIndex:(unint64_t)a4
{
  v9 = objc_msgSend_defaultSeriesType_(self, a2, v4, v5, v6, a4);
  if (a3 == 2)
  {
    v13 = objc_msgSend_mixedColumnSeries(TSCHChartSeriesType, v8, v10, v11, v12);
  }

  else if (a3 == 1)
  {
    v13 = objc_msgSend_mixedAreaSeries(TSCHChartSeriesType, v8, v10, v11, v12);
  }

  else
  {
    if (a3)
    {
      goto LABEL_8;
    }

    v13 = objc_msgSend_mixedLineSeries(TSCHChartSeriesType, v8, v10, v11, v12);
  }

  v14 = v13;

  v9 = v14;
LABEL_8:

  return v9;
}

- (int)seriesElementTypeForSeriesType:(id)a3
{
  v3 = a3;
  v8 = v3;
  if (v3)
  {
    v9 = objc_msgSend_seriesElementType(v3, v4, v5, v6, v7);
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (BOOL)requiresYAxisOrdinal
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_requiresYAxisOrdinal(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)drawValueLabelsForZero
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_drawValueLabelsForZero(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)supportsGroupedShadows
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_supportsGroupedShadows(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)supportsSeriesLabels
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_supportsSeriesLabels(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)supportsValueLabels
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_supportsValueLabels(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)supportsEditing
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_supportsEditing(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)supportsBackgroundFill
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_supportsBackgroundFill(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)requiresStagesBuildingInReverse
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_requiresStagesBuildingInReverse(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)suppliesFinalTextures
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_suppliesFinalTextures(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)supportsTrendLines
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_supportsTrendLines(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)supportsErrorBars
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_supportsErrorBars(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)supportsElementSeriesNames
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_supportsElementSeriesNames(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)supportsLabelExplosion
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_supportsLabelExplosion(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)supportsPercentNumberFormatting
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_supportsPercentNumberFormatting(v5, v6, v7, v8, v9);

  return v10;
}

- (NSArray)supportedAxisScales
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_supportedAxisScales(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)supportsSymbolOverhang
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_supportsSymbolOverhang(v5, v6, v7, v8, v9);

  return v10;
}

- (int)stackingSignRule
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_stackingSignRule(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)supportsElementChunking
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_supportsElementChunking(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)supportsMultipleValueScales
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_supportedAxisScales(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_count(v10, v11, v12, v13, v14) > 1;

  return v15;
}

- (BOOL)supportsCategoryAxisMinorTickmarks
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_supportsCategoryAxisMinorTickmarks(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)supportsCategoryAxisSeriesNames
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_supportsCategoryAxisSeriesNames(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)supportsConnectingLines
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_supportsConnectingLines(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)supportsAxisNames
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_supportsAxisNames(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)isHorizontal
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  isHorizontal = objc_msgSend_isHorizontal(v5, v6, v7, v8, v9);

  return isHorizontal;
}

- (BOOL)hasFixedFrameRatio
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  hasFixedFrameRatio = objc_msgSend_hasFixedFrameRatio(v5, v6, v7, v8, v9);

  return hasFixedFrameRatio;
}

- (BOOL)rendersBackgroundAxis
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_rendersBackgroundAxis(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)hasExplodableSeriesElements
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  hasExplodableSeriesElements = objc_msgSend_hasExplodableSeriesElements(v5, v6, v7, v8, v9);

  return hasExplodableSeriesElements;
}

- (BOOL)rendersUsingRadialGeometry
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_rendersUsingRadialGeometry(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)supportsMultipleValuesPerSeries
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_supportsMultipleValuesPerSeries(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)supportsCategoryLabelsInChartRangeEditor
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_supportsCategoryLabelsInChartRangeEditor(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)supportsSharedAndSeparateX
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_supportsSharedAndSeparateX(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)supportsBubbleOptions
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_supportsBubbleOptions(v5, v6, v7, v8, v9);

  return v10;
}

- (unint64_t)maxCellsToCheckForGridValueType
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_maxCellsToCheckForGridValueType(v5, v6, v7, v8, v9);

  return v10;
}

- (unint64_t)gridOffsetToSeriesForScatterFormat:(int)a3
{
  v6 = *&a3;
  v7 = objc_msgSend_feature(self, a2, v3, v4, v5);
  v12 = objc_msgSend_gridOffsetToSeriesForScatterFormat_(v7, v8, v9, v10, v11, v6);

  return v12;
}

- (int)representativeGridValueAxisType
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_representativeGridValueAxisType(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)supportsReferenceLines
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_supportsReferenceLines(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)supportsValueLabelSpacing
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_supportsValueLabelSpacing(v5, v6, v7, v8, v9);

  return v10;
}

- (void)updateTitlesForExportingModel:(id)a3 info:(id)a4
{
  v16 = a3;
  v6 = a4;
  v11 = objc_msgSend_feature(self, v7, v8, v9, v10);
  objc_msgSend_updateTitlesForExportingModel_info_(v11, v12, v13, v14, v15, v16, v6);
}

- (BOOL)supportsShowLabelsInFrontOption
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_supportsShowLabelsInFrontOption(v5, v6, v7, v8, v9);

  return v10;
}

- (id)filteredStyleOwnersFromStyleOwners:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_feature(self, v5, v6, v7, v8);
  v14 = objc_msgSend_filteredStyleOwnersFromStyleOwners_(v9, v10, v11, v12, v13, v4);
  v19 = v14;
  if (v14)
  {
    v20 = v14;
  }

  else
  {
    v20 = objc_msgSend_set(MEMORY[0x277CBEB98], v15, v16, v17, v18);
  }

  v21 = v20;

  return v21;
}

- (NSString)localizedDeliveryTypeForWedge
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"By Wedge", &stru_288528678, @"TSCharts");

  return v10;
}

- (NSString)localizedTitleForDeliveryTypeWedge
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"Wedge", &stru_288528678, @"TSCharts");

  return v10;
}

- (id)localizedWedgeDragLabelWithPercent:(unint64_t)a3
{
  v7 = sub_276360774(v3, v4, v5);
  v12 = objc_msgSend_localizedStringForKey_value_table_(v7, v8, v9, v10, v11, @"Wedge Position: %lu%%", &stru_288528678, @"TSCharts");

  v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, v14, v15, v16, v12, a3);

  return v17;
}

- (NSString)localizedActionStringForWedgeExplosion
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"Set Wedge Distance From Center", &stru_288528678, @"TSChartsUndo");

  return v10;
}

- (BOOL)editableFormatForValueStrings
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_editableFormatForValueStrings(v5, v6, v7, v8, v9);

  return v10;
}

- (float)defaultLabelExplosionPercentage
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  objc_msgSend_defaultLabelExplosionPercentage(v5, v6, v7, v8, v9);
  v11 = v10;

  return v11;
}

- (BOOL)supportsCalloutLines
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_supportsCalloutLines(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)supportsPlaceTitleAtCenter
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_supportsPlaceTitleAtCenter(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)supportsInnerRadius
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_supportsPlaceTitleAtCenter(v5, v6, v7, v8, v9);

  return v10;
}

- (double)minInnerRadiusPercentage
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  objc_msgSend_minInnerRadiusPercentage(v5, v6, v7, v8, v9);
  v11 = v10;

  return v11;
}

- (double)maxInnerRadiusPercentage
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  objc_msgSend_maxInnerRadiusPercentage(v5, v6, v7, v8, v9);
  v11 = v10;

  return v11;
}

- (id)userInterfaceNameForPlaceTitleAtCenter:(BOOL)a3
{
  v6 = a3;
  v7 = objc_msgSend_feature(self, a2, v3, v4, v5);
  v12 = objc_msgSend_userInterfaceNameForPlaceTitleAtCenter_(v7, v8, v9, v10, v11, v6);

  return v12;
}

- (CGSize)mungeBodySize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  hasFixedFrameRatio = objc_msgSend_hasFixedFrameRatio(self, a2, a3.width, a3.height, v3);
  if (width >= height)
  {
    v7 = height;
  }

  else
  {
    v7 = width;
  }

  if (hasFixedFrameRatio)
  {
    v8 = v7;
  }

  else
  {
    v8 = width;
  }

  if (!hasFixedFrameRatio)
  {
    v7 = height;
  }

  result.height = v7;
  result.width = v8;
  return result;
}

+ (id)chartTypePlaceholderForDefault3DScaleProperty
{
  v5 = objc_msgSend_pieChart3D(TSCHChartType, a2, v2, v3, v4);
  if ((objc_msgSend_is3D(v5, v6, v7, v8, v9) & 1) == 0)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "+[TSCHChartType chartTypePlaceholderForDefault3DScaleProperty]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartType.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 870, 0, "invalid placeholder for default 3D scale property %@", v5);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  return v5;
}

+ (id)constantDepthInfoChartScaleForInfoChartScale:(id)a3 chartType:(id)a4 barShape:(int)a5
{
  v5 = *&a5;
  v8 = a3;
  v10 = a4;
  if (!v10)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v11, v12, v13, "+[TSCHChartType constantDepthInfoChartScaleForInfoChartScale:chartType:barShape:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartType.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 875, 0, "invalid nil value for '%{public}s'", "chartType");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  if (v8)
  {
    objc_msgSend_value3(v8, v9, v11, v12, v13);
  }

  else
  {
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v11, v12, v13, "+[TSCHChartType constantDepthInfoChartScaleForInfoChartScale:chartType:barShape:]");
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartType.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v40, v41, v42, v43, v34, v39, 876, 0, "invalid nil value for '%{public}s'", "infoChartScaleVector");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47);
    v110 = 0;
    v109 = 0.0;
  }

  objc_msgSend_adjustedScaleForInfoChartScale_chartType_barShape_(TSCH3DChartType, v29, v30, v31, v32, &v109, v10, v5);
  v52 = objc_msgSend_chartTypePlaceholderForDefault3DScaleProperty(a1, v48, v49, v50, v51);
  if (v52 == v10)
  {
    for (i = 0; i != 3; ++i)
    {
      *(__p + i) = *(&v109 + i) == *(&v107 + i);
    }

    v57 = 0;
    v58 = 1;
    do
    {
      while ((v58 & 1) == 0)
      {
        v58 = 0;
        if (++v57 == 3)
        {

          goto LABEL_17;
        }
      }

      v58 = *(__p + v57++);
    }

    while (v57 != 3);

    if (v58)
    {
      goto LABEL_28;
    }

LABEL_17:
    v60 = MEMORY[0x277D81150];
    v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, v59, v54, v55, "+[TSCHChartType constantDepthInfoChartScaleForInfoChartScale:chartType:barShape:]");
    v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, v63, v64, v65, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartType.mm");
    v67 = MEMORY[0x277CCACA8];
    v104 = *&v109;
    sub_276152FD4("vec3(%f, %f, %f)", v68, v69, v70, v71, v72, v73, v74, SLOBYTE(v104));
    if (v112 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v67, v75, v76, v77, v78, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v67, v75, v76, v77, v78, __p[0]);
    }
    v86 = ;
    if (v112 < 0)
    {
      operator delete(__p[0]);
    }

    v87 = MEMORY[0x277CCACA8];
    v106 = v108;
    v105 = v107;
    sub_276152FD4("vec3(%f, %f, %f)", v79, v80, v81, v82, v83, v84, v85, SLOBYTE(v105));
    if (v112 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v87, v88, v89, v90, v91, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v87, v88, v89, v90, v91, __p[0]);
    }
    v93 = ;
    if (v112 < 0)
    {
      operator delete(__p[0]);
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v92, v94, v95, v96, v61, v66, 882, 0, "placeholder chart type should not adjust chart scale %@ to %@", v86, v93, *&v106);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v97, v98, v99, v100);
  }

  else
  {
  }

LABEL_28:
  *&v101 = v109;
  *(&v101 + 1) = __PAIR64__(LODWORD(v108), v110);
  *__p = v101;
  v102 = objc_msgSend_vectorWithVec4_(TSCH3DVector, v53, v109, v54, v55, __p);

  return v102;
}

+ (double)sageDepthFactorForExportingChartInfo:(id)a3
{
  v3 = a3;
  v26[0] = 0;
  v26[1] = 0;
  v27 = 0;
  v4 = sub_27635FB94(v26);
  v8 = objc_msgSend_model(v3, v5, v4, v6, v7);
  v13 = objc_msgSend_numberOfSeries(v8, v9, v10, v11, v12);
  v18 = objc_msgSend_chartType(v3, v14, v15, v16, v17);
  objc_msgSend_depthFactorForAdjustingNumberOfSeries_chartType_fromOldLimitingSeries_toNewLimitingSeries_(TSCH3DAbstractLimitingSeriesUpgrader, v19, v20, v21, v22, v13, v18, v27, 8);
  v24 = v23;

  return v24;
}

- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4
{
  v5 = a3;
  objc_opt_class();
  v7 = TSUDynamicCast();
  if (!v7)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCHChartType mixingTypeWithObject:context:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartType.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 899, 0, "nil object after cast");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(self, v27, v28, v29, v30, v26))
  {
    v31 = 4;
  }

  else
  {
    v31 = 1;
  }

  return v31;
}

- (id)p_debugDescription
{
  v627 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, v2, v3, v4);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  objc_msgSend_appendFormat_(v6, v9, v10, v11, v12, @"TSCHChartType subclass: %@\n", v8);

  if (objc_opt_respondsToSelector())
  {
    v17 = objc_msgSend_userInterfaceName(self, v13, v14, v15, v16);
    objc_msgSend_appendFormat_(v6, v18, v19, v20, v21, @"userInterfaceName: %@\n", v17);
  }

  if (objc_opt_respondsToSelector())
  {
    v26 = objc_msgSend_defaultSeriesType_(self, v22, v23, v24, v25, 0);
    objc_msgSend_appendFormat_(v6, v27, v28, v29, v30, @"defaultSeriesType:0 %@\n", v26);

    v35 = objc_msgSend_defaultSeriesType_(self, v31, v32, v33, v34, 1);
    objc_msgSend_appendFormat_(v6, v36, v37, v38, v39, @"defaultSeriesType:1 %@\n", v35);

    v44 = objc_msgSend_defaultSeriesType_(self, v40, v41, v42, v43, 2);
    objc_msgSend_appendFormat_(v6, v45, v46, v47, v48, @"defaultSeriesType:2 %@\n", v44);
  }

  if (objc_opt_respondsToSelector())
  {
    v53 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], v49, v50, v51, v52, @"Foo");
    v58 = objc_msgSend_animationFiltersWithDefaultFilters_(self, v54, v55, v56, v57, v53);
    objc_msgSend_appendFormat_(v6, v59, v60, v61, v62, @"animationFiltersWithDefaultFilters: [NSSet setWithObject: @Foo]: %@\n", v58);
  }

  if (objc_opt_respondsToSelector())
  {
    v67 = objc_msgSend_renderers(self, v63, v64, v65, v66);
    objc_msgSend_appendFormat_(v6, v68, v69, v70, v71, @"renderers: %@\n", v67);
  }

  if (objc_opt_respondsToSelector())
  {
    v76 = objc_msgSend_chartLayoutItemClass(self, v72, v73, v74, v75);
    objc_msgSend_appendFormat_(v6, v77, v78, v79, v80, @"chartLayoutItemClass: %@\n", v76);
  }

  if (objc_opt_respondsToSelector())
  {
    v85 = objc_msgSend_chartLayoutClass(self, v81, v82, v83, v84);
    objc_msgSend_appendFormat_(v6, v86, v87, v88, v89, @"chartLayoutClass: %@\n", v85);
  }

  if (objc_opt_respondsToSelector())
  {
    v94 = objc_msgSend_layoutClass(self, v90, v91, v92, v93);
    objc_msgSend_appendFormat_(v6, v95, v96, v97, v98, @"layoutClass: %@\n", v94);
  }

  if (objc_opt_respondsToSelector())
  {
    v103 = objc_msgSend_repClass(self, v99, v100, v101, v102);
    objc_msgSend_appendFormat_(v6, v104, v105, v106, v107, @"repClass: %@\n", v103);
  }

  if (objc_opt_respondsToSelector())
  {
    v112 = objc_msgSend_sageGeometeryHelperClass(self, v108, v109, v110, v111);
    objc_msgSend_appendFormat_(v6, v113, v114, v115, v116, @"sageGeometeryHelperClass: %@\n", v112);
  }

  if (objc_opt_respondsToSelector())
  {
    v121 = objc_msgSend_animationFilters(self, v117, v118, v119, v120);
    objc_msgSend_appendFormat_(v6, v122, v123, v124, v125, @"animationFilters: %@\n", v121);
  }

  if (objc_opt_respondsToSelector())
  {
    v130 = objc_msgSend_presetImagerClass(self, v126, v127, v128, v129);
    objc_msgSend_appendFormat_(v6, v131, v132, v133, v134, @"presetImagerClass: %@\n", v130);
  }

  if (objc_opt_respondsToSelector())
  {
    v139 = objc_msgSend_valueAxisIDs(self, v135, v136, v137, v138);
    objc_msgSend_appendFormat_(v6, v140, v141, v142, v143, @"valueAxisIDs: %@\n", v139);
  }

  if (objc_opt_respondsToSelector())
  {
    v148 = objc_msgSend_categoryAxisIDs(self, v144, v145, v146, v147);
    objc_msgSend_appendFormat_(v6, v149, v150, v151, v152, @"categoryAxisIDs: %@\n", v148);
  }

  if (objc_opt_respondsToSelector())
  {
    v157 = objc_msgSend_supportedAxisScales(self, v153, v154, v155, v156);
    objc_msgSend_appendFormat_(v6, v158, v159, v160, v161, @"supportedAxisScales: %@\n", v157);
  }

  if (objc_opt_respondsToSelector())
  {
    v166 = objc_msgSend_defaultDataFileName(self, v162, v163, v164, v165);
    objc_msgSend_appendFormat_(v6, v167, v168, v169, v170, @"defaultDataFileName: %@\n", v166);
  }

  if (objc_opt_respondsToSelector())
  {
    v175 = objc_msgSend_reverseSingleColumnLegendOrder(self, v171, v172, v173, v174);
    objc_msgSend_appendFormat_(v6, v176, v177, v178, v179, @"reverseSingleColumnLegendOrder: %ld\n", v175);
  }

  if (objc_opt_respondsToSelector())
  {
    v184 = objc_msgSend_supportsMultipleSeriesTypes(self, v180, v181, v182, v183);
    objc_msgSend_appendFormat_(v6, v185, v186, v187, v188, @"supportsMultipleSeriesTypes: %ld\n", v184);
  }

  if (objc_opt_respondsToSelector())
  {
    v193 = objc_msgSend_requiresYAxisOrdinal(self, v189, v190, v191, v192);
    objc_msgSend_appendFormat_(v6, v194, v195, v196, v197, @"requiresYAxisOrdinal: %ld\n", v193);
  }

  if (objc_opt_respondsToSelector())
  {
    v202 = objc_msgSend_drawValueLabelsForZero(self, v198, v199, v200, v201);
    objc_msgSend_appendFormat_(v6, v203, v204, v205, v206, @"drawValueLabelsForZero: %ld\n", v202);
  }

  if (objc_opt_respondsToSelector())
  {
    v211 = objc_msgSend_supportsGroupedShadows(self, v207, v208, v209, v210);
    objc_msgSend_appendFormat_(v6, v212, v213, v214, v215, @"supportsGroupedShadows: %ld\n", v211);
  }

  if (objc_opt_respondsToSelector())
  {
    v220 = objc_msgSend_supportsSeriesLabels(self, v216, v217, v218, v219);
    objc_msgSend_appendFormat_(v6, v221, v222, v223, v224, @"supportsSeriesLabels: %ld\n", v220);
  }

  if (objc_opt_respondsToSelector())
  {
    v229 = objc_msgSend_supportsValueLabels(self, v225, v226, v227, v228);
    objc_msgSend_appendFormat_(v6, v230, v231, v232, v233, @"supportsValueLabels: %ld\n", v229);
  }

  if (objc_opt_respondsToSelector())
  {
    v238 = objc_msgSend_supportsEditing(self, v234, v235, v236, v237);
    objc_msgSend_appendFormat_(v6, v239, v240, v241, v242, @"supportsEditing: %ld\n", v238);
  }

  if (objc_opt_respondsToSelector())
  {
    v247 = objc_msgSend_supportsBackgroundFill(self, v243, v244, v245, v246);
    objc_msgSend_appendFormat_(v6, v248, v249, v250, v251, @"supportsBackgroundFill: %ld\n", v247);
  }

  if (objc_opt_respondsToSelector())
  {
    v256 = objc_msgSend_requiresStagesBuildingInReverse(self, v252, v253, v254, v255);
    objc_msgSend_appendFormat_(v6, v257, v258, v259, v260, @"requiresStagesBuildingInReverse: %ld\n", v256);
  }

  if (objc_opt_respondsToSelector())
  {
    v265 = objc_msgSend_suppliesFinalTextures(self, v261, v262, v263, v264);
    objc_msgSend_appendFormat_(v6, v266, v267, v268, v269, @"suppliesFinalTextures: %ld\n", v265);
  }

  if (objc_opt_respondsToSelector())
  {
    v274 = objc_msgSend_supportsTrendLines(self, v270, v271, v272, v273);
    objc_msgSend_appendFormat_(v6, v275, v276, v277, v278, @"supportsTrendLines: %ld\n", v274);
  }

  if (objc_opt_respondsToSelector())
  {
    v283 = objc_msgSend_supportsBorderFrame(self, v279, v280, v281, v282);
    objc_msgSend_appendFormat_(v6, v284, v285, v286, v287, @"supportsBorderFrame: %ld\n", v283);
  }

  if (objc_opt_respondsToSelector())
  {
    v292 = objc_msgSend_supportsBorderStroke(self, v288, v289, v290, v291);
    objc_msgSend_appendFormat_(v6, v293, v294, v295, v296, @"supportsBorderStroke: %ld\n", v292);
  }

  if (objc_opt_respondsToSelector())
  {
    v301 = objc_msgSend_supportsElementSeriesNames(self, v297, v298, v299, v300);
    objc_msgSend_appendFormat_(v6, v302, v303, v304, v305, @"supportsElementSeriesNames: %ld\n", v301);
  }

  if (objc_opt_respondsToSelector())
  {
    v310 = objc_msgSend_supportsLabelExplosion(self, v306, v307, v308, v309);
    objc_msgSend_appendFormat_(v6, v311, v312, v313, v314, @"supportsLabelExplosion: %ld\n", v310);
  }

  if (objc_opt_respondsToSelector())
  {
    v319 = objc_msgSend_supportsPercentNumberFormatting(self, v315, v316, v317, v318);
    objc_msgSend_appendFormat_(v6, v320, v321, v322, v323, @"supportsPercentNumberFormatting: %ld\n", v319);
  }

  if (objc_opt_respondsToSelector())
  {
    v328 = objc_msgSend_explosionAffectsChartBodyBounds(self, v324, v325, v326, v327);
    objc_msgSend_appendFormat_(v6, v329, v330, v331, v332, @"explosionAffectsChartBodyBounds: %ld\n", v328);
  }

  if (objc_opt_respondsToSelector())
  {
    v337 = objc_msgSend_supportsSymbolOverhang(self, v333, v334, v335, v336);
    objc_msgSend_appendFormat_(v6, v338, v339, v340, v341, @"supportsSymbolOverhang: %ld\n", v337);
  }

  if (objc_opt_respondsToSelector())
  {
    v346 = objc_msgSend_supportsElementChunking(self, v342, v343, v344, v345);
    objc_msgSend_appendFormat_(v6, v347, v348, v349, v350, @"supportsElementChunking: %ld\n", v346);
  }

  if (objc_opt_respondsToSelector())
  {
    v355 = objc_msgSend_supportsMinorGridlines(self, v351, v352, v353, v354);
    objc_msgSend_appendFormat_(v6, v356, v357, v358, v359, @"supportsMinorGridlines: %ld\n", v355);
  }

  if (objc_opt_respondsToSelector())
  {
    v364 = objc_msgSend_supportsAxisLine(self, v360, v361, v362, v363);
    objc_msgSend_appendFormat_(v6, v365, v366, v367, v368, @"supportsAxisLine: %ld\n", v364);
  }

  if (objc_opt_respondsToSelector())
  {
    isHorizontal = objc_msgSend_isHorizontal(self, v369, v370, v371, v372);
    objc_msgSend_appendFormat_(v6, v374, v375, v376, v377, @"isHorizontal: %ld\n", isHorizontal);
  }

  if (objc_opt_respondsToSelector())
  {
    v382 = objc_msgSend_supportsIndividualShadowRendering(self, v378, v379, v380, v381);
    objc_msgSend_appendFormat_(v6, v383, v384, v385, v386, @"supportsIndividualShadowRendering: %ld\n", v382);
  }

  if (objc_opt_respondsToSelector())
  {
    v391 = objc_msgSend_supportsMultipleValuesPerSeries(self, v387, v388, v389, v390);
    objc_msgSend_appendFormat_(v6, v392, v393, v394, v395, @"supportsMultipleValuesPerSeries: %ld\n", v391);
  }

  if (objc_opt_respondsToSelector())
  {
    v400 = objc_msgSend_stackingSignRule(self, v396, v397, v398, v399);
    objc_msgSend_appendFormat_(v6, v401, v402, v403, v404, @"stackingSignRule: %ld\n", v400);
  }

  if (objc_opt_respondsToSelector())
  {
    v619 = 0u;
    v620 = 0u;
    v617 = 0u;
    v618 = 0u;
    v408 = objc_msgSend_valueAxisIDs(self, v405, 0.0, v406, v407);
    obj = v408;
    v414 = objc_msgSend_countByEnumeratingWithState_objects_count_(v408, v409, v410, v411, v412, &v617, v626, 16);
    if (v414)
    {
      v599 = *v618;
      do
      {
        v417 = 0;
        v600 = v414;
        do
        {
          if (*v618 != v599)
          {
            objc_enumerationMutation(obj);
          }

          v418 = *(*(&v617 + 1) + 8 * v417);
          v613 = 0u;
          v614 = 0u;
          v615 = 0u;
          v616 = 0u;
          v419 = objc_msgSend_supportedAxisScales(self, v413, 0.0, v415, v416);
          v425 = objc_msgSend_countByEnumeratingWithState_objects_count_(v419, v420, v421, v422, v423, &v613, v625, 16);
          if (v425)
          {
            v429 = *v614;
            do
            {
              for (i = 0; i != v425; ++i)
              {
                if (*v614 != v429)
                {
                  objc_enumerationMutation(v419);
                }

                v431 = *(*(&v613 + 1) + 8 * i);
                v432 = objc_msgSend_intValue(v431, v424, v426, v427, v428);
                v437 = objc_msgSend_valueAxisClassForID_scale_(self, v433, v434, v435, v436, v418, v432);
                objc_msgSend_appendFormat_(v6, v438, v439, v440, v441, @"valueAxisClassForID: %@ scale: %@: %@\n", v418, v431, v437);
              }

              v425 = objc_msgSend_countByEnumeratingWithState_objects_count_(v419, v424, v426, v427, v428, &v613, v625, 16);
            }

            while (v425);
          }

          ++v417;
        }

        while (v417 != v600);
        v408 = obj;
        v414 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v413, v442, v415, v416, &v617, v626, 16);
      }

      while (v414);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v611 = 0u;
    v612 = 0u;
    v609 = 0u;
    v610 = 0u;
    v446 = objc_msgSend_valueAxisIDs(self, v443, 0.0, v444, v445);
    v452 = objc_msgSend_countByEnumeratingWithState_objects_count_(v446, v447, v448, v449, v450, &v609, v624, 16);
    if (v452)
    {
      v456 = *v610;
      do
      {
        for (j = 0; j != v452; ++j)
        {
          if (*v610 != v456)
          {
            objc_enumerationMutation(v446);
          }

          v458 = *(*(&v609 + 1) + 8 * j);
          v459 = objc_msgSend_styleIndexForAxisID_(self, v451, v453, v454, v455, v458);
          objc_msgSend_appendFormat_(v6, v460, v461, v462, v463, @"styleIndexForAxisID: %@: %lu\n", v458, v459);
        }

        v452 = objc_msgSend_countByEnumeratingWithState_objects_count_(v446, v451, v453, v454, v455, &v609, v624, 16);
      }

      while (v452);
    }

    v607 = 0u;
    v608 = 0u;
    v605 = 0u;
    v606 = 0u;
    v467 = objc_msgSend_categoryAxisIDs(self, v464, 0.0, v465, v466);
    v473 = objc_msgSend_countByEnumeratingWithState_objects_count_(v467, v468, v469, v470, v471, &v605, v623, 16);
    if (v473)
    {
      v477 = *v606;
      do
      {
        for (k = 0; k != v473; ++k)
        {
          if (*v606 != v477)
          {
            objc_enumerationMutation(v467);
          }

          v479 = *(*(&v605 + 1) + 8 * k);
          v480 = objc_msgSend_styleIndexForAxisID_(self, v472, v474, v475, v476, v479);
          objc_msgSend_appendFormat_(v6, v481, v482, v483, v484, @"styleIndexForAxisID: %@: %lu\n", v479, v480);
        }

        v473 = objc_msgSend_countByEnumeratingWithState_objects_count_(v467, v472, v474, v475, v476, &v605, v623, 16);
      }

      while (v473);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v489 = objc_msgSend_labelOrientation(self, v485, v486, v487, v488);
    objc_msgSend_appendFormat_(v6, v490, v491, v492, v493, @"labelOrientation: %ld\n", v489);
  }

  if (objc_opt_respondsToSelector())
  {
    v498 = objc_msgSend_stageClass(self, v494, v495, v496, v497);
    objc_msgSend_appendFormat_(v6, v499, v500, v501, v502, @"stageClass: %@\n", v498);
  }

  if (objc_opt_respondsToSelector())
  {
    isHomogeneous = objc_msgSend_isHomogeneous(self, v503, v504, v505, v506);
    objc_msgSend_appendFormat_(v6, v508, v509, v510, v511, @"isHomogeneous: %ld\n", isHomogeneous);
  }

  if (objc_opt_respondsToSelector())
  {
    v516 = objc_msgSend_supportsBevels(self, v512, v513, v514, v515);
    objc_msgSend_appendFormat_(v6, v517, v518, v519, v520, @"supportsBevels: %ld\n", v516);
  }

  if (objc_opt_respondsToSelector())
  {
    v525 = objc_msgSend_supportsColumnShape(self, v521, v522, v523, v524);
    objc_msgSend_appendFormat_(v6, v526, v527, v528, v529, @"supportsColumnShape: %ld\n", v525);
  }

  if (objc_opt_respondsToSelector())
  {
    v534 = objc_msgSend_columnShapeUIName(self, v530, v531, v532, v533);
    objc_msgSend_appendFormat_(v6, v535, v536, v537, v538, @"columnShapeUIName: %@\n", v534);
  }

  if (objc_opt_respondsToSelector())
  {
    v543 = objc_msgSend_valueLabelPositioner(self, v539, v540, v541, v542);
    v544 = objc_opt_class();
    objc_msgSend_appendFormat_(v6, v545, v546, v547, v548, @"valueLabelPositioner(class): %@\n", v544);
  }

  if (objc_opt_respondsToSelector())
  {
    v553 = objc_msgSend_categoryLabelPositioner(self, v549, v550, v551, v552);
    v554 = objc_opt_class();
    objc_msgSend_appendFormat_(v6, v555, v556, v557, v558, @"categoryLabelPositioner(class): %@\n", v554);
  }

  v622 = *MEMORY[0x277D805A0];
  v559 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v549, v550, v551, v552, &v622, 1);
  if (objc_opt_respondsToSelector())
  {
    v603 = 0u;
    v604 = 0u;
    v601 = 0u;
    v602 = 0u;
    v560 = v559;
    v566 = objc_msgSend_countByEnumeratingWithState_objects_count_(v560, v561, v562, v563, v564, &v601, v621, 16);
    if (v566)
    {
      v570 = *v602;
      do
      {
        for (m = 0; m != v566; ++m)
        {
          if (*v602 != v570)
          {
            objc_enumerationMutation(v560);
          }

          v572 = *(*(&v601 + 1) + 8 * m);
          v573 = objc_msgSend_animationDeliveryStylesForFilter_(self, v565, v567, v568, v569, v572);
          objc_msgSend_appendFormat_(v6, v574, v575, v576, v577, @"animationDeliveryStylesForFilter: %@: %@\n", v572, v573);
        }

        v566 = objc_msgSend_countByEnumeratingWithState_objects_count_(v560, v565, v567, v568, v569, &v601, v621, 16);
      }

      while (v566);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v582 = objc_msgSend_genericToSpecificPropertyMap(self, v578, v579, v580, v581);
    objc_msgSend_appendFormat_(v6, v583, v584, v585, v586, @"genericToSpecificPropertyMap: %@\n", v582);
  }

  if (objc_opt_respondsToSelector())
  {
    v591 = objc_msgSend_supportsAxisNames(self, v587, v588, v589, v590);
    objc_msgSend_appendFormat_(v6, v592, v593, v594, v595, @"supportsAxisNames: %ld\n", v591);
  }

  v596 = v6;

  return v6;
}

- (id)alternateArchiveChartTypeAndReturnWriterVersion:(unint64_t *)a3 readerVersion:(unint64_t *)a4 featureID:(id *)a5
{
  if (a3)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v5, v6, v7, "[TSCHChartType alternateArchiveChartTypeAndReturnWriterVersion:readerVersion:featureID:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartType.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 1122, 0, "invalid nil value for '%{public}s'", "outWriterVersion");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
    if (a4)
    {
LABEL_3:
      if (a5)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  v27 = MEMORY[0x277D81150];
  v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v5, v6, v7, "[TSCHChartType alternateArchiveChartTypeAndReturnWriterVersion:readerVersion:featureID:]");
  v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartType.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v34, v35, v36, v37, v28, v33, 1123, 0, "invalid nil value for '%{public}s'", "outReaderVersion");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
  if (a5)
  {
LABEL_4:
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  v42 = MEMORY[0x277D81150];
  v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v5, v6, v7, "[TSCHChartType alternateArchiveChartTypeAndReturnWriterVersion:readerVersion:featureID:]");
  v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, v45, v46, v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartType.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v49, v50, v51, v52, v43, v48, 1124, 0, "invalid nil value for '%{public}s'", "outFeatureID");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54, v55, v56);
  if (a3)
  {
LABEL_5:
    *a3 = 0;
  }

LABEL_6:
  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  return 0;
}

+ (id)chartTypeForUserInterfaceTag:(int64_t)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = objc_msgSend_allChartTypes(a1, a2, 0.0, v3, v4, 0);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, v8, v9, v10, &v21, v25, 16);
  if (v12)
  {
    v16 = *v22;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v6);
        }

        v18 = *(*(&v21 + 1) + 8 * i);
        if (objc_msgSend_userInterfaceTag(v18, v11, v13, v14, v15) == a3)
        {
          v19 = v18;
          goto LABEL_11;
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v11, v13, v14, v15, &v21, v25, 16);
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v19 = 0;
LABEL_11:

  return v19;
}

- (BOOL)supportsStartAngleRotation
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  started = objc_msgSend_supportsStartAngleRotation(v5, v6, v7, v8, v9);

  return started;
}

- (id)seriesWarning
{
  v6 = MEMORY[0x277CCACA8];
  v7 = sub_276360774(v2, v3, v4);
  v12 = objc_msgSend_localizedStringForKey_value_table_(v7, v8, v9, v10, v11, @"A chart can’t have more than %@ series. Try again with fewer selected cells.", &stru_288528678, @"TSCharts");
  v17 = objc_msgSend_maxSeries(self, v13, v14, v15, v16);
  v18 = sub_27624B840(v17);
  v23 = objc_msgSend_stringWithFormat_(v6, v19, v20, v21, v22, v12, v18);

  return v23;
}

- (id)seriesPlotRowsWarning
{
  v6 = MEMORY[0x277CCACA8];
  v7 = sub_276360774(v2, v3, v4);
  v12 = objc_msgSend_localizedStringForKey_value_table_(v7, v8, v9, v10, v11, @"Rows couldn’t be plotted as series. Plotting rows instead of columns would result in more than the maximum of %@ series.", &stru_288528678, @"TSCharts");
  v17 = objc_msgSend_maxSeries(self, v13, v14, v15, v16);
  v18 = sub_27624B840(v17);
  v23 = objc_msgSend_stringWithFormat_(v6, v19, v20, v21, v22, v12, v18);

  return v23;
}

- (id)seriesPlotColumnsWarning
{
  v6 = MEMORY[0x277CCACA8];
  v7 = sub_276360774(v2, v3, v4);
  v12 = objc_msgSend_localizedStringForKey_value_table_(v7, v8, v9, v10, v11, @"Columns couldn’t be plotted as series. Plotting columns instead of rows would result in more than the maximum of %@ series.", &stru_288528678, @"TSCharts");
  v17 = objc_msgSend_maxSeries(self, v13, v14, v15, v16);
  v18 = sub_27624B840(v17);
  v23 = objc_msgSend_stringWithFormat_(v6, v19, v20, v21, v22, v12, v18);

  return v23;
}

- (id)cellsCreatedWarning
{
  v6 = MEMORY[0x277CCACA8];
  v7 = sub_276360774(v2, v3, v4);
  v12 = objc_msgSend_localizedStringForKey_value_table_(v7, v8, v9, v10, v11, @"A chart can’t be created with more than %@ references in a series. Try again with fewer selected cells.", &stru_288528678, @"TSCharts");
  v17 = objc_msgSend_maxCellsForInsert(self, v13, v14, v15, v16);
  v18 = sub_27624B840(v17);
  v23 = objc_msgSend_stringWithFormat_(v6, v19, v20, v21, v22, v12, v18);

  return v23;
}

- (id)cellsAddedWarning
{
  v6 = MEMORY[0x277CCACA8];
  v7 = sub_276360774(v2, v3, v4);
  v12 = objc_msgSend_localizedStringForKey_value_table_(v7, v8, v9, v10, v11, @"A chart can’t have more than %@ references in a series.", &stru_288528678, @"TSCharts");
  v17 = objc_msgSend_maxCellsForAdding(self, v13, v14, v15, v16);
  v18 = sub_27624B840(v17);
  v23 = objc_msgSend_stringWithFormat_(v6, v19, v20, v21, v22, v12, v18);

  return v23;
}

- (id)g_genericToSpecificPropertyMapPie
{
  if (qword_280A47330 != -1)
  {
    sub_2764A7834();
  }

  v3 = qword_280A47328;

  return v3;
}

- (id)g_genericToSpecificPropertyMapDonut
{
  if (qword_280A47340 != -1)
  {
    sub_2764A7848();
  }

  v3 = qword_280A47338;

  return v3;
}

- (id)g_genericToSpecificPropertyMapBar
{
  if (qword_280A47350 != -1)
  {
    sub_2764A785C();
  }

  v3 = qword_280A47348;

  return v3;
}

- (id)g_genericToSpecificPropertyMapColumn
{
  if (qword_280A47360 != -1)
  {
    sub_2764A7870();
  }

  v3 = qword_280A47358;

  return v3;
}

- (id)g_genericToSpecificPropertyMapArea
{
  if (qword_280A47370 != -1)
  {
    sub_2764A7884();
  }

  v3 = qword_280A47368;

  return v3;
}

- (id)g_genericToSpecificPropertyMapLine
{
  if (qword_280A47380 != -1)
  {
    sub_2764A7898();
  }

  v3 = qword_280A47378;

  return v3;
}

- (id)g_genericToSpecificPropertyMapScatter
{
  if (qword_280A47390 != -1)
  {
    sub_2764A78AC();
  }

  v3 = qword_280A47388;

  return v3;
}

- (id)g_genericToSpecificPropertyMapStackedColumn
{
  if (qword_280A473A0 != -1)
  {
    sub_2764A78C0();
  }

  v3 = qword_280A47398;

  return v3;
}

- (id)g_genericToSpecificPropertyMapStackedBar
{
  if (qword_280A473B0 != -1)
  {
    sub_2764A78D4();
  }

  v3 = qword_280A473A8;

  return v3;
}

- (id)g_genericToSpecificPropertyMapStackedArea
{
  if (qword_280A473C0 != -1)
  {
    sub_2764A78E8();
  }

  v3 = qword_280A473B8;

  return v3;
}

- (id)g_genericToSpecificPropertyMapMixed
{
  if (qword_280A473D0 != -1)
  {
    sub_2764A78FC();
  }

  v3 = qword_280A473C8;

  return v3;
}

- (id)g_genericToSpecificPropertyMapTwoAxis
{
  if (qword_280A473E0 != -1)
  {
    sub_2764A7910();
  }

  v3 = qword_280A473D8;

  return v3;
}

- (id)g_genericToSpecificPropertyMapBubble
{
  if (qword_280A473F0 != -1)
  {
    sub_2764A7924();
  }

  v3 = qword_280A473E8;

  return v3;
}

- (id)g_genericToSpecificPropertyMapRadar
{
  if (qword_280A47400 != -1)
  {
    sub_2764A7938();
  }

  v3 = qword_280A473F8;

  return v3;
}

+ (TSCHChartType)radarChart
{
  if (qword_280A46358 != -1)
  {
    swift_once();
  }

  v3 = qword_280A46410;

  return v3;
}

@end
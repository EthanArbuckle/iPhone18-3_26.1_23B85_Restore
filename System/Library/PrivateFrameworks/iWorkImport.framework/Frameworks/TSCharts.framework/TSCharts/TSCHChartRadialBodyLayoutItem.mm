@interface TSCHChartRadialBodyLayoutItem
- (CGAffineTransform)transformForRenderingElementForSeries:(SEL)series outElementSize:(unint64_t)size outClipRect:(CGSize *)rect withInnerRadius:(CGRect *)radius;
- (CGAffineTransform)transformToMaintainLabelSameDistanceAwayFromWedge:(SEL)wedge wedgeElement:(CGRect)element;
- (CGAffineTransform)transformToShiftStraightLineLabelRectOutForEnableCalloutLineONSetting:(SEL)setting wedgeElement:(CGRect)element;
- (CGPath)pathOfElementForSeries:(unint64_t)series outWedgeCenterPoint:(CGPoint *)point withInnerRadius:(id)radius;
- (CGRect)calcDrawingRect;
- (CGRect)calcOverhangRect;
- (CGRect)calloutLineBoundingBoxForSeries:(unint64_t)series;
- (CGSize)bodySizeForOverhangSize:(CGSize)size;
- (CGSize)overhangSizeForBodySize:(CGSize)size;
- (CGSize)titleSizeToUseForOverlapPreventionWithLabels;
- (NSDictionary)wedgeLayoutInfosInChartCoordinateSpaceForSeriesIndex;
- (TSCHChartPieLabelGeometries)labelGeometriesForRenderingLabelsForSeriesModelCache:(SEL)cache topLabelType:(id)type bottomLabelType:(int64_t)labelType;
- (TSCHChartPieLabelGeometry)labelGeometryForRenderingLabelForSeriesModelCache:(SEL)cache labelType:(id)type;
- (double)normalizedLabelDistanceFromWedgeTipForSeries:(id)series;
- (id)createAndOptimallyPlaceWedgeLayoutInfos;
- (id)createWedgeLayoutInfos;
- (id)defaultPieWedgeElementForSeriesModelCache:(id)cache;
- (id)defaultPieWedgeLayoutInfoForSeriesModelCache:(id)cache pieLabels:(id)labels combinedLabelTransform:(CGAffineTransform *)transform;
- (id)knobsOfElementForSeries:(unint64_t)series withInnerRadius:(id)radius;
- (id)labelStringForType:(int64_t)type seriesModelCache:(id)cache;
- (id)newPathsForRenderingCalloutLineForSeries:(unint64_t)series outStartLineEndPath:(id *)path outEndLineEndPath:(id *)endPath stroke:(id)stroke outStroke:(id *)outStroke context:(CGContext *)context contextScale:(float)scale;
- (id)optimizedWedgeLayoutInfoPlacementForWedgeLayoutInfos:(id)infos;
- (id)pathCacheForSeries:(unint64_t)series withInnerRadius:(id)radius;
- (id)renderersWithRep:(id)rep;
- (id)seriesIndexToWedgeLayoutInfoMapWithWedgeLayoutInfos:(id)infos;
- (id)seriesIndexedPieNormalizedLabelDistancesFromWedgeTips;
- (id)wedgeLayoutInfosInChartCoordinateSpace;
- (void)p_collectMaxRatio:(double *)ratio maxLabelOverhang:(double *)overhang maxWedgeExplosion:(float *)explosion maxComboExplosion:(float *)comboExplosion;
- (void)setLayoutSize:(CGSize)size;
@end

@implementation TSCHChartRadialBodyLayoutItem

- (id)seriesIndexedPieNormalizedLabelDistancesFromWedgeTips
{
  v65 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2, v3, v4);
  v59 = objc_msgSend_model(self, v7, v8, v9, v10);
  objc_msgSend_seriesList(v59, v11, v12, v13, v14);
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v58 = v63 = 0u;
  v18 = objc_msgSend_reverseObjectEnumerator(v58, v15, 0.0, v16, v17);
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, v20, v21, v22, &v60, v64, 16);
  if (v23)
  {
    v28 = v23;
    v29 = *v61;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v61 != v29)
        {
          objc_enumerationMutation(v18);
        }

        v31 = *(*(&v60 + 1) + 8 * i);
        objc_msgSend_normalizedLabelDistanceFromWedgeTipForSeries_(self, v24, v25, v26, v27, v31);
        v36 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v32, v33, v34, v35);
        v37 = MEMORY[0x277CCABB0];
        v42 = objc_msgSend_seriesIndex(v31, v38, v39, v40, v41);
        v47 = objc_msgSend_numberWithUnsignedInteger_(v37, v43, v44, v45, v46, v42);
        objc_msgSend_setObject_forKey_(v6, v48, v49, v50, v51, v36, v47);
      }

      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v24, v25, v26, v27, &v60, v64, 16);
    }

    while (v28);
  }

  v56 = objc_msgSend_copy(v6, v52, v53, v54, v55);

  return v56;
}

- (double)normalizedLabelDistanceFromWedgeTipForSeries:(id)series
{
  v7 = objc_msgSend_seriesIndex(series, a2, v3, v4, v5);
  v12 = objc_msgSend_model(self, v8, v9, v10, v11);
  v17 = objc_msgSend_pieSeriesModelCacheForSeries_(v12, v13, v14, v15, v16, v7);

  v22 = objc_msgSend_wedgeLayoutInfosInChartCoordinateSpaceForSeriesIndex(self, v18, v19, v20, v21);
  v27 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v23, v24, v25, v26, v7);
  v32 = objc_msgSend_objectForKeyedSubscript_(v22, v28, v29, v30, v31, v27);

  v37 = objc_msgSend_wedgeElement(v32, v33, v34, v35, v36);
  objc_msgSend_pointAtWedgeTipInChartCoordinateSpace(v37, v38, v39, v40, v41);
  v43 = v42;
  v45 = v44;

  objc_msgSend_combinedLabelRectMidpointInChartCoordinateSpace(v32, v46, v47, v48, v49);
  v51 = v50;
  objc_msgSend_combinedLabelRectMidpointInChartCoordinateSpace(v32, v52, v50, v53, v54);
  v56 = v55;
  v60 = objc_msgSend_chartInfo(self, v57, v58, v55, v59);
  LODWORD(v37) = objc_msgSend_intValueForProperty_defaultValue_(v60, v61, v62, v63, v64, 1081, 1);

  if (v37 == 1)
  {
    v69 = vabdd_f64(v45, v56);
    v70 = vabdd_f64(v43, v51);
    if (v70 >= v69)
    {
      v71 = v70;
    }

    else
    {
      v71 = v69;
    }
  }

  else
  {
    objc_msgSend_combinedLabelDistanceFromWedgeTip(v32, v65, v66, v67, v68);
    v71 = v69;
  }

  v72 = objc_msgSend_wedgeElement(v32, v65, v69, v70, v68);
  objc_msgSend_radius(v72, v73, v74, v75, v76);
  v78 = v71 / v77;

  if ((*&v78 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    objc_msgSend_effectiveLabelExplosion(v17, v79, v80, v81, v82);
    v78 = v83 * 0.01;
  }

  return v78;
}

- (id)wedgeLayoutInfosInChartCoordinateSpace
{
  v44 = *MEMORY[0x277D85DE8];
  objc_msgSend_rootedLayoutRect(self, a2, v2, v3, v4);
  v10 = objc_msgSend_array(MEMORY[0x277CBEB18], v6, v7, v8, v9);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v11 = self->_wedgeLayoutInfosInLocalSpace;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, v13, v14, v15, &v39, v43, 16);
  if (v16)
  {
    v17 = v16;
    TSUCenterOfRect();
    v22 = v19;
    v23 = v20;
    v24 = *v40;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v40 != v24)
        {
          objc_enumerationMutation(v11);
        }

        v26 = objc_msgSend_copy(*(*(&v39 + 1) + 8 * i), v18, v19, v20, v21, v39);
        objc_msgSend_updateToUseChartCoordinateSpaceWithChartBodyCenterPoint_(v26, v27, v22, v23, v28);
        objc_msgSend_addObject_(v10, v29, v30, v31, v32, v26);
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v18, v19, v20, v21, &v39, v43, 16);
    }

    while (v17);
  }

  v37 = objc_msgSend_copy(v10, v33, v34, v35, v36);

  return v37;
}

- (NSDictionary)wedgeLayoutInfosInChartCoordinateSpaceForSeriesIndex
{
  v6 = objc_msgSend_wedgeLayoutInfosInChartCoordinateSpace(self, a2, v2, v3, v4);
  v11 = objc_msgSend_seriesIndexToWedgeLayoutInfoMapWithWedgeLayoutInfos_(self, v7, v8, v9, v10, v6);

  return v11;
}

- (id)seriesIndexToWedgeLayoutInfoMapWithWedgeLayoutInfos:(id)infos
{
  v54 = *MEMORY[0x277D85DE8];
  infosCopy = infos;
  v8 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v4, v5, v6, v7);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v9 = infosCopy;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, v11, v12, v13, &v49, v53, 16);
  if (v14)
  {
    v19 = v14;
    v20 = *v50;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v50 != v20)
        {
          objc_enumerationMutation(v9);
        }

        v22 = *(*(&v49 + 1) + 8 * i);
        v23 = objc_msgSend_wedgeElement(v22, v15, v16, v17, v18, v49);
        v28 = objc_msgSend_series(v23, v24, v25, v26, v27);
        v33 = objc_msgSend_seriesIndex(v28, v29, v30, v31, v32);

        v38 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v34, v35, v36, v37, v33);
        objc_msgSend_setObject_forKeyedSubscript_(v8, v39, v40, v41, v42, v22, v38);
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v15, v16, v17, v18, &v49, v53, 16);
    }

    while (v19);
  }

  v47 = objc_msgSend_copy(v8, v43, v44, v45, v46);

  return v47;
}

- (id)createAndOptimallyPlaceWedgeLayoutInfos
{
  v6 = objc_msgSend_createWedgeLayoutInfos(self, a2, v2, v3, v4);
  v11 = objc_msgSend_optimizedWedgeLayoutInfoPlacementForWedgeLayoutInfos_(self, v7, v8, v9, v10, v6);

  return v11;
}

- (id)createWedgeLayoutInfos
{
  v249 = *MEMORY[0x277D85DE8];
  v197 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4);
  v10 = objc_msgSend_array(MEMORY[0x277CBEB18], v6, v7, v8, v9);
  v15 = objc_msgSend_model(self, v11, v12, v13, v14);
  v20 = objc_msgSend_seriesList(v15, v16, v17, v18, v19);

  v242 = 0u;
  v243 = 0u;
  v240 = 0u;
  v241 = 0u;
  v196 = v20;
  v24 = objc_msgSend_reverseObjectEnumerator(v20, v21, 0.0, v22, v23);
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, v26, v27, v28, &v240, v248, 16);
  if (v29)
  {
    v34 = v29;
    v35 = *v241;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v241 != v35)
        {
          objc_enumerationMutation(v24);
        }

        v37 = *(*(&v240 + 1) + 8 * i);
        v38 = objc_msgSend_model(self, v30, v31, v32, v33);
        v43 = objc_msgSend_seriesIndex(v37, v39, v40, v41, v42);
        v48 = objc_msgSend_pieSeriesModelCacheForSeries_(v38, v44, v45, v46, v47, v43);

        objc_msgSend_insertObject_atIndex_(v10, v49, v50, v51, v52, v48, 0);
      }

      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v30, v31, v32, v33, &v240, v248, 16);
    }

    while (v34);
  }

  v238 = 0u;
  v239 = 0u;
  v236 = 0u;
  v237 = 0u;
  obj = v10;
  v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v53, v54, v55, v56, &v236, v247, 16);
  if (v57)
  {
    v62 = v57;
    v63 = *v237;
    v198 = *v237;
    do
    {
      v64 = 0;
      do
      {
        if (*v237 != v63)
        {
          objc_enumerationMutation(obj);
        }

        v65 = *(*(&v236 + 1) + 8 * v64);
        if (objc_msgSend_shouldRenderLabel(v65, v58, v59, v60, v61))
        {
          v66 = objc_msgSend_seriesIndex(v65, v58, v59, v60, v61);
          v71 = objc_msgSend_model(self, v67, v68, v69, v70);
          v76 = objc_msgSend_seriesAtIndex_(v71, v72, v73, v74, v75, v66);

          v81 = objc_msgSend_intValueForProperty_defaultValue_(v76, v77, v78, v79, v80, 1181, 0);
          v86 = objc_msgSend_intValueForProperty_defaultValue_(v76, v82, v83, v84, v85, 1178, 0);
          v89 = *(MEMORY[0x277CBF2C0] + 16);
          *&v235.a = *MEMORY[0x277CBF2C0];
          *&v235.c = v89;
          *&v235.tx = *(MEMORY[0x277CBF2C0] + 32);
          if (v81)
          {
            v90 = v86 == 0;
          }

          else
          {
            v90 = 1;
          }

          if (!v90)
          {
            v233 = 0u;
            v234 = 0u;
            v231 = 0;
            v232 = 0;
            v230 = 0u;
            memset(&v229, 0, sizeof(v229));
            v227 = 0u;
            v228 = 0u;
            v225 = 0;
            v226 = 0;
            v224 = 0u;
            memset(&v223, 0, sizeof(v223));
            objc_msgSend_labelGeometriesForRenderingLabelsForSeriesModelCache_topLabelType_bottomLabelType_(self, v87, 0.0, *&v89, v88, v65, 0, 1);
            v222 = v223;
            v103 = v225;
            y = v225.y;
            x = v225.x;
            v104 = v226;
            height = v226.height;
            width = v226.width;
            v214 = *&v227;
            v215 = v224;
            v213 = *(&v227 + 1);
            v211 = *(&v224 + 1);
            v105 = v228;
            *&v216 = v105 >> 64;
            *&v212 = v105;
            v107 = objc_msgSend_labelStringForType_seriesModelCache_(self, v106, *(&v228 + 1), *&v224, *(&v224 + 1), 0, v65);
            v221 = v222;
            v251.origin = v103;
            v251.size = v104;
            v252 = CGRectApplyAffineTransform(v251, &v221);
            v108 = v252.origin.x;
            v109 = v252.origin.y;
            v110 = v252.size.width;
            v111 = v252.size.height;
            v221 = v229;
            v112 = v231;
            v113 = v232;
            v199 = v232.height;
            v200 = v231.x;
            v208 = *&v233;
            v209 = v230;
            v207 = *(&v233 + 1);
            v205 = *(&v230 + 1);
            v114 = v234;
            *&v210 = v114 >> 64;
            *&v206 = v114;
            v116 = objc_msgSend_labelStringForType_seriesModelCache_(self, v115, *(&v234 + 1), *&v230, v252.size.width, 1, v65);
            v220 = v221;
            v253.origin = v112;
            v253.size = v113;
            v254 = CGRectApplyAffineTransform(v253, &v220);
            v117 = v254.origin.x;
            v118 = v254.origin.y;
            v256.size.width = v254.size.width;
            v256.size.height = v254.size.height;
            v254.origin.x = v108;
            v254.origin.y = v109;
            v254.size.width = v110;
            v254.size.height = v111;
            v256.origin.x = v117;
            v256.origin.y = v118;
            v255 = CGRectUnion(v254, v256);
            v119 = v255.origin.x;
            v120 = v255.origin.y;
            TSUSubtractPoints();
            memset(&v220, 0, sizeof(v220));
            CGAffineTransformMakeTranslation(&v220, v121, v122);
            TSUSubtractPoints();
            memset(&v219, 0, sizeof(v219));
            CGAffineTransformMakeTranslation(&v219, v123, v124);
            v125 = [TSCHChartPieLabel alloc];
            v218 = v220;
            v127 = objc_msgSend_initWithRect_erasableFrame_size_transform_title_(v125, v126, x, y, width, &v218, v107, height, v214, v213, v212, v216, v215, v211);
            v128 = [TSCHChartPieLabel alloc];
            v218 = v219;
            v130 = objc_msgSend_initWithRect_erasableFrame_size_transform_title_(v128, v129, v200, v112.y, v113.width, &v218, v116, v199, v208, v207, v206, v210, v209, v205);
            v246[0] = v127;
            v246[1] = v130;
            v135 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v131, v132, v133, v134, v246, 2);
            CGAffineTransformMakeTranslation(&v235, v119, v120);

            if (!v135)
            {
LABEL_22:
              v140 = MEMORY[0x277D81150];
              v141 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v136, v137, v138, v139, "[TSCHChartRadialBodyLayoutItem createWedgeLayoutInfos]");
              v146 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v142, v143, v144, v145, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRadialBodyLayoutItem.m");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v140, v147, v148, v149, v150, v141, v146, 198, 0, "Invalid array value");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v151, v152, v153, v154);
            }

LABEL_23:
            v223 = v235;
            if (CGAffineTransformIsIdentity(&v223))
            {
              v159 = MEMORY[0x277D81150];
              v160 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v155, v156, v157, v158, "[TSCHChartRadialBodyLayoutItem createWedgeLayoutInfos]");
              v165 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v161, v162, v163, v164, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRadialBodyLayoutItem.m");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v159, v166, v167, v168, v169, v160, v165, 199, 0, "Invalid transform value");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v170, v171, v172, v173);
            }

            v223 = v235;
            v175 = objc_msgSend_defaultPieWedgeLayoutInfoForSeriesModelCache_pieLabels_combinedLabelTransform_(self, v155, v235.tx, v235.c, v158, v65, v135, &v223);
            if (v175)
            {
              objc_msgSend_addObject_(v197, v174, v176, v177, v178, v175);
            }

            v63 = v198;
LABEL_28:

            goto LABEL_29;
          }

          if (v81)
          {
            v227 = 0u;
            v228 = 0u;
            v225 = 0;
            v226 = 0;
            v224 = 0u;
            memset(&v223, 0, sizeof(v223));
            objc_msgSend_labelGeometryForRenderingLabelForSeriesModelCache_labelType_(self, v87, 0.0, *&v89, v88, v65, 1);
            v95 = objc_msgSend_labelStringForType_seriesModelCache_(self, v91, v92, v93, v94, 1, v65);
            memset(&v222, 0, sizeof(v222));
            CGAffineTransformMakeTranslation(&v222, 0.0, 0.0);
            v96 = [TSCHChartPieLabel alloc];
            v221 = v222;
            v98 = objc_msgSend_initWithRect_erasableFrame_size_transform_title_(v96, v97, v225.x, v225.y, v226.width, &v221, v95, v226.height, v227, v228, v224);
            v245 = v98;
            objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v99, v100, v101, v102, &v245, 1);
          }

          else
          {
            if (!v86)
            {
              goto LABEL_28;
            }

            v227 = 0u;
            v228 = 0u;
            v225 = 0;
            v226 = 0;
            v224 = 0u;
            memset(&v223, 0, sizeof(v223));
            objc_msgSend_labelGeometryForRenderingLabelForSeriesModelCache_labelType_(self, v87, 0.0, *&v89, v88, v65, 0);
            v95 = objc_msgSend_labelStringForType_seriesModelCache_(self, v179, v180, v181, v182, 0, v65);
            memset(&v222, 0, sizeof(v222));
            CGAffineTransformMakeTranslation(&v222, 0.0, 0.0);
            v183 = [TSCHChartPieLabel alloc];
            v221 = v222;
            v98 = objc_msgSend_initWithRect_erasableFrame_size_transform_title_(v183, v184, v225.x, v225.y, v226.width, &v221, v95, v226.height, v227, v228, v224);
            v244 = v98;
            objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v185, v186, v187, v188, &v244, 1);
          }
          v135 = ;
          v235 = v223;

          if (!v135)
          {
            goto LABEL_22;
          }

          goto LABEL_23;
        }

LABEL_29:
        ++v64;
      }

      while (v62 != v64);
      v189 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v58, v59, v60, v61, &v236, v247, 16);
      v62 = v189;
    }

    while (v189);
  }

  v194 = objc_msgSend_copy(v197, v190, v191, v192, v193);

  return v194;
}

- (id)optimizedWedgeLayoutInfoPlacementForWedgeLayoutInfos:(id)infos
{
  infosCopy = infos;
  v9 = objc_msgSend_chartInfo(self, v5, v6, v7, v8);
  v14 = objc_msgSend_chartType(v9, v10, v11, v12, v13);
  v19 = objc_msgSend_supportsPlaceTitleAtCenter(v14, v15, v16, v17, v18);

  if (!v19)
  {
    if (objc_msgSend_count(infosCopy, v20, v21, v22, v23) > 1)
    {
      v45 = 0;
      goto LABEL_14;
    }

LABEL_16:
    v70 = infosCopy;
    v75 = objc_msgSend_copy(v70, v71, v72, v73, v74);
    goto LABEL_22;
  }

  v24 = objc_msgSend_chartInfo(self, v20, v21, v22, v23);
  v29 = objc_msgSend_intValueForProperty_defaultValue_(v24, v25, v26, v27, v28, 1100, 1);

  v34 = objc_msgSend_chartInfo(self, v30, v31, v32, v33);
  v39 = objc_msgSend_intValueForProperty_defaultValue_(v34, v35, v36, v37, v38, 1114, 0);

  if (v29)
  {
    v44 = v39 == 0;
  }

  else
  {
    v44 = 1;
  }

  v45 = !v44;
  if (objc_msgSend_count(infosCopy, v40, v41, v42, v43) > 1)
  {
    goto LABEL_14;
  }

  if (!v45 || !objc_msgSend_count(infosCopy, v46, v47, v48, v49))
  {
    goto LABEL_16;
  }

  v45 = 1;
LABEL_14:
  v50 = objc_msgSend_chartInfo(self, v46, v47, v48, v49);
  v55 = objc_msgSend_intValueForProperty_defaultValue_(v50, v51, v52, v53, v54, 1081, 1);

  if (v55 == 1)
  {
    v60 = [TSCHChartPieBendedLineLabelPlacement alloc];
    v65 = objc_msgSend_initWithArrayOfWedgeLayoutInfos_(v60, v61, v62, v63, v64, infosCopy);
  }

  else
  {
    v76 = *MEMORY[0x277CBF398];
    v77 = *(MEMORY[0x277CBF398] + 8);
    v78 = *(MEMORY[0x277CBF398] + 16);
    v79 = *(MEMORY[0x277CBF398] + 24);
    if (v45)
    {
      objc_msgSend_titleSizeToUseForOverlapPreventionWithLabels(self, v56, v57, v58, v59);
      if ((TSUSizeIsEmpty() & 1) == 0)
      {
        v84 = objc_msgSend_firstObject(infosCopy, v80, v81, v82, v83);
        v89 = objc_msgSend_wedgeElement(v84, v85, v86, v87, v88);
        objc_msgSend_centerPoint(v89, v90, v91, v92, v93);

        TSURectWithCenterAndSize();
        v76 = v94;
        v77 = v95;
        v78 = v96;
        v79 = v97;
      }
    }

    v98 = [TSCHChartPieStraightLineLabelPlacement alloc];
    v65 = objc_msgSend_initWithArrayOfWedgeLayoutInfos_titleRectInWedgeElementSpace_(v98, v99, v76, v77, v78, infosCopy, v79);
  }

  v100 = v65;
  v70 = objc_msgSend_updateLabelTransformsToPreventOverlap(v65, v66, v67, v68, v69);

  v75 = objc_msgSend_copy(v70, v101, v102, v103, v104);
LABEL_22:
  v105 = v75;

  return v105;
}

- (CGSize)titleSizeToUseForOverlapPreventionWithLabels
{
  v6 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
  v11 = objc_msgSend_objectValueForProperty_(v6, v7, v8, v9, v10, 1124);

  v16 = objc_msgSend_chartInfo(self, v12, v13, v14, v15);
  v21 = objc_msgSend_intValueForProperty_defaultValue_(v16, v17, v18, v19, v20, 1126, 0);

  v26 = objc_msgSend_chartInfo(self, v22, v23, v24, v25);
  v31 = objc_msgSend_paragraphStyleAtIndex_(v26, v27, v28, v29, v30, v21);

  v36 = objc_msgSend_chartInfo(self, v32, v33, v34, v35);
  v41 = objc_msgSend_model(v36, v37, v38, v39, v40);
  objc_msgSend_rootedLayoutRect(self, v42, v43, v44, v45);
  objc_msgSend_bodySizeWithMinimumWedgeExplosionWithChartModel_bodySize_(TSCHStyleUtilities, v46, v47, v48, v47, v41);
  v50 = v49;

  v55 = objc_msgSend_chartInfo(self, v51, v52, v53, v54);
  objc_msgSend_defaultInnerRadiusPercentage(TSCHStyleUtilities, v56, v57, v58, v59);
  objc_msgSend_floatValueForProperty_defaultValue_(v55, v60, v61, v62, v63, 1103);
  v65 = v64;

  v66 = v50 * v65;
  v71 = objc_msgSend_sharedInteriorWrappingText(TSCHText, v67, v68, v69, v70);
  v75 = objc_msgSend_placeTitleAtCenterPropertiesForWrapWidth_(TSCHTextLayoutProperties, v72, v66, v73, v74);
  v90 = 0u;
  memset(&v89, 0, sizeof(v89));
  objc_msgSend_initializeTextLayoutResults(TSCHText, v76, 0.0, v77, v78);
  objc_msgSend_measureText_paragraphStyle_wrapWidth_outErasableFrame_layoutProperties_outTextLayoutResults_(v71, v79, v66, v80, v81, v11, v31, 0, v75, &v89);
  width = v82;
  height = v84;
  size = v89.size;
  if (!CGRectIsNull(v89))
  {
    height = size.height;
    width = size.width;
  }

  v87 = width;
  v88 = height;
  result.height = v88;
  result.width = v87;
  return result;
}

- (void)setLayoutSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7 = objc_msgSend_chartInfo(self, a2, size.width, size.height, v3);
  objc_msgSend_minimumChartBodySize(v7, v8, v9, v10, v11);
  v13 = v12;
  v15 = v14;

  if (width >= v13)
  {
    v16 = width;
  }

  else
  {
    v16 = v13;
  }

  if (height >= v15)
  {
    v17 = height;
  }

  else
  {
    v17 = v15;
  }

  v18 = v16 == v17;
  v19 = vabdd_f64(v16, v17);
  if (v16 >= v17)
  {
    v20 = v17;
  }

  else
  {
    v20 = v16;
  }

  if (v19 < 0.00999999978)
  {
    v18 = 1;
  }

  if (!v18)
  {
    v16 = v20;
    v17 = v20;
  }

  v21.receiver = self;
  v21.super_class = TSCHChartRadialBodyLayoutItem;
  [(TSCHChartLayoutItem *)&v21 setLayoutSize:v16, v17];
}

- (void)p_collectMaxRatio:(double *)ratio maxLabelOverhang:(double *)overhang maxWedgeExplosion:(float *)explosion maxComboExplosion:(float *)comboExplosion
{
  v140 = *MEMORY[0x277D85DE8];
  v132 = objc_msgSend_model(self, a2, v6, v7, v8);
  v14 = objc_msgSend_seriesList(v132, v10, v11, v12, v13);
  x = *MEMORY[0x277CBF3A0];
  y = *(MEMORY[0x277CBF3A0] + 8);
  width = *(MEMORY[0x277CBF3A0] + 16);
  height = *(MEMORY[0x277CBF3A0] + 24);
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v124 = v14;
  obj = objc_msgSend_reverseObjectEnumerator(v14, v19, 0.0, v20, v21);
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, v23, v24, v25, &v135, v139, 16);
  if (v26)
  {
    v29 = v26;
    v30 = *v136;
    v31 = *MEMORY[0x277CBF348];
    v130 = 0.0;
    v32 = 0.0;
    v129 = 0.0;
    v33 = 0.0;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v136 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v35 = *(*(&v135 + 1) + 8 * i);
        v36 = objc_msgSend_seriesIndex(v35, v27, v32, v31, v28);
        v41 = objc_msgSend_pieSeriesModelCacheForSeries_(v132, v37, v38, v39, v40, v36);
        v46 = objc_msgSend_wedgeLayoutInfosInChartCoordinateSpaceForSeriesIndex(self, v42, v43, v44, v45);
        v51 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v47, v48, v49, v50, v36);
        v56 = objc_msgSend_objectForKeyedSubscript_(v46, v52, v53, v54, v55, v51);

        if (v41)
        {
          objc_msgSend_percentage(v41, v57, v58, v59, v60);
          v61 = v58 <= 0.0;
        }

        else
        {
          v61 = 1;
        }

        v62 = objc_msgSend_labelString(v41, v57, v58, v59, v60);
        if ((objc_msgSend_nullData(v41, v63, v64, v65, v66) & 1) == 0 && !v61)
        {
          objc_msgSend_effectiveWedgeExplosion(v41, v67, v68, v69, v70);
          v75 = *&v72;
          if (v33 < *&v72)
          {
            v33 = *&v72;
          }

          if (objc_msgSend_length(v62, v71, v72, v73, v74))
          {
            v78 = *(MEMORY[0x277CBF398] + 16);
            v134.origin = *MEMORY[0x277CBF398];
            v134.size = v78;
            v79 = objc_msgSend_sharedText(TSCHText, v76, v134.origin.x, v78.width, v77);
            v84 = objc_msgSend_paragraphStyle(v41, v80, v81, v82, v83);
            objc_msgSend_measureText_paragraphStyle_outErasableFrame_(v79, v85, v86, v87, v88, v62, v84, &v134);

            if (v56)
            {
              objc_msgSend_combinedLabelErasableFrameInChartCoordinateSpace(v56, v89, v90, v91, v92);
              v134.origin.x = v93;
              v134.origin.y = v94;
              v134.size.width = v95;
              v134.size.height = v96;
              objc_msgSend_combinedLabelRectInChartCoordinateSpace(v56, v97, v93, v94, v95);
            }

            if ((TSUNearlyEqualSizes() & 1) == 0 && !CGRectIsNull(v134))
            {
              objc_msgSend_normalizedLabelDistanceFromWedgeTipForSeries_(self, v98, v99, v100, v101, v35);
              r1 = height;
              v103 = v102;
              objc_msgSend_layoutSettings(self, v104, v102, v105, v106);
              v109 = 0.0;
              if (!v133)
              {
                v109 = v103;
              }

              v110 = v109 + v75;
              v111 = v130;
              v112 = v130;
              if (v110 > v130)
              {
                v111 = v110;
              }

              v130 = v111;
              *&v108 = v110;
              objc_msgSend_midAngle(v41, v107, v110, v112, v108);
              v114 = __sincos_stret(v113);
              v115 = fabs(v114.__cosval);
              if (v129 >= v115)
              {
                v115 = v129;
              }

              v116 = fabs(v114.__sinval);
              if (v115 >= v116)
              {
                v116 = v115;
              }

              v129 = v116;
              TSURectWithCenterAndSize();
              v145.origin.x = v117;
              v145.origin.y = v118;
              v145.size.width = v119;
              v145.size.height = v120;
              v141.origin.x = x;
              v141.origin.y = y;
              v141.size.width = width;
              v141.size.height = r1;
              v142 = CGRectUnion(v141, v145);
              x = v142.origin.x;
              y = v142.origin.y;
              width = v142.size.width;
              height = v142.size.height;
            }
          }
        }
      }

      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, v32, v31, v28, &v135, v139, 16);
    }

    while (v29);
  }

  else
  {
    v130 = 0.0;
    v129 = 0.0;
    v33 = 0.0;
  }

  v143.origin.x = x;
  v143.origin.y = y;
  v143.size.width = width;
  v143.size.height = height;
  v121 = CGRectGetWidth(v143);
  v144.origin.x = x;
  v144.origin.y = y;
  v144.size.width = width;
  v144.size.height = height;
  v122 = CGRectGetHeight(v144);
  if (v121 >= v122)
  {
    v122 = v121;
  }

  if (ratio)
  {
    *ratio = v129;
  }

  if (overhang)
  {
    *overhang = v122 * 0.5;
  }

  if (explosion)
  {
    *explosion = v33;
  }

  if (comboExplosion)
  {
    *comboExplosion = v130;
  }
}

- (CGSize)bodySizeForOverhangSize:(CGSize)size
{
  if (size.width >= size.height)
  {
    size.width = size.height;
  }

  v25 = 0.0;
  v26 = 1.0;
  v5 = size.width * 0.5;
  v24 = 0;
  objc_msgSend_p_collectMaxRatio_maxLabelOverhang_maxWedgeExplosion_maxComboExplosion_(self, a2, size.width, 0.5, v3, &v26, &v25, &v24 + 4, &v24);
  v7 = *(&v24 + 1) + 1.0;
  v8 = v5 / v7;
  v9 = *&v24;
  if (*&v24 > 0.001)
  {
    if (v9 < 0.001)
    {
      v9 = 0.001;
    }

    v9 = (v5 - v25) / (v9 * v26);
    if (v8 >= v9)
    {
      v8 = v9;
    }
  }

  v10 = v7 * v8;
  v11 = v10 + v10;
  v12 = objc_msgSend_chartInfo(self, v6, v10, v8, v9);
  objc_msgSend_minimumChartBodySize(v12, v13, v14, v15, v16);
  v18 = v17;
  v20 = v19;

  if (v11 >= v18)
  {
    v21 = v11;
  }

  else
  {
    v21 = v18;
  }

  if (v11 >= v20)
  {
    v22 = v11;
  }

  else
  {
    v22 = v20;
  }

  if (v21 >= v22)
  {
    v21 = v22;
  }

  v23 = v21;
  result.height = v23;
  result.width = v21;
  return result;
}

- (CGSize)overhangSizeForBodySize:(CGSize)size
{
  width = size.width;
  v12 = 0.0;
  v13 = 1.0;
  v11 = 0;
  objc_msgSend_p_collectMaxRatio_maxLabelOverhang_maxWedgeExplosion_maxComboExplosion_(self, a2, size.width, size.height, v3, &v13, &v12, &v11 + 4, &v11);
  v5 = *(&v11 + 1) + 1.0;
  v6 = width * 0.5 / v5;
  v7 = v5 * v6;
  v8 = v12 + v13 * v6 * *&v11;
  if (v7 >= v8)
  {
    v8 = v7;
  }

  v9 = v8 + v8;
  v10 = v9;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGRect)calcOverhangRect
{
  objc_msgSend_layoutRect(self, a2, v2, v3, v4);
  v7 = v6;
  v9 = v8;
  objc_msgSend_layoutSettings(self, v10, v11, v12, v6);
  if (v30)
  {
    objc_msgSend_createWedgeLayoutInfos(self, v13, v14, v15, v16);
  }

  else
  {
    objc_msgSend_createAndOptimallyPlaceWedgeLayoutInfos(self, v13, v14, v15, v16);
  }
  v17 = ;
  v22 = objc_msgSend_copy(v17, v18, v19, v20, v21);
  wedgeLayoutInfosInLocalSpace = self->_wedgeLayoutInfosInLocalSpace;
  self->_wedgeLayoutInfosInLocalSpace = v22;

  objc_msgSend_overhangSizeForBodySize_(self, v24, v7, v9, v25);
  TSUCenterOfRect();
  TSURectWithCenterAndSize();
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (CGRect)calcDrawingRect
{
  v152 = *MEMORY[0x277D85DE8];
  objc_msgSend_rootedLayoutRect(self, a2, v2, v3, v4);
  x = v6;
  y = v8;
  width = v10;
  height = v12;
  v15 = objc_msgSend_model(self, v14, v6, v8, v10);
  v20 = objc_msgSend_groupedShadowsForChartModel_(TSCHStyleUtilities, v16, v17, v18, v19, v15);

  v136 = height;
  v137 = width;
  v138 = y;
  v139 = x;
  if (v20)
  {
    v25 = objc_msgSend_model(self, v21, v22, v23, v24);
    if (objc_msgSend_numberOfSeries(v25, v26, v27, v28, v29))
    {
      v34 = objc_msgSend_model(self, v30, v31, v32, v33);
      v39 = objc_msgSend_seriesAtIndex_(v34, v35, v36, v37, v38, 0);
    }

    else
    {
      v39 = 0;
    }

    v44 = objc_msgSend_objectValueForProperty_(v39, v40, v41, v42, v43, 1172);
    if (objc_msgSend_hasShadow_(TSCHStyleUtilities, v45, v46, v47, v48, v44))
    {
      objc_msgSend_shadowBoundsForRect_(v44, v49, x, y, width, height);
      v163.origin.x = v50;
      v163.origin.y = v51;
      v163.size.width = v52;
      v163.size.height = v53;
      v153.origin.x = x;
      v153.origin.y = y;
      v153.size.width = width;
      v153.size.height = height;
      v154 = CGRectUnion(v153, v163);
      x = v154.origin.x;
      y = v154.origin.y;
      width = v154.size.width;
      height = v154.size.height;
    }
  }

  v54 = objc_msgSend_model(self, v21, v22, v23, v24);
  v59 = objc_msgSend_seriesList(v54, v55, v56, v57, v58);

  v64 = objc_msgSend_model(self, v60, v61, v62, v63);
  v69 = objc_msgSend_seriesList(v64, v65, v66, v67, v68);
  v74 = objc_msgSend_lastObject(v69, v70, v71, v72, v73);
  v79 = objc_msgSend_seriesType(v74, v75, v76, v77, v78);
  v84 = objc_msgSend_elementBuilder(v79, v80, v81, v82, v83);

  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v135 = v59;
  obj = objc_msgSend_reverseObjectEnumerator(v59, v85, 0.0, v86, v87);
  v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v88, v89, v90, v91, &v147, v151, 16);
  if (v92)
  {
    v95 = v92;
    v96 = *v148;
    v98 = *MEMORY[0x277CBF398];
    v97 = *(MEMORY[0x277CBF398] + 16);
    v141 = v97;
    v142 = *MEMORY[0x277CBF398];
    do
    {
      for (i = 0; i != v95; ++i)
      {
        if (*v148 != v96)
        {
          objc_enumerationMutation(obj);
        }

        v100 = *(*(&v147 + 1) + 8 * i);
        if ((v20 & 1) == 0)
        {
          v101 = objc_msgSend_objectValueForProperty_(*(*(&v147 + 1) + 8 * i), v93, *&v97, *&v98, v94, 1172);
          if (objc_msgSend_hasShadow_(TSCHStyleUtilities, v102, v103, v104, v105, v101))
          {
            objc_msgSend_shadowBoundsForRect_(v101, v106, v139, v138, v137, v136);
            v164.origin.x = v107;
            v164.origin.y = v108;
            v164.size.width = v109;
            v164.size.height = v110;
            v155.origin.x = x;
            v155.origin.y = y;
            v155.size.width = width;
            v155.size.height = height;
            v156 = CGRectUnion(v155, v164);
            x = v156.origin.x;
            y = v156.origin.y;
            width = v156.size.width;
            height = v156.size.height;
          }
        }

        v111 = x;
        v145 = 0;
        v146 = 0;
        v112 = objc_msgSend_countOfLabelsForSeries_forGroups_forBodyLayout_outNewTransforms_outNewElementSizes_outNewClipRects_outNewStrings_(v84, v93, *&v97, *&v98, v94, v100, 0, self, &v146, 0, &v145, 0);
        if (v112)
        {
          v115 = v112;
          v116 = 0;
          v117 = 0;
          do
          {
            v118 = *(v145 + v116);
            v119 = *(v145 + v116 + 8);
            v120 = *(v145 + v116 + 16);
            v121 = *(v145 + v116 + 24);
            v157.origin.x = v118;
            v157.origin.y = v119;
            v157.size.width = v120;
            v157.size.height = v121;
            if (!CGRectIsNull(v157))
            {
              v144 = *(v146 + v117);
              v143 = v144;
              v158.origin.x = v118;
              v158.origin.y = v119;
              v158.size.width = v120;
              v158.size.height = v121;
              v165 = CGRectApplyAffineTransform(v158, &v143);
              v159.origin.x = v111;
              v159.origin.y = y;
              v159.size.width = width;
              v159.size.height = height;
              *(&v114 - 2) = CGRectUnion(v159, v165);
              v111 = v122;
              y = v123;
              width = v114;
              height = v124;
            }

            v117 += 48;
            v116 += 32;
            --v115;
          }

          while (v115);
        }

        *&v144.a = v142;
        *&v144.c = v141;
        if (objc_msgSend_countOfCalloutLinesForSeries_forGroups_forBodyLayout_outNewClipRects_(v84, v113, *&v141, *&v142, v114, v100, 0, self, &v144))
        {
          v160.origin.x = v111;
          v160.origin.y = y;
          v160.size.width = width;
          v160.size.height = height;
          IsNull = CGRectIsNull(v160);
          x = v144.a;
          if (IsNull)
          {
            y = v144.b;
            height = v144.d;
            width = v144.c;
          }

          else
          {
            v166.origin.y = v144.b;
            v166.size = *&v144.c;
            v161.origin.x = v111;
            v161.origin.y = y;
            v161.size.width = width;
            v161.size.height = height;
            v166.origin.x = v144.a;
            *(&v94 - 2) = CGRectUnion(v161, v166);
            x = *&v97;
            y = *&v98;
            width = v94;
            height = v126;
          }
        }

        else
        {
          x = v111;
        }

        if (v146)
        {
          free(v146);
        }

        if (v145)
        {
          free(v145);
        }
      }

      v95 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v93, *&v97, *&v98, v94, &v147, v151, 16);
    }

    while (v95);
  }

  TSUSubtractPoints();
  v128 = v127;
  v130 = v129;

  v131 = v128;
  v132 = v130;
  v133 = width;
  v134 = height;
  result.size.height = v134;
  result.size.width = v133;
  result.origin.y = v132;
  result.origin.x = v131;
  return result;
}

- (id)renderersWithRep:(id)rep
{
  v63 = *MEMORY[0x277D85DE8];
  repCopy = rep;
  v9 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6, v7, v8);
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v13 = objc_msgSend_model(self, v10, 0.0, v11, v12, 0);
  v18 = objc_msgSend_seriesList(v13, v14, v15, v16, v17);
  v23 = objc_msgSend_firstObject(v18, v19, v20, v21, v22);
  v28 = objc_msgSend_seriesType(v23, v24, v25, v26, v27);
  v33 = objc_msgSend_seriesRendererClasses(v28, v29, v30, v31, v32);

  v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, v35, v36, v37, &v58, v62, 16);
  if (v38)
  {
    v43 = v38;
    v44 = *v59;
    do
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v59 != v44)
        {
          objc_enumerationMutation(v33);
        }

        v46 = objc_msgSend_pointerValue(*(*(&v58 + 1) + 8 * i), v39, v40, v41, v42);
        if (v46)
        {
          v47 = [v46 alloc];
          v52 = objc_msgSend_initWithChartRep_layoutItem_(v47, v48, v49, v50, v51, repCopy, self);
          objc_msgSend_addObject_(v9, v53, v54, v55, v56, v52);
        }
      }

      v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v39, v40, v41, v42, &v58, v62, 16);
    }

    while (v43);
  }

  return v9;
}

- (TSCHChartPieLabelGeometry)labelGeometryForRenderingLabelForSeriesModelCache:(SEL)cache labelType:(id)type
{
  typeCopy = type;
  if (a5 >= 2)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v10, v11, v12, "[TSCHChartRadialBodyLayoutItem labelGeometryForRenderingLabelForSeriesModelCache:labelType:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRadialBodyLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 548, 0, "Invalid label type: %ld", a5);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v28 = *(MEMORY[0x277CBF398] + 16);
  v115 = *MEMORY[0x277CBF398];
  v116 = v28;
  v108 = *MEMORY[0x277CBF398];
  v29 = (MEMORY[0x277CBF398] + 8);
  v105 = *(MEMORY[0x277CBF398] + 16);
  v104 = *(MEMORY[0x277CBF398] + 24);
  v106 = *MEMORY[0x277CBF3A8];
  v30 = (MEMORY[0x277CBF3A8] + 8);
  v102 = *(MEMORY[0x277CBF2C0] + 16);
  v103 = *MEMORY[0x277CBF2C0];
  *&v114.a = *MEMORY[0x277CBF2C0];
  *&v114.c = v102;
  v101 = *(MEMORY[0x277CBF2C0] + 32);
  *&v114.tx = v101;
  v112 = v115;
  v113 = v28;
  v31 = objc_msgSend_model(self, v8, v115.x, v28.width, *&v101);
  v36 = objc_msgSend_seriesIndex(typeCopy, v32, v33, v34, v35);
  v41 = objc_msgSend_seriesAtIndex_(v31, v37, v38, v39, v40, v36);
  v46.width = v106;
  v47.x = v108;
  v45 = v41;
  v46.height = *v30;
  v47.y = *v29;
  if (typeCopy)
  {
    v107 = v46;
    v109 = v47;
    shouldRenderLabel = objc_msgSend_shouldRenderLabel(typeCopy, v42, v43, v44, v47.x);
    v46 = v107;
    v47 = v109;
    if (shouldRenderLabel)
    {
      v52 = objc_msgSend_defaultPieWedgeElementForSeriesModelCache_(self, v49, v50, v51, v109.x, typeCopy, v107.width);
      v57 = objc_msgSend_sharedText(TSCHText, v53, v54, v55, v56);
      v62 = objc_msgSend_labelStringForType_(typeCopy, v58, v59, v60, v61, a5);
      v67 = objc_msgSend_paragraphStyle(typeCopy, v63, v64, v65, v66);
      objc_msgSend_measureText_paragraphStyle_outErasableFrame_(v57, v68, v69, v70, v71, v62, v67, &v112);
      v104 = v73;
      v105 = v72;

      v78 = objc_msgSend_chartInfo(self, v74, v75, v76, v77);
      LODWORD(v57) = objc_msgSend_intValueForProperty_defaultValue_(v78, v79, v80, v81, v82, 1081, 1);

      v87 = objc_msgSend_intValueForProperty_defaultValue_(v45, v83, v84, v85, v86, 1138, 2);
      objc_msgSend_layoutSettings(self, v88, v89, v90, v91);
      v95 = v57 == 1 && v87 != 0;
      objc_msgSend_defaultLabelRectForLabelWithSize_bended_(v52, v92, v105, v104, v93, v95 & (v111 ^ 1u));
      *&v110.a = v103;
      *&v110.c = v102;
      *&v110.tx = v101;
      CGAffineTransformTranslate(&v114, &v110, v96, v97);
      v115 = v112;
      v116 = v113;

      v46.width = v105;
      v46.height = v104;
      v47 = 0;
    }
  }

  v98 = *&v114.c;
  *&retstr->var0.a = *&v114.a;
  *&retstr->var0.c = v98;
  *&retstr->var0.tx = *&v114.tx;
  retstr->var1 = v46;
  retstr->var2.origin = v47;
  retstr->var2.size.width = v105;
  retstr->var2.size.height = v104;
  v99 = v116;
  retstr->var3.origin = v115;
  retstr->var3.size = v99;

  return result;
}

- (TSCHChartPieLabelGeometries)labelGeometriesForRenderingLabelsForSeriesModelCache:(SEL)cache topLabelType:(id)type bottomLabelType:(int64_t)labelType
{
  typeCopy = type;
  if (labelType >= 2)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v12, v13, v14, "[TSCHChartRadialBodyLayoutItem labelGeometriesForRenderingLabelsForSeriesModelCache:topLabelType:bottomLabelType:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRadialBodyLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 589, 0, "Invalid label type.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  if (a6 >= 2)
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v12, v13, v14, "[TSCHChartRadialBodyLayoutItem labelGeometriesForRenderingLabelsForSeriesModelCache:topLabelType:bottomLabelType:]");
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRadialBodyLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v37, v38, v39, v40, v31, v36, 590, 0, "Invalid label type.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43, v44);
  }

  v45 = *(MEMORY[0x277CBF398] + 16);
  v167 = *MEMORY[0x277CBF398];
  v168 = v45;
  v156 = *MEMORY[0x277CBF398];
  v46 = (MEMORY[0x277CBF398] + 8);
  v47 = *(MEMORY[0x277CBF398] + 16);
  v48 = *(MEMORY[0x277CBF398] + 24);
  v154 = *MEMORY[0x277CBF3A8];
  v152 = *(MEMORY[0x277CBF3A8] + 8);
  v49 = *(MEMORY[0x277CBF2C0] + 16);
  *&v166.a = *MEMORY[0x277CBF2C0];
  *&v166.c = v49;
  *&v166.tx = *(MEMORY[0x277CBF2C0] + 32);
  v164 = v167;
  v165 = v45;
  v162 = v167;
  v163 = v45;
  *&v161.a = *&v166.a;
  *&v161.c = v49;
  *&v161.tx = *&v166.tx;
  v159 = v167;
  v160 = v45;
  v50 = objc_msgSend_model(self, v10, v167.x, v45.width, v166.a);
  v55 = objc_msgSend_seriesIndex(typeCopy, v51, v52, v53, v54);
  v60 = objc_msgSend_seriesAtIndex_(v50, v56, v57, v58, v59, v55);
  v65 = v152;
  v64 = v154;
  v66 = v60;
  v67.width = v154;
  v67.height = v152;
  v68.x = v156;
  v68.y = *v46;
  v157 = v68;
  if (typeCopy)
  {
    v150 = v67;
    shouldRenderLabel = objc_msgSend_shouldRenderLabel(typeCopy, v61, v68.x, v62, v63);
    v67 = v150;
    v65 = v152;
    v64 = v154;
    v73 = v48;
    v74 = v47;
    if (shouldRenderLabel)
    {
      v151 = objc_msgSend_defaultPieWedgeElementForSeriesModelCache_(self, v70, v71, v72, v48, typeCopy, v47, v150.width, v154, v152);
      v79 = objc_msgSend_sharedText(TSCHText, v75, v76, v77, v78);
      v84 = objc_msgSend_labelStringForType_(typeCopy, v80, v81, v82, v83, labelType);
      v89 = objc_msgSend_paragraphStyle(typeCopy, v85, v86, v87, v88);
      objc_msgSend_measureText_paragraphStyle_outErasableFrame_(v79, v90, v91, v92, v93, v84, v89, &v164);
      v153 = v95;
      v155 = v94;

      v100 = objc_msgSend_sharedText(TSCHText, v96, v97, v98, v99);
      v105 = objc_msgSend_labelStringForType_(typeCopy, v101, v102, v103, v104, a6);
      v110 = objc_msgSend_paragraphStyle(typeCopy, v106, v107, v108, v109);
      objc_msgSend_measureText_paragraphStyle_outErasableFrame_(v100, v111, v112, v113, v114, v105, v110, &v159);
      v47 = v115;
      v48 = v116;

      v121 = objc_msgSend_intValueForProperty_defaultValue_(v66, v117, v118, v119, v120, 1183, 0);
      v126 = objc_msgSend_chartInfo(self, v122, v123, v124, v125);
      v131 = objc_msgSend_intValueForProperty_defaultValue_(v126, v127, v128, v129, v130, 1081, 1);

      v136 = objc_msgSend_intValueForProperty_defaultValue_(v66, v132, v133, v134, v135, 1138, 2);
      objc_msgSend_layoutSettings(self, v137, v138, v139, v140);
      v157 = 0;
      if (v151)
      {
        v143 = v131 == 1 && v136 != 0;
        objc_msgSend_labelRectsForFirstLabelWithSize_secondLabelSize_stacked_stackedLabelCenterAlign_placeToTheSideOfPieChart_(v151, v141, v155, v153, v47, v121 != 0, v143 & (v158 ^ 1) ^ 1u, v48);
      }

      CGAffineTransformMakeTranslation(&v166, 0.0, 0.0);
      v167 = v164;
      v168 = v165;
      CGAffineTransformMakeTranslation(&v161, 0.0, 0.0);
      v162 = v159;
      v163 = v160;

      v73 = v153;
      v74 = v155;
      v67.width = v155;
      v67.height = v153;
      v64 = v47;
      v65 = v48;
    }
  }

  else
  {
    v73 = v48;
    v74 = v47;
  }

  v144 = *&v166.c;
  *&retstr->var0.var0.a = *&v166.a;
  *&retstr->var0.var0.c = v144;
  v145 = v167;
  *&retstr->var0.var0.tx = *&v166.tx;
  retstr->var0.var1 = v67;
  retstr->var0.var2.origin = v157;
  retstr->var0.var2.size.width = v74;
  retstr->var0.var2.size.height = v73;
  v146 = v168;
  retstr->var0.var3.origin = v145;
  retstr->var0.var3.size = v146;
  v147 = *&v161.tx;
  *&retstr->var1.var0.c = *&v161.c;
  *&retstr->var1.var0.tx = v147;
  *&retstr->var1.var0.a = *&v161.a;
  retstr->var1.var1.width = v64;
  retstr->var1.var1.height = v65;
  retstr->var1.var2.origin = v157;
  retstr->var1.var2.size.width = v47;
  retstr->var1.var2.size.height = v48;
  v148 = v163;
  retstr->var1.var3.origin = v162;
  retstr->var1.var3.size = v148;

  return result;
}

- (CGAffineTransform)transformToShiftStraightLineLabelRectOutForEnableCalloutLineONSetting:(SEL)setting wedgeElement:(CGRect)element
{
  v28 = a5;
  objc_msgSend_pointAtWedgeTipInChartCoordinateSpace(v28, v6, v7, v8, v9);
  TSUClampPointInRect();
  objc_msgSend_pointAtWedgeTipInChartCoordinateSpace(v28, v10, v11, v12, v13);
  TSUDistance();
  v15 = v14;
  objc_msgSend_radius(v28, v16, v14, v17, v18);
  v21 = v20 + 20.0;
  v22 = MEMORY[0x277CBF2C0];
  v23 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v23;
  v24 = *(v22 + 32);
  *&retstr->tx = v24;
  if (v21 - v15 > 0.0)
  {
    objc_msgSend_normalizedWedgeBisectionVector(v28, v19, v21, *&v24, *&v23);
    TSUMultiplyPointScalar();
    CGAffineTransformMakeTranslation(retstr, v25, v26);
  }

  return result;
}

- (CGAffineTransform)transformToMaintainLabelSameDistanceAwayFromWedge:(SEL)wedge wedgeElement:(CGRect)element
{
  height = element.size.height;
  width = element.size.width;
  y = element.origin.y;
  x = element.origin.x;
  v25 = a5;
  TSUCenterOfRect();
  v10 = MEMORY[0x277CBF2C0];
  v11 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v11;
  v12 = *(v10 + 32);
  *&retstr->tx = v12;
  objc_msgSend_pointAtWedgeTipInChartCoordinateSpace(v25, v13, *&v12, *&v11, v14);
  TSUDistance();
  v16 = v15;
  objc_msgSend_radius(v25, v17, v15, v18, v19);
  if (v16 > v21)
  {
    objc_msgSend_midpointOnClosestEdgeToWedgeTip_(v25, v20, x, y, width, height);
    TSUSubtractPoints();
    CGAffineTransformMakeTranslation(retstr, v22, v23);
  }

  return result;
}

- (CGAffineTransform)transformForRenderingElementForSeries:(SEL)series outElementSize:(unint64_t)size outClipRect:(CGSize *)rect withInnerRadius:(CGRect *)radius
{
  v15 = objc_msgSend_pathCacheForSeries_withInnerRadius_(self, series, v7, v8, v9, size, a7);
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  v18 = *(MEMORY[0x277CBF398] + 16);
  v19 = *(MEMORY[0x277CBF398] + 24);
  v20 = MEMORY[0x277CBF2C0];
  v21 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v21;
  v22 = *(v20 + 32);
  *&retstr->tx = v22;
  v84 = v15;
  v25 = objc_msgSend_pathLayoutRelative(v15, v23, *&v22, *&v21, v24);
  if (!v25)
  {
    width = *MEMORY[0x277CBF3A8];
    height = *(MEMORY[0x277CBF3A8] + 8);
LABEL_8:
    if (!rect)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  BoundingBox = CGPathGetBoundingBox(v25);
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;
  CGAffineTransformMakeTranslation(retstr, BoundingBox.origin.x, BoundingBox.origin.y);
  if (!radius)
  {
    goto LABEL_8;
  }

  v32 = objc_msgSend_model(self, v28, v29, v30, v31);
  v37 = objc_msgSend_pieSeriesModelCacheForSeries_(v32, v33, v34, v35, v36, size);

  v42 = objc_msgSend_seriesShadow(v37, v38, v39, v40, v41);
  if (!objc_msgSend_hasShadow_(TSCHStyleUtilities, v43, v44, v45, v46, v42) || (objc_msgSend_opacity(v42, v47, v48, v49, v50), v52 <= 0.0))
  {
    TSURectWithSize();
LABEL_16:
    v60 = v73;
    v62 = v74;
    v64 = v75;
    v66 = v76;
    goto LABEL_17;
  }

  objc_msgSend_offset(v42, v51, v52, v53, v54);
  if (v56 > 0.0)
  {
    TSURectWithSize();
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;
    objc_msgSend_shadowBoundsForRect_(v42, v67, v59, v61, v63, v65);
LABEL_21:
    v90.origin.x = v68;
    v90.origin.y = v69;
    v90.size.width = v70;
    v90.size.height = v71;
    v89.origin.x = v60;
    v89.origin.y = v62;
    v89.size.width = v64;
    v89.size.height = v66;
    *&v73 = CGRectUnion(v89, v90);
    goto LABEL_16;
  }

  objc_msgSend_radius(v42, v55, v56, v57, v58);
  v78 = v77;
  TSURectWithSize();
  v60 = v80;
  v62 = v81;
  v64 = v82;
  v66 = v83;
  if (v78 > 0.0)
  {
    objc_msgSend_shadowBoundsForRect_(v42, v79, v80, v81, v82, v83);
    goto LABEL_21;
  }

LABEL_17:
  v87.origin.x = v60;
  v87.origin.y = v62;
  v87.size.width = v64;
  v87.size.height = v66;
  v88 = CGRectInset(v87, -1.0, -1.0);
  x = v88.origin.x;
  y = v88.origin.y;
  v18 = v88.size.width;
  v19 = v88.size.height;

  if (rect)
  {
LABEL_9:
    rect->width = width;
    rect->height = height;
  }

LABEL_10:
  if (radius)
  {
    radius->origin.x = x;
    radius->origin.y = y;
    radius->size.width = v18;
    radius->size.height = v19;
  }

  return result;
}

- (id)defaultPieWedgeElementForSeriesModelCache:(id)cache
{
  cacheCopy = cache;
  v9 = objc_msgSend_model(self, v5, v6, v7, v8);
  v14 = objc_msgSend_seriesIndex(cacheCopy, v10, v11, v12, v13);
  v19 = objc_msgSend_seriesAtIndex_(v9, v15, v16, v17, v18, v14);
  v24 = objc_msgSend_chartInfo(self, v20, v21, v22, v23);
  objc_msgSend_effectiveLabelExplosion(cacheCopy, v25, v26, v27, v28);
  v72 = *&v29;
  objc_msgSend_effectiveWedgeExplosion(cacheCopy, v30, v29, v31, v32);
  v34 = *&v33;
  objc_msgSend_midAngle(cacheCopy, v35, v33, v36, v37);
  v39 = v38;
  objc_msgSend_startAngle(cacheCopy, v40, v38, v41, v42);
  v44 = v43;
  objc_msgSend_endAngle(cacheCopy, v45, v43, v46, v47);
  v49 = v48;

  objc_msgSend_rootedLayoutRect(self, v50, v51, v52, v53);
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  objc_msgSend_maximumExplosion(v24, v62, v54, v56, v58);
  LODWORD(v64) = v63;
  objc_msgSend_radiusForFrame_withMaxExplosion_(v24, v65, v55, v57, v59, v61, v64);
  v67 = v66;
  v68 = [TSCHChartPieWedgeElement alloc];
  started = objc_msgSend_initWithRadius_startAngle_midAngle_endAngle_labelExplosion_wedgeExplosion_series_(v68, v69, v67, v44, v39, v19, v49, v72, v34);

  return started;
}

- (id)defaultPieWedgeLayoutInfoForSeriesModelCache:(id)cache pieLabels:(id)labels combinedLabelTransform:(CGAffineTransform *)transform
{
  labelsCopy = labels;
  v13 = objc_msgSend_defaultPieWedgeElementForSeriesModelCache_(self, v9, v10, v11, v12, cache);
  v14 = [TSCHChartPieWedgeLayoutInfo alloc];
  v15 = *&transform->c;
  v20[0] = *&transform->a;
  v20[1] = v15;
  v21 = *&transform->tx;
  v18 = objc_msgSend_initWithPieWedgeElement_pieLabels_combinedLabelTransformIntoPieChartCoordinateSpace_(v14, v16, *&v21, *&v15, v17, v13, labelsCopy, v20);

  return v18;
}

- (id)newPathsForRenderingCalloutLineForSeries:(unint64_t)series outStartLineEndPath:(id *)path outEndLineEndPath:(id *)endPath stroke:(id)stroke outStroke:(id *)outStroke context:(CGContext *)context contextScale:(float)scale
{
  strokeCopy = stroke;
  v20 = objc_msgSend_model(self, v16, v17, v18, v19);
  v25 = objc_msgSend_pieSeriesModelCacheForSeries_(v20, v21, v22, v23, v24, series);
  v30 = objc_msgSend_seriesAtIndex_(v20, v26, v27, v28, v29, series);
  v36 = objc_msgSend_wedgeLayoutInfosInChartCoordinateSpaceForSeriesIndex(self, v31, v32, v33, v34);
  if (v25)
  {
    contextCopy = context;
    v40 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v35, v37, v38, v39, series);
    v45 = objc_msgSend_objectForKeyedSubscript_(v36, v41, v42, v43, v44, v40);

    if (!objc_msgSend_shouldRenderLabel(v25, v46, v47, v48, v49) || !objc_msgSend_intValueForProperty_defaultValue_(v30, v50, v51, v52, v53, 1138, 2))
    {
      v93 = 0;
LABEL_26:

      goto LABEL_27;
    }

    outStrokeCopy = outStroke;
    v58 = objc_msgSend_chartInfo(self, v54, v55, v56, v57);
    v63 = objc_msgSend_intValueForProperty_defaultValue_(v58, v59, v60, v61, v62, 1081, 1);

    v64 = off_27A6B5B38;
    if (v63 != 1)
    {
      v64 = off_27A6B5B40;
    }

    v65 = objc_alloc(*v64);
    v70 = objc_msgSend_allValues(v36, v66, v67, v68, v69);
    v75 = objc_msgSend_initWithArrayOfWedgeLayoutInfos_(v65, v71, v72, v73, v74, v70);

    v76 = v75;
    LODWORD(v75) = objc_msgSend_calloutLineEndpointPastStartpoint_(v75, v77, v78, v79, v80, v45);
    objc_msgSend_layoutSettings(self, v81, v82, v83, v84);
    if (!v75)
    {
      v93 = 0;
LABEL_25:

      goto LABEL_26;
    }

    v93 = 0;
    if (!objc_msgSend_combinedLabelOutsideWedge(v45, v85, v86, v87, v88) || (v136 & 1) != 0)
    {
      goto LABEL_25;
    }

    v94 = objc_msgSend_objectValueForProperty_(v30, v89, v90, v91, v92, 1132);
    v130 = objc_msgSend_objectValueForProperty_(v30, v95, v96, v97, v98, 1131);
    v131 = v94;
    started = objc_msgSend_calloutLineRenderAmount_startLineEnd_endLineEnd_stroke_(v76, v99, v100, v101, v102, v45, v94);
    v93 = started;
    if (started > 1)
    {
      v108 = outStrokeCopy;
      if (started == 2)
      {
        pathCopy2 = path;
        goto LABEL_22;
      }

      if (started == 3)
      {
        pathCopy2 = path;
        endPathCopy = endPath;
        v111 = v130;
LABEL_23:
        v129 = v108;
        v127 = v131;
        *&v105 = scale;
        v93 = objc_msgSend_newCalloutLinePaths_startLineEnd_outStartLineEndPath_endLineEnd_outEndLineEndPath_stroke_outStroke_context_contextScale_(v76, v104, v105, v106, v107, v45, v131, pathCopy2, v111, endPathCopy, strokeCopy, v129, contextCopy);
        goto LABEL_24;
      }
    }

    else
    {
      v108 = outStrokeCopy;
      if (!started)
      {
LABEL_20:
        v111 = v130;
        v127 = v131;
LABEL_24:

        goto LABEL_25;
      }

      if (started == 1)
      {

        v131 = 0;
        pathCopy2 = 0;
LABEL_22:

        endPathCopy = 0;
        v111 = 0;
        goto LABEL_23;
      }
    }

    v112 = MEMORY[0x277D81150];
    v135 = v76;
    v113 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v104, v105, v106, v107, "[TSCHChartRadialBodyLayoutItem newPathsForRenderingCalloutLineForSeries:outStartLineEndPath:outEndLineEndPath:stroke:outStroke:context:contextScale:]");
    v118 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v114, v115, v116, v117, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRadialBodyLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v112, v119, v120, v121, v122, v113, v118, 789, 0, "Unexpected value for chart line rendering: %ld", v93);

    v76 = v135;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v123, v124, v125, v126);
    v93 = 0;
    goto LABEL_20;
  }

  v93 = 0;
LABEL_27:

  return v93;
}

- (CGRect)calloutLineBoundingBoxForSeries:(unint64_t)series
{
  v8 = objc_msgSend_model(self, a2, v3, v4, v5);
  v13 = objc_msgSend_seriesAtIndex_(v8, v9, v10, v11, v12, series);

  v18 = objc_msgSend_objectValueForProperty_(v13, v14, v15, v16, v17, 1133);
  v23 = objc_msgSend_stroke(MEMORY[0x277D803C0], v19, v20, v21, v22);
  v62 = 0;
  v63 = 0;
  v61 = v23;
  LODWORD(v24) = 1.0;
  started = objc_msgSend_newPathsForRenderingCalloutLineForSeries_outStartLineEndPath_outEndLineEndPath_stroke_outStroke_context_contextScale_(self, v25, v24, v26, v27, series, &v63, &v62, v18, &v61, 0);
  v29 = v63;
  v30 = v62;
  v31 = v61;

  if (started)
  {
    v37 = objc_msgSend_bezierPath(MEMORY[0x277D81160], v32, v33, v34, v35);
    if (v31)
    {
      objc_msgSend_width(v31, v36, v38, v39, v40);
      objc_msgSend_setLineWidth_(v37, v41, v42, v43, v44);
    }

    if (v29)
    {
      objc_msgSend_appendBezierPath_(v37, v36, v38, v39, v40, v29);
    }

    objc_msgSend_appendBezierPath_(v37, v36, v38, v39, v40, started);
    if (v30)
    {
      objc_msgSend_appendBezierPath_(v37, v45, v46, v47, v48, v30);
    }

    objc_msgSend_bounds(v37, v45, v46, v47, v48);
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;
  }

  else
  {
    v50 = *MEMORY[0x277CBF398];
    v52 = *(MEMORY[0x277CBF398] + 8);
    v54 = *(MEMORY[0x277CBF398] + 16);
    v56 = *(MEMORY[0x277CBF398] + 24);
  }

  v57 = v50;
  v58 = v52;
  v59 = v54;
  v60 = v56;
  result.size.height = v60;
  result.size.width = v59;
  result.origin.y = v58;
  result.origin.x = v57;
  return result;
}

- (id)labelStringForType:(int64_t)type seriesModelCache:(id)cache
{
  cacheCopy = cache;
  v10 = cacheCopy;
  if (type == 1)
  {
    v11 = objc_msgSend_valueLabelString(cacheCopy, v6, v7, v8, v9);
    goto LABEL_5;
  }

  if (!type)
  {
    v11 = objc_msgSend_seriesNameLabelString(cacheCopy, v6, v7, v8, v9);
LABEL_5:
    v12 = v11;
    goto LABEL_7;
  }

  v13 = MEMORY[0x277D81150];
  v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCHChartRadialBodyLayoutItem labelStringForType:seriesModelCache:]");
  v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRadialBodyLayoutItem.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 840, 0, "Invalid label type: %ld", type);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  v12 = &stru_288528678;
LABEL_7:

  return v12;
}

- (CGPath)pathOfElementForSeries:(unint64_t)series outWedgeCenterPoint:(CGPoint *)point withInnerRadius:(id)radius
{
  v9 = objc_msgSend_pathCacheForSeries_withInnerRadius_(self, a2, v5, v6, v7, series, radius);
  v14 = objc_msgSend_pathTransformRelative(v9, v10, v11, v12, v13);
  objc_msgSend_wedgeCenterPoint(v9, v15, v16, v17, v18);
  if (point)
  {
    point->x = v19;
    point->y = v20;
  }

  if (v14)
  {
    CGPathRetain(v14);
    v21 = CFAutorelease(v14);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)knobsOfElementForSeries:(unint64_t)series withInnerRadius:(id)radius
{
  v7 = objc_msgSend_pathCacheForSeries_withInnerRadius_(self, a2, v4, v5, v6, series, radius);
  v12 = objc_msgSend_pathSelectionKnobs(v7, v8, v9, v10, v11);

  return v12;
}

- (id)pathCacheForSeries:(unint64_t)series withInnerRadius:(id)radius
{
  radiusCopy = radius;
  v11 = objc_msgSend_p_pathCache(self, v7, v8, v9, v10);
  v16 = v11;
  if (v11 && objc_msgSend_seriesIndex(v11, v12, v13, v14, v15) == series && (objc_msgSend_rootedLayoutRect(v16, v12, v13, v14, v15), !CGRectIsNull(v122)) && (objc_msgSend_rootedLayoutRect(self, v12, v13, v14, v15), objc_msgSend_rootedLayoutRect(v16, v17, v18, v19, v20), TSUNearlyEqualRects()) && (objc_msgSend_innerRadius(v16, v12, v13, v14, v15), v21 = objc_claimAutoreleasedReturnValue(), isEqualToNumber = objc_msgSend_isEqualToNumber_(v21, v22, v23, v24, v25, radiusCopy), v21, isEqualToNumber))
  {
    v27 = v16;
  }

  else
  {
    v28 = *MEMORY[0x277CBF348];
    v29 = *(MEMORY[0x277CBF348] + 8);
    v30 = objc_msgSend_set(MEMORY[0x277CBEB98], v12, v13, v14, v15);
    v118 = objc_msgSend_model(self, v31, v32, v33, v34);
    seriesCopy = series;
    v39 = objc_msgSend_pieSeriesModelCacheForSeries_(v118, v35, v36, v37, v38, series);
    v44 = objc_msgSend_chartInfo(self, v40, v41, v42, v43);
    objc_msgSend_rootedLayoutRect(self, v45, v46, v47, v48);
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;
    objc_msgSend_percentage(v39, v57, v49, v51, v53);
    if (v59 <= 0.0)
    {
      started = 0;
      Mutable = 0;
    }

    else
    {
      v62 = v59;
      v111 = v29;
      v112 = v28;
      objc_msgSend_maximumExplosion(v44, v58, v59, v60, v61);
      LODWORD(v64) = v63;
      objc_msgSend_radiusForFrame_withMaxExplosion_(v44, v65, v50, v52, v54, v56, v64);
      v67 = *&v66;
      objc_msgSend_startAngle(v39, v68, v66, v69, v70);
      v114 = v71;
      objc_msgSend_endAngle(v39, v72, v71, v73, v74);
      v113 = v75;
      objc_msgSend_midAngle(v39, v76, v75, v77, v78);
      v80 = v79;
      objc_msgSend_effectiveWedgeExplosion(v39, v81, v79, v82, v83);
      v85 = v84;
      v116 = v52;
      v117 = v50;
      v115 = v54;
      TSUCenterOfRect();
      v87 = v86;
      v89 = v88;
      v90 = v67 * v85;
      v91 = __sincos_stret(v80);
      v92 = v87 + v90 * v91.__cosval;
      v93 = v89 + v90 * v91.__sinval;
      started = objc_msgSend_newElementPathWithPercentage_radius_center_startAngle_midAngle_endAngle_withInnerRadius_(self, v94, v62, v67, v92, radiusCopy, v93, v114, v80, v113);
      v97 = objc_msgSend_knobsWithRadius_center_startAngle_midAngle_endAngle_(self, v96, v67, v92, v93, v114, v80, v113);

      if (started)
      {
        BoundingBox = CGPathGetBoundingBox(started);
        memset(&v120, 0, sizeof(v120));
        CGAffineTransformMakeTranslation(&v120, -BoundingBox.origin.x, -BoundingBox.origin.y);
        Mutable = CGPathCreateMutable();
        CGPathAddPathSafe();
        v28 = v120.tx + v93 * v120.c + v120.a * v92;
        v29 = v120.ty + v93 * v120.d + v120.b * v92;
        v30 = v97;
        v52 = v116;
        v50 = v117;
        v54 = v115;
      }

      else
      {
        Mutable = 0;
        v30 = v97;
        v52 = v116;
        v50 = v117;
        v54 = v115;
        v29 = v111;
        v28 = v112;
      }
    }

    v99 = [TSCHRadialBodyLayoutItemPathCache alloc];
    v104 = objc_msgSend_allObjects(v30, v100, v101, v102, v103);
    v27 = objc_msgSend_initWithSeriesIndex_rootedLayoutRect_wedgeCenterPoint_pathLayoutRelative_pathTransformRelative_pathSelectionKnobs_innerRadius_(v99, v105, v50, v52, v54, seriesCopy, started, Mutable, v104, radiusCopy, v56, v28, v29);

    objc_msgSend_setP_pathCache_(self, v106, v107, v108, v109, v27);
    CGPathRelease(started);
    CGPathRelease(Mutable);
  }

  return v27;
}

@end
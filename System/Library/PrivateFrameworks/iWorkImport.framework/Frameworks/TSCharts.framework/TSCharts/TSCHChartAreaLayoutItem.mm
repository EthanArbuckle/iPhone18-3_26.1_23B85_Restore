@interface TSCHChartAreaLayoutItem
- (CGRect)i_currentBufferAreaUnitRect;
- (CGRect)titleFrame;
- (Class)p_axisLayoutItemClassForAxisID:(id)a3;
- (double)p_dataSetNameLabelPadding;
- (id)renderersWithRep:(id)a3;
- (void)buildSubTree;
- (void)iterateHitChartElements:(CGPoint)a3 withBlock:(id)a4;
- (void)layoutInward;
- (void)layoutOutward;
- (void)p_arrangeSizedChildren;
- (void)p_updateMinHitSizes;
@end

@implementation TSCHChartAreaLayoutItem

- (CGRect)titleFrame
{
  v5 = objc_msgSend_titleElement(self, a2, v2, v3, v4);
  objc_msgSend_rootedLayoutRect(v5, v6, v7, v8, v9);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (Class)p_axisLayoutItemClassForAxisID:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_model(self, v5, v6, v7, v8);
  v14 = objc_msgSend_axisForID_(v9, v10, v11, v12, v13, v4);

  if (v14)
  {
    objc_msgSend_isCategory(v14, v15, v16, v17, v18);
  }

  v19 = objc_opt_class();

  return v19;
}

- (void)p_arrangeSizedChildren
{
  v7 = objc_msgSend_titleElement(self, a2, v2, v3, v4);
  if (v7)
  {
    v11 = objc_msgSend_titleElement(self, v6, v8, v9, v10);
    objc_msgSend_layoutSize(v11, v12, v13, v14, v15);
    v17 = v16;
  }

  else
  {
    v17 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v22 = objc_msgSend_dataSetNameElement(self, v18, v19, v20, v21);
  isAboveChartBody = objc_msgSend_isAboveChartBody(v22, v23, v24, v25, v26);

  v33 = objc_msgSend_dataSetNameElement(self, v28, v29, v30, v31);
  if (v33)
  {
    v37 = objc_msgSend_dataSetNameElement(self, v32, v34, v35, v36);
    objc_msgSend_layoutSize(v37, v38, v39, v40, v41);
    v43 = v42;
  }

  else
  {
    v43 = *(MEMORY[0x277CBF3A8] + 8);
  }

  objc_msgSend_p_dataSetNameLabelPadding(self, v44, v45, v46, v47);
  v49 = v48;
  v53 = objc_msgSend_bodyLayoutItem(self, v50, v48, v51, v52);
  objc_msgSend_layoutSize(self->_leftVerticalAxis, v54, v55, v56, v57);
  v59 = v58;
  objc_msgSend_layoutSize(self->_topHorizontalAxis, v60, v58, v61, v62);
  v65 = v17 + v64;
  v66 = v43 + v49;
  if (!isAboveChartBody)
  {
    v66 = 0.0;
  }

  objc_msgSend_setLayoutOffset_(v53, v63, v59, v66 + v65, 0.0);

  v71 = objc_msgSend_titleElement(self, v67, v68, v69, v70);
  v76 = objc_msgSend_bodyLayoutItem(self, v72, v73, v74, v75);
  objc_msgSend_layoutRect(v76, v77, v78, v79, v80);
  MinX = CGRectGetMinX(v211);
  objc_msgSend_setLayoutOffset_(v71, v82, MinX, 0.0, v83);

  if (isAboveChartBody)
  {
    v88 = objc_msgSend_dataSetNameElement(self, v84, v85, v86, v87);
    v93 = objc_msgSend_bodyLayoutItem(self, v89, v90, v91, v92);
    objc_msgSend_layoutRect(v93, v94, v95, v96, v97);
    v98 = CGRectGetMinX(v212);
    objc_msgSend_setLayoutOffset_(v88, v99, v98, v17 + v49, v100);
  }

  topHorizontalAxis = self->_topHorizontalAxis;
  v102 = objc_msgSend_bodyLayoutItem(self, v84, v85, v86, v87);
  objc_msgSend_layoutRect(v102, v103, v104, v105, v106);
  v107 = CGRectGetMinX(v213);
  v111 = objc_msgSend_bodyLayoutItem(self, v108, v107, v109, v110);
  objc_msgSend_layoutRect(v111, v112, v113, v114, v115);
  MinY = CGRectGetMinY(v214);
  objc_msgSend_layoutSize(self->_topHorizontalAxis, v117, MinY, v118, v119);
  objc_msgSend_setLayoutOffset_(topHorizontalAxis, v121, v107, MinY - v120, v122);

  leftVerticalAxis = self->_leftVerticalAxis;
  v128 = objc_msgSend_bodyLayoutItem(self, v124, v125, v126, v127);
  objc_msgSend_layoutRect(v128, v129, v130, v131, v132);
  v133 = CGRectGetMinY(v215);
  objc_msgSend_setLayoutOffset_(leftVerticalAxis, v134, 0.0, v133, v135);

  rightVerticalAxis = self->_rightVerticalAxis;
  v141 = objc_msgSend_bodyLayoutItem(self, v137, v138, v139, v140);
  objc_msgSend_layoutRect(v141, v142, v143, v144, v145);
  MaxX = CGRectGetMaxX(v216);
  v150 = objc_msgSend_bodyLayoutItem(self, v147, MaxX, v148, v149);
  objc_msgSend_layoutRect(v150, v151, v152, v153, v154);
  v155 = CGRectGetMinY(v217);
  objc_msgSend_setLayoutOffset_(rightVerticalAxis, v156, MaxX, v155, v157);

  bottomHorizontalAxis = self->_bottomHorizontalAxis;
  v163 = objc_msgSend_bodyLayoutItem(self, v159, v160, v161, v162);
  objc_msgSend_layoutRect(v163, v164, v165, v166, v167);
  v168 = CGRectGetMinX(v218);
  v172 = objc_msgSend_bodyLayoutItem(self, v169, v168, v170, v171);
  objc_msgSend_layoutRect(v172, v173, v174, v175, v176);
  MaxY = CGRectGetMaxY(v219);
  objc_msgSend_setLayoutOffset_(bottomHorizontalAxis, v178, v168, MaxY, v179);

  if ((isAboveChartBody & 1) == 0)
  {
    v209 = objc_msgSend_dataSetNameElement(self, v180, v181, v182, v183);
    v188 = objc_msgSend_bodyLayoutItem(self, v184, v185, v186, v187);
    objc_msgSend_layoutRect(v188, v189, v190, v191, v192);
    v193 = CGRectGetMinX(v220);
    v197 = objc_msgSend_bodyLayoutItem(self, v194, v193, v195, v196);
    objc_msgSend_layoutRect(v197, v198, v199, v200, v201);
    v202 = CGRectGetMaxY(v221);
    objc_msgSend_layoutSize(self->_bottomHorizontalAxis, v203, v202, v204, v205);
    objc_msgSend_setLayoutOffset_(v209, v207, v193, v49 + v202 + v206, v208);
  }
}

- (double)p_dataSetNameLabelPadding
{
  v6 = objc_msgSend_dataSetNameElement(self, a2, v2, v3, v4);

  v11 = 0.0;
  if (v6)
  {
    v12 = objc_msgSend_dataSetNameElement(self, v7, v8, v9, v10);
    isAboveChartBody = objc_msgSend_isAboveChartBody(v12, v13, v14, v15, v16);

    if (isAboveChartBody)
    {
      v22 = objc_msgSend_titleElement(self, v18, v19, v20, v21);
      if (v22)
      {
        v27 = v22;
        v28 = objc_msgSend_titleElement(self, v23, v24, v25, v26);
        isTitleOn = objc_msgSend_isTitleOn(v28, v29, v30, v31, v32);

        if (isTitleOn)
        {
          return 10.0;
        }

        else
        {
          return 0.0;
        }
      }
    }

    else
    {
      v34 = objc_msgSend_model(self, v18, v19, v20, v21);
      v39 = objc_msgSend_axisID(self->_bottomHorizontalAxis, v35, v36, v37, v38);
      v44 = objc_msgSend_axisForID_(v34, v40, v41, v42, v43, v39);

      if (!v44)
      {
        v49 = MEMORY[0x277D81150];
        v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, v46, v47, v48, "[TSCHChartAreaLayoutItem p_dataSetNameLabelPadding]");
        v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, v52, v53, v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAreaLayoutItem.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v56, v57, v58, v59, v50, v55, 145, 0, "invalid nil value for '%{public}s'", "axis");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v60, v61, v62, v63);
      }

      v11 = 8.0;
      if (!objc_msgSend_intValueForProperty_defaultValue_(v44, v45, v46, v47, v48, 1060, 0))
      {
        v68 = objc_msgSend_chartInfo(self, v64, v65, v66, v67);
        v73 = objc_msgSend_chartType(v68, v69, v70, v71, v72);
        isHorizontal = objc_msgSend_isHorizontal(v73, v74, v75, v76, v77);

        v11 = 4.0;
        if ((isHorizontal & 1) == 0 && !objc_msgSend_intValueForProperty_defaultValue_(v44, v79, v80, v81, v82, 1059, 0))
        {
          if (objc_msgSend_isCategory(v44, v83, v84, v85, v86))
          {
            v11 = 0.0;
          }

          else
          {
            v11 = 6.0;
          }
        }
      }
    }
  }

  return v11;
}

- (void)buildSubTree
{
  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4);
  objc_msgSend_layoutSettings(self, v7, v8, v9, v10);
  if ((v213 & 1) == 0)
  {
    v15 = [TSCHChartMainTitleLayoutItem alloc];
    v20 = objc_msgSend_initWithParent_(v15, v16, v17, v18, v19, self);
    objc_msgSend_setTitleElement_(self, v21, v22, v23, v24, v20);

    v29 = objc_msgSend_titleElement(self, v25, v26, v27, v28);
    objc_msgSend_addObject_(v6, v30, v31, v32, v33, v29);
  }

  v34 = objc_msgSend_chartInfo(self, v11, v12, v13, v14);
  v39 = objc_msgSend_chartType(v34, v35, v36, v37, v38);
  isMultiData = objc_msgSend_isMultiData(v39, v40, v41, v42, v43);

  if (isMultiData && !v213)
  {
    v49 = [TSCHChartDataSetNameLayoutItem alloc];
    v54 = objc_msgSend_initWithParent_(v49, v50, v51, v52, v53, self);
    objc_msgSend_setDataSetNameElement_(self, v55, v56, v57, v58, v54);

    v63 = objc_msgSend_dataSetNameElement(self, v59, v60, v61, v62);
    objc_msgSend_addObject_(v6, v64, v65, v66, v67, v63);
  }

  v68 = objc_msgSend_axisIDWithType_ordinal_(TSCHChartAxisID, v45, v46, v47, v48, 1, 1);
  v73 = objc_alloc(objc_msgSend_p_axisLayoutItemClassForAxisID_(self, v69, v70, v71, v72, v68));
  v78 = objc_msgSend_initWithParent_axisPosition_(v73, v74, v75, v76, v77, self, 2);
  topHorizontalAxis = self->_topHorizontalAxis;
  self->_topHorizontalAxis = v78;

  objc_msgSend_setAxisID_(self->_topHorizontalAxis, v80, v81, v82, v83, v68);
  v88 = objc_msgSend_axisIDWithType_ordinal_(TSCHChartAxisID, v84, v85, v86, v87, 1, 0);
  objc_msgSend_setReferenceLineLabelAxisID_(self->_topHorizontalAxis, v89, v90, v91, v92, v88);

  objc_msgSend_addObject_(v6, v93, v94, v95, v96, self->_topHorizontalAxis);
  v101 = objc_msgSend_axisIDWithType_ordinal_(TSCHChartAxisID, v97, v98, v99, v100, 2, 0);

  v106 = objc_alloc(objc_msgSend_p_axisLayoutItemClassForAxisID_(self, v102, v103, v104, v105, v101));
  v111 = objc_msgSend_initWithParent_axisPosition_(v106, v107, v108, v109, v110, self, 1);
  leftVerticalAxis = self->_leftVerticalAxis;
  self->_leftVerticalAxis = v111;

  objc_msgSend_setAxisID_(self->_leftVerticalAxis, v113, v114, v115, v116, v101);
  objc_msgSend_addObject_(v6, v117, v118, v119, v120, self->_leftVerticalAxis);
  v121 = [TSCHChartBodyLayoutItem alloc];
  v126 = objc_msgSend_initWithParent_(v121, v122, v123, v124, v125, self);
  objc_msgSend_setBodyLayoutItem_(self, v127, v128, v129, v130, v126);
  objc_msgSend_addObject_(v6, v131, v132, v133, v134, v126);
  v139 = objc_msgSend_axisIDWithType_ordinal_(TSCHChartAxisID, v135, v136, v137, v138, 2, 1);

  v144 = objc_alloc(objc_msgSend_p_axisLayoutItemClassForAxisID_(self, v140, v141, v142, v143, v139));
  v149 = objc_msgSend_initWithParent_axisPosition_(v144, v145, v146, v147, v148, self, 3);
  rightVerticalAxis = self->_rightVerticalAxis;
  self->_rightVerticalAxis = v149;

  objc_msgSend_setAxisID_(self->_rightVerticalAxis, v151, v152, v153, v154, v139);
  v159 = objc_msgSend_axisIDWithType_ordinal_(TSCHChartAxisID, v155, v156, v157, v158, 2, 0);
  objc_msgSend_setReferenceLineLabelAxisID_(self->_rightVerticalAxis, v160, v161, v162, v163, v159);

  objc_msgSend_addObject_(v6, v164, v165, v166, v167, self->_rightVerticalAxis);
  v172 = objc_msgSend_axisIDWithType_ordinal_(TSCHChartAxisID, v168, v169, v170, v171, 1, 0);

  v177 = objc_alloc(objc_msgSend_p_axisLayoutItemClassForAxisID_(self, v173, v174, v175, v176, v172));
  v182 = objc_msgSend_initWithParent_axisPosition_(v177, v178, v179, v180, v181, self, 4);
  bottomHorizontalAxis = self->_bottomHorizontalAxis;
  self->_bottomHorizontalAxis = v182;

  objc_msgSend_setAxisID_(self->_bottomHorizontalAxis, v184, v185, v186, v187, v172);
  objc_msgSend_addObject_(v6, v188, v189, v190, v191, self->_bottomHorizontalAxis);
  v192 = [_TtC8TSCharts23TSCHChartGridLayoutItem alloc];
  v197 = objc_msgSend_initWithParent_(v192, v193, v194, v195, v196, self);
  gridLayoutItem = self->_gridLayoutItem;
  self->_gridLayoutItem = v197;

  objc_msgSend_addObject_(v6, v199, v200, v201, v202, self->_gridLayoutItem);
  v207 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v203, v204, v205, v206, v6);
  objc_msgSend_setChildren_(self, v208, v209, v210, v211, v207);

  v212.receiver = self;
  v212.super_class = TSCHChartAreaLayoutItem;
  [(TSCHChartLayoutItem *)&v212 buildSubTree];
}

- (void)layoutInward
{
  if ((objc_msgSend_treeBuilt(self, a2, v2, v3, v4) & 1) == 0)
  {
    objc_msgSend_buildSubTree(self, v6, v7, v8, v9);
  }

  objc_msgSend_layoutSize(self, v6, v7, v8, v9);
  v11 = v10;
  v424 = v12;
  v16 = objc_msgSend_titleElement(self, v13, v10, v12, v14);
  if (v16)
  {
    v20 = objc_msgSend_titleElement(self, v15, v17, v18, v19);
    objc_msgSend_minSize(v20, v21, v22, v23, v24);
    v26 = v25;
  }

  else
  {
    v26 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v32 = objc_msgSend_titleElement(self, v27, v28, v29, v30);
  if (v32)
  {
    v36 = objc_msgSend_titleElement(self, v31, v33, v34, v35);
    objc_msgSend_overhangRect(v36, v37, v38, v39, v40);
  }

  v46 = objc_msgSend_dataSetNameElement(self, v41, v42, v43, v44);
  if (v46)
  {
    v50 = objc_msgSend_dataSetNameElement(self, v45, v47, v48, v49);
    objc_msgSend_minSize(v50, v51, v52, v53, v54);
    v56 = v55;
  }

  else
  {
    v56 = *(MEMORY[0x277CBF3A8] + 8);
  }

  objc_msgSend_p_dataSetNameLabelPadding(self, v57, v58, v59, v60);
  v62 = v61;
  objc_msgSend_minSize(self->_topHorizontalAxis, v63, v61, v64, v65);
  objc_msgSend_minSize(self->_bottomHorizontalAxis, v66, v67, v68, v69);
  objc_msgSend_minSize(self->_leftVerticalAxis, v70, v71, v72, v73);
  objc_msgSend_minSize(self->_rightVerticalAxis, v74, v75, v76, v77);
  v82 = objc_msgSend_chartInfo(self, v78, v79, v80, v81);
  objc_msgSend_minimumChartBodySize(v82, v83, v84, v85, v86);
  v88 = v87;
  v90 = v89;

  objc_msgSend_layoutSize(self->_leftVerticalAxis, v91, v92, v93, v94);
  v95 = v11;
  v97 = v11 - v96;
  objc_msgSend_layoutSize(self->_rightVerticalAxis, v98, v96, v99, v100);
  v102 = v97 - v101;
  objc_msgSend_layoutSize(self->_topHorizontalAxis, v103, v101, v104, v105);
  v107 = v424 - v106;
  objc_msgSend_layoutSize(self->_bottomHorizontalAxis, v108, v424, v106, v109);
  v113 = v107 - v112;
  v420 = v62;
  v114 = v26 + v56 + v62;
  v115 = v113 - v114;
  if (v102 < v88 || (v88 = v102, v115 < v90))
  {
    if (v115 < v90)
    {
      v115 = v90;
    }

    v102 = v88;
  }

  v116 = objc_msgSend_bodyLayoutItem(self, v110, v113, v114, v111);
  objc_msgSend_setLayoutSize_(v116, v117, v102, v115, v118);

  objc_msgSend_layoutSize(self->_topHorizontalAxis, v119, v120, v121, v122);
  v124 = v123;
  objc_msgSend_minSize(self->_topHorizontalAxis, v125, v126, v123, v127);
  if (v124 >= v129)
  {
    v129 = v124;
  }

  objc_msgSend_setLayoutSize_(self->_topHorizontalAxis, v128, v102, v129, v130);
  objc_msgSend_layoutSize(self->_leftVerticalAxis, v131, v132, v133, v134);
  v136 = v135;
  objc_msgSend_minSize(self->_leftVerticalAxis, v137, v135, v138, v139);
  if (v136 >= v141)
  {
    v141 = v136;
  }

  objc_msgSend_setLayoutSize_(self->_leftVerticalAxis, v140, v141, v115, v142);
  objc_msgSend_layoutSize(self->_rightVerticalAxis, v143, v144, v145, v146);
  v148 = v147;
  objc_msgSend_minSize(self->_rightVerticalAxis, v149, v147, v150, v151);
  if (v148 >= v153)
  {
    v153 = v148;
  }

  objc_msgSend_setLayoutSize_(self->_rightVerticalAxis, v152, v153, v115, v154);
  objc_msgSend_layoutSize(self->_bottomHorizontalAxis, v155, v156, v157, v158);
  v160 = v159;
  objc_msgSend_minSize(self->_bottomHorizontalAxis, v161, v162, v159, v163);
  if (v160 >= v165)
  {
    v165 = v160;
  }

  objc_msgSend_setLayoutSize_(self->_bottomHorizontalAxis, v164, v102, v165, v166);
  v172 = objc_msgSend_titleElement(self, v167, v168, v169, v170);
  if (v172)
  {
    v176 = objc_msgSend_titleElement(self, v171, v173, v174, v175);
    objc_msgSend_layoutSize(v176, v177, v178, v179, v180);
  }

  v423 = v95;

  v185 = objc_msgSend_titleElement(self, v181, v182, v183, v184);
  v422 = v26;
  objc_msgSend_setLayoutSize_(v185, v186, v102, v26, v187);

  v193 = objc_msgSend_dataSetNameElement(self, v188, v189, v190, v191);
  if (v193)
  {
    v197 = objc_msgSend_dataSetNameElement(self, v192, v194, v195, v196);
    objc_msgSend_layoutSize(v197, v198, v199, v200, v201);
  }

  v206 = objc_msgSend_dataSetNameElement(self, v202, v203, v204, v205);
  v421 = v56;
  objc_msgSend_setLayoutSize_(v206, v207, v102, v56, v208);

  objc_msgSend_p_arrangeSizedChildren(self, v209, v210, v211, v212);
  v217 = objc_msgSend_bodyLayoutItem(self, v213, v214, v215, v216);
  objc_msgSend_layoutRect(v217, v218, v219, v220, v221);
  objc_msgSend_setLayoutRect_(self->_gridLayoutItem, v222, v223, v224, v225);

  v425.receiver = self;
  v425.super_class = TSCHChartAreaLayoutItem;
  [(TSCHChartLayoutItem *)&v425 layoutInward];
  objc_msgSend_layoutSize(self->_topHorizontalAxis, v226, v227, v228, v229);
  v419 = v230;
  v232 = v231;
  v235 = objc_msgSend_titleElement(self, v233, v230, v231, v234);
  objc_msgSend_overhangMagnitudeForEdge_(v235, v236, v237, v238, v239, 3);
  v241 = v240;

  objc_msgSend_overhangMagnitudeForEdge_(self->_leftVerticalAxis, v242, v243, v244, v245, 1);
  v247 = v246;
  objc_msgSend_overhangMagnitudeForEdge_(self->_rightVerticalAxis, v248, v246, v249, v250, 1);
  if (v247 >= v252)
  {
    v252 = v247;
  }

  if (v241 >= v252)
  {
    v252 = v241;
  }

  v415 = v232;
  if (v232 >= v252)
  {
    v255 = v232;
  }

  else
  {
    v255 = v252;
  }

  objc_msgSend_layoutSize(self->_bottomHorizontalAxis, v251, v252, v253, v254);
  v418 = v256;
  v258 = v257;
  objc_msgSend_overhangMagnitudeForEdge_(self->_leftVerticalAxis, v259, v256, v257, v260, 3);
  v262 = v261;
  objc_msgSend_overhangMagnitudeForEdge_(self->_rightVerticalAxis, v263, v261, v264, v265, 3);
  if (v262 >= v267)
  {
    v267 = v262;
  }

  if (v258 >= v267)
  {
    v270 = v258;
  }

  else
  {
    v270 = v267;
  }

  objc_msgSend_layoutSize(self->_leftVerticalAxis, v266, v267, v268, v269);
  v272 = v271;
  v417 = v273;
  objc_msgSend_overhangMagnitudeForEdge_(self->_topHorizontalAxis, v274, v271, v273, v275, 0);
  v277 = v276;
  objc_msgSend_overhangMagnitudeForEdge_(self->_bottomHorizontalAxis, v278, v276, v279, v280, 0);
  if (v277 >= v282)
  {
    v282 = v277;
  }

  if (v272 >= v282)
  {
    v285 = v272;
  }

  else
  {
    v285 = v282;
  }

  objc_msgSend_layoutSize(self->_rightVerticalAxis, v281, v282, v283, v284);
  v287 = v286;
  v416 = v288;
  objc_msgSend_overhangMagnitudeForEdge_(self->_topHorizontalAxis, v289, v286, v288, v290, 2);
  v292 = v291;
  objc_msgSend_overhangMagnitudeForEdge_(self->_bottomHorizontalAxis, v293, v291, v294, v295, 2);
  if (v292 >= v297)
  {
    v297 = v292;
  }

  if (v287 >= v297)
  {
    v300 = v287;
  }

  else
  {
    v300 = v297;
  }

  v301 = objc_msgSend_bodyLayoutItem(self, v296, v297, v298, v299);
  objc_msgSend_overhangMagnitudeForEdge_(v301, v302, v303, v304, v305, 1);
  v307 = v306;

  if (v255 >= v307)
  {
    v307 = v255;
  }

  v312 = objc_msgSend_bodyLayoutItem(self, v308, v309, v310, v311);
  objc_msgSend_overhangMagnitudeForEdge_(v312, v313, v314, v315, v316, 0);
  v318 = v317;

  if (v285 < v318)
  {
    v285 = v318;
  }

  v323 = objc_msgSend_bodyLayoutItem(self, v319, v320, v321, v322);
  objc_msgSend_overhangMagnitudeForEdge_(v323, v324, v325, v326, v327, 2);
  v329 = v328;

  if (v300 >= v329)
  {
    v329 = v300;
  }

  v334 = objc_msgSend_bodyLayoutItem(self, v330, v331, v332, v333);
  objc_msgSend_overhangMagnitudeForEdge_(v334, v335, v336, v337, v338, 3);
  v340 = v339;

  if (v270 >= v340)
  {
    v340 = v270;
  }

  v343 = vabdd_f64(v419, v419) >= 0.01;
  v344 = vabdd_f64(v415, v307) >= 0.01 || v343;
  if (v344 == 1)
  {
    objc_msgSend_setLayoutSize_(self->_topHorizontalAxis, v341, v419, v307, v342);
  }

  if (vabdd_f64(v418, v418) >= 0.01 || vabdd_f64(v258, v340) >= 0.01)
  {
    objc_msgSend_setLayoutSize_(self->_bottomHorizontalAxis, v341, v418, v340, v342);
    LOBYTE(v344) = 1;
  }

  if (vabdd_f64(v272, v285) >= 0.01 || vabdd_f64(v417, v417) >= 0.01)
  {
    objc_msgSend_setLayoutSize_(self->_leftVerticalAxis, v341, v285, v417, v342);
    LOBYTE(v344) = 1;
  }

  v345 = v416;
  if (vabdd_f64(v287, v329) >= 0.01 || (v346 = vabdd_f64(v416, v416), v346 >= 0.01))
  {
    objc_msgSend_setLayoutSize_(self->_rightVerticalAxis, v341, v329, v416, v342);
    v348 = v423;
    v347 = v424;
  }

  else
  {
    v348 = v423;
    v347 = v424;
    if ((v344 & 1) == 0)
    {
      v349 = v422;
      goto LABEL_76;
    }
  }

  relayoutDepth = self->_relayoutDepth;
  v349 = v422;
  if (relayoutDepth <= 9)
  {
    self->_relayoutDepth = relayoutDepth + 1;
    objc_msgSend_layoutInward(self, v341, v346, v345, v342);
  }

LABEL_76:
  self->_relayoutDepth = 0;
  v351 = objc_msgSend_bodyLayoutItem(self, v341, v346, v345, v342);
  objc_msgSend_layoutSize(v351, v352, v353, v354, v355);
  v357 = v356;
  v359 = v358;

  objc_msgSend_layoutSize(self->_leftVerticalAxis, v360, v361, v362, v363);
  v365 = v357 + v364;
  objc_msgSend_layoutSize(self->_rightVerticalAxis, v366, v364, v367, v368);
  v370 = v365 + v369;
  objc_msgSend_layoutSize(self->_topHorizontalAxis, v371, v369, v372, v373);
  v375 = v359 + v374;
  objc_msgSend_layoutSize(self->_bottomHorizontalAxis, v376, v377, v374, v378);
  v382 = v421 + v349 + v375 + v381;
  v383 = v420;
  v384 = v420 + v382;
  if (v370 > v348 || v384 > v347)
  {
    objc_msgSend_setLayoutSize_(self, v379, v370, v384, v380);
  }

  if (v370 <= v348 + -0.001)
  {
    v385 = MEMORY[0x277D81150];
    v386 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v379, v348 + -0.001, v383, v380, "[TSCHChartAreaLayoutItem layoutInward]");
    v391 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v387, v388, v389, v390, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAreaLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v385, v392, v393, v394, v395, v386, v391, 418, 0, "layout width does not match expectation. width:%f expectation:%f", *&v370, *&v348);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v396, v397, v398, v399);
  }

  if (v384 <= v347 + -0.001)
  {
    v400 = MEMORY[0x277D81150];
    v401 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v379, v347 + -0.001, v383, v380, "[TSCHChartAreaLayoutItem layoutInward]");
    v406 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v402, v403, v404, v405, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAreaLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v400, v407, v408, v409, v410, v401, v406, 420, 0, "layout height does not match expectation. height:%f expectation:%f", *&v384, *&v347);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v411, v412, v413, v414);
  }
}

- (void)layoutOutward
{
  self->_inOutwardLayout = 1;
  v7 = objc_msgSend_bodyLayoutItem(self, a2, v2, v3, v4);
  if (v7)
  {
    v11 = objc_msgSend_bodyLayoutItem(self, v6, v8, v9, v10);
    objc_msgSend_layoutRect(v11, v12, v13, v14, v15);
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
  }

  else
  {
    v17 = *MEMORY[0x277CBF3A0];
    v19 = *(MEMORY[0x277CBF3A0] + 8);
    v21 = *(MEMORY[0x277CBF3A0] + 16);
    v23 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v28 = objc_msgSend_titleElement(self, v24, v25, v26, v27);

  if (v28)
  {
    v33 = objc_msgSend_titleElement(self, v29, v30, v31, v32);
    objc_msgSend_setChartBodyWidth_(v33, v34, v21, v35, v36);
  }

  v37 = objc_msgSend_dataSetNameElement(self, v29, v30, v31, v32);

  if (v37)
  {
    v42 = objc_msgSend_dataSetNameElement(self, v38, v39, v40, v41);
    objc_msgSend_setChartBodyWidth_(v42, v43, v21, v44, v45);
  }

  objc_msgSend_setChartBodySize_(self->_topHorizontalAxis, v38, v21, v23, v41);
  objc_msgSend_setChartBodySize_(self->_bottomHorizontalAxis, v46, v21, v23, v47);
  objc_msgSend_setChartBodySize_(self->_leftVerticalAxis, v48, v21, v23, v49);
  objc_msgSend_setChartBodySize_(self->_rightVerticalAxis, v50, v21, v23, v51);
  v424.receiver = self;
  v424.super_class = TSCHChartAreaLayoutItem;
  [(TSCHChartLayoutItem *)&v424 layoutOutward];
  if (v21 <= 0.0 || v23 <= 0.0)
  {
    v281 = MEMORY[0x277D81150];
    v282 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, v53, v54, v55, "[TSCHChartAreaLayoutItem layoutOutward]");
    v287 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v283, v284, v285, v286, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAreaLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v281, v288, v289, v290, v291, v282, v287, 453, 0, "This chart has a body dimension <= 0.0. Bailing out.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v292, v293, v294, v295);
    return;
  }

  v417 = v19;
  v418 = v17;
  v56 = objc_msgSend_titleElement(self, v52, v53, v54, v55);

  if (v56)
  {
    v61 = objc_msgSend_titleElement(self, v57, v58, v59, v60);
    objc_msgSend_layoutSize(v61, v62, v63, v64, v65);
    v67 = v66;
    v71 = objc_msgSend_titleElement(self, v68, v69, v66, v70);
    objc_msgSend_setLayoutSize_(v71, v72, v21, v67, v73);

    v78 = objc_msgSend_titleElement(self, v74, v75, v76, v77);
    objc_msgSend_layoutInward(v78, v79, v80, v81, v82);
  }

  v83 = objc_msgSend_dataSetNameElement(self, v57, v58, v59, v60);

  if (v83)
  {
    v88 = objc_msgSend_dataSetNameElement(self, v84, v85, v86, v87);
    objc_msgSend_layoutSize(v88, v89, v90, v91, v92);
    v94 = v93;
    v98 = objc_msgSend_dataSetNameElement(self, v95, v96, v93, v97);
    objc_msgSend_setLayoutSize_(v98, v99, v21, v94, v100);

    v105 = objc_msgSend_dataSetNameElement(self, v101, v102, v103, v104);
    objc_msgSend_layoutInward(v105, v106, v107, v108, v109);
  }

  objc_msgSend_layoutSize(self->_topHorizontalAxis, v84, v85, v86, v87);
  v111 = v110;
  v115 = objc_msgSend_titleElement(self, v112, v113, v110, v114);
  objc_msgSend_overhangMagnitudeForEdge_(v115, v116, v117, v118, v119, 3);
  v121 = v120;

  if (v111 >= v121)
  {
    objc_msgSend_setLayoutSize_(self->_topHorizontalAxis, v122, v21, v111, v123);
  }

  else
  {
    objc_msgSend_setLayoutSize_(self->_topHorizontalAxis, v122, v21, v121, v123);
  }

  objc_msgSend_layoutInward(self->_topHorizontalAxis, v124, v125, v126, v127);
  objc_msgSend_layoutSize(self->_bottomHorizontalAxis, v128, v129, v130, v131);
  v416 = v21;
  objc_msgSend_setLayoutSize_(self->_bottomHorizontalAxis, v132, v21, v133, v134);
  objc_msgSend_layoutInward(self->_bottomHorizontalAxis, v135, v136, v137, v138);
  objc_msgSend_layoutSize(self->_leftVerticalAxis, v139, v140, v141, v142);
  objc_msgSend_setLayoutSize_(self->_leftVerticalAxis, v143, v144, v23, v145);
  objc_msgSend_layoutInward(self->_leftVerticalAxis, v146, v147, v148, v149);
  objc_msgSend_layoutSize(self->_rightVerticalAxis, v150, v151, v152, v153);
  v415 = v23;
  objc_msgSend_setLayoutSize_(self->_rightVerticalAxis, v154, v155, v23, v156);
  objc_msgSend_layoutInward(self->_rightVerticalAxis, v157, v158, v159, v160);
  for (i = 0; ; ++i)
  {
    objc_msgSend_layoutSize(self->_topHorizontalAxis, v161, v162, v163, v164);
    v419 = v166;
    v168 = v167;
    objc_msgSend_layoutSize(self->_bottomHorizontalAxis, v169, v166, v167, v170);
    v420 = v171;
    v173 = v172;
    objc_msgSend_layoutSize(self->_leftVerticalAxis, v174, v171, v172, v175);
    v177 = v176;
    v421 = v178;
    objc_msgSend_layoutSize(self->_rightVerticalAxis, v179, v176, v178, v180);
    v182 = v181;
    v423 = v183;
    v186 = objc_msgSend_bodyLayoutItem(self, v184, v181, v183, v185);
    objc_msgSend_overhangMagnitudeForEdge_(v186, v187, v188, v189, v190, 1);
    v192 = v191;

    if (v168 >= v192)
    {
      v197 = v168;
    }

    else
    {
      v197 = v192;
    }

    v198 = objc_msgSend_bodyLayoutItem(self, v193, v194, v195, v196);
    objc_msgSend_overhangMagnitudeForEdge_(v198, v199, v200, v201, v202, 0);
    v204 = v203;

    if (v177 >= v204)
    {
      v209 = v177;
    }

    else
    {
      v209 = v204;
    }

    v210 = objc_msgSend_bodyLayoutItem(self, v205, v206, v207, v208);
    objc_msgSend_overhangMagnitudeForEdge_(v210, v211, v212, v213, v214, 2);
    v216 = v215;

    v422 = v182;
    if (v182 < v216)
    {
      v182 = v216;
    }

    v221 = objc_msgSend_bodyLayoutItem(self, v217, v218, v219, v220);
    objc_msgSend_overhangMagnitudeForEdge_(v221, v222, v223, v224, v225, 3);
    v227 = v226;

    if (v173 >= v227)
    {
      v227 = v173;
    }

    objc_msgSend_overhangMagnitudeForEdge_(self->_bottomHorizontalAxis, v228, v229, v230, v231, 0);
    if (v209 < v233)
    {
      v209 = v233;
    }

    objc_msgSend_overhangMagnitudeForEdge_(self->_topHorizontalAxis, v232, v233, v234, v235, 0);
    if (v209 >= v237)
    {
      v240 = v209;
    }

    else
    {
      v240 = v237;
    }

    objc_msgSend_overhangMagnitudeForEdge_(self->_bottomHorizontalAxis, v236, v237, v238, v239, 2);
    if (v182 >= v242)
    {
      v245 = v182;
    }

    else
    {
      v245 = v242;
    }

    objc_msgSend_overhangMagnitudeForEdge_(self->_topHorizontalAxis, v241, v242, v243, v244, 2);
    if (v245 < v247)
    {
      v245 = v247;
    }

    objc_msgSend_overhangMagnitudeForEdge_(self->_leftVerticalAxis, v246, v247, v248, v249, 1);
    if (v197 < v251)
    {
      v197 = v251;
    }

    objc_msgSend_overhangMagnitudeForEdge_(self->_rightVerticalAxis, v250, v251, v252, v253, 1);
    if (v197 < v255)
    {
      v197 = v255;
    }

    objc_msgSend_overhangMagnitudeForEdge_(self->_leftVerticalAxis, v254, v255, v256, v257, 3);
    if (v227 < v259)
    {
      v227 = v259;
    }

    objc_msgSend_overhangMagnitudeForEdge_(self->_rightVerticalAxis, v258, v259, v260, v261, 3);
    if (v227 < v262)
    {
      v227 = v262;
    }

    v263 = v168 != v197;
    if (v263)
    {
      objc_msgSend_setLayoutSize_(self->_topHorizontalAxis, v161, v419, v197, v164);
      objc_msgSend_layoutInward(self->_topHorizontalAxis, v264, v265, v266, v267);
    }

    if (v173 != v227)
    {
      objc_msgSend_setLayoutSize_(self->_bottomHorizontalAxis, v161, v420, v227, v164);
      objc_msgSend_layoutInward(self->_bottomHorizontalAxis, v268, v269, v270, v271);
      v263 = 1;
    }

    if (v177 != v240)
    {
      objc_msgSend_setLayoutSize_(self->_leftVerticalAxis, v161, v240, v421, v164);
      objc_msgSend_layoutInward(self->_leftVerticalAxis, v272, v273, v274, v275);
      v263 = 1;
    }

    v162 = v422;
    v163 = v423;
    if (v422 == v245)
    {
      break;
    }

    objc_msgSend_setLayoutSize_(self->_rightVerticalAxis, v161, v245, v423, v164);
    objc_msgSend_layoutInward(self->_rightVerticalAxis, v276, v277, v278, v279);
    if (i >= 4)
    {
      goto LABEL_62;
    }

LABEL_59:
    ;
  }

  if (i < 4 && v263)
  {
    goto LABEL_59;
  }

  if (!v263)
  {
    goto LABEL_63;
  }

LABEL_62:
  v296 = MEMORY[0x277D81150];
  i = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v161, v162, v163, v164, "[TSCHChartAreaLayoutItem layoutOutward]");
  v301 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v297, v298, v299, v300, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAreaLayoutItem.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v296, v302, v303, v304, v305, i, v301, 542, 0, "Exited loop on iterations while still having overhang issues.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v306, v307, v308, v309);
LABEL_63:
  objc_msgSend_p_arrangeSizedChildren(self, v161, v162, v163, v164);
  v314 = objc_msgSend_bodyLayoutItem(self, v310, v311, v312, v313);
  objc_msgSend_layoutRect(v314, v315, v316, v317, v318);
  objc_msgSend_setLayoutRect_(self->_gridLayoutItem, v319, v320, v321, v322);

  v328 = objc_msgSend_titleElement(self, v323, v324, v325, v326);
  if (v328)
  {
    i = objc_msgSend_titleElement(self, v327, v329, v330, v331);
    objc_msgSend_layoutRect(i, v332, v333, v334, v335);
    v337 = v336;
    v339 = v338;
    v341 = v340;
    v343 = v342;
    v345 = v417;
    v344 = v418;
    v347 = v415;
    v346 = v416;
  }

  else
  {
    v345 = v417;
    v344 = v418;
    v337 = v418;
    v339 = v417;
    v347 = v415;
    v346 = v416;
    v341 = v416;
    v343 = v415;
  }

  v425 = CGRectUnion(*&v344, *&v337);
  x = v425.origin.x;
  y = v425.origin.y;
  width = v425.size.width;
  height = v425.size.height;
  if (v328)
  {
  }

  v357 = objc_msgSend_dataSetNameElement(self, v352, v353, v354, v355);
  if (v357)
  {
    i = objc_msgSend_dataSetNameElement(self, v356, v358, v359, v360);
    objc_msgSend_layoutRect(i, v361, v362, v363, v364);
    v366 = v365;
    v368 = v367;
    v370 = v369;
    v372 = v371;
  }

  else
  {
    v372 = height;
    v370 = width;
    v368 = y;
    v366 = x;
  }

  v426.origin.x = x;
  v426.origin.y = y;
  v426.size.width = width;
  v426.size.height = height;
  v427 = CGRectUnion(v426, *&v366);
  v373 = v427.origin.x;
  v374 = v427.origin.y;
  v375 = v427.size.width;
  v376 = v427.size.height;
  if (v357)
  {
  }

  objc_msgSend_layoutRect(self->_bottomHorizontalAxis, v377, v378, v379, v380);
  v436.origin.x = v381;
  v436.origin.y = v382;
  v436.size.width = v383;
  v436.size.height = v384;
  v428.origin.x = v373;
  v428.origin.y = v374;
  v428.size.width = v375;
  v428.size.height = v376;
  v429 = CGRectUnion(v428, v436);
  v385 = v429.origin.x;
  v386 = v429.origin.y;
  v387 = v429.size.width;
  v388 = v429.size.height;
  objc_msgSend_layoutRect(self->_rightVerticalAxis, v389, v429.origin.x, v429.origin.y, v429.size.width);
  v437.origin.x = v390;
  v437.origin.y = v391;
  v437.size.width = v392;
  v437.size.height = v393;
  v430.origin.x = v385;
  v430.origin.y = v386;
  v430.size.width = v387;
  v430.size.height = v388;
  v431 = CGRectUnion(v430, v437);
  v394 = v431.origin.x;
  v395 = v431.origin.y;
  v396 = v431.size.width;
  v397 = v431.size.height;
  objc_msgSend_layoutRect(self->_leftVerticalAxis, v398, v431.origin.x, v431.origin.y, v431.size.width);
  v438.origin.x = v399;
  v438.origin.y = v400;
  v438.size.width = v401;
  v438.size.height = v402;
  v432.origin.x = v394;
  v432.origin.y = v395;
  v432.size.width = v396;
  v432.size.height = v397;
  v433 = CGRectUnion(v432, v438);
  v403 = v433.origin.x;
  v404 = v433.origin.y;
  v405 = v433.size.width;
  v406 = v433.size.height;
  objc_msgSend_layoutRect(self->_topHorizontalAxis, v407, v433.origin.x, v433.origin.y, v433.size.width);
  v439.origin.x = v408;
  v439.origin.y = v409;
  v439.size.width = v410;
  v439.size.height = v411;
  v434.origin.x = v403;
  v434.origin.y = v404;
  v434.size.width = v405;
  v434.size.height = v406;
  v435 = CGRectUnion(v434, v439);
  objc_msgSend_setLayoutSize_(self, v412, v435.size.width, v435.size.height, v435.size.width);
  objc_msgSend_setLayoutOffset_(self, v413, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v414);
  self->_inOutwardLayout = 0;
}

- (id)renderersWithRep:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v10 = objc_msgSend_titleElement(self, v6, v7, v8, v9);

  if (v10)
  {
    v15 = objc_msgSend_titleElement(self, v11, v12, v13, v14);
    v20 = objc_msgSend_renderersWithRep_(v15, v16, v17, v18, v19, v4);
    objc_msgSend_addObjectsFromArray_(v5, v21, v22, v23, v24, v20);
  }

  v25 = objc_msgSend_dataSetNameElement(self, v11, v12, v13, v14);

  if (v25)
  {
    v30 = objc_msgSend_dataSetNameElement(self, v26, v27, v28, v29);
    v35 = objc_msgSend_renderersWithRep_(v30, v31, v32, v33, v34, v4);
    objc_msgSend_addObjectsFromArray_(v5, v36, v37, v38, v39, v35);
  }

  v40 = objc_msgSend_renderersWithRep_(self->_gridLayoutItem, v26, v27, v28, v29, v4);
  objc_msgSend_addObjectsFromArray_(v5, v41, v42, v43, v44, v40);

  v45 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v50 = objc_msgSend_renderersWithRep_(self->_topHorizontalAxis, v46, v47, v48, v49, v4);
  objc_msgSend_addObjectsFromArray_(v45, v51, v52, v53, v54, v50);

  v59 = objc_msgSend_renderersWithRep_(self->_rightVerticalAxis, v55, v56, v57, v58, v4);
  objc_msgSend_addObjectsFromArray_(v45, v60, v61, v62, v63, v59);

  v68 = objc_msgSend_renderersWithRep_(self->_leftVerticalAxis, v64, v65, v66, v67, v4);
  objc_msgSend_addObjectsFromArray_(v45, v69, v70, v71, v72, v68);

  v77 = objc_msgSend_renderersWithRep_(self->_bottomHorizontalAxis, v73, v74, v75, v76, v4);
  objc_msgSend_addObjectsFromArray_(v45, v78, v79, v80, v81, v77);

  v82 = [TSCHCompositeRenderer alloc];
  v87 = objc_msgSend_initWithChartRep_withSubRenderers_(v82, v83, v84, v85, v86, v4, v45);
  objc_msgSend_addObject_(v5, v88, v89, v90, v91, v87);

  v96 = objc_msgSend_bodyLayoutItem(self, v92, v93, v94, v95);
  v101 = objc_msgSend_renderersWithRep_(v96, v97, v98, v99, v100, v4);
  objc_msgSend_addObjectsFromArray_(v5, v102, v103, v104, v105, v101);

  if ((objc_msgSend_is2DRepFor3DChartRep(v4, v106, v107, v108, v109) & 1) == 0)
  {
    v110 = [TSCHReferenceLineRenderer alloc];
    v115 = objc_msgSend_initWithChartRep_layoutItem_(v110, v111, v112, v113, v114, v4, self);
    objc_msgSend_addObject_(v5, v116, v117, v118, v119, v115);
  }

  return v5;
}

- (CGRect)i_currentBufferAreaUnitRect
{
  if (self->_inOutwardLayout)
  {
    TSURectWithCenterAndSize();
  }

  else
  {
    leftVerticalAxis = self->_leftVerticalAxis;
    if (leftVerticalAxis)
    {
      objc_msgSend_layoutSize(leftVerticalAxis, a2, v2, v3, v4);
    }

    rightVerticalAxis = self->_rightVerticalAxis;
    if (rightVerticalAxis)
    {
      objc_msgSend_layoutSize(rightVerticalAxis, a2, v2, v3, v4);
    }

    topHorizontalAxis = self->_topHorizontalAxis;
    if (topHorizontalAxis)
    {
      objc_msgSend_layoutSize(topHorizontalAxis, a2, v2, v3, v4);
    }

    bottomHorizontalAxis = self->_bottomHorizontalAxis;
    if (bottomHorizontalAxis)
    {
      objc_msgSend_layoutSize(bottomHorizontalAxis, a2, v2, v3, v4);
    }

    TSUSubtractPoints();
    TSURectWithOriginAndSize();
  }

  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (void)p_updateMinHitSizes
{
  v6 = objc_msgSend_dataSetNameElement(self, a2, v2, v3, v4);

  if (v6)
  {
    v11 = objc_msgSend_dataSetNameElement(self, v7, v8, v9, v10);
    isAboveChartBody = objc_msgSend_isAboveChartBody(v11, v12, v13, v14, v15);

    if (isAboveChartBody)
    {
      v21 = objc_msgSend_titleElement(self, v17, v18, v19, v20);
      isTitleOn = objc_msgSend_isTitleOn(v21, v22, v23, v24, v25);

      if (isTitleOn)
      {
        v31 = objc_msgSend_titleElement(self, v27, v28, v29, v30);
        objc_msgSend_setMinHitSize_(v31, v32, 22.0, v33, v34);

        v77 = objc_msgSend_dataSetNameElement(self, v35, v36, v37, v38);
        objc_msgSend_setMinHitSize_(v77, v39, 22.0, v40, v41);
      }

      else
      {
        v54 = sub_276277000();
        v58 = objc_msgSend_titleElement(self, v55, v54, v56, v57);
        objc_msgSend_setMinHitSize_(v58, v59, v54, v60, v61);

        v62 = sub_276277000();
        v77 = objc_msgSend_dataSetNameElement(self, v63, v62, v64, v65);
        objc_msgSend_setMinHitSize_(v77, v66, v62, v67, v68);
      }
    }

    else
    {
      v77 = objc_msgSend_axisTitleLayoutItem(self->_bottomHorizontalAxis, v17, v18, v19, v20);
      if (objc_msgSend_isTitleOn(v77, v42, v43, v44, v45))
      {
        v49 = 22.0;
        objc_msgSend_setMinHitSize_(v77, v46, 22.0, v47, v48);
      }

      else
      {
        v69 = sub_276277000();
        objc_msgSend_setMinHitSize_(v77, v70, v69, v71, v72);
        v51 = sub_276277000();
        v49 = v51;
      }

      v73 = objc_msgSend_dataSetNameElement(self, v50, v51, v52, v53);
      objc_msgSend_setMinHitSize_(v73, v74, v49, v75, v76);
    }
  }
}

- (void)iterateHitChartElements:(CGPoint)a3 withBlock:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  objc_msgSend_p_updateMinHitSizes(self, v8, v9, v10, v11);
  v12.receiver = self;
  v12.super_class = TSCHChartAreaLayoutItem;
  [(TSCHChartLayoutItem *)&v12 iterateHitChartElements:v7 withBlock:x, y];
}

@end
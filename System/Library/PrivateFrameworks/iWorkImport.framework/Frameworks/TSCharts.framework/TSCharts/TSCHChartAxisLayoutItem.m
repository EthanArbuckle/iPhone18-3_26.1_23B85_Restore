@interface TSCHChartAxisLayoutItem
- (CGRect)calcOverhangRect;
- (CGRect)protected_layoutSpaceRectForAllLabels;
- (CGSize)calcMinSize;
- (CGSize)chartBodySize;
- (TSCHChartAxisLayoutItem)initWithParent:(id)a3 axisPosition:(int)a4;
- (id)axis;
- (id)p_description;
- (id)p_subselectionHaloPositionsForLabelsSelections:(id)a3;
- (id)p_subselectionKnobPositionsForLabelsSelection:(id)a3;
- (id)subselectionHaloPositionsForSelections:(id)a3;
- (id)subselectionKnobPositionsForSelection:(id)a3;
- (void)layoutInward;
- (void)layoutOutward;
- (void)setChartBodySize:(CGSize)a3;
@end

@implementation TSCHChartAxisLayoutItem

- (TSCHChartAxisLayoutItem)initWithParent:(id)a3 axisPosition:(int)a4
{
  v27.receiver = self;
  v27.super_class = TSCHChartAxisLayoutItem;
  v7 = [(TSCHChartLayoutItem *)&v27 initWithParent:?];
  if (v7)
  {
    if (!a3)
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCHChartAxisLayoutItem initWithParent:axisPosition:]");
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxisLayoutItem.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 36, 0, "invalid nil value for '%{public}s'", "parent");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
    }

    v7->_axisPosition = a4;
  }

  return v7;
}

- (id)axis
{
  v6 = objc_msgSend_model(self, a2, v2, v3, v4);
  v11 = objc_msgSend_axisID(self, v7, v8, v9, v10);
  v16 = objc_msgSend_axisForID_(v6, v12, v13, v14, v15, v11);

  return v16;
}

- (void)setChartBodySize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  axisTitle = self->_axisTitle;
  if (axisTitle)
  {
    objc_msgSend_setChartBodySize_(axisTitle, a2, a3.width, a3.height, v3);
  }

  self->_chartBodySize.width = width;
  self->_chartBodySize.height = height;
}

- (CGSize)calcMinSize
{
  v60 = *MEMORY[0x277D85DE8];
  width = *MEMORY[0x277CBF3A8];
  height = *(MEMORY[0x277CBF3A8] + 8);
  axisPosition = self->_axisPosition;
  if (axisPosition > 6)
  {
    goto LABEL_27;
  }

  if (((1 << axisPosition) & 0x2A) != 0)
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v8 = objc_msgSend_children(self, a2, 0.0, v3, v4, 0);
    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v21, v22, v23, v24, &v50, v58, 16);
    if (v25)
    {
      v30 = v25;
      v31 = *v51;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v51 != v31)
          {
            objc_enumerationMutation(v8);
          }

          objc_msgSend_minSize(*(*(&v50 + 1) + 8 * i), v26, v27, v28, v29);
          if (height < v28)
          {
            height = v28;
          }

          width = width + v27;
        }

        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v26, v27, v28, v29, &v50, v58, 16);
      }

      while (v30);
    }

    goto LABEL_23;
  }

  if (((1 << axisPosition) & 0x14) == 0)
  {
    if (axisPosition == 6)
    {
      width = self->_chartBodySize.width;
      height = self->_chartBodySize.height;
      goto LABEL_24;
    }

LABEL_27:
    v35 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCHChartAxisLayoutItem calcMinSize]");
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxisLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v42, v43, v44, v45, v36, v41, 88, 0, "Direction not set");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48, v49);
    goto LABEL_24;
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v8 = objc_msgSend_children(self, a2, 0.0, v3, v4);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, v10, v11, v12, &v54, v59, 16);
  if (v13)
  {
    v18 = v13;
    v19 = *v55;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v55 != v19)
        {
          objc_enumerationMutation(v8);
        }

        objc_msgSend_minSize(*(*(&v54 + 1) + 8 * j), v14, v15, v16, v17);
        if (width < v15)
        {
          width = v15;
        }

        height = height + v16;
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v14, v15, v16, v17, &v54, v59, 16);
    }

    while (v18);
  }

LABEL_23:

LABEL_24:
  v33 = width;
  v34 = height;
  result.height = v34;
  result.width = v33;
  return result;
}

- (CGRect)calcOverhangRect
{
  v22.receiver = self;
  v22.super_class = TSCHChartAxisLayoutItem;
  [(TSCHChartLayoutItem *)&v22 calcOverhangRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  objc_msgSend_layoutSize(self, v11, v3, v5, v7);
  TSURectWithSize();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v23.origin.x = v4;
  v23.origin.y = v6;
  v23.size.width = v8;
  v23.size.height = v10;
  v25.origin.x = v13;
  v25.origin.y = v15;
  v25.size.width = v17;
  v25.size.height = v19;
  result = CGRectUnion(v23, v25);
  axisPosition = self->_axisPosition;
  if ((axisPosition - 5) >= 2)
  {
    if (axisPosition == 2 || axisPosition == 4)
    {
      result.size.height = v19;
      result.origin.y = v15;
    }

    else
    {
      if ((axisPosition & 0xFFFFFFFD) != 1)
      {
        result.size.height = v19;
        result.origin.y = v15;
      }

      result.size.width = v17;
      result.origin.x = v13;
    }
  }

  return result;
}

- (id)p_description
{
  v11.receiver = self;
  v11.super_class = TSCHChartAxisLayoutItem;
  v4 = [(TSCHChartLayoutItem *)&v11 p_description];
  v8 = self->_axisPosition - 1;
  if (v8 > 5)
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v3, v5, v6, v7, v4, @" Unknown%@");
  }

  else
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v3, v5, v6, v7, v4, off_27A6B7210[v8]);
  }
  v9 = ;

  return v9;
}

- (void)layoutInward
{
  if ((objc_msgSend_treeBuilt(self, a2, v2, v3, v4) & 1) == 0)
  {
    objc_msgSend_buildSubTree(self, v6, v7, v8, v9);
  }

  objc_msgSend_layoutSize(self, v6, v7, v8, v9);
  v11 = v10;
  v13 = v12;
  objc_msgSend_minSize(self->_axisLine, v14, v10, v12, v15);
  v17 = v16;
  objc_msgSend_minSize(self->_axisPadding, v18, v16, v19, v20);
  axisTitle = self->_axisTitle;
  if (axisTitle)
  {
    objc_msgSend_minSize(axisTitle, v21, v22, v23, v24);
    v26 = v22;
    v27 = v23;
  }

  else
  {
    v26 = *MEMORY[0x277CBF3A8];
    v27 = *(MEMORY[0x277CBF3A8] + 8);
  }

  tickMarks = self->_tickMarks;
  if (tickMarks)
  {
    objc_msgSend_minSize(tickMarks, v21, v22, v23, v24);
  }

  else
  {
    v29 = *MEMORY[0x277CBF3A8];
  }

  refLineLabelPadding = self->_refLineLabelPadding;
  if (refLineLabelPadding)
  {
    objc_msgSend_minSize(refLineLabelPadding, v21, v29, v23, v24);
    v289 = v31;
  }

  else
  {
    v31 = *MEMORY[0x277CBF3A8];
    v289 = *MEMORY[0x277CBF3A8];
  }

  refLineLabels = self->_refLineLabels;
  if (refLineLabels)
  {
    objc_msgSend_minSize(refLineLabels, v21, v31, v23, v24);
  }

  axisPosition = self->_axisPosition;
  if (axisPosition > 3)
  {
    if (axisPosition != 4)
    {
      if (axisPosition == 5)
      {
        v216 = *(MEMORY[0x277CBF3A8] + 8);
        v290 = *MEMORY[0x277CBF3A8];
        objc_msgSend_setLayoutSize_(self->_axisTitle, v21, *MEMORY[0x277CBF3A8], v216, v24);
        v217 = *MEMORY[0x277CBF348];
        v218 = *(MEMORY[0x277CBF348] + 8);
        objc_msgSend_setLayoutOffset_(self->_axisTitle, v219, *MEMORY[0x277CBF348], v218, v220);
        TSURectWithOriginAndSize();
        v222 = v221;
        v224 = v223;
        objc_msgSend_setLayoutOffset_(self->_axisLine, v225, v226, v227, v221);
        objc_msgSend_setLayoutSize_(self->_axisLine, v228, v222, v224, v229);
        v232 = self->_tickMarks;
        if (v232)
        {
          TSURectWithOriginAndSize();
          v234 = v233;
          v236 = v235;
          objc_msgSend_setLayoutOffset_(v232, v237, v238, v239, v233);
          objc_msgSend_setLayoutSize_(self->_tickMarks, v240, v234, v236, v241);
        }

        objc_msgSend_setLayoutSize_(self->_axisPadding, v230, v290, v216, v231, *&v289);
        objc_msgSend_setLayoutOffset_(self->_axisPadding, v242, v217, v218, v243);
        goto LABEL_52;
      }

      if (axisPosition == 6)
      {
        v82 = *MEMORY[0x277CBF3A8];
        v83 = *(MEMORY[0x277CBF3A8] + 8);
        objc_msgSend_setLayoutSize_(self->_axisTitle, v21, *MEMORY[0x277CBF3A8], v83, v24);
        v84 = *MEMORY[0x277CBF348];
        v85 = *(MEMORY[0x277CBF348] + 8);
        objc_msgSend_setLayoutOffset_(self->_axisTitle, v86, *MEMORY[0x277CBF348], v85, v87);
        objc_msgSend_setLayoutSize_(self->_axisPadding, v88, v82, v83, v89);
        objc_msgSend_setLayoutOffset_(self->_axisPadding, v90, v84, v85, v91);
        TSURectWithOriginAndSize();
        v93 = v92;
        v95 = v94;
        v97 = v96;
        v99 = v98;
        objc_msgSend_setLayoutOffset_(self->_axisLine, v100, v92, v94, v96);
        objc_msgSend_setLayoutSize_(self->_axisLine, v101, v97, v99, v102);
        v107 = self->_tickMarks;
        if (v107)
        {
          objc_msgSend_setLayoutOffset_(v107, v103, v93, v95, v106);
          objc_msgSend_setLayoutSize_(self->_tickMarks, v108, v97, v99, v109, *&v289);
        }

        goto LABEL_52;
      }

      goto LABEL_53;
    }

    v156 = self->_axisTitle;
    if (v156)
    {
      objc_msgSend_setLayoutOffset_(v156, v21, 0.0, v13 - v27, v24);
      objc_msgSend_setLayoutSize_(self->_axisTitle, v157, v11, v27, v158);
    }

    TSURectWithOriginAndSize();
    v245 = v244;
    v247 = v246;
    v249 = v248;
    v251 = v250;
    objc_msgSend_setLayoutOffset_(self->_axisLine, v252, v244, v246, v248);
    objc_msgSend_setLayoutSize_(self->_axisLine, v253, v249, v251, v254);
    v302.origin.x = v245;
    v302.origin.y = v247;
    v302.size.width = v249;
    v302.size.height = v251;
    CGRectGetMaxY(v302);
    TSURectWithOriginAndSize();
    v259 = v256;
    v260 = v257;
    v261 = v258;
    v263 = v262;
    v264 = self->_tickMarks;
    if (v264)
    {
      objc_msgSend_setLayoutOffset_(v264, v255, v256, v257, v258);
      objc_msgSend_setLayoutSize_(self->_tickMarks, v265, v261, v263, v266);
    }

    v303.origin.x = v259;
    v303.origin.y = v260;
    v303.size.width = v261;
    v303.size.height = v263;
    CGRectGetMaxY(v303);
    TSURectWithOriginAndSize();
    v268 = v267;
    v270 = v269;
    objc_msgSend_setLayoutOffset_(self->_axisPadding, v271, v272, v273, v267);
    objc_msgSend_setLayoutSize_(self->_axisPadding, v274, v268, v270, v275);
    if (!self->_refLineLabelPadding && !self->_refLineLabels)
    {
      goto LABEL_52;
    }

    v276 = MEMORY[0x277D81150];
    v146 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v103, v104, v105, v106, "[TSCHChartAxisLayoutItem layoutInward]", *&v289);
    v151 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v277, v278, v279, v280, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxisLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v276, v281, v282, v283, v284, v146, v151, 312, 0, "Not expecting reference line on this axis");
LABEL_51:

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v285, v286, v287, v288);
    goto LABEL_52;
  }

  switch(axisPosition)
  {
    case 1:
      v110 = self->_axisTitle;
      if (v110)
      {
        objc_msgSend_setLayoutOffset_(v110, v21, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v24);
        objc_msgSend_setLayoutSize_(self->_axisTitle, v111, v26, v13, v112);
      }

      TSURectWithOriginAndSize();
      v114 = v113;
      v116 = v115;
      v118 = v117;
      v120 = v119;
      objc_msgSend_setLayoutOffset_(self->_axisLine, v121, v113, v115, v117);
      objc_msgSend_setLayoutSize_(self->_axisLine, v122, v118, v120, v123);
      v296.origin.x = v114;
      v296.origin.y = v116;
      v296.size.width = v118;
      v296.size.height = v120;
      CGRectGetMinX(v296);
      TSURectWithOriginAndSize();
      v128 = v125;
      v129 = v126;
      v130 = v127;
      v132 = v131;
      v133 = self->_tickMarks;
      if (v133)
      {
        objc_msgSend_setLayoutOffset_(v133, v124, v125, v126, v127);
        objc_msgSend_setLayoutSize_(self->_tickMarks, v134, v130, v132, v135);
      }

      v297.origin.x = v128;
      v297.origin.y = v129;
      v297.size.width = v130;
      v297.size.height = v132;
      CGRectGetMinX(v297);
      TSURectWithOriginAndSize();
      v137 = v136;
      v139 = v138;
      objc_msgSend_setLayoutOffset_(self->_axisPadding, v140, v141, v142, v136);
      objc_msgSend_setLayoutSize_(self->_axisPadding, v143, v137, v139, v144);
      if (!self->_refLineLabelPadding && !self->_refLineLabels)
      {
        goto LABEL_52;
      }

      v145 = MEMORY[0x277D81150];
      v146 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v103, v104, v105, v106, "[TSCHChartAxisLayoutItem layoutInward]", *&v289, *&v17);
      v151 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v147, v148, v149, v150, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxisLayoutItem.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v145, v152, v153, v154, v155, v146, v151, 201, 0, "Not expecting reference line on this axis");
      goto LABEL_51;
    case 2:
      v159 = self->_axisTitle;
      if (v159)
      {
        objc_msgSend_setLayoutOffset_(v159, v21, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v24);
        objc_msgSend_setLayoutSize_(self->_axisTitle, v160, v11, v27, v161);
      }

      TSURectWithOriginAndSize();
      v163 = v162;
      v165 = v164;
      v167 = v166;
      v169 = v168;
      objc_msgSend_setLayoutOffset_(self->_axisLine, v170, v162, v164, v166);
      objc_msgSend_setLayoutSize_(self->_axisLine, v171, v167, v169, v172);
      v298.origin.x = v163;
      v298.origin.y = v165;
      v298.size.width = v167;
      v298.size.height = v169;
      CGRectGetMinY(v298);
      TSURectWithOriginAndSize();
      v177 = v174;
      v178 = v175;
      v179 = v176;
      v181 = v180;
      v182 = self->_tickMarks;
      if (v182)
      {
        objc_msgSend_setLayoutOffset_(v182, v173, v174, v175, v176);
        objc_msgSend_setLayoutSize_(self->_tickMarks, v183, v179, v181, v184);
      }

      v299.origin.x = v177;
      v299.origin.y = v178;
      v299.size.width = v179;
      v299.size.height = v181;
      CGRectGetMinY(v299);
      TSURectWithOriginAndSize();
      v186 = v185;
      v188 = v187;
      v190 = v189;
      v192 = v191;
      objc_msgSend_setLayoutOffset_(self->_axisPadding, v193, v185, v187, v189);
      objc_msgSend_setLayoutSize_(self->_axisPadding, v194, v190, v192, v195);
      v300.origin.x = v186;
      v300.origin.y = v188;
      v300.size.width = v190;
      v300.size.height = v192;
      CGRectGetMinY(v300);
      TSURectWithOriginAndSize();
      v197 = v196;
      v199 = v198;
      v201 = v200;
      v203 = v202;
      objc_msgSend_setLayoutOffset_(self->_refLineLabelPadding, v204, v196, v198, v200);
      objc_msgSend_setLayoutSize_(self->_refLineLabelPadding, v205, v201, v203, v206);
      v301.origin.x = v197;
      v301.origin.y = v199;
      v301.size.width = v201;
      v301.size.height = v203;
      CGRectGetMinY(v301);
      goto LABEL_42;
    case 3:
      v34 = self->_axisTitle;
      if (v34)
      {
        objc_msgSend_setLayoutOffset_(v34, v21, v11 - v26, 0.0, v24);
        objc_msgSend_setLayoutSize_(self->_axisTitle, v35, v26, v13, v36);
      }

      TSURectWithOriginAndSize();
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;
      objc_msgSend_setLayoutOffset_(self->_axisLine, v45, v37, v39, v41);
      objc_msgSend_setLayoutSize_(self->_axisLine, v46, v42, v44, v47);
      v292.origin.x = v38;
      v292.origin.y = v40;
      v292.size.width = v42;
      v292.size.height = v44;
      CGRectGetMaxX(v292);
      TSURectWithOriginAndSize();
      v52 = v49;
      v53 = v50;
      v54 = v51;
      v56 = v55;
      v57 = self->_tickMarks;
      if (v57)
      {
        objc_msgSend_setLayoutOffset_(v57, v48, v49, v50, v51);
        objc_msgSend_setLayoutSize_(self->_tickMarks, v58, v54, v56, v59);
      }

      v293.origin.x = v52;
      v293.origin.y = v53;
      v293.size.width = v54;
      v293.size.height = v56;
      CGRectGetMaxX(v293);
      TSURectWithOriginAndSize();
      v61 = v60;
      v63 = v62;
      v65 = v64;
      v67 = v66;
      objc_msgSend_setLayoutOffset_(self->_axisPadding, v68, v60, v62, v64);
      objc_msgSend_setLayoutSize_(self->_axisPadding, v69, v65, v67, v70);
      v294.origin.x = v61;
      v294.origin.y = v63;
      v294.size.width = v65;
      v294.size.height = v67;
      CGRectGetMaxX(v294);
      TSURectWithOriginAndSize();
      v72 = v71;
      v74 = v73;
      v76 = v75;
      v78 = v77;
      objc_msgSend_setLayoutOffset_(self->_refLineLabelPadding, v79, v71, v73, v75);
      objc_msgSend_setLayoutSize_(self->_refLineLabelPadding, v80, v76, v78, v81);
      v295.origin.x = v72;
      v295.origin.y = v74;
      v295.size.width = v76;
      v295.size.height = v78;
      CGRectGetMaxX(v295);
LABEL_42:
      TSURectWithOriginAndSize();
      v208 = v207;
      v210 = v209;
      objc_msgSend_setLayoutOffset_(self->_refLineLabels, v211, v212, v213, v207);
      objc_msgSend_setLayoutSize_(self->_refLineLabels, v214, v208, v210, v215, *&v289);
LABEL_52:
      objc_msgSend_p_layoutLabelsNow(self, v103, v104, v105, v106, *&v289);
      break;
  }

LABEL_53:
  v291.receiver = self;
  v291.super_class = TSCHChartAxisLayoutItem;
  [(TSCHChartLayoutItem *)&v291 layoutInward];
}

- (void)layoutOutward
{
  v13.receiver = self;
  v13.super_class = TSCHChartAxisLayoutItem;
  [(TSCHChartLayoutItem *)&v13 layoutOutward];
  objc_msgSend_clearLayoutSize(self, v3, v4, v5, v6);
  objc_msgSend_layoutInward(self, v7, v8, v9, v10);
  objc_msgSend_setLayoutOffset_(self, v11, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v12);
}

- (CGRect)protected_layoutSpaceRectForAllLabels
{
  v2 = *MEMORY[0x277CBF398];
  v3 = *(MEMORY[0x277CBF398] + 8);
  v4 = *(MEMORY[0x277CBF398] + 16);
  v5 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id)p_subselectionKnobPositionsForLabelsSelection:(id)a3
{
  v109 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v5, v6, v7, v8);
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v10 = v4;
  v11 = self;
  obj = v10;
  v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, v13, v14, v15, &v104, v108, 16);
  if (v100)
  {
    v98 = v9;
    v99 = *v105;
    __asm { FMOV            V0.2D, #1.0 }

    v96 = _Q0;
    do
    {
      v24 = 0;
      do
      {
        if (*v105 != v99)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v104 + 1) + 8 * v24);
        v26 = objc_msgSend_pathType(v25, v16, *&_Q0, v17, v18, v96);
        v31 = objc_msgSend_axisLabelsType(TSCHSelectionPathType, v27, v28, v29, v30);
        isEqual = objc_msgSend_isEqual_(v26, v32, v33, v34, v35, v31);
        if ((isEqual & 1) != 0 || (objc_msgSend_seriesLabelType(TSCHSelectionPathType, v36, v38, v39, v40), v101 = objc_claimAutoreleasedReturnValue(), objc_msgSend_isEqual_(v26, v41, v42, v43, v44)))
        {
          v45 = objc_msgSend_argumentAtIndex_(v25, v36, v38, v39, v40, 0);
          v46 = v11;
          v51 = objc_msgSend_axisID(v11, v47, v48, v49, v50);
          v56 = objc_msgSend_isEqual_(v45, v52, v53, v54, v55, v51);

          if (isEqual)
          {

            if (!v56)
            {
              goto LABEL_10;
            }
          }

          else
          {

            if ((v56 & 1) == 0)
            {
LABEL_10:
              v9 = v98;
              v11 = v46;
              goto LABEL_23;
            }
          }

          v11 = v46;
          objc_msgSend_protected_layoutSpaceRectForAllLabels(v46, v57, v58, v59, v60);
          x = v111.origin.x;
          y = v111.origin.y;
          width = v111.size.width;
          height = v111.size.height;
          if (CGRectIsNull(v111))
          {
            v9 = v98;
            goto LABEL_23;
          }

          v31 = objc_msgSend_array(MEMORY[0x277CBEB18], v65, v66, v67, v68);
          v74 = objc_msgSend_axisPosition(v46, v70, v71, v72, v73);
          v9 = v98;
          if (v74 <= 6)
          {
            if (((1 << v74) & 0x2A) != 0)
            {
              *&v102[24] = 0;
              v103 = 0uLL;
              *v102 = 0;
              *&v102[8] = v96;
              objc_msgSend_addTextSubselectionKnobsToArray_rect_transform_(TSCHRenderUtilities, v75, y, x, height, v31, v102, width);
            }

            else if (((1 << v74) & 0x14) != 0)
            {
              v79 = *(MEMORY[0x277CBF2C0] + 16);
              *v102 = *MEMORY[0x277CBF2C0];
              *&v102[16] = v79;
              v103 = *(MEMORY[0x277CBF2C0] + 32);
              objc_msgSend_addTextSubselectionKnobsToArray_rect_transform_(TSCHRenderUtilities, v75, x, y, width, v31, v102, height);
            }

            else if (v74 == 6)
            {
              v89 = objc_msgSend_protected_layoutSpaceKnobsForAllLabels(v46, v75, v76, v77, v78);
              objc_msgSend_addObjectsFromArray_(v31, v90, v91, v92, v93, v89);
            }
          }

          v80 = objc_msgSend_objectForKey_(v98, v75, v76, v77, v78, v25);
          v69 = objc_msgSend_arrayByAddingObjectsFromArray_(v31, v81, v82, v83, v84, v80);

          if (v69)
          {
            objc_msgSend_setObject_forKey_(v98, v85, v86, v87, v88, v69, v25);
          }
        }

        else
        {
          v69 = v101;
          v9 = v98;
        }

LABEL_23:
        ++v24;
      }

      while (v100 != v24);
      v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, *&_Q0, v17, v18, &v104, v108, 16);
      v100 = v94;
    }

    while (v94);
  }

  return v9;
}

- (id)subselectionKnobPositionsForSelection:(id)a3
{
  v25.receiver = self;
  v25.super_class = TSCHChartAxisLayoutItem;
  v4 = a3;
  v5 = [(TSCHChartLayoutItem *)&v25 subselectionKnobPositionsForSelection:v4];
  v10 = objc_msgSend_p_subselectionKnobPositionsForLabelsSelection_(self, v6, v7, v8, v9, v4, v25.receiver, v25.super_class);

  v15 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v11, v12, v13, v14);
  objc_msgSend_addEntriesFromDictionary_(v15, v16, v17, v18, v19, v5);
  objc_msgSend_addEntriesFromDictionary_(v15, v20, v21, v22, v23, v10);

  return v15;
}

- (id)p_subselectionHaloPositionsForLabelsSelections:(id)a3
{
  v109 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v5, v6, v7, v8);
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v10 = v4;
  v11 = self;
  obj = v10;
  v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, v13, v14, v15, &v104, v108, 16);
  if (v100)
  {
    v98 = v9;
    v99 = *v105;
    __asm { FMOV            V0.2D, #1.0 }

    v96 = _Q0;
    do
    {
      v24 = 0;
      do
      {
        if (*v105 != v99)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v104 + 1) + 8 * v24);
        v26 = objc_msgSend_pathType(v25, v16, *&_Q0, v17, v18, v96);
        v31 = objc_msgSend_axisLabelsType(TSCHSelectionPathType, v27, v28, v29, v30);
        isEqual = objc_msgSend_isEqual_(v26, v32, v33, v34, v35, v31);
        if ((isEqual & 1) != 0 || (objc_msgSend_seriesLabelType(TSCHSelectionPathType, v36, v38, v39, v40), v101 = objc_claimAutoreleasedReturnValue(), objc_msgSend_isEqual_(v26, v41, v42, v43, v44)))
        {
          v45 = objc_msgSend_argumentAtIndex_(v25, v36, v38, v39, v40, 0);
          v46 = v11;
          v51 = objc_msgSend_axisID(v11, v47, v48, v49, v50);
          v56 = objc_msgSend_isEqual_(v45, v52, v53, v54, v55, v51);

          if (isEqual)
          {

            if (!v56)
            {
              goto LABEL_10;
            }
          }

          else
          {

            if ((v56 & 1) == 0)
            {
LABEL_10:
              v9 = v98;
              v11 = v46;
              goto LABEL_23;
            }
          }

          v11 = v46;
          objc_msgSend_protected_layoutSpaceRectForAllLabels(v46, v57, v58, v59, v60);
          x = v111.origin.x;
          y = v111.origin.y;
          width = v111.size.width;
          height = v111.size.height;
          if (CGRectIsNull(v111))
          {
            v9 = v98;
            goto LABEL_23;
          }

          v31 = objc_msgSend_array(MEMORY[0x277CBEB18], v65, v66, v67, v68);
          v74 = objc_msgSend_axisPosition(v46, v70, v71, v72, v73);
          v9 = v98;
          if (v74 <= 6)
          {
            if (((1 << v74) & 0x2A) != 0)
            {
              *&v102[24] = 0;
              v103 = 0uLL;
              *v102 = 0;
              *&v102[8] = v96;
              objc_msgSend_addTextSubselectionHalosToArray_rect_transform_(TSCHRenderUtilities, v75, y, x, height, v31, v102, width);
            }

            else if (((1 << v74) & 0x14) != 0)
            {
              v79 = *(MEMORY[0x277CBF2C0] + 16);
              *v102 = *MEMORY[0x277CBF2C0];
              *&v102[16] = v79;
              v103 = *(MEMORY[0x277CBF2C0] + 32);
              objc_msgSend_addTextSubselectionHalosToArray_rect_transform_(TSCHRenderUtilities, v75, x, y, width, v31, v102, height);
            }

            else if (v74 == 6)
            {
              v89 = objc_msgSend_protected_layoutSpaceHalosForAllLabels(v46, v75, v76, v77, v78);
              objc_msgSend_addObjectsFromArray_(v31, v90, v91, v92, v93, v89);
            }
          }

          v80 = objc_msgSend_objectForKey_(v98, v75, v76, v77, v78, v25);
          v69 = objc_msgSend_arrayByAddingObjectsFromArray_(v31, v81, v82, v83, v84, v80);

          if (v69)
          {
            objc_msgSend_setObject_forKey_(v98, v85, v86, v87, v88, v69, v25);
          }
        }

        else
        {
          v69 = v101;
          v9 = v98;
        }

LABEL_23:
        ++v24;
      }

      while (v100 != v24);
      v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, *&_Q0, v17, v18, &v104, v108, 16);
      v100 = v94;
    }

    while (v94);
  }

  return v9;
}

- (id)subselectionHaloPositionsForSelections:(id)a3
{
  v25.receiver = self;
  v25.super_class = TSCHChartAxisLayoutItem;
  v4 = a3;
  v5 = [(TSCHChartLayoutItem *)&v25 subselectionHaloPositionsForSelections:v4];
  v10 = objc_msgSend_p_subselectionHaloPositionsForLabelsSelections_(self, v6, v7, v8, v9, v4, v25.receiver, v25.super_class);

  v15 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v11, v12, v13, v14);
  objc_msgSend_addEntriesFromDictionary_(v15, v16, v17, v18, v19, v5);
  objc_msgSend_addEntriesFromDictionary_(v15, v20, v21, v22, v23, v10);

  return v15;
}

- (CGSize)chartBodySize
{
  width = self->_chartBodySize.width;
  height = self->_chartBodySize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
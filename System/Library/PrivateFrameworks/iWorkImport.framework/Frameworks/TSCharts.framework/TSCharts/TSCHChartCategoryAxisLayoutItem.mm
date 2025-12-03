@interface TSCHChartCategoryAxisLayoutItem
- (CGRect)protected_layoutSpaceRectForAllLabels;
- (id)protected_layoutSpaceHalosForAllLabels;
- (id)protected_layoutSpaceKnobsForAllLabels;
- (id)renderersWithRep:(id)rep;
- (void)buildSubTree;
- (void)p_layoutLabelsNow;
@end

@implementation TSCHChartCategoryAxisLayoutItem

- (void)buildSubTree
{
  v193 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (self->super._axisTitle)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v4, v5, v6, "[TSCHChartCategoryAxisLayoutItem buildSubTree]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartCategoryAxisLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 46, 0, "expected nil value for '%{public}s'", "_axisTitle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  if (self->_categoryLabels)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v4, v5, v6, "[TSCHChartCategoryAxisLayoutItem buildSubTree]");
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartCategoryAxisLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v29, v30, v31, v32, v23, v28, 47, 0, "expected nil value for '%{public}s'", "_categoryLabels");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
  }

  if (self->_seriesLabels)
  {
    v37 = MEMORY[0x277D81150];
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v4, v5, v6, "[TSCHChartCategoryAxisLayoutItem buildSubTree]");
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, v40, v41, v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartCategoryAxisLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v44, v45, v46, v47, v38, v43, 48, 0, "expected nil value for '%{public}s'", "_seriesLabels");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49, v50, v51);
  }

  if (self->super._axisPadding)
  {
    v52 = MEMORY[0x277D81150];
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v4, v5, v6, "[TSCHChartCategoryAxisLayoutItem buildSubTree]");
    v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, v55, v56, v57, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartCategoryAxisLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v59, v60, v61, v62, v53, v58, 49, 0, "expected nil value for '%{public}s'", "_axisPadding");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v63, v64, v65, v66);
  }

  if (self->super._tickMarks)
  {
    v67 = MEMORY[0x277D81150];
    v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v4, v5, v6, "[TSCHChartCategoryAxisLayoutItem buildSubTree]");
    v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, v70, v71, v72, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartCategoryAxisLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v67, v74, v75, v76, v77, v68, v73, 50, 0, "expected nil value for '%{public}s'", "_tickMarks");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v78, v79, v80, v81);
  }

  if (self->super._axisLine)
  {
    v82 = MEMORY[0x277D81150];
    v83 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v4, v5, v6, "[TSCHChartCategoryAxisLayoutItem buildSubTree]");
    v88 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v84, v85, v86, v87, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartCategoryAxisLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v82, v89, v90, v91, v92, v83, v88, 51, 0, "expected nil value for '%{public}s'", "_axisLine");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v93, v94, v95, v96);
  }

  v97 = objc_msgSend_chartInfo(self, v3, v4, v5, v6);
  v102 = objc_msgSend_chartType(v97, v98, v99, v100, v101);
  isMultiData = objc_msgSend_isMultiData(v102, v103, v104, v105, v106);

  v112 = objc_msgSend_axisID(self, v108, v109, v110, v111);
  v117 = objc_msgSend_type(v112, v113, v114, v115, v116);

  objc_msgSend_layoutSettings(self, v118, v119, v120, v121);
  if ((v195 & 1) == 0)
  {
    if (v117 == 1)
    {
      v126 = isMultiData;
    }

    else
    {
      v126 = 0;
    }

    if (v126 == 1)
    {
      v127 = [TSCHChartAxisTitleLayoutItemWithStaticPadding alloc];
      v131 = objc_msgSend_initWithParent_padding_(v127, v128, 0.0, v129, v130, self);
    }

    else
    {
      if ((v117 - 5) < 2)
      {
        goto LABEL_22;
      }

      v132 = [TSCHChartAxisTitleLayoutItem alloc];
      v131 = objc_msgSend_initWithParent_(v132, v133, v134, v135, v136, self);
    }

    axisTitle = self->super._axisTitle;
    self->super._axisTitle = v131;
  }

LABEL_22:
  v138 = objc_msgSend_chartInfo(self, v122, v123, v124, v125);
  v143 = objc_msgSend_chartType(v138, v139, v140, v141, v142);
  v148 = objc_msgSend_supportsCategoryAxisLabels(v143, v144, v145, v146, v147);

  if (v148)
  {
    v149 = [TSCHChartCategoryAxisLabelsLayoutItem alloc];
    v154 = objc_msgSend_initWithParent_(v149, v150, v151, v152, v153, self);
    categoryLabels = self->_categoryLabels;
    self->_categoryLabels = v154;
  }

  v156 = [TSCHChartAxisPaddingLayoutItem alloc];
  v161 = objc_msgSend_initWithParent_(v156, v157, v158, v159, v160, self);
  axisPadding = self->super._axisPadding;
  self->super._axisPadding = v161;

  v163 = [TSCHChartAxisSeriesLabelsLayoutItem alloc];
  v168 = objc_msgSend_initWithParent_(v163, v164, v165, v166, v167, self);
  seriesLabels = self->_seriesLabels;
  self->_seriesLabels = v168;

  v170 = [TSCHChartAxisTickMarksLayoutItem alloc];
  v175 = objc_msgSend_initWithParent_(v170, v171, v172, v173, v174, self);
  tickMarks = self->super._tickMarks;
  self->super._tickMarks = v175;

  v177 = [TSCHChartAxisLineLayoutItem alloc];
  v182 = objc_msgSend_initWithParent_(v177, v178, v179, v180, v181, self);
  axisLine = self->super._axisLine;
  self->super._axisLine = v182;

  if (self->super._axisTitle)
  {
    objc_msgSend_addObject_(v193, v184, v185, v186, v187);
  }

  if (self->_categoryLabels)
  {
    objc_msgSend_addObject_(v193, v184, v185, v186, v187);
  }

  if (self->_seriesLabels)
  {
    objc_msgSend_addObject_(v193, v184, v185, v186, v187);
  }

  if (self->super._axisPadding)
  {
    objc_msgSend_addObject_(v193, v184, v185, v186, v187);
  }

  if (self->super._tickMarks)
  {
    objc_msgSend_addObject_(v193, v184, v185, v186, v187);
  }

  if (self->super._axisLine)
  {
    objc_msgSend_addObject_(v193, v184, v185, v186, v187);
  }

  v188 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v184, v185, v186, v187, v193);
  objc_msgSend_setChildren_(self, v189, v190, v191, v192, v188);

  v194.receiver = self;
  v194.super_class = TSCHChartCategoryAxisLayoutItem;
  [(TSCHChartLayoutItem *)&v194 buildSubTree];
}

- (void)p_layoutLabelsNow
{
  objc_msgSend_layoutSize(self, a2, v2, v3, v4);
  seriesLabels = self->_seriesLabels;
  if (seriesLabels)
  {
    objc_msgSend_minSize(seriesLabels, v6, v7, v8, v9);
  }

  categoryLabels = self->_categoryLabels;
  if (categoryLabels)
  {
    objc_msgSend_minSize(categoryLabels, v6, v7, v8, v9);
    objc_msgSend_layoutRect(self->super._axisPadding, v12, v13, v14, v15, *&v13);
  }

  else
  {
    objc_msgSend_layoutRect(self->super._axisPadding, v6, *(MEMORY[0x277CBF3A8] + 8), *MEMORY[0x277CBF3A8], v9, *MEMORY[0x277CBF3A8]);
  }

  v21 = v17;
  v22 = v18;
  v23 = v19;
  v24 = v20;
  axisPosition = self->super._axisPosition;
  if (axisPosition <= 2)
  {
    if (axisPosition == 1)
    {
      CGRectGetMinX(*&v17);
      TSURectWithOriginAndSize();
      v95 = v94;
      v97 = v96;
      v99 = v98;
      v101 = v100;
      objc_msgSend_setLayoutOffset_(self->_seriesLabels, v102, v94, v96, v98);
      objc_msgSend_setLayoutSize_(self->_seriesLabels, v103, v99, v101, v104);
      v116.origin.x = v95;
      v116.origin.y = v97;
      v116.size.width = v99;
      v116.size.height = v101;
      CGRectGetMinX(v116);
    }

    else
    {
      if (axisPosition != 2)
      {
        return;
      }

      v31 = MEMORY[0x277D81150];
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "[TSCHChartCategoryAxisLayoutItem p_layoutLabelsNow]");
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v34, v35, v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartCategoryAxisLayoutItem.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v38, v39, v40, v41, v32, v37, 124, 0, "No way to test this yet; if you see this message, look into it.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44, v45);
      v111.origin.x = v21;
      v111.origin.y = v22;
      v111.size.width = v23;
      v111.size.height = v24;
      CGRectGetMinY(v111);
      TSURectWithOriginAndSize();
      v47 = v46;
      v49 = v48;
      v51 = v50;
      v53 = v52;
      objc_msgSend_setLayoutOffset_(self->_seriesLabels, v54, v46, v48, v50);
      objc_msgSend_setLayoutSize_(self->_seriesLabels, v55, v51, v53, v56);
      v112.origin.x = v47;
      v112.origin.y = v49;
      v112.size.width = v51;
      v112.size.height = v53;
      CGRectGetMinY(v112);
    }
  }

  else
  {
    switch(axisPosition)
    {
      case 3:
        v57 = MEMORY[0x277D81150];
        v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "[TSCHChartCategoryAxisLayoutItem p_layoutLabelsNow]");
        v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, v60, v61, v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartCategoryAxisLayoutItem.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v64, v65, v66, v67, v58, v63, 109, 0, "No way to test this yet; if you see this message, look into it.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69, v70, v71);
        v113.origin.x = v21;
        v113.origin.y = v22;
        v113.size.width = v23;
        v113.size.height = v24;
        CGRectGetMaxX(v113);
        TSURectWithOriginAndSize();
        v73 = v72;
        v75 = v74;
        v77 = v76;
        v79 = v78;
        objc_msgSend_setLayoutOffset_(self->_seriesLabels, v80, v72, v74, v76);
        objc_msgSend_setLayoutSize_(self->_seriesLabels, v81, v77, v79, v82);
        v114.origin.x = v73;
        v114.origin.y = v75;
        v114.size.width = v77;
        v114.size.height = v79;
        CGRectGetMaxX(v114);
        break;
      case 4:
        CGRectGetMaxY(*&v17);
        TSURectWithOriginAndSize();
        v84 = v83;
        v86 = v85;
        v88 = v87;
        v90 = v89;
        objc_msgSend_setLayoutOffset_(self->_seriesLabels, v91, v83, v85, v87);
        objc_msgSend_setLayoutSize_(self->_seriesLabels, v92, v88, v90, v93);
        v115.origin.x = v84;
        v115.origin.y = v86;
        v115.size.width = v88;
        v115.size.height = v90;
        CGRectGetMaxY(v115);
        break;
      case 6:
        TSURectWithSize();
        goto LABEL_18;
      default:
        return;
    }
  }

  TSURectWithOriginAndSize();
LABEL_18:
  v105 = v29;
  v106 = v30;
  objc_msgSend_setLayoutOffset_(self->_categoryLabels, v26, v27, v28, v29);
  v109 = self->_categoryLabels;

  objc_msgSend_setLayoutSize_(v109, v107, v105, v106, v108);
}

- (id)renderersWithRep:(id)rep
{
  repCopy = rep;
  v5 = objc_opt_new();
  v6 = [TSCHChartCategoryAxisRenderer alloc];
  v11 = objc_msgSend_initWithChartRep_layoutItem_(v6, v7, v8, v9, v10, repCopy, self);

  objc_msgSend_addObject_(v5, v12, v13, v14, v15, v11);

  return v5;
}

- (CGRect)protected_layoutSpaceRectForAllLabels
{
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  categoryLabels = self->_categoryLabels;
  if (categoryLabels)
  {
    objc_msgSend_layoutSpaceRectForAllLabels(categoryLabels, a2, v2, v3, v4);
    v29.origin.x = v11;
    v29.origin.y = v12;
    v29.size.width = v13;
    v29.size.height = v14;
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    *&v2 = CGRectUnion(v25, v29);
    x = v2;
    y = v3;
    width = v4;
    height = v15;
  }

  seriesLabels = self->_seriesLabels;
  if (seriesLabels)
  {
    objc_msgSend_layoutSpaceRectForAllLabels(seriesLabels, a2, v2, v3, v4);
    v30.origin.x = v17;
    v30.origin.y = v18;
    v30.size.width = v19;
    v30.size.height = v20;
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    v27 = CGRectUnion(v26, v30);
    x = v27.origin.x;
    y = v27.origin.y;
    width = v27.size.width;
    height = v27.size.height;
  }

  v21 = x;
  v22 = y;
  v23 = width;
  v24 = height;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (id)protected_layoutSpaceKnobsForAllLabels
{
  categoryLabels = self->_categoryLabels;
  if (categoryLabels)
  {
    v7 = objc_msgSend_layoutSpaceKnobsForAllLabels(categoryLabels, a2, v3, v4, v5);
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

- (id)protected_layoutSpaceHalosForAllLabels
{
  categoryLabels = self->_categoryLabels;
  if (categoryLabels)
  {
    v7 = objc_msgSend_layoutSpaceHalosForAllLabels(categoryLabels, a2, v3, v4, v5);
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

@end
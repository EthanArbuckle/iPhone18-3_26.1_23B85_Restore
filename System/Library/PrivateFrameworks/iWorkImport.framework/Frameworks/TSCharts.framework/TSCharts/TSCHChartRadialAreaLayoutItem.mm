@interface TSCHChartRadialAreaLayoutItem
- (CGRect)titleFrame;
- (id)renderersWithRep:(id)a3;
- (id)seriesIndexedPieNormalizedLabelDistancesFromWedgeTips;
- (void)buildSubTree;
- (void)layoutInward;
- (void)layoutOutward;
@end

@implementation TSCHChartRadialAreaLayoutItem

- (id)seriesIndexedPieNormalizedLabelDistancesFromWedgeTips
{
  v5 = objc_msgSend_bodyLayoutItem(self, a2, v2, v3, v4);
  v10 = objc_msgSend_seriesIndexedPieNormalizedLabelDistancesFromWedgeTips(v5, v6, v7, v8, v9);

  return v10;
}

- (void)buildSubTree
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_msgSend_gridLayoutItem(self, v4, v5, v6, v7);

  if (v8)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCHChartRadialAreaLayoutItem buildSubTree]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRadialAreaLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 51, 0, "expected nil value for '%{public}s'", "self.gridLayoutItem");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v28 = [_TtC8TSCharts23TSCHChartGridLayoutItem alloc];
  v33 = objc_msgSend_initWithParent_(v28, v29, v30, v31, v32, self);
  objc_msgSend_setGridLayoutItem_(self, v34, v35, v36, v37, v33);

  v42 = objc_msgSend_gridLayoutItem(self, v38, v39, v40, v41);
  objc_msgSend_addObject_(v3, v43, v44, v45, v46, v42);

  v51 = objc_msgSend_titleElement(self, v47, v48, v49, v50);

  if (v51)
  {
    v56 = MEMORY[0x277D81150];
    v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, v53, v54, v55, "[TSCHChartRadialAreaLayoutItem buildSubTree]");
    v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, v59, v60, v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRadialAreaLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v63, v64, v65, v66, v57, v62, 55, 0, "expected nil value for '%{public}s'", "self.titleElement");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v67, v68, v69, v70);
  }

  v71 = [TSCHChartMainTitleLayoutItem alloc];
  v76 = objc_msgSend_initWithParent_(v71, v72, v73, v74, v75, self);
  objc_msgSend_setTitleElement_(self, v77, v78, v79, v80, v76);

  v85 = objc_msgSend_titleElement(self, v81, v82, v83, v84);
  objc_msgSend_addObject_(v3, v86, v87, v88, v89, v85);

  v94 = objc_msgSend_bodyLayoutItem(self, v90, v91, v92, v93);

  if (v94)
  {
    v99 = MEMORY[0x277D81150];
    v100 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v95, v96, v97, v98, "[TSCHChartRadialAreaLayoutItem buildSubTree]");
    v105 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v101, v102, v103, v104, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRadialAreaLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v99, v106, v107, v108, v109, v100, v105, 59, 0, "expected nil value for '%{public}s'", "self.bodyLayoutItem");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v110, v111, v112, v113);
  }

  v114 = objc_alloc(objc_msgSend_bodyLayoutItemClass(self, v95, v96, v97, v98));
  v119 = objc_msgSend_initWithParent_(v114, v115, v116, v117, v118, self);
  objc_msgSend_setBodyLayoutItem_(self, v120, v121, v122, v123, v119);

  v128 = objc_msgSend_bodyLayoutItem(self, v124, v125, v126, v127);
  objc_msgSend_addObject_(v3, v129, v130, v131, v132, v128);

  v137 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v133, v134, v135, v136, v3);
  objc_msgSend_setChildren_(self, v138, v139, v140, v141, v137);

  v142.receiver = self;
  v142.super_class = TSCHChartRadialAreaLayoutItem;
  [(TSCHChartLayoutItem *)&v142 buildSubTree];
}

- (void)layoutInward
{
  v205[3] = *MEMORY[0x277D85DE8];
  if ((objc_msgSend_treeBuilt(self, a2, v2, v3, v4) & 1) == 0)
  {
    objc_msgSend_buildSubTree(self, v6, v7, v8, v9);
  }

  objc_msgSend_layoutSize(self, v6, v7, v8, v9);
  v11 = v10;
  v13 = v12;
  v16 = objc_msgSend_bodyLayoutItem(self, v14, v10, v12, v15);
  objc_msgSend_bodySizeForOverhangSize_(v16, v17, v11, v13, v18);
  v20 = v19;
  v22 = v21;
  v26 = objc_msgSend_titleElement(self, v23, v19, v21, v24);
  if (v26)
  {
    v30 = objc_msgSend_titleElement(self, v25, v27, v28, v29);
    objc_msgSend_minSize(v30, v31, v32, v33, v34);
    v36 = v35;
    v38 = v37;
  }

  else
  {
    v36 = *MEMORY[0x277CBF3A8];
    v38 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v44 = objc_msgSend_titleElement(self, v39, v40, v41, v42);
  v48 = 0.0;
  v49 = 0.0;
  if (v44 && v36 > 0.0 && v38 > 0.0)
  {
    v50 = objc_msgSend_titleElement(self, v43, v45, v46, v47);
    objc_msgSend_overhangMagnitudeForEdge_(v50, v51, v52, v53, v54, 3);
    v49 = v55;
  }

  v60 = objc_msgSend_titleElement(self, v56, v57, v58, v59);
  if (!objc_msgSend_shouldPlaceTitleAtCenter(v60, v61, v62, v63, v64))
  {
    v48 = v38 + v49;
  }

  if (v11 >= v13)
  {
    v67 = v13;
  }

  else
  {
    v67 = v11;
  }

  if (v67 >= v13 - v48)
  {
    v67 = v13 - v48;
  }

  if (v20 >= v22)
  {
    v68 = v22;
  }

  else
  {
    v68 = v20;
  }

  if (v68 >= v67)
  {
    v69 = v67;
  }

  else
  {
    v69 = v68;
  }

  if (v69 < v22)
  {
    v22 = v69;
  }

  v70 = objc_msgSend_bodyLayoutItem(self, v65, v67, v68, v66, *&v36);
  objc_msgSend_setLayoutSize_(v70, v71, v69, v22, v72);

  v77 = objc_msgSend_bodyLayoutItem(self, v73, v74, v75, v76);
  objc_msgSend_layoutSize(v77, v78, v79, v80, v81);

  TSURectWithSize();
  v83 = v82;
  v85 = v84;
  v87 = v86;
  v202 = v88;
  v90 = objc_msgSend_bodyLayoutItem(self, v89, v82, v84, v86);
  objc_msgSend_overhangRect(v90, v91, v92, v93, v94);
  v198 = v96;
  v200 = v95;
  v194 = v98;
  v196 = v97;

  v103 = objc_msgSend_titleElement(self, v99, v100, v101, v102);
  if (objc_msgSend_shouldPlaceTitleAtCenter(v103, v104, v105, v106, v107))
  {
    objc_msgSend_layoutSettings(self, v108, v109, v110, v111);

    if ((v204 & 1) == 0)
    {
      TSUCenterOfRect();
      TSURectWithCenterAndSize();
      goto LABEL_30;
    }
  }

  else
  {
  }

  TSURectWithOriginAndSize();
LABEL_30:
  v117 = v113;
  v118 = v114;
  v119 = v115;
  v120 = v116;
  v121 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v112, v83, v85, v87, v202);
  v205[0] = v121;
  v123 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v122, v200, v198, v196, v194);
  v205[1] = v123;
  v199 = v118;
  v201 = v117;
  v195 = v120;
  v197 = v119;
  v125 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v124, v117, v118, v119, v120);
  v205[2] = v125;
  v130 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v126, v127, v128, v129, v205, 3);

  objc_msgSend_outerRectForRects_(TSCHChartLayout, v131, v132, v133, v134, v130);
  v136 = v135;
  v138 = v137;
  v140 = v139;
  v142 = v141;
  if ((TSUNearlyEqualSizes() & 1) == 0)
  {
    objc_msgSend_setLayoutSize_(self, v143, v140, v142, v144);
  }

  objc_msgSend_normalizeRect_outerRect_(TSCHChartLayout, v143, v83, v85, v87, v202, v136, v138, v140, v142);
  v146 = v145;
  v148 = v147;
  v151 = objc_msgSend_bodyLayoutItem(self, v149, v145, v147, v150);
  objc_msgSend_setLayoutOffset_(v151, v152, v146, v148, v153);

  v158 = objc_msgSend_bodyLayoutItem(self, v154, v155, v156, v157);
  objc_msgSend_layoutRect(v158, v159, v160, v161, v162);
  v164 = v163;
  v166 = v165;
  v168 = v167;
  v170 = v169;
  v172 = objc_msgSend_gridLayoutItem(self, v171, v163, v165, v167);
  objc_msgSend_setLayoutRect_(v172, v173, v164, v166, v168, v170);

  objc_msgSend_normalizeRect_outerRect_(TSCHChartLayout, v174, v201, v199, v197, v195, v136, v138, v140, v142);
  v176 = v175;
  v178 = v177;
  v180 = v179;
  v182 = v181;
  v184 = objc_msgSend_titleElement(self, v183, v175, v177, v179);
  objc_msgSend_setLayoutSize_(v184, v185, v180, v182, v186);

  v191 = objc_msgSend_titleElement(self, v187, v188, v189, v190);
  objc_msgSend_setLayoutOffset_(v191, v192, v176, v178, v193);

  v203.receiver = self;
  v203.super_class = TSCHChartRadialAreaLayoutItem;
  [(TSCHChartLayoutItem *)&v203 layoutInward];
}

- (void)layoutOutward
{
  v288[3] = *MEMORY[0x277D85DE8];
  v287.receiver = self;
  v287.super_class = TSCHChartRadialAreaLayoutItem;
  [(TSCHChartLayoutItem *)&v287 layoutOutward];
  v7 = objc_msgSend_bodyLayoutItem(self, v3, v4, v5, v6);
  objc_msgSend_layoutSize(v7, v8, v9, v10, v11);
  v13 = v12;
  v15 = v14;

  v17 = v13 == v15;
  v18 = vabdd_f64(v13, v15);
  if (v13 >= v15)
  {
    v19 = v15;
  }

  else
  {
    v19 = v13;
  }

  if (v18 < 0.00999999978)
  {
    v17 = 1;
  }

  if (!v17)
  {
    v13 = v19;
  }

  v20 = objc_msgSend_titleElement(self, v16, v18, v19, 0.00999999978);

  if (v20)
  {
    v25 = objc_msgSend_titleElement(self, v21, v22, v23, v24);
    if (objc_msgSend_shouldPlaceTitleAtCenter(v25, v26, v27, v28, v29))
    {
      objc_msgSend_layoutSettings(self, v30, v31, v32, v33);

      if ((v286 & 1) == 0)
      {
        objc_opt_class();
        v42 = objc_msgSend_bodyLayoutItem(self, v38, v39, v40, v41);
        v43 = TSUDynamicCast();

        v48 = objc_msgSend_model(v43, v44, v45, v46, v47);
        objc_msgSend_rootedLayoutRect(v43, v49, v50, v51, v52);
        objc_msgSend_bodySizeWithMinimumWedgeExplosionWithChartModel_bodySize_(TSCHStyleUtilities, v53, v54, v55, v54, v48);
        v57 = v56;

        v62 = objc_msgSend_titleElement(self, v58, v59, v60, v61);
        objc_msgSend_setChartBodyWidth_(v62, v63, v57, v64, v65);

LABEL_14:
        goto LABEL_15;
      }
    }

    else
    {
    }

    v43 = objc_msgSend_titleElement(self, v34, v35, v36, v37);
    objc_msgSend_setChartBodyWidth_(v43, v66, v13, v67, v68);
    goto LABEL_14;
  }

LABEL_15:
  v70 = objc_msgSend_titleElement(self, v21, v22, v23, v24);
  if (v70)
  {
    v74 = objc_msgSend_titleElement(self, v69, v71, v72, v73);
    objc_msgSend_minSize(v74, v75, v76, v77, v78);
    v80 = v79;
    v82 = v81;
  }

  else
  {
    v80 = *MEMORY[0x277CBF3A8];
    v82 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v86 = objc_msgSend_titleElement(self, v83, INFINITY, v84, v85);
  v91 = v86;
  v92 = 0.0;
  if (v80 > 0.0 && v86 && v82 > 0.0)
  {
    v93 = objc_msgSend_titleElement(self, v87, v88, v89, v90);
    objc_msgSend_overhangMagnitudeForEdge_(v93, v94, v95, v96, v97, 3);
    v92 = v98;
  }

  TSURectWithSize();
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v106 = v105;
  v108 = objc_msgSend_bodyLayoutItem(self, v107, v99, v101, v103);
  objc_msgSend_overhangRect(v108, v109, v110, v111, v112);
  v281 = v114;
  v283 = v113;
  v279 = v116;
  v280 = v115;

  v121 = objc_msgSend_titleElement(self, v117, v118, v119, v120);
  if (objc_msgSend_shouldPlaceTitleAtCenter(v121, v122, v123, v124, v125))
  {
    objc_msgSend_layoutSettings(self, v126, v127, v128, v129);

    if ((v285 & 1) == 0)
    {
      TSUCenterOfRect();
      TSURectWithCenterAndSize();
      v130 = v104;
      v132 = v131;
      v134 = v133;
      v135 = v106;
      v137 = v136;
      v139 = v138;
      objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v140, v100, v102, v130, v135, *&v130, *&v135);
      goto LABEL_27;
    }
  }

  else
  {
  }

  TSUCenterOfRect();
  TSURectWithCenterAndSize();
  v141 = v104;
  v132 = v142;
  v143 = v106;
  v137 = v144;
  v139 = v145;
  v134 = v102 - v145 - v92;
  objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v146, v100, v102, v141, v143, *&v141, *&v143);
  v147 = LABEL_27:;
  v288[0] = v147;
  v149 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v148, v132, v134, v137, v139);
  v288[1] = v149;
  v151 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v150, v283, v281, v280, v279);
  v288[2] = v151;
  v156 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v152, v153, v154, v155, v288, 3);
  v161 = objc_msgSend_mutableCopy(v156, v157, v158, v159, v160);

  objc_msgSend_outerRectForRects_(TSCHChartLayout, v162, v163, v164, v165, v161);
  v282 = v167;
  v284 = v166;
  v169 = v168;
  v171 = v170;
  objc_msgSend_normalizeRect_outerRect_(TSCHChartLayout, v172, v132, v134, v137, v139, v166, v167, v168, v170);
  v174 = v173;
  v176 = v175;
  v178 = v177;
  v180 = v179;
  v182 = objc_msgSend_titleElement(self, v181, v173, v175, v177);
  objc_msgSend_setLayoutOffset_(v182, v183, v174, v176, v184);

  v189 = objc_msgSend_titleElement(self, v185, v186, v187, v188);
  objc_msgSend_setLayoutSize_(v189, v190, v178, v180, v191);

  objc_msgSend_normalizeRect_outerRect_(TSCHChartLayout, v192, v100, v102, v277, v278, v284, v282, v169, v171);
  v194 = v193;
  v196 = v195;
  v198 = v197;
  v200 = v199;
  v202 = objc_msgSend_bodyLayoutItem(self, v201, v193, v195, v197);
  objc_msgSend_setLayoutOffset_(v202, v203, v194, v196, v204);

  v209 = objc_msgSend_bodyLayoutItem(self, v205, v206, v207, v208);
  objc_msgSend_setLayoutSize_(v209, v210, v198, v200, v211);

  v216 = objc_msgSend_bodyLayoutItem(self, v212, v213, v214, v215);
  objc_msgSend_layoutRect(v216, v217, v218, v219, v220);
  v222 = v221;
  v224 = v223;
  v226 = v225;
  v228 = v227;
  v230 = objc_msgSend_gridLayoutItem(self, v229, v221, v223, v225);
  objc_msgSend_setLayoutRect_(v230, v231, v222, v224, v226, v228);

  v236 = objc_msgSend_bodyLayoutItem(self, v232, v233, v234, v235);
  objc_msgSend_layoutSize(v236, v237, v238, v239, v240);

  if ((TSUNearlyEqualSizes() & 1) == 0)
  {
    v245 = MEMORY[0x277D81150];
    v246 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v241, v242, v243, v244, "[TSCHChartRadialAreaLayoutItem layoutOutward]");
    v251 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v247, v248, v249, v250, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRadialAreaLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v245, v252, v253, v254, v255, v246, v251, 199, 0, "We don't expect to ever get contrained on an outward layout.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v256, v257, v258, v259);
    v260 = MEMORY[0x277CCAE60];
    TSURectWithOriginAndSize();
    v265 = objc_msgSend_valueWithCGRect_(v260, v261, v262, v263, v264);
    objc_msgSend_setObject_atIndexedSubscript_(v161, v266, v267, v268, v269, v265, 0);

    objc_msgSend_outerRectForRects_(TSCHChartLayout, v270, v271, v272, v273, v161);
    v169 = v244;
    v171 = v274;
  }

  objc_msgSend_setLayoutSize_(self, v241, v169, v171, v244);
  objc_msgSend_setLayoutOffset_(self, v275, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v276);
}

- (id)renderersWithRep:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v12.receiver = self;
  v12.super_class = TSCHChartRadialAreaLayoutItem;
  v6 = [(TSCHChartLayoutItem *)&v12 renderersWithRep:v4];

  objc_msgSend_addObjectsFromArray_(v5, v7, v8, v9, v10, v6);

  return v5;
}

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

@end
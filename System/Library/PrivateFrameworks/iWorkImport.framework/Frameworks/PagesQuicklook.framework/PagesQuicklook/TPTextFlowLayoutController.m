@interface TPTextFlowLayoutController
- (TPTextFlowLayoutController)initWithPageController:(id)a3;
- (id)hintForFlow:(id)a3 pageIndex:(unint64_t)a4;
- (id)p_flowForLayoutMgr:(id)a3;
- (id)p_flowsOnPage:(id)a3 textBoxes:(id)a4;
- (id)p_flowsOnPageIndex:(unint64_t)a3;
- (id)p_layoutMgrForFlow:(id)a3;
- (id)p_orderedTextBoxesForFlow:(id)a3 textBoxes:(id)a4;
- (id)p_previousTextBoxForTarget:(id)a3;
- (id)previousTargetLastColumnForTarget:(id)a3;
- (id)textWrapper;
- (unint64_t)pageIndexNeedingLayoutPreviousToPageIndex:(unint64_t)a3;
- (void)dealloc;
- (void)deflatePage:(id)a3 intoHints:(id)a4 topicNumberHints:(id)a5;
- (void)i_trimFlow:(id)a3 pageIndex:(unint64_t)a4 toCharIndex:(unint64_t)a5;
- (void)invalidateFlows:(id)a3 startingPage:(id)a4;
- (void)layOutFlowsIfNeededOnPage:(id)a3;
- (void)layoutManagerNeedsLayout:(id)a3;
- (void)p_setLayoutMgr:(id)a3 forFlow:(id)a4;
- (void)processWidowAndInflationOnPage:(id)a3;
- (void)teardown;
@end

@implementation TPTextFlowLayoutController

- (TPTextFlowLayoutController)initWithPageController:(id)a3
{
  v4 = a3;
  v46.receiver = self;
  v46.super_class = TPTextFlowLayoutController;
  v5 = [(TPTextFlowLayoutController *)&v46 init];
  if (v5)
  {
    objc_opt_class();
    v6 = TSUCheckedDynamicCast();
    objc_storeWeak(&v5->_pageController, v6);

    v12 = objc_msgSend_weakToStrongObjectsMapTable(MEMORY[0x277CCAB00], v7, v8, v9, v10, v11);
    layoutMgrs = v5->_layoutMgrs;
    v5->_layoutMgrs = v12;

    v19 = objc_msgSend_strongToWeakObjectsMapTable(MEMORY[0x277CCAB00], v14, v15, v16, v17, v18);
    flows = v5->_flows;
    v5->_flows = v19;

    WeakRetained = objc_loadWeakRetained(&v5->_pageController);
    v27 = objc_msgSend_documentRoot(WeakRetained, v22, v23, v24, v25, v26);

    v33 = objc_msgSend_flowInfoContainer(v27, v28, v29, v30, v31, v32);
    v39 = objc_msgSend_changeNotifier(v27, v34, v35, v36, v37, v38);
    objc_msgSend_addObserver_forChangeSource_(v39, v40, v41, v42, v43, v44, v5, v33);
  }

  return v5;
}

- (void)dealloc
{
  if (!self->_tornDown)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, v5, "[TPTextFlowLayoutController dealloc]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPTextFlowLayoutController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v15, v16, v17, v18, v19, v8, v14, 83, 0, "Failed to tear down before dealloc");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23, v24);
  }

  v25.receiver = self;
  v25.super_class = TPTextFlowLayoutController;
  [(TPTextFlowLayoutController *)&v25 dealloc];
}

- (void)teardown
{
  v52 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_pageController);
  v9 = objc_msgSend_documentRoot(WeakRetained, v4, v5, v6, v7, v8);

  v15 = objc_msgSend_flowInfoContainer(v9, v10, v11, v12, v13, v14);
  v21 = objc_msgSend_changeNotifier(v9, v16, v17, v18, v19, v20);
  objc_msgSend_removeObserver_forChangeSource_(v21, v22, v23, v24, v25, v26, self, v15);

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v27 = self->_layoutMgrs;
  v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, v29, v30, v31, v32, &v47, v51, 16);
  if (v34)
  {
    v39 = *v48;
    do
    {
      v40 = 0;
      do
      {
        if (*v48 != v39)
        {
          objc_enumerationMutation(v27);
        }

        v41 = objc_msgSend_objectForKey_(self->_layoutMgrs, v33, v35, v36, v37, v38, *(*(&v47 + 1) + 8 * v40), v47);
        objc_msgSend_clearOwner(v41, v42, v43, v44, v45, v46);

        ++v40;
      }

      while (v34 != v40);
      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v33, v35, v36, v37, v38, &v47, v51, 16);
    }

    while (v34);
  }

  self->_tornDown = 1;
}

- (void)layOutFlowsIfNeededOnPage:(id)a3
{
  v330 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v300 = objc_msgSend_layoutController(v3, v4, v5, v6, v7, v8);
  v295 = objc_msgSend_set(MEMORY[0x277CBEB58], v9, v10, v11, v12, v13);
  objc_msgSend_p_flowsOnPage_textBoxes_(self, v14, v15, v16, v17, v18, v3);
  v324 = 0u;
  v325 = 0u;
  v322 = 0u;
  obj = v323 = 0u;
  v296 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, v20, v21, v22, v23, &v322, v329, 16);
  if (v296)
  {
    v294 = *v323;
    do
    {
      for (i = 0; i != v296; ++i)
      {
        if (*v323 != v294)
        {
          objc_enumerationMutation(obj);
        }

        v301 = *(*(&v322 + 1) + 8 * i);
        v309 = objc_msgSend_p_orderedTextBoxesForFlow_textBoxes_(self, v24, v25, v26, v27, v28);
        if (objc_msgSend_count(v309, v29, v30, v31, v32, v33))
        {
          v40 = objc_msgSend_p_layoutMgrForFlow_(self, v34, v35, v36, v37, v38, v301);
          if (!v40)
          {
            v45 = objc_alloc(MEMORY[0x277D80E78]);
            v51 = objc_msgSend_textStorage(v301, v46, v47, v48, v49, v50);
            v40 = objc_msgSend_initWithStorage_owner_(v45, v52, v53, v54, v55, v56, v51, self);

            objc_msgSend_p_setLayoutMgr_forFlow_(self, v57, v58, v59, v60, v61, v40, v301);
          }

          v306 = v40;
          for (j = objc_msgSend_pageIndex(v3, v39, v41, v42, v43, v44); j != -1; --j)
          {
            WeakRetained = objc_loadWeakRetained(&self->_pageController);
            v74 = objc_msgSend_i_pageHintForPageIndex_(WeakRetained, v69, v70, v71, v72, v73, j);

            if (objc_msgSend_pageKind(v74, v75, v76, v77, v78, v79) && objc_msgSend_pageKind(v74, v80, v81, v82, v83, v84) != 5)
            {
              v90 = objc_msgSend_pageIndex(v3, v85, v86, v87, v88, v89);
              v96 = objc_msgSend_flowHints(v74, v91, v92, v93, v94, v95);
              v102 = objc_msgSend_objectForKeyedSubscript_(v96, v97, v98, v99, v100, v101, v301);
              v108 = v102;
              if (j != v90 || v102)
              {
                if (v102)
                {
                  v239 = objc_msgSend_range(v102, v103, v104, v105, v106, v107) == *MEMORY[0x277D81490] && v237 == *(MEMORY[0x277D81490] + 8);
                  v290 = v239;
                  v318 = 0u;
                  v319 = 0u;
                  v320 = 0u;
                  v321 = 0u;
                  v303 = v309;
                  v245 = objc_msgSend_countByEnumeratingWithState_objects_count_(v303, v240, v241, v242, v243, v244, &v318, v328, 16);
                  v250 = 0;
                  if (v245)
                  {
                    v291 = *v319;
                    do
                    {
                      v289 = v245;
                      for (k = 0; k != v289; ++k)
                      {
                        if (*v319 != v291)
                        {
                          objc_enumerationMutation(v303);
                        }

                        v251 = *(*(&v318 + 1) + 8 * k);
                        v314 = 0u;
                        v315 = 0u;
                        v316 = 0u;
                        v317 = 0u;
                        v252 = objc_msgSend_layoutsForInfo_(v300, v246, 0, v247, v248, v249, v251);
                        v305 = v252;
                        v259 = objc_msgSend_countByEnumeratingWithState_objects_count_(v252, v253, v254, v255, v256, v257, &v314, v327, 16);
                        if (v259)
                        {
                          v308 = *v315;
                          while (2)
                          {
                            v264 = 0;
                            v265 = v250;
                            do
                            {
                              if (*v315 != v308)
                              {
                                objc_enumerationMutation(v305);
                              }

                              v266 = objc_msgSend_containedLayout(*(*(&v314 + 1) + 8 * v264), v258, v260, v261, v262, v263);
                              v267 = v266;
                              if (v265)
                              {
                                v268 = v265;
                              }

                              else
                              {
                                v268 = v266;
                              }

                              v297 = v268;

                              v274 = objc_msgSend_textLayoutValid(v267, v269, v270, v271, v272, v273);
                              if ((v274 & 1) == 0)
                              {

                                if (j == v90)
                                {
                                  v277 = v297;
                                  if (v290)
                                  {
                                    v302 = 0;
                                    Target = 0;
                                    v276 = 1;
                                    v307 = 1;
                                  }

                                  else
                                  {
                                    Target = objc_msgSend_layoutStateForLayoutWithHint_firstTarget_(v306, v278, v279, v280, v281, v282, v108, v297);
                                    v307 = 0;
                                    v276 = 1;
                                    v302 = 1;
                                  }
                                }

                                else
                                {
                                  v277 = v297;
                                  v283 = objc_msgSend_endOfLayout(v108, v278, v279, v280, v281, v282);
                                  Target = objc_msgSend_layoutStateForLayoutAfterHint_firstTarget_childHint_(v306, v284, v285, v286, v287, v288, v108, v297, 0);
                                  v307 = v283 | v290;
                                  v302 = (v283 | v290) ^ 1;
                                  v276 = 1;
                                }

                                goto LABEL_71;
                              }

                              ++v264;
                              v250 = v297;
                              v265 = v297;
                            }

                            while (v259 != v264);
                            v252 = v305;
                            v259 = objc_msgSend_countByEnumeratingWithState_objects_count_(v305, v258, v260, v261, v262, v263, &v314, v327, 16);
                            if (v259)
                            {
                              continue;
                            }

                            break;
                          }
                        }
                      }

                      v245 = objc_msgSend_countByEnumeratingWithState_objects_count_(v303, v246, v275, v247, v248, v249, &v318, v328, 16);
                    }

                    while (v245);
                  }

                  v276 = 0;
                  v307 = 0;
                  Target = 0;
                  v302 = 1;
                  v277 = v250;
LABEL_71:

                  if (!v276)
                  {
LABEL_72:
                    objc_msgSend_destroyLayoutState_(v306, v62, v64, v65, v66, v67, Target);

                    goto LABEL_73;
                  }

LABEL_20:
                  for (m = 0; m < objc_msgSend_count(v309, v62, v64, v65, v66, v67); ++m)
                  {
                    v128 = objc_msgSend_objectAtIndexedSubscript_(v309, v62, v64, v65, v66, v67, m);
                    v134 = objc_msgSend_layoutsForInfo_(v300, v129, v130, v131, v132, v133, v128);
                    v312 = 0u;
                    v313 = 0u;
                    v310 = 0u;
                    v311 = 0u;
                    v135 = v134;
                    v141 = objc_msgSend_countByEnumeratingWithState_objects_count_(v135, v136, v137, v138, v139, v140, &v310, v326, 16);
                    if (v141)
                    {
                      v142 = 0;
                      v143 = *v311;
LABEL_24:
                      v144 = 0;
                      v145 = v142;
                      while (1)
                      {
                        if (*v311 != v143)
                        {
                          objc_enumerationMutation(v135);
                        }

                        v142 = *(*(&v310 + 1) + 8 * v144);

                        v151 = objc_msgSend_pageIndex(v142, v146, v147, v148, v149, v150);
                        if (objc_msgSend_pageIndex(v3, v152, v153, v154, v155, v156) == v151)
                        {
                          break;
                        }

                        ++v144;
                        v145 = v142;
                        if (v141 == v144)
                        {
                          v141 = objc_msgSend_countByEnumeratingWithState_objects_count_(v135, v157, v158, v159, v160, v161, &v310, v326, 16);
                          if (v141)
                          {
                            goto LABEL_24;
                          }

                          goto LABEL_31;
                        }
                      }
                    }

                    else
                    {
LABEL_31:
                      v142 = 0;
                    }

                    objc_opt_class();
                    v162 = TSUCheckedDynamicCast();

                    v168 = objc_msgSend_info(v162, v163, v164, v165, v166, v167);
                    v174 = objc_msgSend_indexOfTextBox_(v301, v169, v170, v171, v172, v173, v168);

                    if (v174 == 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v180 = MEMORY[0x277D81150];
                      v181 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v175, v176, v177, v178, v179, "[TPTextFlowLayoutController layOutFlowsIfNeededOnPage:]");
                      v187 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v182, v183, v184, v185, v186, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPTextFlowLayoutController.mm");
                      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v180, v188, v189, v190, v191, v192, v181, v187, 199, 0, "cannot find index of text box in flow");

                      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v193, v194, v195, v196, v197);
                    }

                    else
                    {
                      objc_msgSend_setIndexInFlow_(v162, v175, v176, v177, v178, v179, v174);
                    }

                    objc_msgSend_validate(v162, v198, v199, v200, v201, v202);
                    v208 = objc_msgSend_containedLayout(v162, v203, v204, v205, v206, v207);
                    objc_msgSend_setLayoutManager_(v208, v209, v210, v211, v212, v213, v306);
                    if (v307)
                    {
                      if ((v302 & 1) == 0)
                      {
                        v219 = objc_msgSend_currentInlineDrawableLayouts(v208, v214, v215, v216, v217, v218);
                        objc_msgSend_killDrawableLayouts_(v208, v220, v221, v222, v223, v224, v219);

                        v230 = objc_msgSend_columns(v208, v225, v226, v227, v228, v229);
                        objc_msgSend_removeAllObjects(v230, v231, v232, v233, v234, v235);
                      }

                      v236 = 1;
                    }

                    else
                    {
                      Target = objc_msgSend_layOutIntoTarget_withLayoutState_outSync_(v306, v214, v215, v216, v217, v218, v208, Target, 0);
                      v236 = Target == 0;
                    }

                    v307 = v236;
                    objc_msgSend_setTextLayoutValid_(v208, v214, v215, v216, v217, v218, 1);

                    v302 = 0;
                  }

                  goto LABEL_72;
                }
              }

              else
              {
                v109 = MEMORY[0x277D81150];
                v110 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v103, v104, v105, v106, v107, "[TPTextFlowLayoutController layOutFlowsIfNeededOnPage:]");
                v116 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v111, v112, v113, v114, v115, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPTextFlowLayoutController.mm");
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v109, v117, v118, v119, v120, v121, v110, v116, 135, 0, "invalid nil value for '%{public}s'", "hint");

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v122, v123, v124, v125, v126);
              }
            }
          }

          v307 = 0;
          Target = 0;
          v302 = 1;
          goto LABEL_20;
        }

LABEL_73:
      }

      v296 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, v25, v26, v27, v28, &v322, v329, 16);
    }

    while (v296);
  }
}

- (void)deflatePage:(id)a3 intoHints:(id)a4 topicNumberHints:(id)a5
{
  v428 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v400 = a4;
  v389 = a5;
  v401 = v7;
  v392 = objc_msgSend_layoutController(v7, v8, v9, v10, v11, v12);
  v388 = objc_msgSend_set(MEMORY[0x277CBEB58], v13, v14, v15, v16, v17);
  objc_msgSend_p_flowsOnPage_textBoxes_(self, v18, v19, v20, v21, v22, v7);
  v421 = 0u;
  v422 = 0u;
  v419 = 0u;
  obj = v420 = 0u;
  v387 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v23, v24, v25, v26, v27, &v419, v427, 16);
  if (v387)
  {
    v386 = *v420;
    do
    {
      for (i = 0; i != v387; ++i)
      {
        if (*v420 != v386)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v419 + 1) + 8 * i);
        v34 = objc_msgSend_p_orderedTextBoxesForFlow_textBoxes_(self, v28, v29, v30, v31, v32, v33, v388);
        v417 = 0u;
        v418 = 0u;
        v415 = 0u;
        v416 = 0u;
        v391 = v34;
        v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v391, v35, v36, v37, v38, v39, &v415, v426, 16);
        if (v40)
        {
          v393 = *v416;
          v398 = v33;
          do
          {
            v394 = v40;
            for (j = 0; j != v394; ++j)
            {
              if (*v416 != v393)
              {
                objc_enumerationMutation(v391);
              }

              v47 = *(*(&v415 + 1) + 8 * j);
              v48 = objc_msgSend_objectForKeyedSubscript_(v400, v41, v42, v43, v44, v45, v33);
              v395 = objc_msgSend_p_layoutMgrForFlow_(self, v49, v50, v51, v52, v53, v33);
              if (!v395)
              {
                v59 = MEMORY[0x277D81150];
                v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, v55, v56, v57, v58, "[TPTextFlowLayoutController deflatePage:intoHints:topicNumberHints:]");
                v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, v62, v63, v64, v65, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPTextFlowLayoutController.mm");
                v72 = objc_msgSend_pageIndex(v401, v67, v68, v69, v70, v71);
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v73, v74, v75, v76, v77, v60, v66, 242, 0, "Missing layout manager for a flow after layout on page #%lu", v72 + 1);

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v78, v79, v80, v81, v82);
                v33 = v398;
              }

              if (!v48)
              {
                v83 = objc_opt_new();
                objc_msgSend_setRange_(v83, v84, v85, v86, v87, v88, *MEMORY[0x277D81490], *(MEMORY[0x277D81490] + 8));
                objc_msgSend_setNextWidowPullsDownFromCharIndex_(v83, v89, v90, v91, v92, v93, 0);
                objc_msgSend_setColumnCount_(v83, v94, v95, v96, v97, v98, 0);
                objc_msgSend_setLineFragmentCount_(v83, v99, v100, v101, v102, v103, 0);
                IsVertical = objc_msgSend_textIsVertical(v47, v104, v105, v106, v107, v108);
                objc_msgSend_setTextIsVertical_(v83, v110, v111, v112, v113, v114, IsVertical);
                v48 = v83;
                objc_msgSend_setObject_forUncopiedKey_(v400, v115, v116, v117, v118, v119, v83, v33);
              }

              v120 = objc_msgSend_objectForKeyedSubscript_(v400, v54, v55, v56, v57, v58, v33);
              v126 = objc_msgSend_layoutsForInfo_(v392, v121, v122, v123, v124, v125, v47);
              v413 = 0u;
              v414 = 0u;
              v411 = 0u;
              v412 = 0u;
              v127 = v126;
              v133 = objc_msgSend_countByEnumeratingWithState_objects_count_(v127, v128, v129, v130, v131, v132, &v411, v425, 16);
              if (v133)
              {
                v134 = 0;
                v135 = *v412;
LABEL_17:
                v136 = 0;
                v137 = v134;
                while (1)
                {
                  if (*v412 != v135)
                  {
                    objc_enumerationMutation(v127);
                  }

                  v134 = *(*(&v411 + 1) + 8 * v136);

                  v143 = objc_msgSend_pageIndex(v134, v138, v139, v140, v141, v142);
                  if (objc_msgSend_pageIndex(v401, v144, v145, v146, v147, v148) == v143)
                  {
                    break;
                  }

                  ++v136;
                  v137 = v134;
                  if (v133 == v136)
                  {
                    v133 = objc_msgSend_countByEnumeratingWithState_objects_count_(v127, v149, v150, v151, v152, v153, &v411, v425, 16);
                    if (v133)
                    {
                      goto LABEL_17;
                    }

                    goto LABEL_24;
                  }
                }

                if (v134)
                {
                  goto LABEL_27;
                }
              }

              else
              {
LABEL_24:
              }

              v159 = MEMORY[0x277D81150];
              v160 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v154, v155, v156, v157, v158, "[TPTextFlowLayoutController deflatePage:intoHints:topicNumberHints:]");
              v166 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v161, v162, v163, v164, v165, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPTextFlowLayoutController.mm");
              v172 = objc_msgSend_pageIndex(v401, v167, v168, v169, v170, v171);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v159, v173, v174, v175, v176, v177, v160, v166, 264, 0, "Missing shape layout for a text box on page #%lu", v172 + 1);

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v178, v179, v180, v181, v182);
              v134 = 0;
LABEL_27:
              v183 = objc_msgSend_containedLayout(v134, v154, v155, v156, v157, v158);
              v189 = objc_msgSend_columns(v183, v184, v185, v186, v187, v188);
              v195 = objc_msgSend_count(v189, v190, v191, v192, v193, v194);
              v201 = objc_msgSend_columnCount(v120, v196, v197, v198, v199, v200);
              objc_msgSend_setColumnCount_(v120, v202, v203, v204, v205, v206, v201 + v195);

              v212 = objc_msgSend_p_layoutMgrForFlow_(self, v207, v208, v209, v210, v211, v398);
              v218 = objc_msgSend_layoutFinished(v212, v213, v214, v215, v216, v217);
              objc_msgSend_setEndOfLayout_(v120, v219, v220, v221, v222, v223, v218);

              v229 = objc_msgSend_columns(v183, v224, v225, v226, v227, v228);
              v410[0] = MEMORY[0x277D85DD0];
              v410[1] = 3221225472;
              v410[2] = sub_275FD6008;
              v410[3] = &unk_27A6A8530;
              v410[4] = v120;
              objc_msgSend_enumerateObjectsUsingBlock_(v229, v230, v231, v232, v233, v234, v410);

              v33 = v398;
            }

            v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v391, v41, v42, v43, v44, v45, &v415, v426, 16);
          }

          while (v40);
        }
      }

      v387 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v28, v29, v30, v31, v32, &v419, v427, 16);
    }

    while (v387);
  }

  v408 = 0u;
  v409 = 0u;
  v406 = 0u;
  v407 = 0u;
  v235 = v388;
  v242 = objc_msgSend_countByEnumeratingWithState_objects_count_(v235, v236, v237, v238, v239, v240, &v406, v424, 16);
  if (v242)
  {
    v247 = *v407;
    do
    {
      for (k = 0; k != v242; ++k)
      {
        if (*v407 != v247)
        {
          objc_enumerationMutation(v235);
        }

        v250 = objc_msgSend_textFlow(*(*(&v406 + 1) + 8 * k), v241, v243, v244, v245, v246);
        if (!v250)
        {
          v255 = MEMORY[0x277D81150];
          v256 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v249, v251, v252, v253, v254, "[TPTextFlowLayoutController deflatePage:intoHints:topicNumberHints:]");
          v262 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v257, v258, v259, v260, v261, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPTextFlowLayoutController.mm");
          v268 = objc_msgSend_pageIndex(v401, v263, v264, v265, v266, v267);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v255, v269, v270, v271, v272, v273, v256, v262, 280, 0, "After layout, the flow for a text box on page #%lu is nil.", v268 + 1);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v274, v275, v276, v277, v278);
        }
      }

      v242 = objc_msgSend_countByEnumeratingWithState_objects_count_(v235, v241, v243, v244, v245, v246, &v406, v424, 16);
    }

    while (v242);
  }

  v404 = 0u;
  v405 = 0u;
  v402 = 0u;
  v403 = 0u;
  v396 = obj;
  v285 = objc_msgSend_countByEnumeratingWithState_objects_count_(v396, v279, v280, v281, v282, v283, &v402, v423, 16);
  if (v285)
  {
    v399 = *v403;
    v290 = "invalid nil value for '%{public}s'";
    do
    {
      for (m = 0; m != v285; ++m)
      {
        if (*v403 != v399)
        {
          objc_enumerationMutation(v396);
        }

        v292 = *(*(&v402 + 1) + 8 * m);
        v293 = objc_msgSend_p_layoutMgrForFlow_(self, v284, v286, v287, v288, v289, v292);
        v299 = objc_msgSend_objectForKeyedSubscript_(v400, v294, v295, v296, v297, v298, v292);
        v305 = v299;
        v306 = v235;
        if (!v293)
        {
          v331 = MEMORY[0x277D81150];
          v332 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v300, v301, v302, v303, v304, "[TPTextFlowLayoutController deflatePage:intoHints:topicNumberHints:]");
          v338 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v333, v334, v335, v336, v337, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPTextFlowLayoutController.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v331, v339, v340, v341, v342, v343, v332, v338, 286, 0, v290, "layoutMgr");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v344, v345, v346, v347, v348);
          if (v305)
          {
            goto LABEL_54;
          }

LABEL_51:
          v349 = MEMORY[0x277D81150];
          v350 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v300, v301, v302, v303, v304, "[TPTextFlowLayoutController deflatePage:intoHints:topicNumberHints:]");
          v356 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v351, v352, v353, v354, v355, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPTextFlowLayoutController.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v349, v357, v358, v359, v360, v361, v350, v356, 287, 0, v290, "targetHint");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v362, v363, v364, v365, v366);
          goto LABEL_54;
        }

        if (!v299)
        {
          goto LABEL_51;
        }

        if (objc_msgSend_range(v299, v300, v301, v302, v303, v304) != 0x7FFFFFFFFFFFFFFFLL)
        {
          v312 = objc_msgSend_topicNumbers(v293, v307, v308, v309, v310, v311);
          v318 = objc_msgSend_range(v305, v313, v314, v315, v316, v317);
          v324 = objc_msgSend_hintsForCharIndex_(v312, v319, v320, v321, v322, v323, v318);

          v330 = v290;
          if (v324)
          {
            objc_msgSend_setObject_forUncopiedKey_(v389, v325, v326, v327, v328, v329, v324, v292);
          }

          else
          {
            v367 = MEMORY[0x277D81150];
            v368 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v325, v326, v327, v328, v329, "[TPTextFlowLayoutController deflatePage:intoHints:topicNumberHints:]");
            v374 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v369, v370, v371, v372, v373, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPTextFlowLayoutController.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v367, v375, v376, v377, v378, v379, v368, v374, 290, 0, v330, "tnHints");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v380, v381, v382, v383, v384);
          }

          v290 = v330;
        }

LABEL_54:

        v235 = v306;
      }

      v285 = objc_msgSend_countByEnumeratingWithState_objects_count_(v396, v284, v286, v287, v288, v289, &v402, v423, 16);
    }

    while (v285);
  }
}

- (void)processWidowAndInflationOnPage:(id)a3
{
  v211 = *MEMORY[0x277D85DE8];
  v200 = a3;
  v189 = objc_msgSend_pageIndex(v200, v3, v4, v5, v6, v7);
  v191 = objc_msgSend_set(MEMORY[0x277CBEB58], v8, v9, v10, v11, v12);
  objc_msgSend_p_flowsOnPage_textBoxes_(self, v13, v14, v15, v16, v17, v200);
  v207 = 0u;
  v208 = 0u;
  v205 = 0u;
  obj = v206 = 0u;
  v192 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, v19, v20, v21, v22, &v205, v210, 16);
  if (v192)
  {
    v190 = *v206;
    do
    {
      for (i = 0; i != v192; ++i)
      {
        if (*v206 != v190)
        {
          objc_enumerationMutation(obj);
        }

        v195 = *(*(&v205 + 1) + 8 * i);
        v193 = objc_msgSend_p_orderedTextBoxesForFlow_textBoxes_(self, v23, v24, v25, v26, v27);
        v33 = objc_msgSend_lastObject(v193, v28, v29, v30, v31, v32);
        objc_opt_class();
        v39 = objc_msgSend_layoutController(v200, v34, v35, v36, v37, v38);
        v45 = objc_msgSend_layoutForInfo_(v39, v40, v41, v42, v43, v44, v33);
        v196 = TSUCheckedDynamicCast();

        objc_opt_class();
        v51 = objc_msgSend_containedLayout(v196, v46, v47, v48, v49, v50);
        v198 = TSUCheckedDynamicCast();

        v57 = objc_msgSend_columns(v198, v52, v53, v54, v55, v56);
        v199 = objc_msgSend_lastObject(v57, v58, v59, v60, v61, v62);

        if (v199)
        {
          v68 = objc_msgSend_range(v199, v63, v64, v65, v66, v67);
          v70 = v68 + v69;
        }

        else
        {
          v71 = objc_msgSend_textStorage(v195, v63, v64, v65, v66, v67);
          v70 = objc_msgSend_length(v71, v72, v73, v74, v75, v76);
        }

        v203 = 0u;
        v204 = 0u;
        v201 = 0u;
        v202 = 0u;
        v77 = v193;
        v84 = objc_msgSend_countByEnumeratingWithState_objects_count_(v77, v78, v79, v80, v81, v82, &v201, v209, 16);
        if (v84)
        {
          v89 = *v202;
          do
          {
            for (j = 0; j != v84; ++j)
            {
              if (*v202 != v89)
              {
                objc_enumerationMutation(v77);
              }

              v91 = *(*(&v201 + 1) + 8 * j);
              if (v91 != v33)
              {
                objc_opt_class();
                v97 = objc_msgSend_layoutController(v200, v92, v93, v94, v95, v96);
                v103 = objc_msgSend_layoutForInfo_(v97, v98, v99, v100, v101, v102, v91);
                v104 = TSUCheckedDynamicCast();

                objc_opt_class();
                v110 = objc_msgSend_containedLayout(v104, v105, v106, v107, v108, v109);
                v111 = TSUCheckedDynamicCast();

                v117 = objc_msgSend_columns(v111, v112, v113, v114, v115, v116);
                v123 = objc_msgSend_lastObject(v117, v118, v119, v120, v121, v122);

                if (v123)
                {
                  v129 = objc_msgSend_range(v123, v124, v125, v126, v127, v128);
                  v135 = &v130[v129];
                  if (&v130[v129] != v70)
                  {
                    if (&v130[v129] >= v70)
                    {
                      v136 = v70;
                    }

                    else
                    {
                      v136 = &v130[v129];
                    }

                    if (&v130[v129] <= v70)
                    {
                      v135 = v70;
                    }

                    objc_msgSend_discardLayoutsForDrawableAttachmentsInRange_(v111, v130, v131, v132, v133, v134, v136, v135 - v136);
                  }
                }
              }
            }

            v84 = objc_msgSend_countByEnumeratingWithState_objects_count_(v77, v83, v85, v86, v87, v88, &v201, v209, 16);
          }

          while (v84);
        }

        WeakRetained = objc_loadWeakRetained(&self->_pageController);
        v143 = objc_msgSend_i_pageHintForPageIndex_(WeakRetained, v138, v139, v140, v141, v142, v189);

        v149 = objc_msgSend_flowHints(v143, v144, v145, v146, v147, v148);
        v155 = objc_msgSend_objectForKeyedSubscript_(v149, v150, v151, v152, v153, v154, v195);
        v161 = v155;
        if (v199)
        {
          if (v155)
          {
            v162 = objc_msgSend_range(v199, v156, v157, v158, v159, v160);
            v164 = v163;
            v169 = objc_msgSend_range(v161, v163, v165, v166, v167, v168);
            v175 = &v164[v162];
            v176 = &v170[v169];
            if (&v170[v169] != v175)
            {
              objc_msgSend_trimToCharIndex_inTarget_removeFootnoteReferenceCount_removeAutoNumberFootnoteCount_(v199, v170, v171, v172, v173, v174, v176, v198, 0, 0);
              if (v176 <= v175)
              {
                v182 = v175;
              }

              else
              {
                v182 = v176;
              }

              if (v176 >= v175)
              {
                objc_msgSend_discardLayoutsForDrawableAttachmentsInRange_(v198, v177, v178, v179, v180, v181, v175, v182 - v175);
              }

              else
              {
                objc_msgSend_discardLayoutsForDrawableAttachmentsInRange_(v198, v177, v178, v179, v180, v181, v176, v182 - v176);
              }

              objc_msgSend_setNeedsDisplay(v198, v183, v184, v185, v186, v187);
            }
          }
        }
      }

      v192 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v23, v24, v25, v26, v27, &v205, v210, 16);
    }

    while (v192);
  }
}

- (void)invalidateFlows:(id)a3 startingPage:(id)a4
{
  v134 = *MEMORY[0x277D85DE8];
  v108 = a3;
  v110 = a4;
  v10 = objc_msgSend_pageIndex(v110, v5, v6, v7, v8, v9);
  v117 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v11, v12, v13, v14, v15);
  v114 = objc_msgSend_layoutController(v110, v16, v17, v18, v19, v20);
  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  obj = v108;
  v109 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, v22, v23, v24, v25, &v127, v133, 16);
  if (v109)
  {
    v111 = *v128;
    do
    {
      for (i = 0; i != v109; ++i)
      {
        if (*v128 != v111)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v127 + 1) + 8 * i);
        v123 = 0u;
        v124 = 0u;
        v125 = 0u;
        v126 = 0u;
        v115 = objc_msgSend_textboxes(v30, v26, 0, v27, v28, v29, v108);
        v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v115, v31, v32, v33, v34, v35, &v123, v132, 16);
        if (v36)
        {
          v37 = *v124;
          do
          {
            for (j = 0; j != v36; ++j)
            {
              if (*v124 != v37)
              {
                objc_enumerationMutation(v115);
              }

              v39 = *(*(&v123 + 1) + 8 * j);
              WeakRetained = objc_loadWeakRetained(&self->_pageController);
              v46 = objc_msgSend_documentRoot(WeakRetained, v41, v42, v43, v44, v45);
              v52 = objc_msgSend_floatingDrawables(v46, v47, v48, v49, v50, v51);
              v58 = objc_msgSend_pageIndexForDrawable_(v52, v53, v54, v55, v56, v57, v39);

              v64 = objc_msgSend_containsIndex_(v117, v59, v60, v61, v62, v63, v58);
              if (v58 < v10)
              {
                v70 = 1;
              }

              else
              {
                v70 = v64;
              }

              if ((v70 & 1) == 0)
              {
                v121 = 0u;
                v122 = 0u;
                v119 = 0u;
                v120 = 0u;
                v71 = objc_msgSend_layoutsForInfo_(v114, v65, 0, v67, v68, v69, v39);
                v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(v71, v72, v73, v74, v75, v76, &v119, v131, 16);
                if (v78)
                {
                  v83 = *v120;
                  do
                  {
                    for (k = 0; k != v78; ++k)
                    {
                      if (*v120 != v83)
                      {
                        objc_enumerationMutation(v71);
                      }

                      v85 = objc_msgSend_containedLayout(*(*(&v119 + 1) + 8 * k), v77, v79, v80, v81, v82);
                      objc_msgSend_invalidateTextLayout(v85, v86, v87, v88, v89, v90);
                    }

                    v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(v71, v77, v79, v80, v81, v82, &v119, v131, 16);
                  }

                  while (v78);
                }

                objc_msgSend_addIndex_(v117, v91, v92, v93, v94, v95, v58);
              }
            }

            v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v115, v65, v66, v67, v68, v69, &v123, v132, 16);
          }

          while (v36);
        }
      }

      v109 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v26, v96, v27, v28, v29, &v127, v133, 16);
    }

    while (v109);
  }

  if (objc_msgSend_count(v117, v97, v98, v99, v100, v101))
  {
    v102 = objc_loadWeakRetained(&self->_pageController);
    v118[0] = MEMORY[0x277D85DD0];
    v103.n128_u64[0] = 3221225472;
    v118[1] = 3221225472;
    v118[2] = sub_275FD6BA0;
    v118[3] = &unk_27A6A8418;
    v118[4] = v117;
    v118[5] = self;
    objc_msgSend_accquireLockAndPerformAction_(v102, v104, v103, v105, v106, v107, v118);
  }
}

- (id)hintForFlow:(id)a3 pageIndex:(unint64_t)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_pageController);
  v13 = objc_msgSend_i_pageHintForPageIndex_(WeakRetained, v8, v9, v10, v11, v12, a4);

  if (v13)
  {
    v19 = objc_msgSend_flowHints(v13, v14, v15, v16, v17, v18);
    v25 = objc_msgSend_objectForKeyedSubscript_(v19, v20, v21, v22, v23, v24, v6);
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (unint64_t)pageIndexNeedingLayoutPreviousToPageIndex:(unint64_t)a3
{
  v79 = *MEMORY[0x277D85DE8];
  v70 = objc_msgSend_p_flowsOnPageIndex_(self, a2, v3, v4, v5, v6);
  v71 = objc_msgSend_count(v70, v8, v9, v10, v11, v12);
  if (a3 && v71)
  {
    v13 = objc_alloc(MEMORY[0x277CBEB58]);
    v20 = objc_msgSend_initWithCapacity_(v13, v14, v15, v16, v17, v18, v71);
    v25 = a3;
    while (v71 > objc_msgSend_count(v20, v19, v21, v22, v23, v24) && a3)
    {
      WeakRetained = objc_loadWeakRetained(&self->_pageController);
      v73 = objc_msgSend_i_pageHintForPageIndex_(WeakRetained, v27, v28, v29, v30, v31, --a3);

      if (v73)
      {
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v36 = objc_msgSend_flowHints(v73, v32, 0, v33, v34, v35);
        v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, v38, v39, v40, v41, &v74, v78, 16);
        if (v43)
        {
          v48 = *v75;
          do
          {
            for (i = 0; i != v43; ++i)
            {
              if (*v75 != v48)
              {
                objc_enumerationMutation(v36);
              }

              v50 = *(*(&v74 + 1) + 8 * i);
              if ((objc_msgSend_containsObject_(v20, v42, v44, v45, v46, v47, v50) & 1) == 0)
              {
                objc_msgSend_addObject_(v20, v42, v44, v45, v46, v47, v50);
                if (a3 < v25)
                {
                  v51 = objc_msgSend_p_layoutMgrForFlow_(self, v42, v44, v45, v46, v47, v50);
                  v57 = objc_msgSend_flowHints(v73, v52, v53, v54, v55, v56);
                  v63 = objc_msgSend_objectForKeyedSubscript_(v57, v58, v59, v60, v61, v62, v50);

                  if (objc_msgSend_needsLayoutInColumn_(v51, v64, v65, v66, v67, v68, v63))
                  {
                    v25 = a3;
                  }
                }
              }
            }

            v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v42, v44, v45, v46, v47, &v74, v78, 16);
          }

          while (v43);
        }
      }
    }
  }

  else
  {
    v25 = a3;
  }

  return v25;
}

- (void)layoutManagerNeedsLayout:(id)a3
{
  v118 = *MEMORY[0x277D85DE8];
  v105 = a3;
  v109 = objc_msgSend_p_flowForLayoutMgr_(self, v4, v5, v6, v7, v8, v105);
  v108 = objc_msgSend_dirtyRanges(v105, v9, v10, v11, v12, v13);
  v19 = objc_msgSend_superRange(v108, v14, v15, v16, v17, v18);
  v106 = v20;
  v107 = v19;
  v21 = objc_opt_new();
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  obj = objc_msgSend_textboxes(v109, v22, 0, v23, v24, v25);
  v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v26, v27, v28, v29, v30, &v113, v117, 16);
  if (v31)
  {
    v32 = *v114;
    do
    {
      v33 = 0;
      do
      {
        if (*v114 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v113 + 1) + 8 * v33);
        WeakRetained = objc_loadWeakRetained(&self->_pageController);
        v41 = objc_msgSend_documentRoot(WeakRetained, v36, v37, v38, v39, v40);
        v47 = objc_msgSend_floatingDrawables(v41, v42, v43, v44, v45, v46);
        v53 = objc_msgSend_pageIndexForDrawable_(v47, v48, v49, v50, v51, v52, v34);

        if (v53 >= 0x7FFFFFFFFFFFFFFFLL)
        {
          v69 = MEMORY[0x277D81150];
          v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, v55, v56, v57, v58, "[TPTextFlowLayoutController layoutManagerNeedsLayout:]");
          v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v71, v72, v73, v74, v75, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPTextFlowLayoutController.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v69, v77, v78, v79, v80, v81, v70, v76, 470, 0, "invalid page index");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v82, v83, v84, v85, v86);
        }

        else if ((objc_msgSend_containsIndex_(v21, v54, v55, v56, v57, v58, v53) & 1) == 0)
        {
          if (objc_msgSend_count(v21, v59, v60, v61, v62, v63))
          {
            objc_msgSend_addIndex_(v21, v64, v65, v66, v67, v68, v53);
          }

          else
          {
            v87 = objc_loadWeakRetained(&self->_pageController);
            v112[0] = MEMORY[0x277D85DD0];
            v112[1] = 3221225472;
            v112[2] = sub_275FD7404;
            v112[3] = &unk_27A6A8580;
            v112[4] = self;
            v112[5] = v109;
            v112[8] = v53;
            v112[9] = v107;
            v112[10] = v106;
            v112[6] = v108;
            v112[7] = v21;
            objc_msgSend_accquireLockAndPerformAction_(v87, v88, v89, v90, v91, v92, v112);
          }
        }

        ++v33;
      }

      while (v31 != v33);
      v93 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v59, v60, v61, v62, v63, &v113, v117, 16);
      v31 = v93;
    }

    while (v93);
  }

  if (objc_msgSend_count(v21, v94, v95, v96, v97, v98))
  {
    v99 = objc_loadWeakRetained(&self->_pageController);
    v111[0] = MEMORY[0x277D85DD0];
    v100.n128_u64[0] = 3221225472;
    v111[1] = 3221225472;
    v111[2] = sub_275FD7564;
    v111[3] = &unk_27A6A8418;
    v111[4] = v21;
    v111[5] = self;
    objc_msgSend_accquireLockAndPerformAction_(v99, v101, v100, v102, v103, v104, v111);
  }
}

- (id)textWrapper
{
  v3 = [TPShapeTextWrapController alloc];
  WeakRetained = objc_loadWeakRetained(&self->_pageController);
  v10 = objc_msgSend_documentRoot(WeakRetained, v5, v6, v7, v8, v9);
  v16 = objc_msgSend_initWithDocumentRoot_(v3, v11, v12, v13, v14, v15, v10);

  return v16;
}

- (id)p_previousTextBoxForTarget:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = TSUCheckedDynamicCast();
  objc_opt_class();
  v10 = objc_msgSend_parent(v4, v5, v6, v7, v8, v9);
  v11 = TSUDynamicCast();

  v17 = objc_msgSend_info(v11, v12, v13, v14, v15, v16);
  v23 = objc_msgSend_textFlow(v17, v18, v19, v20, v21, v22);
  v29 = v23;
  if (v23)
  {
    v30 = objc_msgSend_textboxes(v23, v24, v25, v26, v27, v28);
    v36 = objc_msgSend_indexOfObject_(v30, v31, v32, v33, v34, v35, v17);
    if (v36)
    {
      v42 = v36 == 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v42 = 1;
    }

    if (v42)
    {
      v43 = 0;
    }

    else
    {
      v43 = objc_msgSend_objectAtIndexedSubscript_(v30, v37, v38, v39, v40, v41, v36 - 1);
    }
  }

  else
  {
    v43 = 0;
  }

  return v43;
}

- (id)previousTargetLastColumnForTarget:(id)a3
{
  v4 = a3;
  v207 = 0;
  v208 = &v207;
  v5.n128_u64[0] = 0x3032000000;
  v209 = 0x3032000000;
  v210 = sub_275FD7F10;
  v211 = sub_275FD7F20;
  v212 = 0;
  v10 = objc_msgSend_p_previousTextBoxForTarget_(self, v6, v5, v7, v8, v9, v4);
  if (v10)
  {
    WeakRetained = objc_loadWeakRetained(&self->_pageController);
    v17 = objc_msgSend_documentRoot(WeakRetained, v12, v13, v14, v15, v16);
    v23 = objc_msgSend_floatingDrawables(v17, v18, v19, v20, v21, v22);
    v29 = objc_msgSend_pageIndexForDrawable_(v23, v24, v25, v26, v27, v28, v10);

    v35 = objc_msgSend_layoutController(v4, v30, v31, v32, v33, v34);
    v41 = objc_msgSend_layoutsForInfo_(v35, v36, v37, v38, v39, v40, v10);
    v47 = objc_msgSend_anyObject(v41, v42, v43, v44, v45, v46);

    v204 = v47;
    v53 = objc_msgSend_containedLayout(v47, v48, v49, v50, v51, v52);
    v59 = objc_msgSend_columns(v53, v54, v55, v56, v57, v58);
    v205 = objc_msgSend_lastObject(v59, v60, v61, v62, v63, v64);

    v71 = objc_msgSend_textFlow(v10, v65, v66, v67, v68, v69);
    if (!v71)
    {
      v76 = MEMORY[0x277D81150];
      v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, v72, v73, v74, v75, "[TPTextFlowLayoutController previousTargetLastColumnForTarget:]");
      v83 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, v79, v80, v81, v82, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPTextFlowLayoutController.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v76, v84, v85, v86, v87, v88, v77, v83, 559, 0, "invalid nil value for '%{public}s'", "flow");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v89, v90, v91, v92, v93);
    }

    if (v29 >= 0x7FFFFFFFFFFFFFFFLL)
    {
      v131 = MEMORY[0x277D81150];
      v132 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, v72, v73, v74, v75, "[TPTextFlowLayoutController previousTargetLastColumnForTarget:]");
      v138 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v133, v134, v135, v136, v137, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPTextFlowLayoutController.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v131, v139, v140, v141, v142, v143, v132, v138, 560, 0, "invalid page index");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v144, v145, v146, v147, v148);
      v154 = objc_msgSend_context(v10, v149, v150, v151, v152, v153);

      if (!v154 && *MEMORY[0x277D81430] != -1)
      {
        sub_2760381C4();
      }

      v160 = objc_msgSend_documentRoot(v10, v155, v156, v157, v158, v159);

      if (!v160 && *MEMORY[0x277D81430] != -1)
      {
        sub_2760381EC();
      }

      if ((objc_msgSend_tsp_isInDocument(v10, v161, v162, v163, v164, v165) & 1) == 0 && *MEMORY[0x277D81430] != -1)
      {
        sub_276038214();
      }
    }

    else if (v205)
    {
      objc_opt_class();
      v99 = objc_msgSend_parent(v4, v94, v95, v96, v97, v98);
      v105 = objc_msgSend_info(v99, v100, v101, v102, v103, v104);
      v106 = TSUCheckedDynamicCast();

      v203 = v106;
      if (v106)
      {
        v112 = objc_loadWeakRetained(&self->_pageController);
        v118 = objc_msgSend_documentRoot(v112, v113, v114, v115, v116, v117);
        v124 = objc_msgSend_floatingDrawables(v118, v119, v120, v121, v122, v123);
        v130 = objc_msgSend_pageIndexForDrawable_(v124, v125, v126, v127, v128, v129, v106);
      }

      else
      {
        v172 = MEMORY[0x277D81150];
        v173 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v107, v108, v109, v110, v111, "[TPTextFlowLayoutController previousTargetLastColumnForTarget:]");
        v179 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v174, v175, v176, v177, v178, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPTextFlowLayoutController.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v172, v180, v181, v182, v183, v184, v173, v179, 570, 0, "invalid nil value for '%{public}s'", "currentTextBox");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v185, v186, v187, v188, v189);
        v130 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v130 == v29)
      {
        v190 = v208;
        v191 = v205;
        v192 = v190[5];
        v190[5] = v191;
      }

      else
      {
        v193 = [TPVisibleColumnProxy alloc];
        v192 = objc_loadWeakRetained(&self->_pageController);
        v199 = objc_msgSend_initWithPageIndex_pageController_flowInfo_(v193, v194, v195, v196, v197, v198, v29, v192, v71);
        v200 = v208[5];
        v208[5] = v199;
      }
    }

    else
    {
      v166 = objc_loadWeakRetained(&self->_pageController);
      v206[0] = MEMORY[0x277D85DD0];
      v167.n128_u64[0] = 3221225472;
      v206[1] = 3221225472;
      v206[2] = sub_275FD7FF4;
      v206[3] = &unk_27A6A85A8;
      v206[4] = self;
      v206[5] = v71;
      v206[6] = &v207;
      v206[7] = v29;
      objc_msgSend_accquireLockAndPerformAction_(v166, v168, v167, v169, v170, v171, v206);
    }
  }

  v201 = v208[5];

  _Block_object_dispose(&v207, 8);

  return v201;
}

- (void)i_trimFlow:(id)a3 pageIndex:(unint64_t)a4 toCharIndex:(unint64_t)a5
{
  v32 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_pageController);
  v14 = objc_msgSend_i_pageHintForPageIndex_(WeakRetained, v9, v10, v11, v12, v13, a4);

  v20 = objc_msgSend_flowHints(v14, v15, v16, v17, v18, v19);
  v26 = objc_msgSend_objectForKeyedSubscript_(v20, v21, v22, v23, v24, v25, v32);

  if (v26)
  {
    objc_msgSend_trimToCharIndex_inTarget_removeFootnoteReferenceCount_removeAutoNumberFootnoteCount_(v26, v27, v28, v29, v30, v31, a5, 0, 0, 0);
  }
}

- (id)p_flowsOnPage:(id)a3 textBoxes:(id)a4
{
  v62 = *MEMORY[0x277D85DE8];
  v55 = a3;
  v56 = a4;
  v5 = objc_opt_new();
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v10 = objc_msgSend_children(v55, v6, 0, v7, v8, v9);
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, v12, v13, v14, v15, &v57, v61, 16);
  if (v16)
  {
    v17 = *v58;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v58 != v17)
        {
          objc_enumerationMutation(v10);
        }

        objc_opt_class();
        v19 = TSUDynamicCast();
        v25 = v19;
        if (v19)
        {
          v26 = objc_msgSend_info(v19, v20, v21, v22, v23, v24, v55);
          v33 = objc_msgSend_textFlow(v26, v27, v28, v29, v30, v31);
          if (v33)
          {
            objc_msgSend_addObject_(v56, v32, v34, v35, v36, v37, v26);
            v43 = objc_msgSend_textFlow(v26, v38, v39, v40, v41, v42);
            objc_msgSend_addObject_(v5, v44, v45, v46, v47, v48, v43);
          }
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v49, v50, v51, v52, v53, &v57, v61, 16);
    }

    while (v16);
  }

  return v5;
}

- (id)p_flowsOnPageIndex:(unint64_t)a3
{
  v79 = *MEMORY[0x277D85DE8];
  v73 = objc_opt_new();
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_pageController);
  v11 = objc_msgSend_documentRoot(WeakRetained, v6, v7, v8, v9, v10);
  v17 = objc_msgSend_floatingDrawables(v11, v12, v13, v14, v15, v16);
  v23 = objc_msgSend_drawablesOnPageIndex_(v17, v18, v19, v20, v21, v22, a3);

  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, v25, v26, v27, v28, &v74, v78, 16);
  if (v29)
  {
    v30 = *v75;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v75 != v30)
        {
          objc_enumerationMutation(v23);
        }

        objc_opt_class();
        v32 = TSUDynamicCast();
        if (objc_msgSend_isLinked(v32, v33, v34, v35, v36, v37))
        {
          v44 = objc_msgSend_textFlow(v32, v38, v39, v40, v41, v42);
          if (v44)
          {
            objc_msgSend_addObject_(v73, v43, v45, v46, v47, v48, v44);
          }

          else
          {
            v49 = MEMORY[0x277D81150];
            v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v45, v46, v47, v48, "[TPTextFlowLayoutController p_flowsOnPageIndex:]");
            v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, v52, v53, v54, v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPTextFlowLayoutController.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v57, v58, v59, v60, v61, v50, v56, 630, 0, "invalid nil value for '%{public}s'", "flow");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v62, v63, v64, v65, v66);
          }
        }
      }

      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v67, v68, v69, v70, v71, &v74, v78, 16);
    }

    while (v29);
  }

  return v73;
}

- (id)p_orderedTextBoxesForFlow:(id)a3 textBoxes:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v6 = a4;
  v12 = 0;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, v8, v9, v10, v11, &v38, v42, 16);
  if (v14)
  {
    v19 = *v39;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v39 != v19)
        {
          objc_enumerationMutation(v6);
        }

        v21 = *(*(&v38 + 1) + 8 * i);
        v22 = objc_msgSend_textFlow(v21, v13, v15, v16, v17, v18);
        v23 = v22 == v5;

        if (v23)
        {
          if (!v12)
          {
            v12 = objc_opt_new();
          }

          objc_msgSend_addObject_(v12, v13, v15, v16, v17, v18, v21);
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v13, v15, v16, v17, v18, &v38, v42, 16);
    }

    while (v14);
  }

  v29 = objc_msgSend_textboxes(v5, v24, v25, v26, v27, v28);
  v35 = v29;
  if (v12)
  {
    v37[0] = MEMORY[0x277D85DD0];
    v31.n128_u64[0] = 3221225472;
    v37[1] = 3221225472;
    v37[2] = sub_275FD8838;
    v37[3] = &unk_27A6A85D0;
    v37[4] = v29;
    objc_msgSend_sortUsingComparator_(v12, v30, v31, v32, v33, v34, v37);
  }

  return v12;
}

- (void)p_setLayoutMgr:(id)a3 forFlow:(id)a4
{
  v17 = a3;
  v6 = a4;
  objc_msgSend_setObject_forKey_(self->_layoutMgrs, v7, v8, v9, v10, v11, v17, v6);
  objc_msgSend_setObject_forKey_(self->_flows, v12, v13, v14, v15, v16, v6, v17);
}

- (id)p_layoutMgrForFlow:(id)a3
{
  v7 = objc_msgSend_objectForKey_(self->_layoutMgrs, a2, v3, v4, v5, v6, a3);

  return v7;
}

- (id)p_flowForLayoutMgr:(id)a3
{
  v7 = objc_msgSend_objectForKey_(self->_flows, a2, v3, v4, v5, v6, a3);

  return v7;
}

@end
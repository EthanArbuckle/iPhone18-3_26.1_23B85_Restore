@interface TSCH3DChartRepAs2D
- (TSCH3DChartRepAs2D)initWithLayout:(id)layout canvas:(id)canvas;
- (id)p_layoutFrom3DInfo:(id)info layout3D:(id)d;
- (id)p_mutationsForConverting3DFillFromSeries:(id)series;
- (void)addToSet:(id)set;
- (void)p_create2DRep;
- (void)p_update2DLayout;
- (void)renderIntoContext:(CGContext *)context visible:(CGRect)visible;
@end

@implementation TSCH3DChartRepAs2D

- (TSCH3DChartRepAs2D)initWithLayout:(id)layout canvas:(id)canvas
{
  layoutCopy = layout;
  canvasCopy = canvas;
  v15.receiver = self;
  v15.super_class = TSCH3DChartRepAs2D;
  v8 = [(TSCHChartRep *)&v15 initWithLayout:layoutCopy canvas:canvasCopy];
  v13 = v8;
  if (v8)
  {
    objc_msgSend_p_create2DRep(v8, v9, v10, v11, v12);
  }

  return v13;
}

- (id)p_layoutFrom3DInfo:(id)info layout3D:(id)d
{
  v200[1] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  dCopy = d;
  v11 = objc_msgSend_documentRoot(infoCopy, v7, v8, v9, v10);
  v197 = objc_msgSend_context(v11, v12, v13, v14, v15);

  v20 = objc_msgSend_chart(infoCopy, v16, v17, v18, v19);
  v25 = objc_msgSend_model(v20, v21, v22, v23, v24);

  objc_msgSend_chartAreaFrame(dCopy, v26, v27, v28, v29);
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  objc_msgSend_legendFrame(dCopy, v38, v30, v32, v34);
  v199 = objc_msgSend_p_copyFor3DAs2DWithContext_chartFrame_legendFrame_(infoCopy, v39, v31, v33, v35, v197, v37, v40, v41, v42, v43);
  v44 = [TSCHChartDrawableLayout alloc];
  v196 = objc_msgSend_initWithInfo_(v44, v45, v46, v47, v48, v199);
  objc_msgSend_setForceLayoutSettingsOmitLabelPlacement_(v196, v49, v50, v51, v52, 1);
  v57 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, v53, v54, v55, v56);
  v62 = objc_msgSend_use3DFillFor3DChartFallback(v57, v58, v59, v60, v61);

  if (v62)
  {
    v195 = infoCopy;
    v67 = objc_msgSend_chart(v199, v63, v64, v65, v66);
    v72 = objc_msgSend_model(v67, v68, v69, v70, v71);

    v77 = objc_msgSend_numberOfSeries(v72, v73, v74, v75, v76);
    if (v77 != objc_msgSend_numberOfSeries(v25, v78, v79, v80, v81))
    {
      v86 = MEMORY[0x277D81150];
      v87 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v82, v83, v84, v85, "[TSCH3DChartRepAs2D p_layoutFrom3DInfo:layout3D:]");
      v92 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v88, v89, v90, v91, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartRepAs2D.mm");
      v97 = objc_msgSend_numberOfSeries(v25, v93, v94, v95, v96);
      v102 = objc_msgSend_numberOfSeries(v72, v98, v99, v100, v101);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v86, v103, v104, v105, v106, v87, v92, 127, 0, "series mismatch. model.numberOfSeries:%lu model2d.numberOfSeries:%lu", v97, v102);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v107, v108, v109, v110);
    }

    v111 = objc_msgSend_numberOfSeries(v72, v82, v83, v84, v85);
    v116 = objc_msgSend_numberOfSeries(v25, v112, v113, v114, v115);
    if (v111 >= v116)
    {
      v121 = v116;
    }

    else
    {
      v121 = v111;
    }

    v123 = objc_msgSend_array(MEMORY[0x277CBEB18], v117, v118, v119, v120);
    if (v121)
    {
      for (i = 0; i != v121; ++i)
      {
        v128 = objc_msgSend_seriesAtIndex_(v72, v122, v124, v125, v126, i);
        v133 = objc_msgSend_seriesAtIndex_(v25, v129, v130, v131, v132, i);
        v138 = objc_msgSend_p_mutationsForConverting3DFillFromSeries_(self, v134, v135, v136, v137, v133);

        if (v138)
        {
          v139 = [TSCHPropertyMutationTuple alloc];
          v144 = objc_msgSend_initWithStyleOwner_mutations_(v139, v140, v141, v142, v143, v128, v138);
          objc_msgSend_tsu_addNonNilObject_(v123, v145, v146, v147, v148, v144);
        }
      }
    }

    v150 = objc_msgSend_chartLayout(v196, v122, v124, v125, v126);
    if (v150)
    {
      v154 = objc_msgSend_chart(v199, v149, v151, v152, v153);
      v159 = objc_msgSend_copy(v123, v155, v156, v157, v158);
      v200[0] = v150;
      v164 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v160, v161, v162, v163, v200, 1);
      objc_msgSend_addViewStyleProxyForMutationTuples_layouts_(v154, v165, v166, v167, v168, v159, v164);
    }

    else
    {
      v169 = MEMORY[0x277D81150];
      v170 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v149, v151, v152, v153, "[TSCH3DChartRepAs2D p_layoutFrom3DInfo:layout3D:]");
      v175 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v171, v172, v173, v174, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartRepAs2D.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v169, v176, v177, v178, v179, v170, v175, 142, 0, "invalid nil value for '%{public}s'", "chartLayout");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v180, v181, v182, v183);
    }

    infoCopy = v195;
  }

  v184 = objc_msgSend_chart(v199, v63, v64, v65, v66);
  v189 = objc_msgSend_model(v184, v185, v186, v187, v188);
  objc_msgSend_invalidateModel(v189, v190, v191, v192, v193);

  return v196;
}

- (void)p_create2DRep
{
  m2DRep = self->m2DRep;
  self->m2DRep = 0;

  v45 = objc_msgSend_chartLayout(self, v4, v5, v6, v7);
  v12 = objc_msgSend_chartInfo(self, v8, v9, v10, v11);
  v17 = objc_msgSend_p_layoutFrom3DInfo_layout3D_(self, v13, v14, v15, v16, v12, v45);

  v22 = objc_msgSend_chart(v17, v18, v19, v20, v21);
  v27 = objc_msgSend_chartType(v22, v23, v24, v25, v26);
  v32 = objc_msgSend_repClass(v27, v28, v29, v30, v31);

  v33 = [v32 alloc];
  v38 = objc_msgSend_canvas(self, v34, v35, v36, v37);
  v43 = objc_msgSend_initWithLayout_canvas_is2DRepFor3DChartRep_(v33, v39, v40, v41, v42, v17, v38, 1);
  v44 = self->m2DRep;
  self->m2DRep = v43;
}

- (void)addToSet:(id)set
{
  setCopy = set;
  v9.receiver = self;
  v9.super_class = TSCH3DChartRepAs2D;
  [(TSDRep *)&v9 addToSet:setCopy];
  if (self->m2DRep)
  {
    objc_msgSend_addObject_(setCopy, v5, v6, v7, v8);
  }
}

- (void)p_update2DLayout
{
  v18 = objc_msgSend_chartLayout(self, a2, v2, v3, v4);
  v10 = objc_msgSend_chartLayout(self->m2DRep, v6, v7, v8, v9);
  objc_msgSend_outerLayoutFrame(v18, v11, v12, v13, v14);
  objc_msgSend_layoutForCircumscribingSize_(v10, v15, v16, v17, v16);
}

- (void)renderIntoContext:(CGContext *)context visible:(CGRect)visible
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, visible.origin.x, visible.origin.y, visible.size.width, "[TSCH3DChartRepAs2D renderIntoContext:visible:]", visible.size.height);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartRepAs2D.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v11, v12, v13, v14, v5, v10, 184, 0, "should never be called for this rep");

  v19 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v19, v15, v16, v17, v18);
}

- (id)p_mutationsForConverting3DFillFromSeries:(id)series
{
  v42[1] = *MEMORY[0x277D85DE8];
  seriesCopy = series;
  v8 = objc_msgSend_valueForProperty_(seriesCopy, v4, v5, v6, v7, 1160);
  v13 = v8;
  if (v8)
  {
    v41 = &unk_28856BC48;
    v42[0] = v8;
    v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, v10, v11, v12, v42, &v41, 1);
    v19 = objc_msgSend_copy(v14, v15, v16, v17, v18);
  }

  else
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCH3DChartRepAs2D p_mutationsForConverting3DFillFromSeries:]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartRepAs2D.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v27, v28, v29, v30, v21, v26, 206, 0, "invalid nil value for '%{public}s'", "fill");

    v14 = 0;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
    v19 = objc_msgSend_copy(0, v35, v36, v37, v38);
  }

  v39 = v19;

  return v39;
}

@end
@interface TPThumbnailImager
- (CGImage)newImage;
- (void)canvasDidValidateLayouts:(id)layouts;
- (void)canvasWillValidateLayouts:(id)layouts;
@end

@implementation TPThumbnailImager

- (void)canvasWillValidateLayouts:(id)layouts
{
  v179[1] = *MEMORY[0x277D85DE8];
  layoutsCopy = layouts;
  v10 = objc_msgSend_documentRoot(self, v5, v6, v7, v8, v9);
  v16 = objc_msgSend_paginatedPageControllerForDelegate_(TPPaginatedPageController, v11, v12, v13, v14, v15, v10);

  v22 = objc_msgSend_infos(self, v17, v18, v19, v20, v21);
  v28 = objc_msgSend_count(v22, v23, v24, v25, v26, v27);

  if (v28)
  {
    if (v28 >= 3)
    {
      v34 = MEMORY[0x277D81150];
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, v33, "[TPThumbnailImager canvasWillValidateLayouts:]");
      v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPThumbnailImager.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v42, v43, v44, v45, v46, v35, v41, 35, 0, "incorrect info count in the thumbnail imager");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50, v51);
    }

    objc_opt_class();
    v57 = objc_msgSend_infos(self, v52, v53, v54, v55, v56);
    v63 = objc_msgSend_objectAtIndexedSubscript_(v57, v58, v59, v60, v61, v62, 0);
    v64 = TSUDynamicCast();

    v70 = objc_msgSend_pageIndex(v64, v65, v66, v67, v68, v69);
    v76 = objc_msgSend_documentRoot(self, v71, v72, v73, v74, v75);
    LOBYTE(v57) = objc_msgSend_isPageTemplatePageIndex_documentRoot_(TPPageInfo, v77, v78, v79, v80, v81, v70, v76);

    if ((v57 & 1) == 0)
    {
      v88 = objc_msgSend_pageIndex(v64, v82, v83, v84, v85, v86);
      if (v28 != 1)
      {
        objc_opt_class();
        v98 = objc_msgSend_infos(self, v93, v94, v95, v96, v97);
        v104 = objc_msgSend_objectAtIndexedSubscript_(v98, v99, v100, v101, v102, v103, 1);
        v105 = TSUDynamicCast();

        if (objc_msgSend_pageIndex(v105, v106, v107, v108, v109, v110) <= v88)
        {
          v116 = MEMORY[0x277D81150];
          v117 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v111, v112, v113, v114, v115, "[TPThumbnailImager canvasWillValidateLayouts:]");
          v123 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v118, v119, v120, v121, v122, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPThumbnailImager.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v116, v124, v125, v126, v127, v128, v117, v123, 48, 0, "second page is not after first");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v129, v130, v131, v132, v133);
        }

        v88 = objc_msgSend_pageIndex(v105, v111, v112, v113, v114, v115);
      }

      v134 = objc_msgSend_layoutController(layoutsCopy, v87, v89, v90, v91, v92);
      objc_msgSend_paginateThroughPageIndex_forLayoutController_(v16, v135, v136, v137, v138, v139, v88, v134);

      if (v88 > objc_msgSend_pageCount(v16, v140, v141, v142, v143, v144))
      {
        v150 = MEMORY[0x277D81150];
        v151 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v145, v146, v147, v148, v149, "[TPThumbnailImager canvasWillValidateLayouts:]");
        v157 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v152, v153, v154, v155, v156, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPThumbnailImager.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v150, v158, v159, v160, v161, v162, v151, v157, 58, 0, "thumbnailer was asked to lay out unexpected pages");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v163, v164, v165, v166, v167);
      }

      if (v88 == objc_msgSend_pageCount(v16, v145, v146, v147, v148, v149))
      {
        v179[0] = v64;
        v173 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v168, v169, v170, v171, v172, v179, 1);
        objc_msgSend_setInfos_(self, v174, v175, v176, v177, v178, v173);
      }
    }
  }
}

- (void)canvasDidValidateLayouts:(id)layouts
{
  v52 = *MEMORY[0x277D85DE8];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = objc_msgSend_infos(self, a2, 0, v3, v4, v5, layouts);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, v8, v9, v10, v11, &v47, v51, 16);
  if (v12)
  {
    v13 = v12;
    v14 = *v48;
    do
    {
      v15 = 0;
      do
      {
        if (*v48 != v14)
        {
          objc_enumerationMutation(obj);
        }

        objc_opt_class();
        v16 = TSUDynamicCast();
        if (v16)
        {
          objc_opt_class();
          v22 = objc_msgSend_canvas(self, v17, v18, v19, v20, v21);
          v28 = objc_msgSend_layoutController(v22, v23, v24, v25, v26, v27);
          v34 = objc_msgSend_layoutForInfo_(v28, v29, v30, v31, v32, v33, v16);
          v35 = TSUDynamicCast();

          objc_msgSend_evacuateOldChildLayoutCache(v35, v36, v37, v38, v39, v40);
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v41, v42, v43, v44, v45, &v47, v51, 16);
    }

    while (v13);
  }
}

- (CGImage)newImage
{
  v22 = 0;
  v23 = &v22;
  v2.n128_u64[0] = 0x2020000000;
  v24 = 0x2020000000;
  v25 = 0;
  v7 = objc_msgSend_documentRoot(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_paginatedPageControllerForDelegate_(TPPaginatedPageController, v8, v9, v10, v11, v12, v7);

  v21[0] = MEMORY[0x277D85DD0];
  v14.n128_u64[0] = 3221225472;
  v21[1] = 3221225472;
  v21[2] = sub_275FD9064;
  v21[3] = &unk_27A6A85F8;
  v21[4] = self;
  v21[5] = &v22;
  objc_msgSend_accquireLockAndPerformAction_(v13, v15, v14, v16, v17, v18, v21);
  v19 = v23[3];

  _Block_object_dispose(&v22, 8);
  return v19;
}

@end
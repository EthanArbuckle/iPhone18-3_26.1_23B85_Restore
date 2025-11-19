@interface TPFootnoteLayoutController
- (TPFootnoteLayoutController)initWithPaginatedPageController:(id)a3;
- (TSWPFootnoteMarkProvider)footnoteMarkProvider;
- (_NSRange)endnoteRangeForSectionCharRange:(_NSRange)a3 isLastSection:(BOOL)a4 sectionHint:(id)a5;
- (_NSRange)footnoteLayoutRangeForPageCharRange:(_NSRange)a3;
- (_NSRange)layOutFootnotesFromIndex:(unint64_t)a3 intoFootnoteContainer:(id)a4 maxBlockHeight:(double)a5 pageCharRange:(_NSRange)a6 sectionCharRange:(_NSRange)a7 isLastSection:(BOOL)a8 sectionHint:(id)a9 pageHintIndex:(unint64_t)a10;
- (id)p_footnoteReferenceStoragesInFootnoteIndexRange:(_NSRange)a3;
- (id)p_layoutForFootnoteReferenceStorage:(id)a3;
- (unint64_t)p_layoutFootnotesInRange:(_NSRange)a3 intoFootnoteContainer:(id)a4 maxBlockHeight:(double)a5 measure:(BOOL)a6 inflating:(BOOL)a7;
- (void)inflateFootnotesInRange:(_NSRange)a3 intoFootnoteContainer:(id)a4;
- (void)removeDeletedFootnoteInContainer:(id)a3;
@end

@implementation TPFootnoteLayoutController

- (TPFootnoteLayoutController)initWithPaginatedPageController:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = TPFootnoteLayoutController;
  v5 = [(TPFootnoteLayoutController *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_pageController, v4);
    v12 = objc_msgSend_documentRoot(v4, v7, v8, v9, v10, v11);
    objc_storeWeak(&v6->_documentRoot, v12);
  }

  return v6;
}

- (_NSRange)layOutFootnotesFromIndex:(unint64_t)a3 intoFootnoteContainer:(id)a4 maxBlockHeight:(double)a5 pageCharRange:(_NSRange)a6 sectionCharRange:(_NSRange)a7 isLastSection:(BOOL)a8 sectionHint:(id)a9 pageHintIndex:(unint64_t)a10
{
  length = a7.length;
  location = a7.location;
  v12 = a6.length;
  v13 = a6.location;
  v16 = a4;
  v18 = a9;
  v181 = v16;
  if (!v16)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v19, v20, v21, v22, "[TPFootnoteLayoutController layOutFootnotesFromIndex:intoFootnoteContainer:maxBlockHeight:pageCharRange:sectionCharRange:isLastSection:sectionHint:pageHintIndex:]");
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFootnoteLayoutController.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v31, v32, v33, v34, v35, v24, v30, 49, 0, "invalid nil value for '%{public}s'", "footnoteContainer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39, v40);
  }

  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);
  v182 = objc_msgSend_bodyStorage(WeakRetained, v42, v43, v44, v45, v46);

  v47 = objc_loadWeakRetained(&self->_documentRoot);
  v53 = objc_msgSend_footnoteKind(v47, v48, v49, v50, v51, v52);

  v59 = objc_msgSend_pageHints(v18, v54, v55, v56, v57, v58);
  v65 = objc_msgSend_objectAtIndexedSubscript_(v59, v60, v61, v62, v63, v64, a10);

  if (!v53)
  {
    v71 = objc_msgSend_pageKind(v65, v66, v67, v68, v69, v70);
    if (!a10 || v71 != 4)
    {
      goto LABEL_24;
    }

    v72 = objc_loadWeakRetained(&self->_documentRoot);
    if (objc_msgSend_laysOutBodyVertically(v72, v73, v74, v75, v76, v77))
    {
      v78 = objc_loadWeakRetained(&self->_documentRoot);
      v84 = objc_msgSend_settings(v78, v79, v80, v81, v82, v83);
      hasFacingPages = objc_msgSend_hasFacingPages(v84, v85, v86, v87, v88, v89);

      if (hasFacingPages)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    v96 = MEMORY[0x277D81150];
    v97 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v91, v92, v93, v94, v95, "[TPFootnoteLayoutController layOutFootnotesFromIndex:intoFootnoteContainer:maxBlockHeight:pageCharRange:sectionCharRange:isLastSection:sectionHint:pageHintIndex:]");
    v103 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v98, v99, v100, v101, v102, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFootnoteLayoutController.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v96, v104, v105, v106, v107, v108, v97, v103, 59, 0, "Unexpected endnote page");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v109, v110, v111, v112, v113);
LABEL_18:
    v114 = objc_msgSend_pageHints(v18, v91, v92, v93, v94, v95);
    v120 = objc_msgSend_objectAtIndexedSubscript_(v114, v115, v116, v117, v118, v119, a10 - 1);

    v13 = objc_msgSend_range(v120, v121, v122, v123, v124, v125);
    v12 = v126;

    goto LABEL_24;
  }

  if (v13 + v12 == location + length)
  {
    if (v53 == 2)
    {
      v13 = location;
      v12 = length;
      goto LABEL_24;
    }

    if (v53 == 1 && a8)
    {
      if (self->_bumpedDocumentEndnotesForPageBreak || (v127 = objc_msgSend_length(v182, v66, v67, v68, v69, v70), a3) || !v127 || (v128 = objc_msgSend_range(v182, v66, v67, v68, v69, v70), objc_msgSend_characterAtIndex_(v182, v129, v130, v131, v132, v133, &v129[v128 - 1]) != 5))
      {
        self->_bumpedDocumentEndnotesForPageBreak = 0;
        v13 = objc_msgSend_range(v182, v66, v67, v68, v69, v70);
        v12 = v66;
        goto LABEL_24;
      }

      self->_bumpedDocumentEndnotesForPageBreak = 1;
      objc_msgSend_removeAllFootnoteLayouts(v181, v66, v67, v68, v69, v70);
    }
  }

  v13 = 0;
  v12 = 0;
LABEL_24:
  if (self->_bumpedDocumentEndnotesForPageBreak)
  {
    v134 = 0;
    v135 = 0;
    v136 = v181;
    goto LABEL_45;
  }

  v137 = objc_msgSend_footnoteRangeForTextRange_(v182, v66, v67, v68, v69, v70, v13, v12);
  v139 = v137 + v138;
  v134 = a3;
  if (v12)
  {
    v140 = v137 + v138;
  }

  else
  {
    v140 = a3;
  }

  v141 = objc_loadWeakRetained(&self->_documentRoot);
  if (objc_msgSend_laysOutBodyVertically(v141, v142, v143, v144, v145, v146))
  {
    v147 = objc_loadWeakRetained(&self->_documentRoot);
    v153 = objc_msgSend_settings(v147, v148, v149, v150, v151, v152);
    if (objc_msgSend_hasFacingPages(v153, v154, v155, v156, v157, v158) && !v12 && objc_msgSend_pageKind(v65, v159, v160, v161, v162, v163) == 1)
    {
      objc_msgSend_range(v65, v164, v165, v166, v167, v168);
      v170 = v169;

      if (!v170)
      {
        v140 = v139;
      }

      v134 = a3;
      goto LABEL_38;
    }

    v134 = a3;
  }

LABEL_38:
  if (v140 <= v134)
  {
    v176 = v134;
  }

  else
  {
    v176 = v140;
  }

  if (v140 >= v134)
  {
    v177 = v134;
  }

  else
  {
    v177 = v140;
  }

  v136 = v181;
  v172.n128_f64[0] = a5;
  v135 = objc_msgSend_p_layoutFootnotesInRange_intoFootnoteContainer_maxBlockHeight_measure_inflating_(self, v171, v172, v173, v174, v175, v177, v176 - v177, v181, v53 != 0, 0);
LABEL_45:

  v178 = v134;
  v179 = v135;
  result.length = v179;
  result.location = v178;
  return result;
}

- (void)inflateFootnotesInRange:(_NSRange)a3 intoFootnoteContainer:(id)a4
{
  if (a3.length)
  {
    v4.n128_u64[0] = 0x7FEFFFFFFFFFFFFFLL;
    objc_msgSend_p_layoutFootnotesInRange_intoFootnoteContainer_maxBlockHeight_measure_inflating_(self, a2, v4, v5, v6, v7, a3.location, a3.length, a4, 0, 1);
  }
}

- (_NSRange)endnoteRangeForSectionCharRange:(_NSRange)a3 isLastSection:(BOOL)a4 sectionHint:(id)a5
{
  v5 = a4;
  length = a3.length;
  location = a3.location;
  v88 = *MEMORY[0x277D85DE8];
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);
  v16 = objc_msgSend_bodyStorage(WeakRetained, v11, v12, v13, v14, v15);

  v17 = *MEMORY[0x277D81490];
  v18 = *(MEMORY[0x277D81490] + 8);
  v19 = objc_loadWeakRetained(&self->_documentRoot);
  v25 = objc_msgSend_footnoteKind(v19, v20, v21, v22, v23, v24);

  if (v25)
  {
    if (v25 == 1)
    {
      if (v5)
      {
        v17 = objc_msgSend_range(v16, v26, v27, v28, v29, v30);
        v18 = v26;
      }
    }

    else if (v25 == 2)
    {
      v18 = length;
      v17 = location;
    }
  }

  else
  {
    v31 = objc_loadWeakRetained(&self->_documentRoot);
    if (objc_msgSend_laysOutBodyVertically(v31, v32, v33, v34, v35, v36))
    {
      v37 = objc_loadWeakRetained(&self->_documentRoot);
      v43 = objc_msgSend_settings(v37, v38, v39, v40, v41, v42);
      hasFacingPages = objc_msgSend_hasFacingPages(v43, v44, v45, v46, v47, v48);

      if (hasFacingPages)
      {
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        obj = objc_msgSend_pageHints(v9, v26, 0, v28, v29, v30);
        v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v50, v51, v52, v53, v54, &v83, v87, 16);
        if (v55)
        {
          v61 = v55;
          v62 = *v84;
          v63 = v18;
          v64 = v17;
LABEL_11:
          v65 = 0;
          while (1)
          {
            if (*v84 != v62)
            {
              objc_enumerationMutation(obj);
            }

            v66 = *(*(&v83 + 1) + 8 * v65);
            if (objc_msgSend_pageKind(v66, v56, v57, v58, v59, v60) == 5)
            {
              break;
            }

            if (objc_msgSend_pageColumn(v66, v67, v68, v69, v70, v71) == 1 && (objc_msgSend_hasForcedFootnotes(v66, v72, v73, v74, v75, v76) & 1) == 0)
            {
              v64 = objc_msgSend_range(v66, v72, v73, v74, v75, v76);
              v63 = v56;
            }

            else if (objc_msgSend_pageKind(v66, v72, v73, v74, v75, v76) != 4)
            {
              v63 = v18;
              v64 = v17;
            }

            if (v61 == ++v65)
            {
              v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v56, v57, v58, v59, v60, &v83, v87, 16);
              if (v61)
              {
                goto LABEL_11;
              }

              break;
            }
          }
        }

        else
        {
          v63 = v18;
          v64 = v17;
        }

        v18 = v63;
        v17 = v64;
      }
    }

    else
    {
    }
  }

  v77 = 0x7FFFFFFFFFFFFFFFLL;
  if (v17 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v78 = 0;
  }

  else
  {
    v77 = objc_msgSend_footnoteRangeForTextRange_(v16, v26, v27, v28, v29, v30, v17, v18);
    v78 = v79;
  }

  v80 = v77;
  v81 = v78;
  result.length = v81;
  result.location = v80;
  return result;
}

- (_NSRange)footnoteLayoutRangeForPageCharRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);
  v12 = objc_msgSend_footnoteKind(WeakRetained, v7, v8, v9, v10, v11);

  if (v12)
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    v14 = 0;
  }

  else
  {
    v15 = objc_loadWeakRetained(&self->_documentRoot);
    v21 = objc_msgSend_bodyStorage(v15, v16, v17, v18, v19, v20);
    v27 = objc_msgSend_footnoteRangeForTextRange_(v21, v22, v23, v24, v25, v26, location, length);
    v29 = v28;

    v13 = v27;
    v14 = v29;
  }

  result.length = v14;
  result.location = v13;
  return result;
}

- (void)removeDeletedFootnoteInContainer:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v9 = objc_msgSend_children(v3, v4, v5, v6, v7, v8);
  v15 = objc_msgSend_copy(v9, v10, v11, v12, v13, v14);

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v16 = v15;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, v18, v19, v20, v21, &v39, v43, 16);
  if (v22)
  {
    v28 = v22;
    v29 = *v40;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v40 != v29)
        {
          objc_enumerationMutation(v16);
        }

        v31 = *(*(&v39 + 1) + 8 * i);
        v32 = objc_msgSend_storage(v31, v23, v24, v25, v26, v27, v39);
        v38 = objc_msgSend_documentRoot(v32, v33, v34, v35, v36, v37);

        if (!v38)
        {
          objc_msgSend_removeFootnoteLayout_(v3, v23, v24, v25, v26, v27, v31);
        }
      }

      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v23, v24, v25, v26, v27, &v39, v43, 16);
    }

    while (v28);
  }
}

- (unint64_t)p_layoutFootnotesInRange:(_NSRange)a3 intoFootnoteContainer:(id)a4 maxBlockHeight:(double)a5 measure:(BOOL)a6 inflating:(BOOL)a7
{
  v192 = a6;
  length = a3.length;
  location = a3.location;
  v205 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v191 = objc_msgSend_layoutController(v10, v11, v12, v13, v14, v15);
  if (!v191)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, v20, "[TPFootnoteLayoutController p_layoutFootnotesInRange:intoFootnoteContainer:maxBlockHeight:measure:inflating:]");
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFootnoteLayoutController.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v29, v30, v31, v32, v33, v22, v28, 190, 0, "invalid nil value for '%{public}s'", "layoutController");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37, v38);
  }

  v39 = objc_msgSend_children(v10, v16, v17, v18, v19, v20);
  v188 = v39;
  if (objc_msgSend_count(v39, v40, v41, v42, v43, v44))
  {
    v50 = objc_alloc(MEMORY[0x277D81308]);
    v56 = objc_msgSend_count(v39, v51, v52, v53, v54, v55);
    v62 = objc_msgSend_initWithCapacity_(v50, v57, v58, v59, v60, v61, v56);
    v199 = 0u;
    v200 = 0u;
    v201 = 0u;
    v202 = 0u;
    v63 = v39;
    v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v64, v65, v66, v67, v68, &v199, v204, 16);
    if (v69)
    {
      v75 = v69;
      v76 = *v200;
      do
      {
        for (i = 0; i != v75; ++i)
        {
          if (*v200 != v76)
          {
            objc_enumerationMutation(v63);
          }

          v78 = *(*(&v199 + 1) + 8 * i);
          v79 = objc_msgSend_info(v78, v70, v71, v72, v73, v74);
          objc_msgSend_setObject_forUncopiedKey_(v62, v80, v81, v82, v83, v84, v78, v79);
        }

        v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v70, v71, v72, v73, v74, &v199, v204, 16);
      }

      while (v75);
    }
  }

  else
  {
    v62 = 0;
  }

  objc_msgSend_removeAllFootnoteLayouts(v10, v45, v46, v47, v48, v49);
  if (length)
  {
    v193 = v10;
    objc_msgSend_p_footnoteReferenceStoragesInFootnoteIndexRange_(self, v85, v86, v87, v88, v89, location, length);
    v195 = 0u;
    v196 = 0u;
    v197 = 0u;
    obj = v198 = 0u;
    v95 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v90, v91, v92, v93, v94, &v195, v203, 16);
    v187 = length;
    if (v95)
    {
      v96 = v95;
      v97 = 0;
      v98 = *v196;
      while (2)
      {
        v99 = 0;
        v189 = v97 + v96;
        do
        {
          if (*v196 != v98)
          {
            objc_enumerationMutation(obj);
          }

          v100 = *(*(&v195 + 1) + 8 * v99);
          objc_opt_class();
          v106 = objc_msgSend_first(v100, v101, v102, v103, v104, v105);
          v107 = TSUCheckedDynamicCast();

          objc_opt_class();
          v113 = objc_msgSend_second(v100, v108, v109, v110, v111, v112);
          v114 = TSUCheckedDynamicCast();

          if (objc_msgSend_BOOLValue(v114, v115, v116, v117, v118, v119))
          {
            v125 = 0;
          }

          else
          {
            v126 = objc_msgSend_objectForKeyedSubscript_(v62, v120, v121, v122, v123, v124, v107);
            if (v126)
            {
              v125 = v126;
              objc_msgSend_invalidateForFootnoteNumberingChange(v126, v127, v128, v129, v130, v131);
            }

            else
            {
              v125 = objc_msgSend_p_layoutForFootnoteReferenceStorage_(self, v127, v128, v129, v130, v131, v107);
            }

            objc_msgSend_addFootnoteLayout_(v193, v132, v133, v134, v135, v136, v125);
            if (v192)
            {
              objc_msgSend_validateLayoutWithDependencies_(v191, v137, v138, v139, v140, v141, v193);
              objc_msgSend_blockHeight(v193, v142, v143, v144, v145, v146);
              if (v148.n128_f64[0] > a5)
              {
                objc_msgSend_removeFootnoteLayout_(v193, v147, v148, v149, v150, v151, v125);

                goto LABEL_32;
              }
            }
          }

          ++v99;
          ++v97;
        }

        while (v96 != v99);
        v96 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v152, v153, v154, v155, v156, &v195, v203, 16);
        v97 = v189;
        if (v96)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v97 = 0;
    }

LABEL_32:

    v157 = v191;
    v10 = v193;
    objc_msgSend_validateLayoutWithDependencies_(v191, v158, v159, v160, v161, v162, v193);
    if (v97 > v187)
    {
      v168 = MEMORY[0x277D81150];
      v169 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v163, v164, v165, v166, v167, "[TPFootnoteLayoutController p_layoutFootnotesInRange:intoFootnoteContainer:maxBlockHeight:measure:inflating:]");
      v175 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v170, v171, v172, v173, v174, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFootnoteLayoutController.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v168, v176, v177, v178, v179, v180, v169, v175, 246, 0, "Found %lu footnoteStorages vs. %lu in the text range", v97, v187);

      v10 = v193;
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v181, v182, v183, v184, v185);
    }
  }

  else
  {
    v157 = v191;
    objc_msgSend_validateLayoutWithDependencies_(v191, v85, v86, v87, v88, v89, v10);
    v97 = 0;
  }

  return v97;
}

- (id)p_layoutForFootnoteReferenceStorage:(id)a3
{
  v3 = a3;
  v9 = objc_alloc(objc_msgSend_layoutClass(v3, v4, v5, v6, v7, v8));
  v15 = objc_msgSend_initWithInfo_(v9, v10, v11, v12, v13, v14, v3);

  return v15;
}

- (id)p_footnoteReferenceStoragesInFootnoteIndexRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  if (a3.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, v6, "[TPFootnoteLayoutController p_footnoteReferenceStoragesInFootnoteIndexRange:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFootnoteLayoutController.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v18, v19, v20, v21, v22, v11, v17, 261, 0, "Bogus footnote index range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26, v27);
  }

  v28 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v3, v4, v5, v6);
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);
  v35 = objc_msgSend_bodyStorage(WeakRetained, v30, v31, v32, v33, v34);

  if (location < location + length)
  {
    do
    {
      v91 = 0;
      v42 = objc_msgSend_footnoteAtFootnoteIndex_outCharIndex_(v35, v36, v37, v38, v39, v40, location, &v91);
      if (v42)
      {
        hasHiddenTextAtCharIndex = objc_msgSend_hasHiddenTextAtCharIndex_(v35, v41, v43, v44, v45, v46, v91);
        v48 = MEMORY[0x277D812A8];
        v54 = objc_msgSend_containedStorage(v42, v49, v50, v51, v52, v53);
        v60 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v55, v56, v57, v58, v59, hasHiddenTextAtCharIndex);
        v66 = objc_msgSend_pairWithFirst_second_(v48, v61, v62, v63, v64, v65, v54, v60);

        objc_msgSend_addObject_(v28, v67, v68, v69, v70, v71, v66);
      }

      else
      {
        v72 = MEMORY[0x277D81150];
        v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, v43, v44, v45, v46, "[TPFootnoteLayoutController p_footnoteReferenceStoragesInFootnoteIndexRange:]");
        v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, v75, v76, v77, v78, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFootnoteLayoutController.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v72, v80, v81, v82, v83, v84, v73, v79, 269, 0, "invalid nil value for '%{public}s'", "footnoteAttachment");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v85, v86, v87, v88, v89);
      }

      ++location;
      --length;
    }

    while (length);
  }

  return v28;
}

- (TSWPFootnoteMarkProvider)footnoteMarkProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_pageController);

  return WeakRetained;
}

@end
@interface TPPageHint
- (BOOL)lastLineIsEmptyAndHasListLabel;
- (BOOL)p_unarchiveHint:(id)a3 fromArchive:(const void *)a4;
- (BOOL)syncsFlowRanges:(id)a3 withEndOfPageHint:(id)a4;
- (BOOL)syncsWithEndOfPageHint:(id)a3 bodyStorage:(id)a4 flowRanges:(id)a5;
- (BOOL)terminatedByBreak;
- (TPPageHint)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (TSDHint)firstChildHint;
- (TSDHint)lastChildHint;
- (TSUNoCopyDictionary)anchoredDrawablePositions;
- (TSWPTopicNumberHints)topicNumberHints;
- (_NSRange)anchoredRange;
- (_NSRange)footnoteAutoNumberRange;
- (_NSRange)footnoteLayoutRange;
- (_NSRange)p_range;
- (_NSRange)range;
- (_NSRange)rangeAndChildHints:(id *)a3;
- (id)copyForArchiving;
- (id)copyForCaching;
- (id)firstColumn;
- (id)firstHint;
- (id)flowHints;
- (id)flowTopicNumberHints;
- (id)hints;
- (id)lastColumn;
- (id)lastHint;
- (unint64_t)lineCount;
- (unint64_t)nextWidowPullsDownFromCharIndex;
- (void)offsetStartCharIndexBy:(int64_t)a3 charIndex:(unint64_t)a4;
- (void)p_archiveHint:(id)a3 intoArchive:(void *)a4;
- (void)p_archiveTopicNumberHints:(id)a3 intoArchive:(void *)a4 archiver:(id)a5;
- (void)p_unarchiveTopicNumberHints:(id)a3 fromArchive:(const void *)a4 unarchiver:(id)a5;
- (void)saveToArchive:(void *)a3 archiver:(id)a4 context:(id)a5;
- (void)setFlowHints:(id)a3 flowTopicNumberHints:(id)a4;
- (void)setHints:(id)a3 topicNumberHints:(id)a4;
- (void)trimToCharIndex:(unint64_t)a3 inTarget:(id)a4 removeFootnoteReferenceCount:(unint64_t)a5 removeAutoNumberFootnoteCount:(unint64_t)a6;
- (void)updateRangeForIndexPath:(id)a3 withStorage:(id)a4;
@end

@implementation TPPageHint

- (id)copyForArchiving
{
  v204 = *MEMORY[0x277D85DE8];
  if (self->_isCopyForCaching)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, v5, "[TPPageHint copyForArchiving]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v15, v16, v17, v18, v19, v8, v14, 103, 0, "Should not copy TPPageHint that was created for caching");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23, v24);
  }

  v25 = objc_alloc_init(objc_opt_class());
  v192 = v25;
  if (v25)
  {
    *(v25 + 3) = self->_pageColumn;
    *(v25 + 8) = *&self->_pageKind;
    v31 = objc_alloc(MEMORY[0x277CBEA60]);
    v37 = objc_msgSend_initWithArray_copyItems_(v31, v32, v33, v34, v35, v36, self->_hints, 1);
    v38 = *(v192 + 4);
    *(v192 + 4) = v37;

    v39 = objc_alloc_init(MEMORY[0x277D81278]);
    v40 = *(v192 + 5);
    *(v192 + 5) = v39;

    v200 = 0u;
    v201 = 0u;
    v198 = 0u;
    v199 = 0u;
    v41 = self->_flowHints;
    v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v42, v43, v44, v45, v46, &v198, v203, 16);
    if (v48)
    {
      v53 = *v199;
      do
      {
        for (i = 0; i != v48; ++i)
        {
          if (*v199 != v53)
          {
            objc_enumerationMutation(v41);
          }

          v55 = *(*(&v198 + 1) + 8 * i);
          v56 = *(v192 + 5);
          v57 = objc_msgSend_objectForKeyedSubscript_(self->_flowHints, v47, v49, v50, v51, v52, v55);
          v63 = objc_msgSend_copy(v57, v58, v59, v60, v61, v62);
          objc_msgSend_setObject_forUncopiedKey_(v56, v64, v65, v66, v67, v68, v63, v55);
        }

        v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v47, v49, v50, v51, v52, &v198, v203, 16);
      }

      while (v48);
    }

    objc_storeStrong(v192 + 14, self->_flowTopicNumberHints);
    objc_msgSend_setFootnoteAutoNumberRange_(v192, v69, v70, v71, v72, v73, self->_footnoteAutoNumberRange.location, self->_footnoteAutoNumberRange.length);
    objc_msgSend_setFootnoteLayoutRange_(v192, v74, v75, v76, v77, v78, self->_footnoteLayoutRange.location, self->_footnoteLayoutRange.length);
    v79 = objc_alloc(MEMORY[0x277CBEB18]);
    v85 = objc_msgSend_count(self->_childHints, v80, v81, v82, v83, v84);
    v91 = objc_msgSend_initWithCapacity_(v79, v86, v87, v88, v89, v90, v85);
    childHints = self->_childHints;
    v197[0] = MEMORY[0x277D85DD0];
    v93.n128_u64[0] = 3221225472;
    v197[1] = 3221225472;
    v197[2] = sub_275FE08F0;
    v197[3] = &unk_27A6A8790;
    v197[4] = v91;
    v191 = v91;
    objc_msgSend_enumerateObjectsUsingBlock_(childHints, v94, v93, v95, v96, v97, v197);
    objc_msgSend_setChildHints_(v192, v98, v99, v100, v101, v102, v91);
    v103 = objc_alloc(MEMORY[0x277D81278]);
    v109 = objc_msgSend_count(self->_anchoredDrawablePositions, v104, v105, v106, v107, v108);
    v115 = objc_msgSend_initWithCapacity_(v103, v110, v111, v112, v113, v114, v109);
    v195 = 0u;
    v196 = 0u;
    v193 = 0u;
    v194 = 0u;
    v116 = self->_anchoredDrawablePositions;
    v123 = objc_msgSend_countByEnumeratingWithState_objects_count_(v116, v117, v118, v119, v120, v121, &v193, v202, 16);
    if (v123)
    {
      v128 = *v194;
      do
      {
        for (j = 0; j != v123; ++j)
        {
          if (*v194 != v128)
          {
            objc_enumerationMutation(v116);
          }

          v130 = *(*(&v193 + 1) + 8 * j);
          v131 = MEMORY[0x277CCAE60];
          v132 = objc_msgSend_objectForKeyedSubscript_(self->_anchoredDrawablePositions, v122, v124, v125, v126, v127, v130);
          objc_msgSend_CGPointValue(v132, v133, v134, v135, v136, v137);
          v143 = objc_msgSend_valueWithCGPoint_(v131, v138, v139, v140, v141, v142);

          objc_msgSend_setObject_forUncopiedKey_(v115, v144, v145, v146, v147, v148, v143, v130);
        }

        v123 = objc_msgSend_countByEnumeratingWithState_objects_count_(v116, v122, v124, v125, v126, v127, &v193, v202, 16);
      }

      while (v123);
    }

    objc_msgSend_setAnchoredDrawablePositions_(v192, v149, v150, v151, v152, v153, v115);
    v159 = objc_msgSend_copy(self->_topicNumberHints, v154, v155, v156, v157, v158);
    v160 = *(v192 + 13);
    *(v192 + 13) = v159;

    v166 = objc_msgSend_copy(self->_startingPartitionedAttachments, v161, v162, v163, v164, v165);
    objc_msgSend_setStartingPartitionedAttachments_(v192, v167, v168, v169, v170, v171, v166);
  }

  else
  {
    v172 = MEMORY[0x277D81150];
    v173 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, v30, "[TPPageHint copyForArchiving]");
    v179 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v174, v175, v176, v177, v178, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v172, v180, v181, v182, v183, v184, v173, v179, 106, 0, "invalid nil value for '%{public}s'", "copy");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v185, v186, v187, v188, v189);
  }

  return v192;
}

- (id)copyForCaching
{
  if (self->_isCopyForCaching)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, v5, "[TPPageHint copyForCaching]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v15, v16, v17, v18, v19, v8, v14, 147, 0, "Should not copy TPPageHint that was created for caching");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23, v24);
  }

  v25 = objc_alloc_init(objc_opt_class());
  v31 = v25;
  if (v25)
  {
    *(v25 + 3) = self->_pageColumn;
    *(v25 + 8) = *&self->_pageKind;
    v25[120] = 1;
  }

  else
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, v30, "[TPPageHint copyForCaching]");
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v40, v41, v42, v43, v44, v33, v39, 150, 0, "invalid nil value for '%{public}s'", "copy");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47, v48, v49);
  }

  return v31;
}

- (void)setHints:(id)a3 topicNumberHints:(id)a4
{
  v6 = a3;
  v8 = a4;
  if (self->_pageKind == 5)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, v12, "[TPPageHint setHints:topicNumberHints:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v21, v22, v23, v24, v25, v14, v20, 166, 0, "shouldn't ask for the properties of a dirty page hint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29, v30);
  }

  hints = self->_hints;
  self->_hints = v6;
  v33 = v6;

  topicNumberHints = self->_topicNumberHints;
  self->_topicNumberHints = v8;
}

- (void)setFlowHints:(id)a3 flowTopicNumberHints:(id)a4
{
  v6 = a3;
  v8 = a4;
  if (self->_pageKind == 5)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, v12, "[TPPageHint setFlowHints:flowTopicNumberHints:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v21, v22, v23, v24, v25, v14, v20, 172, 0, "shouldn't ask for the properties of a dirty page hint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29, v30);
  }

  v31 = objc_msgSend_count(self->_flowHints, v7, v9, v10, v11, v12);
  if (v31 != objc_msgSend_count(self->_flowTopicNumberHints, v32, v33, v34, v35, v36))
  {
    v42 = MEMORY[0x277D81150];
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v38, v39, v40, v41, "[TPPageHint setFlowHints:flowTopicNumberHints:]");
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, v45, v46, v47, v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v50, v51, v52, v53, v54, v43, v49, 173, 0, "Mismatch between flow hints and flow topic number hints");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56, v57, v58, v59);
  }

  flowHints = self->_flowHints;
  self->_flowHints = v6;
  v62 = v6;

  flowTopicNumberHints = self->_flowTopicNumberHints;
  self->_flowTopicNumberHints = v8;
}

- (id)firstColumn
{
  if (self->_pageKind == 5)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, v5, "[TPPageHint firstColumn]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v15, v16, v17, v18, v19, v8, v14, 179, 0, "shouldn't ask for the properties of a dirty page hint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23, v24);
  }

  return self;
}

- (id)lastColumn
{
  if (self->_pageKind == 5)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, v5, "[TPPageHint lastColumn]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v15, v16, v17, v18, v19, v8, v14, 184, 0, "shouldn't ask for the properties of a dirty page hint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23, v24);
  }

  return self;
}

- (id)firstHint
{
  if (self->_pageKind == 5)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, v5, "[TPPageHint firstHint]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v15, v16, v17, v18, v19, v8, v14, 189, 0, "shouldn't ask for the properties of a dirty page hint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23, v24);
  }

  if (self->_isCopyForCaching)
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, v5, "[TPPageHint firstHint]");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v33, v34, v35, v36, v37, v26, v32, 190, 0, "Cannot access first hint from page hint that is intended for caching only");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41, v42);
  }

  hints = self->_hints;

  return objc_msgSend_firstObject(hints, a2, v2, v3, v4, v5);
}

- (id)lastHint
{
  if (self->_pageKind == 5)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, v5, "[TPPageHint lastHint]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v15, v16, v17, v18, v19, v8, v14, 196, 0, "shouldn't ask for the properties of a dirty page hint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23, v24);
  }

  if (self->_isCopyForCaching)
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, v5, "[TPPageHint lastHint]");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v33, v34, v35, v36, v37, v26, v32, 197, 0, "Cannot access last hint from page hint that is intended for caching only");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41, v42);
  }

  hints = self->_hints;

  return objc_msgSend_lastObject(hints, a2, v2, v3, v4, v5);
}

- (id)hints
{
  if (self->_pageKind == 5)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, v5, "[TPPageHint hints]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v15, v16, v17, v18, v19, v8, v14, 203, 0, "shouldn't ask for the properties of a dirty page hint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23, v24);
  }

  if (self->_isCopyForCaching)
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, v5, "[TPPageHint hints]");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v33, v34, v35, v36, v37, v26, v32, 204, 0, "Cannot access hints from page hint that is intended for caching only");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41, v42);
  }

  hints = self->_hints;

  return hints;
}

- (id)flowHints
{
  if (self->_pageKind == 5)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, v5, "[TPPageHint flowHints]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v15, v16, v17, v18, v19, v8, v14, 210, 0, "shouldn't ask for the properties of a dirty page hint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23, v24);
  }

  if (self->_isCopyForCaching)
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, v5, "[TPPageHint flowHints]");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v33, v34, v35, v36, v37, v26, v32, 211, 0, "Cannot access flow hints from page hint that is intended for caching only");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41, v42);
  }

  flowHints = self->_flowHints;

  return flowHints;
}

- (id)flowTopicNumberHints
{
  if (self->_pageKind == 5)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, v5, "[TPPageHint flowTopicNumberHints]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v15, v16, v17, v18, v19, v8, v14, 217, 0, "shouldn't ask for the properties of a dirty page hint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23, v24);
  }

  if (self->_isCopyForCaching)
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, v5, "[TPPageHint flowTopicNumberHints]");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v33, v34, v35, v36, v37, v26, v32, 218, 0, "Cannot access flow topic numbers from page hint that is intended for caching only");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41, v42);
  }

  flowTopicNumberHints = self->_flowTopicNumberHints;

  return flowTopicNumberHints;
}

- (void)offsetStartCharIndexBy:(int64_t)a3 charIndex:(unint64_t)a4
{
  if (self->_pageKind == 5)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v4, v5, v6, v7, "[TPPageHint offsetStartCharIndexBy:charIndex:]", a4);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v18, v19, v20, v21, v22, v11, v17, 224, 0, "shouldn't ask for the properties of a dirty page hint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26, v27);
  }

  if (self->_isCopyForCaching)
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v4, v5, v6, v7, "[TPPageHint offsetStartCharIndexBy:charIndex:]");
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v36, v37, v38, v39, v40, v29, v35, 225, 0, "Cannot modify page hint that is intended for caching only");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43, v44, v45);
  }

  if (objc_msgSend_count(self->_hints, a2, v4, v5, v6, v7))
  {
    v50 = 0;
    v51 = ~a3;
    v52 = MEMORY[0x277D81490];
    v53 = xmmword_27605FCE0;
    v108 = xmmword_27605FCE0;
    do
    {
      v54 = objc_msgSend_objectAtIndexedSubscript_(self->_hints, v46, v53, v47, v48, v49, v50, v108);
      if (objc_msgSend_range(v54, v55, v56, v57, v58, v59) <= v51)
      {
        objc_msgSend_setRange_(v54, v60, v61, v62, v63, v64, *v52, v52[1]);
        v72 = v108;
        *&self->_pageKind = v108;
        self->_pageColumn = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v65 = objc_msgSend_range(v54, v60, v61, v62, v63, v64);
        objc_msgSend_setRange_(v54, v66, v67, v68, v69, v70, v65 + a3, v66);
      }

      if (objc_msgSend_nextWidowPullsDownFromCharIndex(v54, v71, v72, v73, v74, v75) <= v51)
      {
        objc_msgSend_setNextWidowPullsDownFromCharIndex_(v54, v76, v77, v78, v79, v80, 0x7FFFFFFFFFFFFFFFLL);
        v88 = v108;
        *&self->_pageKind = v108;
        self->_pageColumn = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        WidowPullsDownFromCharIndex = objc_msgSend_nextWidowPullsDownFromCharIndex(v54, v76, v77, v78, v79, v80);
        objc_msgSend_setNextWidowPullsDownFromCharIndex_(v54, v82, v83, v84, v85, v86, WidowPullsDownFromCharIndex + a3);
      }

      if (objc_msgSend_anchoredRange(v54, v87, v88, v89, v90, v91) <= v51)
      {
        objc_msgSend_setAnchoredRange_(v54, v92, v93, v94, v95, v96, *v52, v52[1]);
        *&self->_pageKind = v108;
        self->_pageColumn = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v97 = objc_msgSend_anchoredRange(v54, v92, v93, v94, v95, v96);
        objc_msgSend_setAnchoredRange_(v54, v98, v99, v100, v101, v102, v97 + a3, v98);
      }

      ++v50;
    }

    while (v50 < objc_msgSend_count(self->_hints, v103, v104, v105, v106, v107));
  }
}

- (BOOL)syncsWithEndOfPageHint:(id)a3 bodyStorage:(id)a4 flowRanges:(id)a5
{
  v8 = a3;
  v9 = a4;
  v11 = a5;
  if (!v8)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v12, v13, v14, v15, "[TPPageHint syncsWithEndOfPageHint:bodyStorage:flowRanges:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v24, v25, v26, v27, v28, v17, v23, 265, 0, "invalid nil value for '%{public}s'", "otherPageHint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32, v33);
  }

  if (self->_isCopyForCaching)
  {
    v34 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v12, v13, v14, v15, "[TPPageHint syncsWithEndOfPageHint:bodyStorage:flowRanges:]");
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v42, v43, v44, v45, v46, v35, v41, 266, 0, "Do not call method on page hint that is intended for caching only");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50, v51);
  }

  v52 = objc_msgSend_range(self, v10, v12, v13, v14, v15);
  v58 = objc_msgSend_range(v8, v53, v54, v55, v56, v57);
  if (&v59[v58] != v52 || (v64 = objc_msgSend_footnoteAutoNumberRange(v8, v59, v60, v61, v62, v63), &v74[v64] != objc_msgSend_footnoteAutoNumberRange(self, v74, v65, v66, v67, v68)) || (v75 = objc_msgSend_footnoteLayoutRange(v8, v69, v70, v71, v72, v73), &v85[v75] != objc_msgSend_footnoteLayoutRange(self, v85, v76, v77, v78, v79)) || (v86 = objc_msgSend_anchoredRange(v8, v80, v81, v82, v83, v84), &v96[v86] != objc_msgSend_anchoredRange(self, v96, v87, v88, v89, v90)))
  {
    v110 = 0;
    goto LABEL_16;
  }

  v97 = objc_msgSend_firstChildHint(self, v91, v92, v93, v94, v95);
  v103 = objc_msgSend_lastChildHint(v8, v98, v99, v100, v101, v102);
  v109 = v103;
  if (v97 && !v103 || v103 && !v97)
  {
    goto LABEL_13;
  }

  if (!v97 || !v103)
  {
LABEL_21:
    if (self->_pageKind != 1)
    {
      goto LABEL_35;
    }

    v137 = objc_msgSend_hints(self, v104, v105, v106, v107, v108);
    v143 = objc_msgSend_firstObject(v137, v138, v139, v140, v141, v142);

    v294 = v143;
    if (!v143)
    {
      v149 = MEMORY[0x277D81150];
      v150 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v144, v145, v146, v147, v148, "[TPPageHint syncsWithEndOfPageHint:bodyStorage:flowRanges:]");
      v156 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v151, v152, v153, v154, v155, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v149, v157, v158, v159, v160, v161, v150, v156, 299, 0, "invalid nil value for '%{public}s'", "hint");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v162, v163, v164, v165, v166);
    }

    v291 = objc_msgSend_columnCount(v294, v144, v145, v146, v147, v148);
    v172 = objc_msgSend_range(v8, v167, v168, v169, v170, v171);
    v293 = objc_msgSend_columnStyleAtCharIndex_effectiveRange_(v9, v173, v174, v175, v176, v177, v172, 0);
    if (!v293)
    {
      v183 = MEMORY[0x277D81150];
      v184 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v178, v179, v180, v181, v182, "[TPPageHint syncsWithEndOfPageHint:bodyStorage:flowRanges:]");
      v190 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v185, v186, v187, v188, v189, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v183, v191, v192, v193, v194, v195, v184, v190, 302, 0, "invalid nil value for '%{public}s'", "colStyle");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v196, v197, v198, v199, v200);
    }

    objc_opt_class();
    v206 = objc_msgSend_objectForProperty_(v293, v201, v202, v203, v204, v205, 148);
    v207 = TSUCheckedDynamicCast();

    v292 = v207;
    if (!v207)
    {
      v213 = MEMORY[0x277D81150];
      v214 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v208, v209, v210, v211, v212, "[TPPageHint syncsWithEndOfPageHint:bodyStorage:flowRanges:]");
      v220 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v215, v216, v217, v218, v219, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v213, v221, v222, v223, v224, v225, v214, v220, 304, 0, "invalid nil value for '%{public}s'", "cols");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v226, v227, v228, v229, v230);
    }

    v232 = objc_msgSend_columnCount(v292, v208, v209, v210, v211, v212);
    if (!v232)
    {
      v237 = MEMORY[0x277D81150];
      v238 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v231, v233, v234, v235, v236, "[TPPageHint syncsWithEndOfPageHint:bodyStorage:flowRanges:]");
      v244 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v239, v240, v241, v242, v243, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v237, v245, v246, v247, v248, v249, v238, v244, 306, 0, "Unexpected 0 curColCount");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v250, v251, v252, v253, v254);
    }

    if (!v291)
    {
      v255 = MEMORY[0x277D81150];
      v256 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v231, v233, v234, v235, v236, "[TPPageHint syncsWithEndOfPageHint:bodyStorage:flowRanges:]");
      v262 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v257, v258, v259, v260, v261, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v255, v263, v264, v265, v266, v267, v256, v262, 307, 0, "Unexpected 0 nextColCount");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v268, v269, v270, v271, v272);
    }

    v110 = 0;
    if (v232)
    {
      if (v291 && v291 == v232)
      {
LABEL_35:
        v110 = objc_msgSend_syncsFlowRanges_withEndOfPageHint_(self, v104, v105, v106, v107, v108, v11, v8);
      }
    }

    goto LABEL_14;
  }

  objc_opt_class();
  v117 = objc_msgSend_attachmentAtCharIndex_(v9, v112, v113, v114, v115, v116, v52);
  v118 = TSUDynamicCast();

  if (v118)
  {
    v124 = objc_msgSend_drawable(v118, v119, v120, v121, v122, v123);
    v130 = objc_msgSend_partitioner(v124, v125, v126, v127, v128, v129);
    Hint_horizontally = objc_msgSend_didHint_syncWithNextHint_horizontally_(v130, v131, v132, v133, v134, v135, v109, v97, 0);

    if (Hint_horizontally)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v273 = MEMORY[0x277D81150];
    v274 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v119, v120, v121, v122, v123, "[TPPageHint syncsWithEndOfPageHint:bodyStorage:flowRanges:]");
    v280 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v275, v276, v277, v278, v279, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v273, v281, v282, v283, v284, v285, v274, v280, 286, 0, "invalid nil value for '%{public}s'", "attachment");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v286, v287, v288, v289, v290);
  }

LABEL_13:
  v110 = 0;
LABEL_14:

LABEL_16:
  return v110;
}

- (BOOL)syncsFlowRanges:(id)a3 withEndOfPageHint:(id)a4
{
  v95 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v87 = v7;
  if (self->_isCopyForCaching)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, v12, "[TPPageHint syncsFlowRanges:withEndOfPageHint:]", v7);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v21, v22, v23, v24, v25, v14, v20, 322, 0, "Do not call method on page hint that is intended for caching only");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29, v30);
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v31 = objc_msgSend_flowHints(self, v8, 0, v10, v11, v12, v87);
  v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, v33, v34, v35, v36, &v90, v94, 16);
  if (v38)
  {
    v43 = *v91;
    obj = v31;
    while (2)
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v91 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v45 = *(*(&v90 + 1) + 8 * i);
        v46 = objc_msgSend_flowHints(self, v37, v39, v40, v41, v42);
        v52 = objc_msgSend_objectForKeyedSubscript_(v46, v47, v48, v49, v50, v51, v45);
        v58 = objc_msgSend_range(v52, v53, v54, v55, v56, v57);
        v60 = v59;

        v66 = objc_msgSend_objectForKeyedSubscript_(v6, v61, v62, v63, v64, v65, v45);
        v72 = v66;
        v73 = v66 == 0;
        if (!v66 || (v74 = objc_msgSend_rangeValue(v66, v67, v68, v69, v70, v71), &v75[v74] != v58))
        {

          v31 = obj;
          goto LABEL_15;
        }

        v80 = objc_msgSend_valueWithRange_(MEMORY[0x277CCAE60], v75, v76, v77, v78, v79, v58, v60);
        objc_msgSend_setObject_forUncopiedKey_(v6, v81, v82, v83, v84, v85, v80, v45);
      }

      v31 = obj;
      v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v37, v39, v40, v41, v42, &v90, v94, 16);
      v73 = 1;
      if (v38)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v73 = 1;
  }

LABEL_15:

  return v73;
}

- (void)updateRangeForIndexPath:(id)a3 withStorage:(id)a4
{
  v74[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v8 = a4;
  if (self->_pageKind != 6)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, v12, "[TPPageHint updateRangeForIndexPath:withStorage:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v21, v22, v23, v24, v25, v14, v20, 355, 0, "Unexpected page kind %lu", self->_pageKind);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29, v30);
  }

  if (self->_isCopyForCaching)
  {
    v31 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, v12, "[TPPageHint updateRangeForIndexPath:withStorage:]");
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v39, v40, v41, v42, v43, v32, v38, 356, 0, "Do not call method on page hint that is intended for caching only");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47, v48);
  }

  v73 = *MEMORY[0x277D81490];
  v49 = objc_msgSend_sectionIndex(v6, v7, v73, v10, v11, v12);
  v55 = objc_msgSend_sectionAtSectionIndex_effectiveRange_(v8, v50, v51, v52, v53, v54, v49, &v73);
  v56 = objc_opt_new();
  objc_msgSend_setRange_(v56, v57, v58, v59, v60, v61, *&v73);
  v74[0] = v56;
  v67 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v62, v63, v64, v65, v66, v74, 1);
  objc_msgSend_setHints_topicNumberHints_(self, v68, v69, v70, v71, v72, v67, self->_topicNumberHints);
}

- (_NSRange)footnoteAutoNumberRange
{
  if (self->_pageKind == 5)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, v5, "[TPPageHint footnoteAutoNumberRange]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v15, v16, v17, v18, v19, v8, v14, 378, 0, "shouldn't ask for the properties of a dirty page hint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23, v24);
  }

  location = self->_footnoteAutoNumberRange.location;
  length = self->_footnoteAutoNumberRange.length;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)footnoteLayoutRange
{
  if (self->_pageKind == 5)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, v5, "[TPPageHint footnoteLayoutRange]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v15, v16, v17, v18, v19, v8, v14, 383, 0, "shouldn't ask for the properties of a dirty page hint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23, v24);
  }

  location = self->_footnoteLayoutRange.location;
  length = self->_footnoteLayoutRange.length;
  result.length = length;
  result.location = location;
  return result;
}

- (TSUNoCopyDictionary)anchoredDrawablePositions
{
  if (self->_pageKind == 5)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, v5, "[TPPageHint anchoredDrawablePositions]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v15, v16, v17, v18, v19, v8, v14, 388, 0, "shouldn't ask for the properties of a dirty page hint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23, v24);
  }

  if (self->_isCopyForCaching)
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, v5, "[TPPageHint anchoredDrawablePositions]");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v33, v34, v35, v36, v37, v26, v32, 389, 0, "Do not call method on page hint that is intended for caching only");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41, v42);
  }

  anchoredDrawablePositions = self->_anchoredDrawablePositions;

  return anchoredDrawablePositions;
}

- (TSDHint)firstChildHint
{
  if (self->_pageKind == 5)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, v5, "[TPPageHint firstChildHint]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v15, v16, v17, v18, v19, v8, v14, 395, 0, "shouldn't ask for the properties of a dirty page hint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23, v24);
  }

  if (self->_isCopyForCaching)
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, v5, "[TPPageHint firstChildHint]");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v33, v34, v35, v36, v37, v26, v32, 396, 0, "Can not get first child hint on page hint that is intended for caching only");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41, v42);
  }

  v43 = objc_msgSend_firstObject(self->_childHints, a2, v2, v3, v4, v5);
  v49 = objc_msgSend_null(MEMORY[0x277CBEB68], v44, v45, v46, v47, v48);
  if (v43 == v49)
  {
    v50 = 0;
  }

  else
  {
    v50 = v43;
  }

  v51 = v50;

  return v50;
}

- (TSDHint)lastChildHint
{
  if (self->_pageKind == 5)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, v5, "[TPPageHint lastChildHint]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v15, v16, v17, v18, v19, v8, v14, 403, 0, "shouldn't ask for the properties of a dirty page hint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23, v24);
  }

  if (self->_isCopyForCaching)
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, v5, "[TPPageHint lastChildHint]");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v33, v34, v35, v36, v37, v26, v32, 404, 0, "Can not get last child hint on page hint that is intended for caching only");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41, v42);
  }

  v43 = objc_msgSend_lastObject(self->_childHints, a2, v2, v3, v4, v5);
  v49 = objc_msgSend_null(MEMORY[0x277CBEB68], v44, v45, v46, v47, v48);
  if (v43 == v49)
  {
    v50 = 0;
  }

  else
  {
    v50 = v43;
  }

  v51 = v50;

  return v50;
}

- (TSWPTopicNumberHints)topicNumberHints
{
  if (self->_isCopyForCaching)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, v5, "[TPPageHint topicNumberHints]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v15, v16, v17, v18, v19, v8, v14, 411, 0, "Can not get topic numbers on page hint that is intended for caching only");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23, v24);
  }

  topicNumberHints = self->_topicNumberHints;

  return topicNumberHints;
}

- (_NSRange)range
{
  if (self->_pageKind == 5)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, v5, "[TPPageHint range]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v15, v16, v17, v18, v19, v8, v14, 419, 0, "shouldn't ask for the properties of a dirty page hint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23, v24);
  }

  v25 = objc_msgSend_p_range(self, a2, v2, v3, v4, v5);
  result.length = v26;
  result.location = v25;
  return result;
}

- (_NSRange)p_range
{
  if (self->_isCopyForCaching)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, v5, "[TPPageHint p_range]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v15, v16, v17, v18, v19, v8, v14, 424, 0, "Can not get range on page hint that is intended for caching only");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23, v24);
  }

  if (objc_msgSend_count(self->_hints, a2, v2, v3, v4, v5))
  {
    v30 = objc_msgSend_firstObject(self->_hints, v25, v26, v27, v28, v29);
    v36 = objc_msgSend_range(v30, v31, v32, v33, v34, v35);
    v38 = v37;
    v43 = objc_msgSend_lastObject(self->_hints, v37, v39, v40, v41, v42);
    v57.location = objc_msgSend_range(v43, v44, v45, v46, v47, v48);
    v57.length = v49;
    v55.location = v36;
    v55.length = v38;
    v50 = NSUnionRange(v55, v57);
    location = v50.location;
    length = v50.length;
  }

  else
  {
    location = *MEMORY[0x277D81490];
    length = *(MEMORY[0x277D81490] + 8);
  }

  v53 = location;
  v54 = length;
  result.length = v54;
  result.location = v53;
  return result;
}

- (_NSRange)rangeAndChildHints:(id *)a3
{
  v9 = objc_msgSend_p_range(self, a2, v3, v4, v5, v6);
  v11 = v10;
  *a3 = self->_childHints;
  v12 = v9;
  v13 = v11;
  result.length = v13;
  result.location = v12;
  return result;
}

- (_NSRange)anchoredRange
{
  if (self->_pageKind == 5)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, v5, "[TPPageHint anchoredRange]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v15, v16, v17, v18, v19, v8, v14, 438, 0, "shouldn't ask for the properties of a dirty page hint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23, v24);
  }

  if (objc_msgSend_count(self->_hints, a2, v2, v3, v4, v5))
  {
    v30 = objc_msgSend_firstObject(self->_hints, v25, v26, v27, v28, v29);
    v36 = objc_msgSend_anchoredRange(v30, v31, v32, v33, v34, v35);
    v38 = v37;
    v43 = objc_msgSend_lastObject(self->_hints, v37, v39, v40, v41, v42);
    v57.location = objc_msgSend_anchoredRange(v43, v44, v45, v46, v47, v48);
    v57.length = v49;
    v55.location = v36;
    v55.length = v38;
    v50 = NSUnionRange(v55, v57);
    location = v50.location;
    length = v50.length;
  }

  else
  {
    location = *MEMORY[0x277D81490];
    length = *(MEMORY[0x277D81490] + 8);
  }

  v53 = location;
  v54 = length;
  result.length = v54;
  result.location = v53;
  return result;
}

- (unint64_t)nextWidowPullsDownFromCharIndex
{
  if (self->_pageKind == 5)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, v5, "[TPPageHint nextWidowPullsDownFromCharIndex]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v15, v16, v17, v18, v19, v8, v14, 443, 0, "shouldn't ask for the properties of a dirty page hint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23, v24);
  }

  v26 = objc_msgSend_lastHint(self, a2, v2, v3, v4, v5);
  if (v26 && objc_msgSend_count(self->_hints, v25, v27, v28, v29, v30))
  {
    v36 = objc_msgSend_lastHint(self, v31, v32, v33, v34, v35);
    WidowPullsDownFromCharIndex = objc_msgSend_nextWidowPullsDownFromCharIndex(v36, v37, v38, v39, v40, v41);
  }

  else
  {
    WidowPullsDownFromCharIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return WidowPullsDownFromCharIndex;
}

- (BOOL)lastLineIsEmptyAndHasListLabel
{
  v6 = objc_msgSend_lastHint(self, a2, v2, v3, v4, v5);
  v12 = v6;
  if (v6)
  {
    HasListLabel = objc_msgSend_lastLineIsEmptyAndHasListLabel(v6, v7, v8, v9, v10, v11);
  }

  else
  {
    HasListLabel = 0;
  }

  return HasListLabel;
}

- (BOOL)terminatedByBreak
{
  v6 = objc_msgSend_lastHint(self, a2, v2, v3, v4, v5);
  v12 = v6;
  if (v6)
  {
    v13 = objc_msgSend_terminatedByBreak(v6, v7, v8, v9, v10, v11);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)trimToCharIndex:(unint64_t)a3 inTarget:(id)a4 removeFootnoteReferenceCount:(unint64_t)a5 removeAutoNumberFootnoteCount:(unint64_t)a6
{
  v357 = a4;
  if (self->_pageKind == 5)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, v13, "[TPPageHint trimToCharIndex:inTarget:removeFootnoteReferenceCount:removeAutoNumberFootnoteCount:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v22, v23, v24, v25, v26, v15, v21, 465, 0, "shouldn't ask for the properties of a dirty page hint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30, v31);
  }

  if (self->_isCopyForCaching)
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, v13, "[TPPageHint trimToCharIndex:inTarget:removeFootnoteReferenceCount:removeAutoNumberFootnoteCount:]");
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v40, v41, v42, v43, v44, v33, v39, 466, 0, "Do not call method on page hint that is intended for caching only");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47, v48, v49);
  }

  if (!objc_msgSend_count(self->_hints, v9, v10, v11, v12, v13))
  {
    v55 = MEMORY[0x277D81150];
    v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, v51, v52, v53, v54, "[TPPageHint trimToCharIndex:inTarget:removeFootnoteReferenceCount:removeAutoNumberFootnoteCount:]");
    v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, v58, v59, v60, v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v63, v64, v65, v66, v67, v56, v62, 468, 0, "bad page hint: no text hints");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69, v70, v71, v72);
  }

  if (objc_msgSend_count(self->_hints, v50, v51, v52, v53, v54))
  {
    v78 = objc_msgSend_objectAtIndexedSubscript_(self->_hints, v73, v74, v75, v76, v77, 0);
    v84 = objc_msgSend_range(v78, v79, v80, v81, v82, v83);

    if (v84 >= a3)
    {
      v90 = MEMORY[0x277D81150];
      v91 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v85, v86, v87, v88, v89, "[TPPageHint trimToCharIndex:inTarget:removeFootnoteReferenceCount:removeAutoNumberFootnoteCount:]");
      v97 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v92, v93, v94, v95, v96, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v90, v98, v99, v100, v101, v102, v91, v97, 470, 0, "trimming will remove all characters from this page hint");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v103, v104, v105, v106, v107);
    }

    hints = self->_hints;
    v109 = objc_msgSend_count(hints, v85, v86, v87, v88, v89);
    v115 = objc_msgSend_objectAtIndexedSubscript_(hints, v110, v111, v112, v113, v114, v109 - 1);
    v121 = objc_msgSend_range(v115, v116, v117, v118, v119, v120);
    if (&v122[v121] > a3)
    {
      if (objc_msgSend_count(self->_childHints, v122, v123, v124, v125, v126))
      {
        v127 = objc_msgSend_lastObject(self->_childHints, v122, v123, v124, v125, v126);
        v133 = objc_msgSend_null(MEMORY[0x277CBEB68], v128, v129, v130, v131, v132);

        if (v127 != v133)
        {
          childHints = self->_childHints;
          v135 = objc_msgSend_count(childHints, v122, v123, v124, v125, v126);
          v141 = objc_msgSend_subarrayWithRange_(childHints, v136, v137, v138, v139, v140, 0, v135 - 1);
          v147 = objc_msgSend_null(MEMORY[0x277CBEB68], v142, v143, v144, v145, v146);
          v153 = objc_msgSend_arrayByAddingObject_(v141, v148, v149, v150, v151, v152, v147);
          objc_msgSend_setChildHints_(self, v154, v155, v156, v157, v158, v153);
        }
      }
    }

    if (objc_msgSend_nextWidowPullsDownFromCharIndex(v115, v122, v123, v124, v125, v126) < a3 || objc_msgSend_range(v115, v159, v160, v161, v162, v163) > a3)
    {
      v164 = MEMORY[0x277D81150];
      v165 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v159, v160, v161, v162, v163, "[TPPageHint trimToCharIndex:inTarget:removeFootnoteReferenceCount:removeAutoNumberFootnoteCount:]");
      v171 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v166, v167, v168, v169, v170, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
      v360.location = objc_msgSend_range(v115, v172, v173, v174, v175, v176);
      v177 = NSStringFromRange(v360);
      WidowPullsDownFromCharIndex = objc_msgSend_nextWidowPullsDownFromCharIndex(v115, v178, v179, v180, v181, v182);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v164, v184, v185, v186, v187, v188, v165, v171, 479, 0, "Bad charIndex: %lu %{public}@ %lu", a3, v177, WidowPullsDownFromCharIndex);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v189, v190, v191, v192, v193);
    }

    v194 = objc_msgSend_range(v115, v159, v160, v161, v162, v163);
    v200 = &v195[v194];
    if (&v195[v194] <= a3)
    {
      v201 = a3;
    }

    else
    {
      v201 = &v195[v194];
    }

    if (&v195[v194] >= a3)
    {
      v200 = a3;
    }

    v355 = v200;
    v202 = objc_msgSend_range(v115, v195, v196, v197, v198, v199);
    v208 = objc_msgSend_range(v115, v203, v204, v205, v206, v207);
    objc_msgSend_setRange_(v115, v209, v210, v211, v212, v213, v202, a3 - v208);
    objc_msgSend_setNextWidowPullsDownFromCharIndex_(v115, v214, v215, v216, v217, v218, a3);
    objc_msgSend_setLineFragmentCount_(v115, v219, v220, v221, v222, v223, 0x7FFFFFFFFFFFFFFFLL);
    length = self->_footnoteAutoNumberRange.length;
    if (length < a6)
    {
      v230 = MEMORY[0x277D81150];
      v231 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v224, v225, v226, v227, v228, "[TPPageHint trimToCharIndex:inTarget:removeFootnoteReferenceCount:removeAutoNumberFootnoteCount:]");
      v237 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v232, v233, v234, v235, v236, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v230, v238, v239, v240, v241, v242, v231, v237, 488, 0, "Hint doesn't know about auto-numbered footnotes being removed");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v243, v244, v245, v246, v247);
      length = self->_footnoteAutoNumberRange.length;
    }

    v248 = length >= a6;
    v249 = length - a6;
    if (v248)
    {
      self->_footnoteAutoNumberRange.length = v249;
    }

    v250 = objc_msgSend_storage(v357, v224, v225, v226, v227, v228);
    v256 = objc_msgSend_documentRoot(v250, v251, v252, v253, v254, v255);

    v262 = objc_msgSend_settings(v256, v257, v258, v259, v260, v261);
    v268 = objc_msgSend_footnoteKind(v262, v263, v264, v265, v266, v267);

    v274 = self->_footnoteLayoutRange.length;
    if (v268)
    {
      if (v274)
      {
        v275 = MEMORY[0x277D81150];
        v276 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v269, v270, v271, v272, v273, "[TPPageHint trimToCharIndex:inTarget:removeFootnoteReferenceCount:removeAutoNumberFootnoteCount:]");
        v282 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v277, v278, v279, v280, v281, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v275, v283, v284, v285, v286, v287, v276, v282, 501, 0, "Shouldn't have footnotes due to endnote setting");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v288, v289, v290, v291, v292);
      }
    }

    else
    {
      if (v274 < a5)
      {
        v293 = MEMORY[0x277D81150];
        v294 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v269, v270, v271, v272, v273, "[TPPageHint trimToCharIndex:inTarget:removeFootnoteReferenceCount:removeAutoNumberFootnoteCount:]");
        v300 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v295, v296, v297, v298, v299, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v293, v301, v302, v303, v304, v305, v294, v300, 496, 0, "Hint doesn't know about footnotes being removed");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v306, v307, v308, v309, v310);
        v274 = self->_footnoteLayoutRange.length;
      }

      v248 = v274 >= a5;
      v311 = v274 - a5;
      if (v248)
      {
        self->_footnoteLayoutRange.length = v311;
      }
    }

    v312 = v201 - v355;
    if (v201 - v355 - 1 <= 0x7FFFFFFFFFFFFFFDLL && objc_msgSend_count(self->_startingPartitionedAttachments, v269, v270, v271, v272, v273))
    {
      v318 = objc_msgSend_set(MEMORY[0x277CBEB58], v313, v314, v315, v316, v317);
      v324 = objc_msgSend_storage(v357, v319, v320, v321, v322, v323);
      v325 = objc_opt_class();
      v358[0] = MEMORY[0x277D85DD0];
      v358[1] = 3221225472;
      v358[2] = sub_275FE39FC;
      v358[3] = &unk_27A6A87B8;
      v326 = v318;
      v359 = v326;
      objc_msgSend_enumerateAttachmentsOfClass_inTextRange_usingBlock_(v324, v327, v328, v329, v330, v331, v325, v355, v312, v358);

      if (objc_msgSend_count(v326, v332, v333, v334, v335, v336))
      {
        v342 = objc_msgSend_mutableCopy(self->_startingPartitionedAttachments, v337, v338, v339, v340, v341);
        objc_msgSend_minusSet_(v342, v343, v344, v345, v346, v347, v326);
        v353 = objc_msgSend_copy(v342, v348, v349, v350, v351, v352);
        startingPartitionedAttachments = self->_startingPartitionedAttachments;
        self->_startingPartitionedAttachments = v353;
      }
    }
  }
}

- (unint64_t)lineCount
{
  if (self->_isCopyForCaching)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, v5, "[TPPageHint lineCount]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v15, v16, v17, v18, v19, v8, v14, 525, 0, "Do not call method on page hint that is intended for caching only");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23, v24);
  }

  if (!objc_msgSend_count(self->_hints, a2, v2, v3, v4, v5))
  {
    return 0;
  }

  v30 = 0;
  v31 = 0;
  while (1)
  {
    v32 = objc_msgSend_objectAtIndexedSubscript_(self->_hints, v25, v26, v27, v28, v29, v30);
    v38 = objc_msgSend_lineFragmentCount(v32, v33, v34, v35, v36, v37);

    if (v38 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    v31 += v38;
    if (++v30 >= objc_msgSend_count(self->_hints, v39, v40, v41, v42, v43))
    {
      return v31;
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (TPPageHint)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v13 = objc_msgSend_init(self, v7, v8, v9, v10, v11);
  if (!v13)
  {
    goto LABEL_52;
  }

  v18 = 0;
  v19 = *(a3 + 4);
  if ((~v19 & 0xC0) == 0 && *(a3 + 59) >= 0x35u && *(a3 + 60) == 1)
  {
    v20 = *(a3 + 8);
    if (v20 >= 1)
    {
      v21 = objc_alloc(MEMORY[0x277CBEB18]);
      v27 = objc_msgSend_initWithCapacity_(v21, v22, v23, v24, v25, v26, v20);
      v28 = 8;
      while (1)
      {
        v29 = objc_opt_new();
        if ((objc_msgSend_p_unarchiveHint_fromArchive_(v13, v30, v31, v32, v33, v34, v29, *(*(a3 + 5) + v28)) & 1) == 0)
        {
          break;
        }

        objc_msgSend_addObject_(v27, v35, v36, v37, v38, v39, v29);

        v28 += 8;
        if (!--v20)
        {
          v40 = *(v13 + 32);
          *(v13 + 32) = v27;

          v19 = *(a3 + 4);
          goto LABEL_10;
        }
      }

      goto LABEL_36;
    }

LABEL_10:
    if ((v19 & 0x20) == 0)
    {
      goto LABEL_36;
    }

    v41 = *(a3 + 58);
    *(v13 + 8) = v41;
    if (v41 == 1)
    {
      if (!objc_msgSend_count(*(v13 + 32), v12, v14, v15, v16, v17))
      {
        v47 = MEMORY[0x277D81150];
        v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v43, v44, v45, v46, "[TPPageHint initWithArchive:unarchiver:]");
        v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, v50, v51, v52, v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v55, v56, v57, v58, v59, v48, v54, 734, 0, "text page hint has no text hints");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v60, v61, v62, v63, v64);
      }

      if (!objc_msgSend_count(*(v13 + 32), v42, v43, v44, v45, v46))
      {
        goto LABEL_36;
      }

      v19 = *(a3 + 4);
    }

    if ((v19 & 0x400) == 0 || (*(v13 + 16) = *(a3 + 63), (v19 & 0x200) == 0))
    {
LABEL_36:
      v18 = 0;
      goto LABEL_53;
    }

    *(v13 + 24) = *(a3 + 62);
    if (v19)
    {
      *(v13 + 48) = TSPNSRangeFromMessage();
      *(v13 + 56) = v65;
      v19 = *(a3 + 4);
    }

    if ((v19 & 2) != 0)
    {
      *(v13 + 64) = TSPNSRangeFromMessage();
      *(v13 + 72) = v66;
    }

    v296[0] = MEMORY[0x277D85DD0];
    v296[1] = 3221225472;
    v296[2] = sub_275FE45C8;
    v296[3] = &unk_27A6A8508;
    v67 = v13;
    v297 = v67;
    sub_275FE451C(v6, a3 + 72, &unk_288528398, v296);
    v73 = *(a3 + 14);
    v290 = v67;
    if (v73 >= 1)
    {
      v74 = objc_alloc(MEMORY[0x277D81278]);
      v81 = objc_msgSend_initWithCapacity_(v74, v75, v76, v77, v78, v79, v73);
      v86 = 8;
      v87 = MEMORY[0x277D80A10];
      while (1)
      {
        v88 = *(*(a3 + 8) + v86);
        if ((*(v88 + 16) & 8) == 0)
        {
          break;
        }

        v89 = *(v88 + 48);
        v90 = *(v89 + 24);
        v91 = *(v89 + 32);
        v92 = *(v88 + 40);
        if (v92)
        {
          objc_msgSend_readWeakObjectUUIDPathReferenceMessage_(v6, v80, v82, v83, v84, v85, v92);
        }

        else
        {
          objc_msgSend_readWeakObjectUUIDPathReferenceMessage_(v6, v80, v82, v83, v84, v85, v87);
        }
        v93 = ;
        v94.n128_u64[0] = v90;
        v95.n128_u64[0] = v91;
        v99 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v96, v94, v95, v97, v98);
        objc_msgSend_setObject_forKey_(v81, v100, v101, v102, v103, v104, v99, v93);

        v86 += 8;
        if (!--v73)
        {
          v105 = v67[11];
          v67[11] = v81;

          goto LABEL_30;
        }
      }

      v150 = MEMORY[0x277D81150];
      v151 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v80, v82, v83, v84, v85, "[TPPageHint initWithArchive:unarchiver:]");
      v157 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v152, v153, v154, v155, v156, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v150, v158, v159, v160, v161, v162, v151, v157, 806, 0, "missing anchored drawable position");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v163, v164, v165, v166, v167);
      goto LABEL_38;
    }

LABEL_30:
    v106 = *(a3 + 26);
    v81 = objc_msgSend_setWithCapacity_(MEMORY[0x277CBEB58], v68, v69, v70, v71, v72, v106);
    if (v106)
    {
      v112 = 0;
      do
      {
        v113 = objc_alloc(MEMORY[0x277CCAD78]);
        v119 = objc_msgSend_tsp_initWithMessage_(v113, v114, v115, v116, v117, v118, *(*(a3 + 14) + (v112 >> 29) + 8));
        objc_msgSend_addObject_(v81, v120, v121, v122, v123, v124, v119);

        v112 += 0x100000000;
        --v106;
      }

      while (v106);
    }

    v125 = objc_msgSend_copy(v81, v107, v108, v109, v110, v111);
    v126 = v290[12];
    v290[12] = v125;

    if ((*(a3 + 16) & 0x10) == 0)
    {
      v132 = MEMORY[0x277D81150];
      v133 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v127, v128, v129, v130, v131, "[TPPageHint initWithArchive:unarchiver:]");
      v139 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v134, v135, v136, v137, v138, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v132, v140, v141, v142, v143, v144, v133, v139, 843, 0, "shouldn't need to upgrade page hints");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v145, v146, v147, v148, v149);
LABEL_38:

      goto LABEL_36;
    }

    v168 = *(a3 + 28);
    v169 = objc_opt_new();
    v170 = v290[13];
    v290[13] = v169;

    objc_msgSend_p_unarchiveTopicNumberHints_fromArchive_unarchiver_(v290, v171, v172, v173, v174, v175, v290[13], v168, v6);
    v181 = *(a3 + 38);
    if (v181 != *(a3 + 32) || v181 != *(a3 + 44))
    {
      goto LABEL_38;
    }

    if ((v181 & 0x80000000) != 0)
    {
      v185 = MEMORY[0x277D81150];
      v186 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v176, v177, v178, v179, v180, "[TPPageHint initWithArchive:unarchiver:]");
      v192 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v187, v188, v189, v190, v191, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v185, v193, v194, v195, v196, v197, v186, v192, 854, 0, "Invalid flow hint count %d", v181);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v198, v199, v200, v201, v202);
      v203 = MEMORY[0x277D81150];
      v209 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v204, v205, v206, v207, v208, "[TPPageHint initWithArchive:unarchiver:]");
      v215 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v210, v211, v212, v213, v214, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v203, v216, v217, v218, v219, v220, v209, v215, 855, 0, "Invalid flow reference count %d", v181);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v221, v222, v223, v224, v225);
      v226 = MEMORY[0x277D81150];
      v232 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v227, v228, v229, v230, v231, "[TPPageHint initWithArchive:unarchiver:]");
      v238 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v233, v234, v235, v236, v237, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v226, v239, v240, v241, v242, v243, v232, v238, 856, 0, "Invalid flow topic numbers count %d", v181);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v244, v245, v246, v247, v248);
    }

    else
    {
      v182 = v290;
      if (!v181)
      {
        v183 = 0;
        v184 = 0;
LABEL_51:
        v291[0] = MEMORY[0x277D85DD0];
        v291[1] = 3221225472;
        v291[2] = sub_275FE4808;
        v291[3] = &unk_27A6A87E0;
        v295 = v181;
        v285 = v183;
        v292 = v285;
        v293 = v184;
        v294 = v182;
        v286 = v184;
        sub_275FE4778(v6, a3 + 120, v291);

LABEL_52:
        v18 = v13;
        goto LABEL_53;
      }
    }

    v249 = objc_alloc(MEMORY[0x277CBEB18]);
    v183 = objc_msgSend_initWithCapacity_(v249, v250, v251, v252, v253, v254, v181);
    v255 = objc_alloc(MEMORY[0x277CBEB18]);
    v184 = objc_msgSend_initWithCapacity_(v255, v256, v257, v258, v259, v260, v181);
    if (v181 >= 1)
    {
      v261 = v181;
      v262 = 8;
      v288 = v261;
      v289 = v183;
      v182 = v290;
      while (1)
      {
        v263 = objc_opt_new();
        if ((objc_msgSend_p_unarchiveHint_fromArchive_(v290, v264, v265, v266, v267, v268, v263, *(*(a3 + 20) + v262)) & 1) == 0)
        {
          break;
        }

        v269 = objc_opt_new();
        objc_msgSend_p_unarchiveTopicNumberHints_fromArchive_unarchiver_(v290, v270, v271, v272, v273, v274, v269, *(*(a3 + 23) + v262), v6);
        objc_msgSend_addObject_(v289, v275, v276, v277, v278, v279, v263);
        objc_msgSend_addObject_(v184, v280, v281, v282, v283, v284, v269);

        v262 += 8;
        if (!--v261)
        {
          LODWORD(v181) = v288;
          v183 = v289;
          goto LABEL_51;
        }
      }

      goto LABEL_38;
    }

    v182 = v290;
    goto LABEL_51;
  }

LABEL_53:

  return v18;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4 context:(id)a5
{
  v416 = *MEMORY[0x277D85DE8];
  v383 = a4;
  v387 = a5;
  if (self->_isCopyForCaching)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, v12, "[TPPageHint saveToArchive:archiver:context:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v21, v22, v23, v24, v25, v14, v20, 909, 0, "Cannot archive a page hint that is intended for caching only");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29, v30);
  }

  *(a3 + 4) |= 1u;
  if (!*(a3 + 24))
  {
    v31 = *(a3 + 1);
    if (v31)
    {
      v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
    }

    *(a3 + 24) = MEMORY[0x277C92D40](v31);
  }

  TSPNSRangeCopyToMessage();
  *(a3 + 4) |= 2u;
  if (!*(a3 + 25))
  {
    v32 = *(a3 + 1);
    if (v32)
    {
      v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
    }

    *(a3 + 25) = MEMORY[0x277C92D40](v32);
  }

  TSPNSRangeCopyToMessage();
  *(a3 + 4) |= 0xC0u;
  v33.n128_u64[0] = 0x100000035;
  *(a3 + 236) = 0x100000035;
  if (!objc_msgSend_count(self->_hints, v34, v33, v35, v36, v37))
  {
    v43 = MEMORY[0x277D81150];
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, v42, "[TPPageHint saveToArchive:archiver:context:]");
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, v46, v47, v48, v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v51, v52, v53, v54, v55, v44, v50, 917, 0, "Page hint is empty");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57, v58, v59, v60);
  }

  v409 = 0u;
  v410 = 0u;
  v407 = 0u;
  v408 = 0u;
  v61 = self->_hints;
  v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v62, v63, v64, v65, v66, &v407, v415, 16);
  if (v68)
  {
    v73 = *v408;
    do
    {
      for (i = 0; i != v68; ++i)
      {
        if (*v408 != v73)
        {
          objc_enumerationMutation(v61);
        }

        v75 = *(*(&v407 + 1) + 8 * i);
        v76 = *(a3 + 5);
        if (!v76)
        {
          goto LABEL_23;
        }

        v77 = *(a3 + 8);
        v78 = *v76;
        if (v77 < *v76)
        {
          *(a3 + 8) = v77 + 1;
          objc_msgSend_p_archiveHint_intoArchive_(self, v67, v69, v70, v71, v72, v75, *&v76[2 * v77 + 2]);
          continue;
        }

        if (v78 == *(a3 + 9))
        {
LABEL_23:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 24));
          v76 = *(a3 + 5);
          v78 = *v76;
        }

        *v76 = v78 + 1;
        v79 = sub_275FAF71C(*(a3 + 3));
        v80 = *(a3 + 8);
        v81 = *(a3 + 5) + 8 * v80;
        *(a3 + 8) = v80 + 1;
        *(v81 + 8) = v79;
        objc_msgSend_p_archiveHint_intoArchive_(self, v82, v83, v84, v85, v86, v75, v79);
      }

      v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v67, v69, v70, v71, v72, &v407, v415, 16);
    }

    while (v68);
  }

  v92 = objc_msgSend_anchoredDrawablePositions(self, v87, v88, v89, v90, v91);
  v404[0] = MEMORY[0x277D85DD0];
  v404[1] = 3221225472;
  v404[2] = sub_275FE57BC;
  v404[3] = &unk_27A6A8808;
  v406 = a3;
  v386 = v383;
  v405 = v386;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v92, v93, v94, v95, v96, v97, v404);

  v402 = 0u;
  v403 = 0u;
  v400 = 0u;
  v401 = 0u;
  v98 = self->_startingPartitionedAttachments;
  v105 = objc_msgSend_countByEnumeratingWithState_objects_count_(v98, v99, v100, v101, v102, v103, &v400, v414, 16);
  if (!v105)
  {
    goto LABEL_41;
  }

  v110 = *v401;
  do
  {
    for (j = 0; j != v105; ++j)
    {
      if (*v401 != v110)
      {
        objc_enumerationMutation(v98);
      }

      v112 = *(*(&v400 + 1) + 8 * j);
      v113 = *(a3 + 14);
      if (!v113)
      {
        goto LABEL_37;
      }

      v114 = *(a3 + 26);
      v115 = *v113;
      if (v114 < *v113)
      {
        *(a3 + 26) = v114 + 1;
        objc_msgSend_tsp_saveToMessage_(v112, v104, v106, v107, v108, v109, *&v113[2 * v114 + 2]);
        continue;
      }

      if (v115 == *(a3 + 27))
      {
LABEL_37:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 96));
        v113 = *(a3 + 14);
        v115 = *v113;
      }

      *v113 = v115 + 1;
      v116 = MEMORY[0x277C92D20](*(a3 + 12));
      v117 = *(a3 + 26);
      v118 = *(a3 + 14) + 8 * v117;
      *(a3 + 26) = v117 + 1;
      *(v118 + 8) = v116;
      objc_msgSend_tsp_saveToMessage_(v112, v119, v120, v121, v122, v123, v116);
    }

    v105 = objc_msgSend_countByEnumeratingWithState_objects_count_(v98, v104, v106, v107, v108, v109, &v400, v414, 16);
  }

  while (v105);
LABEL_41:

  v129 = objc_msgSend_count(self->_flowHints, v124, v125, v126, v127, v128);
  if (v129 != objc_msgSend_count(self->_flowTopicNumberHints, v130, v131, v132, v133, v134))
  {
    v140 = MEMORY[0x277D81150];
    v141 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v135, v136, v137, v138, v139, "[TPPageHint saveToArchive:archiver:context:]");
    v147 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v142, v143, v144, v145, v146, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v140, v148, v149, v150, v151, v152, v141, v147, 946, 0, "mismatch in _flowHints and _flowTopicNumberHints");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v153, v154, v155, v156, v157);
  }

  v158 = objc_msgSend_count(self->_flowHints, v135, v136, v137, v138, v139);
  if (v158 == objc_msgSend_count(self->_flowTopicNumberHints, v159, v160, v161, v162, v163))
  {
    v398 = 0u;
    v399 = 0u;
    v396 = 0u;
    v397 = 0u;
    v169 = self->_flowHints;
    v176 = objc_msgSend_countByEnumeratingWithState_objects_count_(v169, v170, v171, v172, v173, v174, &v396, v413, 16);
    if (!v176)
    {
      goto LABEL_52;
    }

    v181 = *v397;
    do
    {
      for (k = 0; k != v176; ++k)
      {
        if (*v397 != v181)
        {
          objc_enumerationMutation(v169);
        }

        v183 = objc_msgSend_objectForKeyedSubscript_(self->_flowTopicNumberHints, v175, v177, v178, v179, v180, *(*(&v396 + 1) + 8 * k));
        v184 = v183 == 0;

        if (v184)
        {
LABEL_80:

          goto LABEL_81;
        }
      }

      v176 = objc_msgSend_countByEnumeratingWithState_objects_count_(v169, v175, v177, v178, v179, v180, &v396, v413, 16);
    }

    while (v176);
LABEL_52:

    v394 = 0u;
    v395 = 0u;
    v392 = 0u;
    v393 = 0u;
    v169 = self->_flowHints;
    v191 = objc_msgSend_countByEnumeratingWithState_objects_count_(v169, v185, v186, v187, v188, v189, &v392, v412, 16);
    if (!v191)
    {
      goto LABEL_80;
    }

    v196 = *v393;
    while (2)
    {
      v197 = 0;
LABEL_55:
      if (*v393 != v196)
      {
        objc_enumerationMutation(v169);
      }

      v198 = *(*(&v392 + 1) + 8 * v197);
      v200 = objc_msgSend_objectForKeyedSubscript_(self->_flowHints, v190, v192, v193, v194, v195, v198);
      v205 = *(a3 + 17);
      if (!v205)
      {
        goto LABEL_62;
      }

      v206 = *(a3 + 32);
      v207 = *v205;
      if (v206 < *v205)
      {
        *(a3 + 32) = v206 + 1;
        objc_msgSend_setWeakReference_message_(v386, v199, v201, v202, v203, v204, v198, *&v205[2 * v206 + 2]);
        goto LABEL_64;
      }

      if (v207 == *(a3 + 33))
      {
LABEL_62:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 120));
        v205 = *(a3 + 17);
        v207 = *v205;
      }

      *v205 = v207 + 1;
      v213 = MEMORY[0x277C92D60](*(a3 + 15));
      v214 = *(a3 + 32);
      v215 = *(a3 + 17) + 8 * v214;
      *(a3 + 32) = v214 + 1;
      *(v215 + 8) = v213;
      objc_msgSend_setWeakReference_message_(v386, v216, v217, v218, v219, v220, v198, v213);
LABEL_64:
      v221 = *(a3 + 20);
      if (!v221)
      {
        goto LABEL_69;
      }

      v222 = *(a3 + 38);
      v223 = *v221;
      if (v222 < *v221)
      {
        *(a3 + 38) = v222 + 1;
        objc_msgSend_p_archiveHint_intoArchive_(self, v208, v209, v210, v211, v212, v200, *&v221[2 * v222 + 2]);
        goto LABEL_71;
      }

      if (v223 == *(a3 + 39))
      {
LABEL_69:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 144));
        v221 = *(a3 + 20);
        v223 = *v221;
      }

      *v221 = v223 + 1;
      v229 = sub_275FAF71C(*(a3 + 18));
      v230 = *(a3 + 38);
      v231 = *(a3 + 20) + 8 * v230;
      *(a3 + 38) = v230 + 1;
      *(v231 + 8) = v229;
      objc_msgSend_p_archiveHint_intoArchive_(self, v232, v233, v234, v235, v236, v200, v229);
LABEL_71:
      v238 = objc_msgSend_objectForKeyedSubscript_(self->_flowTopicNumberHints, v224, v225, v226, v227, v228, v198);
      v243 = *(a3 + 23);
      if (!v243)
      {
        goto LABEL_76;
      }

      v244 = *(a3 + 44);
      v245 = *v243;
      if (v244 < *v243)
      {
        *(a3 + 44) = v244 + 1;
        objc_msgSend_p_archiveTopicNumberHints_intoArchive_archiver_(self, v237, v239, v240, v241, v242, v238, *&v243[2 * v244 + 2], v386);
        goto LABEL_78;
      }

      if (v245 == *(a3 + 45))
      {
LABEL_76:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 168));
        v243 = *(a3 + 23);
        v245 = *v243;
      }

      *v243 = v245 + 1;
      v246 = sub_275FAFB4C(*(a3 + 21));
      v247 = *(a3 + 44);
      v248 = *(a3 + 23) + 8 * v247;
      *(a3 + 44) = v247 + 1;
      *(v248 + 8) = v246;
      objc_msgSend_p_archiveTopicNumberHints_intoArchive_archiver_(self, v249, v250, v251, v252, v253, v238, v246, v386);
LABEL_78:

      if (v191 == ++v197)
      {
        v191 = objc_msgSend_countByEnumeratingWithState_objects_count_(v169, v190, v192, v193, v194, v195, &v392, v412, 16);
        if (!v191)
        {
          goto LABEL_80;
        }

        continue;
      }

      goto LABEL_55;
    }
  }

LABEL_81:
  pageKind = self->_pageKind;
  *(a3 + 4) |= 0x20u;
  *(a3 + 58) = pageKind;
  if (pageKind != 5)
  {
    v255 = MEMORY[0x277CBEB18];
    v256 = objc_msgSend_count(self->_childHints, v164, v165, v166, v167, v168);
    v385 = objc_msgSend_arrayWithCapacity_(v255, v257, v258, v259, v260, v261, v256);
    v390 = 0u;
    v391 = 0u;
    v388 = 0u;
    v389 = 0u;
    obj = self->_childHints;
    v267 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v262, v263, v264, v265, v266, &v388, v411, 16);
    if (v267)
    {
      v268 = *v389;
      do
      {
        for (m = 0; m != v267; ++m)
        {
          if (*v389 != v268)
          {
            objc_enumerationMutation(obj);
          }

          v382 = &unk_288546710;
          v270 = TSUProtocolCast();
          if (v270)
          {
            v271 = objc_opt_class();
            v277 = objc_msgSend_archivedHintClass(v271, v272, v273, v274, v275, v276, &unk_288546710);
            if (!v277)
            {
              v283 = MEMORY[0x277D81150];
              v284 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v278, v279, v280, v281, v282, "[TPPageHint saveToArchive:archiver:context:]");
              v290 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v285, v286, v287, v288, v289, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v283, v291, v292, v293, v294, v295, v284, v290, 984, 0, "invalid nil value for '%{public}s'", "archivedHintClass");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v296, v297, v298, v299, v300);
              v277 = 0;
            }
          }

          else
          {
            v277 = objc_opt_class();
          }

          v301 = [v277 alloc];
          v308 = objc_msgSend_initWithContext_hint_(v301, v302, v303, v304, v305, v306, v387, v270);
          if (v308)
          {
            objc_msgSend_addObject_(v385, v307, v309, v310, v311, v312, v308);
          }

          else
          {
            v313 = MEMORY[0x277D81150];
            v314 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v307, v309, v310, v311, v312, "[TPPageHint saveToArchive:archiver:context:]");
            v320 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v315, v316, v317, v318, v319, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v313, v321, v322, v323, v324, v325, v314, v320, 993, 0, "invalid nil value for '%{public}s'", "archivedHint");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v326, v327, v328, v329, v330);
          }
        }

        v267 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v331, v332, v333, v334, v335, &v388, v411, 16);
      }

      while (v267);
    }

    objc_msgSend_setStrongReferenceArray_message_(v386, v336, v337, v338, v339, v340, v385, a3 + 72);
  }

  pageRow = self->_pageRow;
  if (HIDWORD(pageRow))
  {
    v346 = MEMORY[0x277D81150];
    v347 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v164, v165, v166, v167, v168, "[TPPageHint saveToArchive:archiver:context:]");
    v353 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v348, v349, v350, v351, v352, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v346, v354, v355, v356, v357, v358, v347, v353, 1000, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v359, v360, v361, v362, v363);
    LODWORD(pageRow) = -1;
  }

  v342 = *(a3 + 4) | 0x400;
  *(a3 + 4) = v342;
  *(a3 + 63) = pageRow;
  pageColumn = self->_pageColumn;
  if (HIDWORD(pageColumn))
  {
    v364 = MEMORY[0x277D81150];
    v365 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v164, v165, v166, v167, v168, "[TPPageHint saveToArchive:archiver:context:]");
    v371 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v366, v367, v368, v369, v370, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v364, v372, v373, v374, v375, v376, v365, v371, 1001, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v377, v378, v379, v380, v381);
    v342 = *(a3 + 4);
    LODWORD(pageColumn) = -1;
  }

  *(a3 + 62) = pageColumn;
  *(a3 + 4) = v342 | 0x210;
  v344 = *(a3 + 28);
  if (!v344)
  {
    v345 = *(a3 + 1);
    if (v345)
    {
      v345 = *(v345 & 0xFFFFFFFFFFFFFFFELL);
    }

    v344 = sub_275FAFB4C(v345);
    *(a3 + 28) = v344;
  }

  objc_msgSend_p_archiveTopicNumberHints_intoArchive_archiver_(self, v164, v165, v166, v167, v168, self->_topicNumberHints, v344, v386, v382);
}

- (void)p_archiveHint:(id)a3 intoArchive:(void *)a4
{
  v201 = a3;
  objc_msgSend_frameBounds(v201, v5, v6, v7, v8, v9);
  v15 = v11.n128_u64[0];
  v16 = v12.n128_u64[0];
  v17 = v13.n128_f64[0];
  v18 = v14.n128_f64[0];
  *(a4 + 4) |= 0x10u;
  v19 = *(a4 + 7);
  if (!v19)
  {
    v20 = *(a4 + 1);
    if (v20)
    {
      v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
    }

    v19 = sub_275FAF560(v20);
    *(a4 + 7) = v19;
  }

  *(v19 + 16) |= 3u;
  *(v19 + 24) = v15;
  *(v19 + 32) = v16;
  *(a4 + 4) |= 0x20u;
  v21 = *(a4 + 8);
  if (!v21)
  {
    v22 = *(a4 + 1);
    if (v22)
    {
      v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
    }

    v21 = sub_275FAF5D4(v22);
    *(a4 + 8) = v21;
  }

  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_41;
  }

  v23 = v201;
  if (v17 > 0.0)
  {
    v11.n128_u64[0] = 0x7FEFFFFFFFFFFFFFLL;
    if (v17 > 1.79769313e308)
    {
      v109 = MEMORY[0x277D81150];
      v110 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, v14, "[TPPageHint p_archiveHint:intoArchive:]");
      v116 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v111, v112, v113, v114, v115, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v109, v117, v118, v119, v120, v121, v110, v116, 1017, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v122, v123, v124, v125, v126);
      v127 = 0x7FEFFFFFFFFFFFFFLL;
LABEL_40:
      v17 = *&v127;
LABEL_41:
      v23 = v201;
      goto LABEL_14;
    }
  }

  if (v17 < 0.0)
  {
    v11.n128_u64[0] = 0xFFEFFFFFFFFFFFFFLL;
    if (v17 < -1.79769313e308)
    {
      v147 = MEMORY[0x277D81150];
      v148 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, v14, "[TPPageHint p_archiveHint:intoArchive:]");
      v154 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v149, v150, v151, v152, v153, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v147, v155, v156, v157, v158, v159, v148, v154, 1017, 0, "Out-of-bounds type assignment was clamped to min");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v160, v161, v162, v163, v164);
      v127 = 0xFFEFFFFFFFFFFFFFLL;
      goto LABEL_40;
    }
  }

LABEL_14:
  *(v21 + 16) |= 1u;
  *(v21 + 24) = v17;
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_19;
  }

  if (v18 > 0.0)
  {
    v11.n128_u64[0] = 0x7FEFFFFFFFFFFFFFLL;
    if (v18 > 1.79769313e308)
    {
      v128 = MEMORY[0x277D81150];
      v129 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, v14, "[TPPageHint p_archiveHint:intoArchive:]");
      v135 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v130, v131, v132, v133, v134, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v128, v136, v137, v138, v139, v140, v129, v135, 1018, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v141, v142, v143, v144, v145);
      v146 = 0x7FEFFFFFFFFFFFFFLL;
LABEL_43:
      v18 = *&v146;
      v23 = v201;
      goto LABEL_19;
    }
  }

  if (v18 < 0.0)
  {
    v11.n128_u64[0] = 0xFFEFFFFFFFFFFFFFLL;
    if (v18 < -1.79769313e308)
    {
      v165 = MEMORY[0x277D81150];
      v166 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, v14, "[TPPageHint p_archiveHint:intoArchive:]");
      v172 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v167, v168, v169, v170, v171, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v165, v173, v174, v175, v176, v177, v166, v172, 1018, 0, "Out-of-bounds type assignment was clamped to min");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v178, v179, v180, v181, v182);
      v146 = 0xFFEFFFFFFFFFFFFFLL;
      goto LABEL_43;
    }
  }

LABEL_19:
  *(v21 + 16) |= 2u;
  *(v21 + 32) = v18;
  objc_msgSend_range(v23, v10, v11, v12, v13, v14);
  *(a4 + 4) |= 4u;
  if (!*(a4 + 5))
  {
    v24 = *(a4 + 1);
    if (v24)
    {
      v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
    }

    *(a4 + 5) = MEMORY[0x277C92D40](v24);
  }

  TSPNSRangeCopyToMessage();
  WidowPullsDownFromCharIndex = objc_msgSend_nextWidowPullsDownFromCharIndex(v201, v25, v26, v27, v28, v29);
  if (HIDWORD(WidowPullsDownFromCharIndex))
  {
    v73 = MEMORY[0x277D81150];
    v74 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v32, v33, v34, v35, "[TPPageHint p_archiveHint:intoArchive:]");
    v80 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v75, v76, v77, v78, v79, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v73, v81, v82, v83, v84, v85, v74, v80, 1029, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v86, v87, v88, v89, v90);
    LODWORD(WidowPullsDownFromCharIndex) = -1;
  }

  *(a4 + 4) |= 0x40u;
  *(a4 + 18) = WidowPullsDownFromCharIndex;
  objc_msgSend_anchoredRange(v201, v31, v32, v33, v34, v35);
  *(a4 + 4) |= 8u;
  if (!*(a4 + 6))
  {
    v36 = *(a4 + 1);
    if (v36)
    {
      v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
    }

    *(a4 + 6) = MEMORY[0x277C92D40](v36);
  }

  TSPNSRangeCopyToMessage();
  v42 = objc_msgSend_columnCount(v201, v37, v38, v39, v40, v41);
  if (HIDWORD(v42))
  {
    v91 = MEMORY[0x277D81150];
    v92 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v44, v45, v46, v47, "[TPPageHint p_archiveHint:intoArchive:]");
    v98 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v93, v94, v95, v96, v97, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v91, v99, v100, v101, v102, v103, v92, v98, 1033, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v104, v105, v106, v107, v108);
    LODWORD(v42) = -1;
  }

  *(a4 + 4) |= 0x80u;
  *(a4 + 19) = v42;
  if (objc_msgSend_lineFragmentCount(v201, v43, v44, v45, v46, v47) == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_32;
  }

  v53 = objc_msgSend_lineFragmentCount(v201, v48, v49, v50, v51, v52);
  if (HIDWORD(v53))
  {
    v183 = MEMORY[0x277D81150];
    v184 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, v49, v50, v51, v52, "[TPPageHint p_archiveHint:intoArchive:]");
    v190 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v185, v186, v187, v188, v189, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v183, v191, v192, v193, v194, v195, v184, v190, 1035, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v196, v197, v198, v199, v200);
LABEL_32:
    LODWORD(v53) = -1;
  }

  *(a4 + 4) |= 0x100u;
  *(a4 + 20) = v53;
  HasListLabel = objc_msgSend_lastLineIsEmptyAndHasListLabel(v201, v48, v49, v50, v51, v52);
  *(a4 + 4) |= 0x400u;
  *(a4 + 85) = HasListLabel;
  v60 = objc_msgSend_endOfLayout(v201, v55, v56, v57, v58, v59);
  *(a4 + 4) |= 0x200u;
  *(a4 + 84) = v60;
  IsVertical = objc_msgSend_textIsVertical(v201, v61, v62, v63, v64, v65);
  *(a4 + 4) |= 0x800u;
  *(a4 + 86) = IsVertical;
  v72 = objc_msgSend_terminatedByBreak(v201, v67, v68, v69, v70, v71);
  *(a4 + 4) |= 0x1000u;
  *(a4 + 87) = v72;
}

- (BOOL)p_unarchiveHint:(id)a3 fromArchive:(const void *)a4
{
  v5 = a3;
  v11 = v5;
  if ((*(a4 + 16) & 0x10) == 0)
  {
    goto LABEL_12;
  }

  v12 = *(a4 + 7);
  objc_msgSend_frameBounds(v5, v6, v7, v8, v9, v10);
  v13.n128_u64[0] = *(v12 + 24);
  v14.n128_u64[0] = *(v12 + 32);
  objc_msgSend_setFrameBounds_(v11, v15, v13, v14, v16, v17);
  if ((*(a4 + 16) & 0x20) == 0)
  {
    goto LABEL_12;
  }

  v23 = *(a4 + 8);
  objc_msgSend_frameBounds(v11, v18, v19, v20, v21, v22);
  v24.n128_u64[0] = *(v23 + 24);
  v25.n128_u64[0] = *(v23 + 32);
  objc_msgSend_setFrameBounds_(v11, v26, v27, v28, v24, v25);
  if ((*(a4 + 16) & 4) == 0)
  {
    goto LABEL_12;
  }

  v29 = TSPNSRangeFromMessage();
  objc_msgSend_setRange_(v11, v30, v31, v32, v33, v34, v29, v30);
  if ((*(a4 + 16) & 0x40) == 0)
  {
    goto LABEL_12;
  }

  objc_msgSend_setNextWidowPullsDownFromCharIndex_(v11, v35, v36, v37, v38, v39, *(a4 + 18));
  if ((*(a4 + 16) & 8) == 0)
  {
    goto LABEL_12;
  }

  v40 = TSPNSRangeFromMessage();
  objc_msgSend_setAnchoredRange_(v11, v41, v42, v43, v44, v45, v40, v41);
  if ((*(a4 + 16) & 0x80) == 0)
  {
    goto LABEL_12;
  }

  objc_msgSend_setColumnCount_(v11, v46, v47, v48, v49, v50, *(a4 + 19));
  if ((*(a4 + 17) & 1) == 0)
  {
    goto LABEL_12;
  }

  objc_msgSend_setLineFragmentCount_(v11, v51, v52, v53, v54, v55, *(a4 + 20));
  if (objc_msgSend_lineFragmentCount(v11, v56, v57, v58, v59, v60) == 0xFFFFFFFFLL)
  {
    objc_msgSend_setLineFragmentCount_(v11, v61, v62, v63, v64, v65, 0x7FFFFFFFFFFFFFFFLL);
  }

  if ((*(a4 + 17) & 2) != 0 && (objc_msgSend_setEndOfLayout_(v11, v61, v62, v63, v64, v65, *(a4 + 84)), (*(a4 + 17) & 4) != 0))
  {
    objc_msgSend_setLastLineIsEmptyAndHasListLabel_(v11, v66, v67, v68, v69, v70, *(a4 + 85));
    v78 = *(a4 + 4);
    if ((v78 & 0x800) != 0)
    {
      objc_msgSend_setTextIsVertical_(v11, v73, v74, v75, v76, v77, *(a4 + 86));
      v78 = *(a4 + 4);
    }

    if ((v78 & 0x1000) != 0)
    {
      objc_msgSend_setTerminatedByBreak_(v11, v73, v74, v75, v76, v77, *(a4 + 87));
    }

    v71 = 1;
  }

  else
  {
LABEL_12:
    v71 = 0;
  }

  return v71;
}

- (void)p_archiveTopicNumberHints:(id)a3 intoArchive:(void *)a4 archiver:(id)a5
{
  v153 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v137 = a5;
  v132 = v6;
  objc_msgSend_entryForListStyle(v6, v7, v8, v9, v10, v11);
  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  obj = v148 = 0u;
  v138 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, v13, v14, v15, v16, &v147, v152, 16);
  if (v138)
  {
    v136 = *v148;
    do
    {
      for (i = 0; i != v138; ++i)
      {
        if (*v148 != v136)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v147 + 1) + 8 * i);
        v141 = objc_msgSend_objectForKey_(obj, v17, v18, v19, v20, v21, v22);
        v28 = a4;
        v29 = *(a4 + 4);
        if (!v29)
        {
          goto LABEL_11;
        }

        v30 = *(a4 + 6);
        v31 = *v29;
        if (v30 < *v29)
        {
          *(a4 + 6) = v30 + 1;
          v32 = *&v29[2 * v30 + 2];
          goto LABEL_13;
        }

        if (v31 == *(a4 + 7))
        {
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a4 + 16));
          v28 = a4;
          v29 = *(a4 + 4);
          v31 = *v29;
        }

        *v29 = v31 + 1;
        v32 = sub_275FAFAC0(v28[2]);
        v33 = *(a4 + 6);
        v34 = *(a4 + 4) + 8 * v33;
        *(a4 + 6) = v33 + 1;
        *(v34 + 8) = v32;
LABEL_13:
        *(v32 + 16) |= 1u;
        v35 = *(v32 + 48);
        if (!v35)
        {
          v36 = *(v32 + 8);
          if (v36)
          {
            v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
          }

          v35 = MEMORY[0x277C92D60](v36);
          *(v32 + 48) = v35;
        }

        objc_msgSend_setWeakReference_message_(v137, v23, v24, v25, v26, v27, v22, v35);
        v145 = 0u;
        v146 = 0u;
        v143 = 0u;
        v144 = 0u;
        v41 = objc_msgSend_topicNumbers(v141, v37, 0, v38, v39, v40);
        v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v42, v43, v44, v45, v46, &v143, v151, 16);
        if (v48)
        {
          v53 = *v144;
          do
          {
            for (j = 0; j != v48; ++j)
            {
              if (*v144 != v53)
              {
                objc_enumerationMutation(v41);
              }

              v55 = *(*(&v143 + 1) + 8 * j);
              v56 = *(v32 + 40);
              if (!v56)
              {
                goto LABEL_27;
              }

              v57 = *(v32 + 32);
              v58 = *v56;
              if (v57 < *v56)
              {
                *(v32 + 32) = v57 + 1;
                v59 = *&v56[2 * v57 + 2];
                goto LABEL_29;
              }

              if (v58 == *(v32 + 36))
              {
LABEL_27:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v32 + 24));
                v56 = *(v32 + 40);
                v58 = *v56;
              }

              *v56 = v58 + 1;
              v59 = sub_275FAFA4C(*(v32 + 24));
              v60 = *(v32 + 32);
              v61 = *(v32 + 40) + 8 * v60;
              *(v32 + 32) = v60 + 1;
              *(v61 + 8) = v59;
LABEL_29:
              v62 = objc_msgSend_number(v55, v47, v49, v50, v51, v52);
              if (HIDWORD(v62))
              {
                v81 = MEMORY[0x277D81150];
                v133 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, v64, v65, v66, v67, "[TPPageHint p_archiveTopicNumberHints:intoArchive:archiver:]");
                v87 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v82, v83, v84, v85, v86, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v81, v88, v89, v90, v91, v92, v133, v87, 1153, 0, "Out-of-bounds type assignment was clamped to max");

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v93, v94, v95, v96, v97);
                LODWORD(v62) = -1;
              }

              *(v59 + 16) |= 1u;
              *(v59 + 24) = v62;
              v68 = objc_msgSend_numberType(v55, v63, v64, v65, v66, v67);
              if (v68 >= 0x100000000)
              {
                v98 = MEMORY[0x277D81150];
                v134 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, v70, v71, v72, v73, "[TPPageHint p_archiveTopicNumberHints:intoArchive:archiver:]");
                v104 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v99, v100, v101, v102, v103, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v98, v105, v106, v107, v108, v109, v134, v104, 1154, 0, "Out-of-bounds type assignment was clamped to max");

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v110, v111, v112, v113, v114);
                LODWORD(v68) = -1;
              }

              *(v59 + 16) |= 4u;
              *(v59 + 32) = v68;
              v74 = objc_msgSend_labelType(v55, v69, v70, v71, v72, v73);
              if (v74 >= 0x100000000)
              {
                v115 = MEMORY[0x277D81150];
                v135 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v75, v76, v77, v78, v79, "[TPPageHint p_archiveTopicNumberHints:intoArchive:archiver:]");
                v121 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v116, v117, v118, v119, v120, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v115, v122, v123, v124, v125, v126, v135, v121, 1155, 0, "Out-of-bounds type assignment was clamped to max");

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v127, v128, v129, v130, v131);
                LODWORD(v74) = -1;
              }

              *(v59 + 16) |= 2u;
              *(v59 + 28) = v74;
              isTiered = objc_msgSend_isTiered(v55, v75, v76, v77, v78, v79);
              *(v59 + 16) |= 8u;
              *(v59 + 36) = isTiered;
            }

            v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v47, v49, v50, v51, v52, &v143, v151, 16);
          }

          while (v48);
        }
      }

      v138 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, v18, v19, v20, v21, &v147, v152, 16);
    }

    while (v138);
  }
}

- (void)p_unarchiveTopicNumberHints:(id)a3 fromArchive:(const void *)a4 unarchiver:(id)a5
{
  v73 = a3;
  v72 = a5;
  v7 = *(a4 + 6);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v9 = *(*(a4 + 4) + 8 * i + 8);
      v10 = *(v9 + 32);
      v12 = objc_opt_new();
      if (v10 == 9)
      {
        for (j = 0; j != 9; ++j)
        {
          v18 = *(*(v9 + 40) + 8 * j + 8);
          v19 = objc_msgSend_topicNumbers(v12, v11, v13, v14, v15, v16);
          v25 = objc_msgSend_objectAtIndexedSubscript_(v19, v20, v21, v22, v23, v24, j);

          objc_msgSend_setNumber_(v25, v26, v27, v28, v29, v30, *(v18 + 24));
          objc_msgSend_setNumberType_(v25, v31, v32, v33, v34, v35, *(v18 + 32));
          objc_msgSend_setLabelType_(v25, v36, v37, v38, v39, v40, *(v18 + 28));
          objc_msgSend_setIsTiered_(v25, v41, v42, v43, v44, v45, *(v18 + 36));
        }

        v46 = *(v9 + 48);
        v74[0] = MEMORY[0x277D85DD0];
        v74[1] = 3221225472;
        v74[2] = sub_275FE6AFC;
        v74[3] = &unk_27A6A8830;
        v75 = v73;
        v76 = v12;
        v47 = v72;
        v49 = objc_opt_class();
        if (v46)
        {
          objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v47, v48, v50, v51, v52, v53, v46, v49, 0, v74);
        }

        else
        {
          objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v47, v48, v50, v51, v52, v53, MEMORY[0x277D80A18], v49, 0, v74);
        }
      }

      else
      {
        v54 = MEMORY[0x277D81150];
        v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v13, v14, v15, v16, "[TPPageHint p_unarchiveTopicNumberHints:fromArchive:unarchiver:]");
        v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, v57, v58, v59, v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v54, v62, v63, v64, v65, v66, v55, v61, 1169, 0, "expected equality between %{public}s and %{public}s", "levelCount", "kMaxListLevel");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v67, v68, v69, v70, v71);
      }
    }
  }
}

@end
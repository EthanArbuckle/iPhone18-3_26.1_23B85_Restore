@interface TPSectionHint
+ (BOOL)verifyHints:(id)hints withBodyStorage:(id)storage upToPageIndex:(unint64_t)index;
- (BOOL)hasEndOfTextLayoutBeforePageIndex:(unint64_t)index;
- (BOOL)hasPageHintOfKind:(int64_t)kind atPageIndex:(unint64_t)index;
- (BOOL)hasPageHintOfKind:(int64_t)kind beforePageIndex:(unint64_t)index;
- (TPSectionHint)init;
- (TPSectionHint)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (_NSRange)documentPageRange;
- (id)copyForArchiving;
- (id)copyForCaching;
- (id)pageHintForPageIndex:(unint64_t)index;
- (unint64_t)lastPageIndex;
- (void)saveToArchive:(void *)archive archiver:(id)archiver context:(id)context shouldArchiveHintBlock:(id)block;
- (void)setPageHints:(id)hints;
@end

@implementation TPSectionHint

- (TPSectionHint)init
{
  v6.receiver = self;
  v6.super_class = TPSectionHint;
  v2 = [(TPSectionHint *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pageHints = v2->_pageHints;
    v2->_pageHints = v3;
  }

  return v2;
}

- (id)copyForArchiving
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(objc_opt_class());
  v9 = v3;
  if (v3)
  {
    v3[2] = self->_documentStartPageIndex;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v10 = self->_pageHints;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, v12, v13, v14, v15, &v49, v53, 16);
    if (v17)
    {
      v22 = *v50;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v50 != v22)
          {
            objc_enumerationMutation(v10);
          }

          v24 = objc_msgSend_copyForArchiving(*(*(&v49 + 1) + 8 * i), v16, v18, v19, v20, v21);
          objc_msgSend_addObject_(v9[1], v25, v26, v27, v28, v29, v24);
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v16, v18, v19, v20, v21, &v49, v53, 16);
      }

      while (v17);
    }
  }

  else
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, v8, "[TPSectionHint copyForArchiving]");
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v38, v39, v40, v41, v42, v31, v37, 45, 0, "invalid nil value for '%{public}s'", "copy");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45, v46, v47);
  }

  return v9;
}

- (id)copyForCaching
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(objc_opt_class());
  v9 = v3;
  if (v3)
  {
    v3[2] = self->_documentStartPageIndex;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v10 = self->_pageHints;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, v12, v13, v14, v15, &v49, v53, 16);
    if (v17)
    {
      v22 = *v50;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v50 != v22)
          {
            objc_enumerationMutation(v10);
          }

          v24 = objc_msgSend_copyForCaching(*(*(&v49 + 1) + 8 * i), v16, v18, v19, v20, v21);
          objc_msgSend_addObject_(v9[1], v25, v26, v27, v28, v29, v24);
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v16, v18, v19, v20, v21, &v49, v53, 16);
      }

      while (v17);
    }
  }

  else
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, v8, "[TPSectionHint copyForCaching]");
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v38, v39, v40, v41, v42, v31, v37, 61, 0, "invalid nil value for '%{public}s'", "copy");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45, v46, v47);
  }

  return v9;
}

- (unint64_t)lastPageIndex
{
  v6 = objc_msgSend_pageCount(self, a2, v2, v3, v4, v5);
  if (v6)
  {
    return v6 - 1;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (_NSRange)documentPageRange
{
  documentStartPageIndex = self->_documentStartPageIndex;
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  if (documentStartPageIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = objc_msgSend_pageCount(self, a2, v2, v3, v4, v5);
    v8 = documentStartPageIndex;
  }

  result.length = v9;
  result.location = v8;
  return result;
}

- (id)pageHintForPageIndex:(unint64_t)index
{
  if (objc_msgSend_count(self->_pageHints, a2, v3, v4, v5, v6) < index)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, v13, "[TPSectionHint pageHintForPageIndex:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v22, v23, v24, v25, v26, v15, v21, 100, 0, "Requesting page hint past the end of the section");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30, v31);
  }

  v33 = objc_msgSend_count(self->_pageHints, v9, v10, v11, v12, v13);
  pageHints = self->_pageHints;
  if (v33 <= index)
  {
    if (objc_msgSend_count(pageHints, v32, v34, v35, v36, v37) == index)
    {
      v39 = objc_alloc_init(TPPageHint);
      objc_msgSend_addObject_(self->_pageHints, v40, v41, v42, v43, v44, v39);
    }

    else
    {
      v39 = 0;
    }
  }

  else
  {
    v39 = objc_msgSend_objectAtIndexedSubscript_(pageHints, v32, v34, v35, v36, v37, index);
  }

  return v39;
}

- (BOOL)hasPageHintOfKind:(int64_t)kind atPageIndex:(unint64_t)index
{
  v9 = objc_msgSend_firstObject(self->_pageHints, a2, v4, v5, v6, v7, kind, index);
  v15 = v9;
  if (v9)
  {
    v16 = objc_msgSend_pageKind(v9, v10, v11, v12, v13, v14) == kind;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)hasPageHintOfKind:(int64_t)kind beforePageIndex:(unint64_t)index
{
  if (objc_msgSend_count(self->_pageHints, a2, v4, v5, v6, v7) < index)
  {
    return 0;
  }

  v17 = index - 1;
  do
  {
    v16 = v17 != -1;
    if (v17 == -1)
    {
      break;
    }

    v18 = objc_msgSend_objectAtIndexedSubscript_(self->_pageHints, v11, v12, v13, v14, v15, v17);
    v24 = objc_msgSend_pageKind(v18, v19, v20, v21, v22, v23);

    --v17;
  }

  while (v24 != kind);
  return v16;
}

- (BOOL)hasEndOfTextLayoutBeforePageIndex:(unint64_t)index
{
  v9 = objc_msgSend_count(self->_pageHints, a2, v3, v4, v5, v6);
  if (v9 >= index)
  {
    indexCopy = index;
  }

  else
  {
    indexCopy = v9;
  }

  if (!indexCopy)
  {
    return 0;
  }

  v16 = indexCopy - 1;
  while (1)
  {
    v17 = objc_msgSend_objectAtIndexedSubscript_(self->_pageHints, v10, v11, v12, v13, v14, v16);
    if (objc_msgSend_pageKind(v17, v18, v19, v20, v21, v22) == 1)
    {
      break;
    }

    if (--v16 == -1)
    {
      return 0;
    }
  }

  v29 = objc_msgSend_hints(v17, v23, v24, v25, v26, v27);
  v35 = objc_msgSend_lastObject(v29, v30, v31, v32, v33, v34);

  v28 = objc_msgSend_endOfLayout(v35, v36, v37, v38, v39, v40);
  return v28;
}

- (void)setPageHints:(id)hints
{
  hintsCopy = hints;
  objc_msgSend_removeAllObjects(self->_pageHints, v4, v5, v6, v7, v8);
  objc_msgSend_addObjectsFromArray_(self->_pageHints, v9, v10, v11, v12, v13, hintsCopy);
}

+ (BOOL)verifyHints:(id)hints withBodyStorage:(id)storage upToPageIndex:(unint64_t)index
{
  sub_275FFC9D0(v148, hints);
  v10 = 0;
  v145 = 0;
  v146 = 0;
  v11 = 1;
  while (1)
  {
    v12 = sub_275FFD320(v148, v5, v6, v7, v8, v9);
    v13 = (v12 != 0) & v11;

    if ((v13 & 1) == 0)
    {
      break;
    }

    if (sub_275FFD698(v148) >= index || sub_275FFD3B8(v148, v14, v15, v16, v17, v18) == 5)
    {
      v11 = 1;
      break;
    }

    v10 |= sub_275FFD3B8(v148, v19, v20, v21, v22, v23) == 3;
    if (sub_275FFD3B8(v148, v24, v25, v26, v27, v28) == 1)
    {
      if (v10)
      {
        v34 = MEMORY[0x277D81150];
        v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, v33, "+[TPSectionHint verifyHints:withBodyStorage:upToPageIndex:]");
        v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionHint.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v42, v43, v44, v45, v46, v35, v41, 231, 0, "Should not have text hints after an orphan hint");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50, v51);
        v11 = 0;
      }

      else
      {
        v52 = sub_275FFD410(v148, v29, v30, v31, v32, v33);
        v54 = v53;
        v59 = sub_275FFD47C(v148, v53, v55, v56, v57, v58);
        v60 = v29;
        if (v52 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v61 = MEMORY[0x277D81150];
          v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, v33, "+[TPSectionHint verifyHints:withBodyStorage:upToPageIndex:]");
          v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, v64, v65, v66, v67, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionHint.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v61, v69, v70, v71, v72, v73, v62, v68, 242, 0, "page has bogus text range");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v74, v75, v76, v77, v78);
        }

        if (v59 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v79 = MEMORY[0x277D81150];
          v80 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, v33, "+[TPSectionHint verifyHints:withBodyStorage:upToPageIndex:]");
          v86 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v81, v82, v83, v84, v85, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionHint.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v79, v87, v88, v89, v90, v91, v80, v86, 243, 0, "page has bogus anchored range");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v92, v93, v94, v95, v96);
        }

        v97 = v52 == v145 && v59 == v146;
        v98 = v97;
        if (!v97)
        {
          v99 = MEMORY[0x277D81150];
          v100 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, v33, "+[TPSectionHint verifyHints:withBodyStorage:upToPageIndex:]");
          v106 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v101, v102, v103, v104, v105, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionHint.mm");
          v107 = sub_275FFD698(v148);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v99, v108, v109, v110, v111, v112, v100, v106, 246, 0, "page hint #%lu is incongruous with previous hint", v107 + 1);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v113, v114, v115, v116, v117);
        }

        v145 = &v54[v52];
        v146 = &v60[v59];
        if (v52 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = 0;
        }

        else
        {
          v11 = (v59 != 0x7FFFFFFFFFFFFFFFLL) & v98;
        }
      }
    }

    else
    {
      v11 = 1;
    }

    if (sub_275FFD3B8(v148, v29, v30, v31, v32, v33) == 4)
    {
      v123 = sub_275FFD554(v148, v118, v119, v120, v121, v122);
      if (v118)
      {
        v11 = 1;
      }

      else
      {
        v124 = v123;
        v125 = MEMORY[0x277D81150];
        v126 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], 0, v119, v120, v121, v122, "+[TPSectionHint verifyHints:withBodyStorage:upToPageIndex:]");
        v132 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v127, v128, v129, v130, v131, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionHint.mm");
        v149.location = v124;
        v149.length = 0;
        v133 = NSStringFromRange(v149);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v125, v134, v135, v136, v137, v138, v126, v132, 258, 0, "Endnote page should always have at least one footnote, %{public}@", v133);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v139, v140, v141, v142, v143);
        v11 = 0;
      }
    }

    sub_275FFCF2C(v148, v118, v119, v120, v121, v122);
  }

  sub_275FFD2D0(v148);
  return v11 & 1;
}

- (TPSectionHint)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v34.receiver = self;
  v34.super_class = TPSectionHint;
  v7 = [(TPSectionHint *)&v34 init];
  if (!v7)
  {
LABEL_12:
    v32 = v7;
    goto LABEL_13;
  }

  v8 = *(archive + 8);
  v9 = objc_alloc(MEMORY[0x277CBEB18]);
  v15 = objc_msgSend_initWithCapacity_(v9, v10, v11, v12, v13, v14, v8);
  pageHints = v7->_pageHints;
  v7->_pageHints = v15;

  if (v8 < 1)
  {
LABEL_6:
    v30 = *(archive + 12) == 0x7FFFFFFF || (*(archive + 4) & 1) == 0;
    v31 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v30)
    {
      v31 = *(archive + 12);
    }

    v7->_documentStartPageIndex = v31;
    goto LABEL_12;
  }

  v17 = 8;
  while (1)
  {
    v18 = [TPPageHint alloc];
    v25 = objc_msgSend_initWithArchive_unarchiver_(v18, v19, v20, v21, v22, v23, *(*(archive + 5) + v17), unarchiverCopy);
    if (!v25)
    {
      break;
    }

    objc_msgSend_addObject_(v7->_pageHints, v24, v26, v27, v28, v29, v25);

    v17 += 8;
    if (!--v8)
    {
      goto LABEL_6;
    }
  }

  v32 = 0;
LABEL_13:

  return v32;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver context:(id)context shouldArchiveHintBlock:(id)block
{
  v87 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  contextCopy = context;
  blockCopy = block;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  selfCopy = self;
  obj = self->_pageHints;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, v12, v13, v14, v15, &v82, v86, 16);
  if (v17)
  {
    v22 = *v83;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v83 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v82 + 1) + 8 * i);
        if (!objc_msgSend_pageKind(v24, v16, v18, v19, v20, v21, selfCopy))
        {
          v30 = MEMORY[0x277D81150];
          v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, v29, "[TPSectionHint saveToArchive:archiver:context:shouldArchiveHintBlock:]");
          v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionHint.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v38, v39, v40, v41, v42, v31, v37, 290, 0, "shouldn't be trying to archive an uninitialized page hint");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45, v46, v47);
        }

        v48 = *(archive + 5);
        if (!v48)
        {
          goto LABEL_13;
        }

        v49 = *(archive + 8);
        v50 = *v48;
        if (v49 < *v48)
        {
          *(archive + 8) = v49 + 1;
          v51 = *&v48[2 * v49 + 2];
          goto LABEL_15;
        }

        if (v50 == *(archive + 9))
        {
LABEL_13:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 24));
          v48 = *(archive + 5);
          v50 = *v48;
        }

        *v48 = v50 + 1;
        v51 = sub_275FAF7F8(*(archive + 3));
        v52 = *(archive + 8);
        v53 = *(archive + 5) + 8 * v52;
        *(archive + 8) = v52 + 1;
        *(v53 + 8) = v51;
LABEL_15:
        v51[4] |= 0x40u;
        v51[59] = 53;
        if (blockCopy[2](blockCopy, v24))
        {
          objc_msgSend_saveToArchive_archiver_context_(v24, v16, v18, v19, v20, v21, v51, archiverCopy, contextCopy);
        }

        else
        {
          v51[4] |= 0x20u;
          v51[58] = 5;
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, v18, v19, v20, v21, &v82, v86, 16);
    }

    while (v17);
  }

  documentStartPageIndex = selfCopy->_documentStartPageIndex;
  if (documentStartPageIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (HIDWORD(documentStartPageIndex))
    {
      v60 = MEMORY[0x277D81150];
      v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, v55, v56, v57, v58, "[TPSectionHint saveToArchive:archiver:context:shouldArchiveHintBlock:]");
      v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, v63, v64, v65, v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionHint.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v68, v69, v70, v71, v72, v61, v67, 303, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v74, v75, v76, v77);
      LODWORD(documentStartPageIndex) = -1;
    }

    *(archive + 4) |= 1u;
    *(archive + 12) = documentStartPageIndex;
  }
}

@end
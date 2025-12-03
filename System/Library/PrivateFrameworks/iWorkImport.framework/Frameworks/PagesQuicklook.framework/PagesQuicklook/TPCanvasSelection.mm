@interface TPCanvasSelection
+ (id)canvasSelectionFromCanvasSelection:(id)selection withToggledInfo:(id)info;
+ (id)canvasSelectionFromSelection:(id)selection;
+ (id)canvasSelectionFromSelection:(id)selection withInfos:(id)infos;
+ (id)emptySelection;
+ (id)selectionWithInfos:(id)infos;
- (BOOL)containsKindOfClass:(Class)class;
- (BOOL)containsUnlockedKindOfClass:(Class)class;
- (BOOL)isEqual:(id)equal;
- (NSSet)infos;
- (NSSet)unlockedInfos;
- (NSString)description;
- (TPCanvasSelection)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (TPCanvasSelection)initWithTextSelection:(id)selection infos:(id)infos excludedInfos:(id)excludedInfos additionalInfos:(id)additionalInfos;
- (TPCanvasSelection)initWithType:(int64_t)type range:(_NSRange)range styleInsertionBehavior:(int64_t)behavior caretAffinity:(int64_t)affinity leadingEdge:(BOOL)edge leadingCharIndex:(unint64_t)index infos:(id)infos excludedInfos:(id)self0 additionalInfos:(id)self1;
- (TPCanvasSelection)initWithType:(int64_t)type ranges:(id)ranges validVisualRanges:(BOOL)visualRanges styleInsertionBehavior:(int64_t)behavior caretAffinity:(int64_t)affinity leadingEdge:(BOOL)edge leadingCharIndex:(unint64_t)index headCharIndex:(unint64_t)self0 tailCharIndex:(unint64_t)self1 infos:(id)self2 excludedInfos:(id)self3 additionalInfos:(id)self4;
- (id)UUIDDescription;
- (id)copyExcludingInfo:(id)info;
- (id)copyIncludingInfo:(id)info;
- (id)copyWithNewRange:(_NSRange)range;
- (id)copyWithNewStyleInsertionBehavior:(int64_t)behavior newCaretAffinity:(int64_t)affinity;
- (id)copyWithNewType:(int64_t)type;
- (id)copyWithNewType:(int64_t)type range:(_NSRange)range;
- (id)copyWithNewVisualTypeRange:(_NSRange)range head:(unint64_t)head tail:(unint64_t)tail;
- (id)copyWithVisualRanges:(id)ranges headCharIndex:(unint64_t)index tailCharIndex:(unint64_t)charIndex rightToLeft:(BOOL)left sameLine:(BOOL)line;
- (id)copyWithZone:(_NSZone *)zone;
- (id)infosOfClass:(Class)class;
- (id)p_UUIDDescriptionsForInfosSet:(id)set;
- (unint64_t)canvasSelectionKind;
- (unint64_t)hash;
- (unint64_t)infoCount;
- (unint64_t)unlockedInfoCount;
- (void)p_commonCopyTo:(id)to;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
@end

@implementation TPCanvasSelection

+ (id)canvasSelectionFromSelection:(id)selection
{
  selectionCopy = selection;
  objc_opt_class();
  v4 = TSUDynamicCast();
  IsLeadingEdge_leadingCharIndex_headCharIndex_tailCharIndex = v4;
  if (selectionCopy && !v4)
  {
    objc_opt_class();
    v6 = TSUDynamicCast();
    if (v6)
    {
      v7 = [TPCanvasSelection alloc];
      v13 = objc_msgSend_infos(v6, v8, v9, v10, v11, v12);
      IsLeadingEdge_leadingCharIndex_headCharIndex_tailCharIndex = objc_msgSend_initWithInfos_(v7, v14, v15, v16, v17, v18, v13);
    }

    else
    {
      objc_opt_class();
      v13 = TSUDynamicCast();
      if (v13)
      {
        v79 = [TPCanvasSelection alloc];
        v78 = objc_msgSend_type(v13, v19, v20, v21, v22, v23);
        v29 = objc_msgSend_ranges(v13, v24, v25, v26, v27, v28);
        valid = objc_msgSend_validVisualRanges(v13, v30, v31, v32, v33, v34);
        v41 = objc_msgSend_styleInsertionBehavior(v13, v36, v37, v38, v39, v40);
        v47 = objc_msgSend_caretLFAffinity(v13, v42, v43, v44, v45, v46);
        IsLeadingEdge = objc_msgSend_caretIsLeadingEdge(v13, v48, v49, v50, v51, v52);
        v59 = objc_msgSend_leadingCharIndex(v13, v54, v55, v56, v57, v58);
        v65 = objc_msgSend_headCharIndex(v13, v60, v61, v62, v63, v64);
        v71 = objc_msgSend_tailCharIndex(v13, v66, v67, v68, v69, v70);
        IsLeadingEdge_leadingCharIndex_headCharIndex_tailCharIndex = objc_msgSend_initWithType_ranges_validVisualRanges_styleInsertionBehavior_caretAffinity_caretIsLeadingEdge_leadingCharIndex_headCharIndex_tailCharIndex_(v79, v72, v73, v74, v75, v76, v78, v29, valid, v41, v47, IsLeadingEdge, v59, v65, v71);
      }

      else
      {
        IsLeadingEdge_leadingCharIndex_headCharIndex_tailCharIndex = 0;
      }
    }
  }

  return IsLeadingEdge_leadingCharIndex_headCharIndex_tailCharIndex;
}

+ (id)canvasSelectionFromSelection:(id)selection withInfos:(id)infos
{
  infosCopy = infos;
  v13 = objc_msgSend_canvasSelectionFromSelection_(self, v7, v8, v9, v10, v11, selection);
  if (infosCopy)
  {
    v18 = objc_msgSend_copy(infosCopy, v12, v14, v15, v16, v17);
    v19 = v13[13];
    v13[13] = v18;

    if (!v13[13])
    {
      v25 = MEMORY[0x277D81150];
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, v24, "+[TPCanvasSelection canvasSelectionFromSelection:withInfos:]");
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPCanvasSelection.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v33, v34, v35, v36, v37, v26, v32, 86, 0, "invalid nil value for '%{public}s'", "result->mAdditionalInfos");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41, v42);
    }
  }

  return v13;
}

+ (id)canvasSelectionFromCanvasSelection:(id)selection withToggledInfo:(id)info
{
  selectionCopy = selection;
  infoCopy = info;
  if ((objc_msgSend_isValid(selectionCopy, v7, v8, v9, v10, v11) & 1) == 0)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, v16, "+[TPCanvasSelection canvasSelectionFromCanvasSelection:withToggledInfo:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPCanvasSelection.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v25, v26, v27, v28, v29, v18, v24, 95, 0, "Selection should be valid");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33, v34);
  }

  if (!infoCopy || !objc_msgSend_isValid(selectionCopy, v12, v13, v14, v15, v16))
  {
    v71 = selectionCopy;
    goto LABEL_12;
  }

  v40 = objc_msgSend_setWithSet_(MEMORY[0x277CBEB58], v35, v36, v37, v38, v39, selectionCopy[12]);
  v158 = v40;
  v46 = objc_msgSend_setWithSet_(MEMORY[0x277CBEB58], v41, v42, v43, v44, v45, selectionCopy[13]);
  v157 = v46;
  v52 = objc_msgSend_rawInfos(selectionCopy, v47, v48, v49, v50, v51);
  v58 = objc_msgSend_containsObject_(v52, v53, v54, v55, v56, v57, infoCopy);

  if (!v58)
  {
    v72 = objc_msgSend_containsObject_(v46, v59, v60, v61, v62, v63, infoCopy);
    v70 = v46;
    if (!v72)
    {
      goto LABEL_7;
    }

LABEL_10:
    objc_msgSend_removeObject_(v70, v64, v66, v67, v68, v69, infoCopy);
    goto LABEL_11;
  }

  v65 = objc_msgSend_containsObject_(v40, v59, v60, v61, v62, v63, infoCopy);
  v70 = v40;
  if (v65)
  {
    goto LABEL_10;
  }

LABEL_7:
  objc_msgSend_addObject_(v70, v64, v66, v67, v68, v69, infoCopy);
LABEL_11:
  v156 = [TPCanvasSelection alloc];
  v155 = objc_msgSend_type(selectionCopy, v73, v74, v75, v76, v77);
  v83 = objc_msgSend_ranges(selectionCopy, v78, v79, v80, v81, v82);
  valid = objc_msgSend_validVisualRanges(selectionCopy, v84, v85, v86, v87, v88);
  v94 = objc_msgSend_styleInsertionBehavior(selectionCopy, v89, v90, v91, v92, v93);
  v100 = objc_msgSend_caretLFAffinity(selectionCopy, v95, v96, v97, v98, v99);
  IsLeadingEdge = objc_msgSend_caretIsLeadingEdge(selectionCopy, v101, v102, v103, v104, v105);
  v112 = objc_msgSend_leadingCharIndex(selectionCopy, v107, v108, v109, v110, v111);
  v118 = objc_msgSend_headCharIndex(selectionCopy, v113, v114, v115, v116, v117);
  v124 = objc_msgSend_tailCharIndex(selectionCopy, v119, v120, v121, v122, v123);
  v130 = objc_msgSend_rawInfos(selectionCopy, v125, v126, v127, v128, v129);
  v71 = objc_msgSend_initWithType_ranges_validVisualRanges_styleInsertionBehavior_caretAffinity_leadingEdge_leadingCharIndex_headCharIndex_tailCharIndex_infos_excludedInfos_additionalInfos_(v156, v131, v132, v133, v134, v135, v155, v83, valid, v94, v100, IsLeadingEdge, v112, v118, v124, v130, v158, v157);

  v141 = objc_msgSend_headCharIndex(selectionCopy, v136, v137, v138, v139, v140);
  v147 = objc_msgSend_tailCharIndex(selectionCopy, v142, v143, v144, v145, v146);
  objc_msgSend_i_setHeadCharIndex_tailCharIndex_(v71, v148, v149, v150, v151, v152, v141, v147);

LABEL_12:

  return v71;
}

- (TPCanvasSelection)initWithType:(int64_t)type ranges:(id)ranges validVisualRanges:(BOOL)visualRanges styleInsertionBehavior:(int64_t)behavior caretAffinity:(int64_t)affinity leadingEdge:(BOOL)edge leadingCharIndex:(unint64_t)index headCharIndex:(unint64_t)self0 tailCharIndex:(unint64_t)self1 infos:(id)self2 excludedInfos:(id)self3 additionalInfos:(id)self4
{
  edgeCopy = edge;
  visualRangesCopy = visualRanges;
  rangesCopy = ranges;
  infosCopy = infos;
  excludedInfosCopy = excludedInfos;
  additionalInfosCopy = additionalInfos;
  v47.receiver = self;
  v47.super_class = TPCanvasSelection;
  v23 = [(TSWPSelection *)&v47 initWithType:type ranges:rangesCopy validVisualRanges:visualRangesCopy styleInsertionBehavior:behavior caretAffinity:affinity caretIsLeadingEdge:edgeCopy leadingCharIndex:index headCharIndex:charIndex tailCharIndex:tailCharIndex];
  if (v23)
  {
    v28 = objc_msgSend_copy(infosCopy, v22, v24, v25, v26, v27);
    mInfos = v23->mInfos;
    v23->mInfos = v28;

    v35 = objc_msgSend_copy(excludedInfosCopy, v30, v31, v32, v33, v34);
    mExcludedInfos = v23->mExcludedInfos;
    v23->mExcludedInfos = v35;

    v42 = objc_msgSend_copy(additionalInfosCopy, v37, v38, v39, v40, v41);
    mAdditionalInfos = v23->mAdditionalInfos;
    v23->mAdditionalInfos = v42;
  }

  return v23;
}

- (TPCanvasSelection)initWithType:(int64_t)type range:(_NSRange)range styleInsertionBehavior:(int64_t)behavior caretAffinity:(int64_t)affinity leadingEdge:(BOOL)edge leadingCharIndex:(unint64_t)index infos:(id)infos excludedInfos:(id)self0 additionalInfos:(id)self1
{
  edgeCopy = edge;
  length = range.length;
  location = range.location;
  infosCopy = infos;
  excludedInfosCopy = excludedInfos;
  additionalInfosCopy = additionalInfos;
  v26 = objc_msgSend_rangeArrayWithRange_(MEMORY[0x277D80EE8], v21, v22, v23, v24, v25, location, length);
  valid = objc_msgSend_initWithType_ranges_validVisualRanges_styleInsertionBehavior_caretAffinity_leadingEdge_leadingCharIndex_headCharIndex_tailCharIndex_infos_excludedInfos_additionalInfos_(self, v27, v28, v29, v30, v31, type, v26, 0, behavior, affinity, edgeCopy, index, 0x7FFFFFFFFFFFFFFFLL, 0x7FFFFFFFFFFFFFFFLL, infosCopy, excludedInfosCopy, additionalInfosCopy);

  return valid;
}

- (unint64_t)canvasSelectionKind
{
  v71 = *MEMORY[0x277D85DE8];
  isValid = objc_msgSend_isValid(self, a2, v2, v3, v4, v5);
  result = objc_msgSend_infoCount(self, v8, v9, v10, v11, v12);
  if (isValid)
  {
    if (result)
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }

  else if (result)
  {
    v68 = 0u;
    v69 = 0u;
    v67 = 0u;
    v18 = objc_msgSend_infos(self, v14, 0, v15, v16, v17, 0, 0);
    v24 = 0;
    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, v20, v21, v22, v23, &v66, v70, 16);
    if (v25)
    {
      v26 = *v67;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v67 != v26)
          {
            objc_enumerationMutation(v18);
          }

          objc_opt_class();
          v28 = TSUDynamicCast();
          v34 = v28;
          if (v28)
          {
            v35 = objc_msgSend_wpKind(v28, v29, v30, v31, v32, v33);
            if (v35 == 2)
            {
              v36 = 2;
            }

            else
            {
              v36 = 4;
            }

            if (v35 == 1)
            {
              v37 = 1;
            }

            else
            {
              v37 = v36;
            }
          }

          else
          {
            v37 = 4;
          }

          v24 |= v37;
        }

        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v38, v39, v40, v41, v42, &v66, v70, 16);
      }

      while (v25);
    }

    if ((v24 ^ (v24 - 1)) <= v24 - 1)
    {
      v48 = MEMORY[0x277D81150];
      v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v44, v45, v46, v47, "[TPCanvasSelection canvasSelectionKind]");
      v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, v51, v52, v53, v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPCanvasSelection.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v56, v57, v58, v59, v60, v49, v55, 248, 0, "Improper mix of text storage kinds and/or drawable infos.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v61, v62, v63, v64, v65);
    }

    if (v24 == 2)
    {
      return 4;
    }

    else
    {
      return 2 * (v24 == 4);
    }
  }

  return result;
}

- (NSString)description
{
  v7 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4, v5);
  if (objc_msgSend_count(self->mInfos, v8, v9, v10, v11, v12))
  {
    v18 = MEMORY[0x277CCACA8];
    v19 = objc_msgSend_count(self->mInfos, v13, v14, v15, v16, v17);
    v25 = objc_msgSend_stringWithFormat_(v18, v20, v21, v22, v23, v24, @"infos (%u) %p", v19, self->mInfos);
    objc_msgSend_addObject_(v7, v26, v27, v28, v29, v30, v25);
  }

  if (objc_msgSend_count(self->mExcludedInfos, v13, v14, v15, v16, v17))
  {
    v36 = MEMORY[0x277CCACA8];
    v37 = objc_msgSend_count(self->mExcludedInfos, v31, v32, v33, v34, v35);
    v43 = objc_msgSend_stringWithFormat_(v36, v38, v39, v40, v41, v42, @"excluded (%u) %p", v37, self->mExcludedInfos);
    objc_msgSend_addObject_(v7, v44, v45, v46, v47, v48, v43);
  }

  if (objc_msgSend_count(self->mAdditionalInfos, v31, v32, v33, v34, v35))
  {
    v54 = MEMORY[0x277CCACA8];
    v55 = objc_msgSend_count(self->mAdditionalInfos, v49, v50, v51, v52, v53);
    v61 = objc_msgSend_stringWithFormat_(v54, v56, v57, v58, v59, v60, @"additional (%u) %p", v55, self->mAdditionalInfos);
    objc_msgSend_addObject_(v7, v62, v63, v64, v65, v66, v61);
  }

  v67 = objc_msgSend_componentsJoinedByString_(v7, v49, v50, v51, v52, v53, @", ");
  v68 = MEMORY[0x277CCACA8];
  v77.receiver = self;
  v77.super_class = TPCanvasSelection;
  v69 = [(TSWPSelection *)&v77 description];
  v75 = objc_msgSend_stringWithFormat_(v68, v70, v71, v72, v73, v74, @"%@ %@", v69, v67);

  return v75;
}

- (id)UUIDDescription
{
  v7 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4, v5);
  if (objc_msgSend_count(self->mInfos, v8, v9, v10, v11, v12))
  {
    v18 = MEMORY[0x277CCACA8];
    v19 = objc_msgSend_count(self->mInfos, v13, v14, v15, v16, v17);
    v25 = objc_msgSend_p_UUIDDescriptionsForInfosSet_(self, v20, v21, v22, v23, v24, self->mInfos);
    v31 = objc_msgSend_stringWithFormat_(v18, v26, v27, v28, v29, v30, @"infos (%u) %@", v19, v25);
    objc_msgSend_addObject_(v7, v32, v33, v34, v35, v36, v31);
  }

  if (objc_msgSend_count(self->mExcludedInfos, v13, v14, v15, v16, v17))
  {
    v42 = MEMORY[0x277CCACA8];
    v43 = objc_msgSend_count(self->mExcludedInfos, v37, v38, v39, v40, v41);
    v49 = objc_msgSend_p_UUIDDescriptionsForInfosSet_(self, v44, v45, v46, v47, v48, self->mExcludedInfos);
    v55 = objc_msgSend_stringWithFormat_(v42, v50, v51, v52, v53, v54, @"excluded (%u) %@", v43, v49);
    objc_msgSend_addObject_(v7, v56, v57, v58, v59, v60, v55);
  }

  if (objc_msgSend_count(self->mAdditionalInfos, v37, v38, v39, v40, v41))
  {
    v66 = MEMORY[0x277CCACA8];
    v67 = objc_msgSend_count(self->mAdditionalInfos, v61, v62, v63, v64, v65);
    v73 = objc_msgSend_p_UUIDDescriptionsForInfosSet_(self, v68, v69, v70, v71, v72, self->mAdditionalInfos);
    v79 = objc_msgSend_stringWithFormat_(v66, v74, v75, v76, v77, v78, @"additional (%u) %@", v67, v73);
    objc_msgSend_addObject_(v7, v80, v81, v82, v83, v84, v79);
  }

  v85 = objc_msgSend_componentsJoinedByString_(v7, v61, v62, v63, v64, v65, @", ");
  v86 = MEMORY[0x277CCACA8];
  v95.receiver = self;
  v95.super_class = TPCanvasSelection;
  v87 = [(TSWPSelection *)&v95 description];
  v93 = objc_msgSend_stringWithFormat_(v86, v88, v89, v90, v91, v92, @"%@ %@", v87, v85);

  return v93;
}

- (id)p_UUIDDescriptionsForInfosSet:(id)set
{
  v63 = *MEMORY[0x277D85DE8];
  setCopy = set;
  v3 = objc_alloc(MEMORY[0x277CBEB58]);
  v9 = objc_msgSend_count(setCopy, v4, v5, v6, v7, v8);
  v10.n128_u64[0] = 10.0;
  v11.n128_f64[0] = fmin(v9, 10.0);
  v15 = objc_msgSend_initWithCapacity_(v3, v12, v11, v10, v13, v14, v11.n128_f64[0]);
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = setCopy;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, v17, v18, v19, v20, &v58, v62, 16);
  if (v21)
  {
    v56 = 0;
    v22 = *v59;
LABEL_3:
    v23 = 0;
    v24 = v56 <= 0xA;
    v25 = 10 - v56;
    v56 += v21;
    if (v24)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    while (1)
    {
      if (*v59 != v22)
      {
        objc_enumerationMutation(obj);
      }

      if (v26 == v23)
      {
        break;
      }

      v27 = *(*(&v58 + 1) + 8 * v23);
      objc_opt_class();
      v28 = TSUCheckedDynamicCast();
      v34 = objc_msgSend_objectUUIDPath(v28, v29, v30, v31, v32, v33);
      v35 = MEMORY[0x277CCACA8];
      v36 = objc_opt_class();
      v38 = NSStringFromClass(v36);
      if (v34)
      {
        objc_msgSend_stringWithFormat_(v35, v37, v39, v40, v41, v42, @"%@ %p %@", v38, v27, v34, setCopy);
      }

      else
      {
        objc_msgSend_stringWithFormat_(v35, v37, v39, v40, v41, v42, @"%@ %p", v38, v27);
      }
      v43 = ;
      objc_msgSend_addObject_(v15, v44, v45, v46, v47, v48, v43);

      if (v21 == ++v23)
      {
        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v49, v50, v51, v52, v53, &v58, v62, 16);
        if (v21)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return v15;
}

+ (id)selectionWithInfos:(id)infos
{
  infosCopy = infos;
  v4 = [TPCanvasSelection alloc];
  v10 = objc_msgSend_initWithInfos_(v4, v5, v6, v7, v8, v9, infosCopy);

  return v10;
}

+ (id)emptySelection
{
  v2 = [TPCanvasSelection alloc];
  v8 = objc_msgSend_initWithRange_(v2, v3, v4, v5, v6, v7, *MEMORY[0x277D81490], *(MEMORY[0x277D81490] + 8));

  return v8;
}

- (TPCanvasSelection)initWithTextSelection:(id)selection infos:(id)infos excludedInfos:(id)excludedInfos additionalInfos:(id)additionalInfos
{
  selectionCopy = selection;
  infosCopy = infos;
  excludedInfosCopy = excludedInfos;
  additionalInfosCopy = additionalInfos;
  v16 = objc_msgSend_type(selectionCopy, v11, v12, v13, v14, v15);
  v22 = objc_msgSend_ranges(selectionCopy, v17, v18, v19, v20, v21);
  valid = objc_msgSend_validVisualRanges(selectionCopy, v23, v24, v25, v26, v27);
  v34 = objc_msgSend_styleInsertionBehavior(selectionCopy, v29, v30, v31, v32, v33);
  v40 = objc_msgSend_caretLFAffinity(selectionCopy, v35, v36, v37, v38, v39);
  IsLeadingEdge = objc_msgSend_caretIsLeadingEdge(selectionCopy, v41, v42, v43, v44, v45);
  v52 = objc_msgSend_leadingCharIndex(selectionCopy, v47, v48, v49, v50, v51);
  v58 = objc_msgSend_headCharIndex(selectionCopy, v53, v54, v55, v56, v57);
  v71 = objc_msgSend_tailCharIndex(selectionCopy, v59, v60, v61, v62, v63);
  v69 = objc_msgSend_initWithType_ranges_validVisualRanges_styleInsertionBehavior_caretAffinity_leadingEdge_leadingCharIndex_headCharIndex_tailCharIndex_infos_excludedInfos_additionalInfos_(self, v64, v65, v66, v67, v68, v16, v22, valid, v34, v40, IsLeadingEdge, v52, v58, v71, infosCopy, excludedInfosCopy, additionalInfosCopy);

  return v69;
}

- (id)copyWithNewType:(int64_t)type range:(_NSRange)range
{
  v12.receiver = self;
  v12.super_class = TPCanvasSelection;
  v6 = [(TSWPSelection *)&v12 copyWithNewType:type range:range.location, range.length];
  if (v6)
  {
    objc_msgSend_p_commonCopyTo_(self, v5, v7, v8, v9, v10, v6);
  }

  return v6;
}

- (id)copyWithNewVisualTypeRange:(_NSRange)range head:(unint64_t)head tail:(unint64_t)tail
{
  v13.receiver = self;
  v13.super_class = TPCanvasSelection;
  tail = [(TSWPSelection *)&v13 copyWithNewVisualTypeRange:range.location head:range.length tail:head, tail];
  if (tail)
  {
    objc_msgSend_p_commonCopyTo_(self, v6, v8, v9, v10, v11, tail);
  }

  return tail;
}

- (id)copyWithNewType:(int64_t)type
{
  v11.receiver = self;
  v11.super_class = TPCanvasSelection;
  v5 = [(TSWPSelection *)&v11 copyWithNewType:type];
  if (v5)
  {
    objc_msgSend_p_commonCopyTo_(self, v4, v6, v7, v8, v9, v5);
  }

  return v5;
}

- (id)copyWithNewRange:(_NSRange)range
{
  v11.receiver = self;
  v11.super_class = TPCanvasSelection;
  v5 = [(TSWPSelection *)&v11 copyWithNewRange:range.location, range.length];
  if (v5)
  {
    objc_msgSend_p_commonCopyTo_(self, v4, v6, v7, v8, v9, v5);
  }

  return v5;
}

- (id)copyWithNewStyleInsertionBehavior:(int64_t)behavior newCaretAffinity:(int64_t)affinity
{
  v12.receiver = self;
  v12.super_class = TPCanvasSelection;
  v6 = [(TSWPSelection *)&v12 copyWithNewStyleInsertionBehavior:behavior newCaretAffinity:affinity];
  if (v6)
  {
    objc_msgSend_p_commonCopyTo_(self, v5, v7, v8, v9, v10, v6);
  }

  return v6;
}

- (id)copyWithVisualRanges:(id)ranges headCharIndex:(unint64_t)index tailCharIndex:(unint64_t)charIndex rightToLeft:(BOOL)left sameLine:(BOOL)line
{
  v15.receiver = self;
  v15.super_class = TPCanvasSelection;
  v9 = [(TSWPSelection *)&v15 copyWithVisualRanges:ranges headCharIndex:index tailCharIndex:charIndex rightToLeft:left sameLine:line];
  if (v9)
  {
    objc_msgSend_p_commonCopyTo_(self, v8, v10, v11, v12, v13, v9);
  }

  return v9;
}

- (NSSet)infos
{
  v7 = objc_msgSend_setWithSet_(MEMORY[0x277CBEB58], a2, v2, v3, v4, v5, self->mInfos);
  objc_msgSend_minusSet_(v7, v8, v9, v10, v11, v12, self->mExcludedInfos);
  objc_msgSend_unionSet_(v7, v13, v14, v15, v16, v17, self->mAdditionalInfos);

  return v7;
}

- (unint64_t)infoCount
{
  v6 = objc_msgSend_infos(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_count(v6, v7, v8, v9, v10, v11);

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v35.receiver = self;
  v35.super_class = TPCanvasSelection;
  if ([(TSWPSelection *)&v35 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = objc_msgSend_infos(self, v5, v6, v7, v8, v9);
    objc_opt_class();
    v11 = TSUDynamicCast();
    if (objc_msgSend_count(v10, v12, v13, v14, v15, v16))
    {
      v22 = objc_msgSend_infos(v11, v17, v18, v19, v20, v21);
      isEqual = objc_msgSend_isEqual_(v10, v23, v24, v25, v26, v27, v22);
    }

    else
    {
      v22 = objc_msgSend_infos(v11, v17, v18, v19, v20, v21);
      isEqual = objc_msgSend_count(v22, v29, v30, v31, v32, v33) == 0;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x277D811E8]);
  v48.receiver = self;
  v48.super_class = TPCanvasSelection;
  v4 = [(TSWPSelection *)&v48 hash];
  objc_msgSend_addUnsignedInteger_(v3, v5, v6, v7, v8, v9, v4);
  v15 = objc_msgSend_infos(self, v10, v11, v12, v13, v14);
  v21 = objc_msgSend_allObjects(v15, v16, v17, v18, v19, v20);
  v27 = objc_msgSend_mutableCopy(v21, v22, v23, v24, v25, v26);

  objc_msgSend_sortUsingComparator_(v27, v28, v29, v30, v31, v32, &unk_288501158);
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = sub_275FDCA84;
  v46[3] = &unk_27A6A8690;
  v33 = v3;
  v47 = v33;
  objc_msgSend_enumerateObjectsUsingBlock_(v27, v34, v35, v36, v37, v38, v46);
  v44 = objc_msgSend_hashValue(v33, v39, v40, v41, v42, v43);

  return v44;
}

- (BOOL)containsKindOfClass:(Class)class
{
  v27 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = objc_msgSend_infos(self, a2, 0, v3, v4, v5, 0, 0);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, v8, v9, v10, v11, &v22, v26, 16);
  if (v12)
  {
    v13 = *v23;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v6);
        }

        if (objc_opt_isKindOfClass())
        {
          v20 = 1;
          goto LABEL_11;
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v15, v16, v17, v18, v19, &v22, v26, 16);
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v20 = 0;
LABEL_11:

  return v20;
}

- (NSSet)unlockedInfos
{
  v6 = objc_msgSend_infos(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_objectsPassingTest_(v6, v7, v8, v9, v10, v11, &unk_288501178);

  return v12;
}

- (unint64_t)unlockedInfoCount
{
  v6 = objc_msgSend_unlockedInfos(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_count(v6, v7, v8, v9, v10, v11);

  return v12;
}

- (BOOL)containsUnlockedKindOfClass:(Class)class
{
  v28 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = objc_msgSend_infos(self, a2, 0, v3, v4, v5, 0);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, v8, v9, v10, v11, &v23, v27, 16);
  if (v12)
  {
    v13 = *v24;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v6);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_msgSend_isLocked(v15, v16, v17, v18, v19, v20) & 1) == 0)
        {
          v21 = 1;
          goto LABEL_12;
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v16, v17, v18, v19, v20, &v23, v27, 16);
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v21 = 0;
LABEL_12:

  return v21;
}

- (id)infosOfClass:(Class)class
{
  v8 = objc_msgSend_infos(self, a2, v3, v4, v5, v6);
  v16[0] = MEMORY[0x277D85DD0];
  v9.n128_u64[0] = 3221225472;
  v16[1] = 3221225472;
  v16[2] = sub_275FDCF30;
  v16[3] = &unk_27A6A86D0;
  v16[4] = class;
  v14 = objc_msgSend_objectsPassingTest_(v8, v10, v9, v11, v12, v13, v16);

  return v14;
}

- (id)copyIncludingInfo:(id)info
{
  infoCopy = info;
  if (objc_msgSend_isInsertionPoint(self, v5, v6, v7, v8, v9))
  {
    v15 = objc_msgSend_copyWithNewRange_(self, v10, v11, v12, v13, v14, *MEMORY[0x277D81490], *(MEMORY[0x277D81490] + 8));
  }

  else
  {
    v15 = objc_msgSend_copy(self, v10, v11, v12, v13, v14);
  }

  v21 = v15;
  if (objc_msgSend_isFloatingAboveText(infoCopy, v16, v17, v18, v19, v20) & 1) != 0 || (objc_msgSend_isAttachedToBodyText(infoCopy, v22, v23, v24, v25, v26))
  {
    v27 = 0;
    v28 = 1;
  }

  else
  {
    objc_opt_class();
    v34 = objc_msgSend_owningAttachmentNoRecurse(infoCopy, v29, v30, v31, v32, v33);
    v35 = TSUDynamicCast();
    v27 = objc_msgSend_parentStorage(v35, v36, v37, v38, v39, v40);

    v28 = 0;
  }

  v74 = MEMORY[0x277D85DD0];
  v75 = 3221225472;
  v76 = sub_275FDD1FC;
  v77 = &unk_27A6A86F8;
  v79 = v28;
  v41 = v27;
  v78 = v41;
  v42 = _Block_copy(&v74);
  v42[2](v42, (v21 + 11));
  v42[2](v42, (v21 + 12));
  v42[2](v42, (v21 + 13));
  v48 = v21[12];
  if (v48)
  {
    v49 = objc_msgSend_mutableCopy(v48, v43, v44, v45, v46, v47, v74, v75, v76, v77);
    objc_msgSend_removeObject_(v49, v50, v51, v52, v53, v54, infoCopy, v74, v75, v76, v77);
  }

  else
  {
    v49 = 0;
    objc_msgSend_removeObject_(0, v43, v44, v45, v46, v47, infoCopy, v74, v75, v76, v77);
  }

  v60 = objc_msgSend_copy(v49, v55, v56, v57, v58, v59);
  v61 = v21[12];
  v21[12] = v60;

  v62 = v21[13];
  if (v62)
  {
    v63 = v62;
  }

  else
  {
    v63 = objc_alloc_init(MEMORY[0x277CBEB98]);
  }

  v69 = v63;
  v70 = objc_msgSend_setByAddingObject_(v63, v64, v65, v66, v67, v68, infoCopy);
  v71 = v21[13];
  v21[13] = v70;

  v72 = v21;
  return v72;
}

- (id)copyExcludingInfo:(id)info
{
  infoCopy = info;
  v11 = objc_msgSend_copy(self, v5, v6, v7, v8, v9);
  v16 = v11[13];
  if (v16)
  {
    v17 = objc_msgSend_mutableCopy(v16, v10, v12, v13, v14, v15);
    objc_msgSend_removeObject_(v17, v18, v19, v20, v21, v22, infoCopy);
  }

  else
  {
    v17 = 0;
    objc_msgSend_removeObject_(0, v10, v12, v13, v14, v15, infoCopy);
  }

  v28 = objc_msgSend_copy(v17, v23, v24, v25, v26, v27);
  v29 = v11[13];
  v11[13] = v28;

  v30 = v11[12];
  if (v30)
  {
    v31 = v30;
  }

  else
  {
    v31 = objc_alloc_init(MEMORY[0x277CBEB98]);
  }

  v37 = v31;
  v38 = objc_msgSend_setByAddingObject_(v31, v32, v33, v34, v35, v36, infoCopy);
  v39 = v11[12];
  v11[12] = v38;

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v28.receiver = self;
  v28.super_class = TPCanvasSelection;
  v6 = [(TSWPSelection *)&v28 copyWithZone:?];
  if (v6)
  {
    v11 = objc_msgSend_copyWithZone_(self->mInfos, v5, v7, v8, v9, v10, zone);
    v12 = v6[11];
    v6[11] = v11;

    v18 = objc_msgSend_copyWithZone_(self->mExcludedInfos, v13, v14, v15, v16, v17, zone);
    v19 = v6[12];
    v6[12] = v18;

    v25 = objc_msgSend_copyWithZone_(self->mAdditionalInfos, v20, v21, v22, v23, v24, zone);
    v26 = v6[13];
    v6[13] = v25;
  }

  return v6;
}

- (TPCanvasSelection)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 26) < 1)
  {
    v25 = MEMORY[0x277D80EE8];
    v26 = TSPNSRangeFromMessage();
    v19 = objc_msgSend_rangeArrayWithRange_(v25, v27, v28, v29, v30, v31, v26, v27);
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277D80EA8]);
    if (*(archive + 26) >= 1)
    {
      v12 = 0;
      do
      {
        sub_275FDE414(archive + 96, v12);
        v13 = TSPNSRangeFromMessage();
        objc_msgSend_addRange_(v7, v14, v15, v16, v17, v18, v13, v14);
        ++v12;
      }

      while (v12 < *(archive + 26));
    }

    v19 = objc_msgSend_copy(v7, v6, v8, v9, v10, v11);
  }

  v32 = objc_msgSend_rangeAtIndex_(v19, v20, v21, v22, v23, v24, 0);
  objc_msgSend_superRange(v19, v33, v34, v35, v36, v37);
  if (v38)
  {
    v43 = 1;
  }

  else
  {
    v43 = objc_msgSend_rangeAtIndex_(v19, 0, v39, v40, v41, v42, 0) == *MEMORY[0x277D81490] && v38 == *(MEMORY[0x277D81490] + 8);
  }

  v90 = v43;
  v45 = *(archive + 4);
  v46 = archive + 156;
  if ((v45 & 0x80) == 0)
  {
    v46 = archive + 136;
  }

  v47 = *v46;
  if (v47)
  {
    v48 = v47;
  }

  else
  {
    v48 = 8;
  }

  v49 = *(archive + 36);
  v89 = *(archive + 35);
  v50 = (*(archive + 4) & 0x20) == 0;
  v51 = *(archive + 148);
  if ((v45 & 0x40) != 0)
  {
    v32 = TSPNSUIntegerFromUInt32();
  }

  v52 = objc_msgSend_superRange(v19, v38, v39, v40, v41, v42);
  v58 = objc_msgSend_superRange(v19, v53, v54, v55, v56, v57);
  valid = objc_msgSend_initWithType_ranges_validVisualRanges_styleInsertionBehavior_caretAffinity_leadingEdge_leadingCharIndex_headCharIndex_tailCharIndex_infos_excludedInfos_additionalInfos_(self, v59, v60, v61, v62, v63, v48, v19, (v48 == 7) & v90, v89, v49, (v50 | v51) & 1, v32, v52, &v59[v58], 0, 0, 0);
  if (valid)
  {
    if (*(archive + 16))
    {
      v75 = TSPNSRangeFromMessage();
      objc_msgSend_setVisualDefinitionRange_(valid, v76, v77, v78, v79, v80, v75, v76);
    }

    else
    {
      objc_msgSend_setVisualDefinitionRange_(valid, v64, v66, v67, v68, v69, *MEMORY[0x277D81490], *(MEMORY[0x277D81490] + 8));
    }

    objc_msgSend_setI_validVisualRanges_(valid, v70, v71, v72, v73, v74, 0);
    objc_msgSend_i_setHeadCharIndex_tailCharIndex_(valid, v81, v82, v83, v84, v85, 0x7FFFFFFFFFFFFFFFLL, 0x7FFFFFFFFFFFFFFFLL);
    v96[0] = MEMORY[0x277D85DD0];
    v96[1] = 3221225472;
    v96[2] = sub_275FDDAC0;
    v96[3] = &unk_27A6A8508;
    v86 = valid;
    v97 = v86;
    sub_275FDDA14(unarchiverCopy, archive + 24, &unk_2885108A0, v96);
    v94[0] = MEMORY[0x277D85DD0];
    v94[1] = 3221225472;
    v94[2] = sub_275FDDB6C;
    v94[3] = &unk_27A6A8508;
    v87 = v86;
    v95 = v87;
    sub_275FDDA14(unarchiverCopy, archive + 48, &unk_2885108A0, v94);
    v92[0] = MEMORY[0x277D85DD0];
    v92[1] = 3221225472;
    v92[2] = sub_275FDDC18;
    v92[3] = &unk_27A6A8508;
    v93 = v87;
    sub_275FDDA14(unarchiverCopy, archive + 72, &unk_2885108A0, v92);
  }

  return valid;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  if (objc_msgSend_type(self, v7, v8, v9, v10, v11) == 8)
  {
    v17 = 0;
  }

  else
  {
    v17 = objc_msgSend_type(self, v12, v13, v14, v15, v16);
  }

  *(archive + 4) |= 4u;
  *(archive + 34) = v17;
  v18 = objc_msgSend_type(self, v12, v13, v14, v15, v16);
  *(archive + 4) |= 0x80u;
  *(archive + 39) = v18;
  v24 = objc_msgSend_ranges(self, v19, v20, v21, v22, v23);
  v75[0] = MEMORY[0x277D85DD0];
  v25.n128_u64[0] = 3221225472;
  v75[1] = 3221225472;
  v75[2] = sub_275FDDED0;
  v75[3] = &unk_27A6A8718;
  v75[4] = archive;
  objc_msgSend_enumerateRanges_(v24, v26, v25, v27, v28, v29, v75);

  objc_msgSend_visualDefinitionRange(self, v30, v31, v32, v33, v34);
  *(archive + 4) |= 1u;
  if (!*(archive + 15))
  {
    v35 = *(archive + 1);
    if (v35)
    {
      v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
    }

    *(archive + 15) = MEMORY[0x277C92D40](v35);
  }

  TSPNSRangeCopyToMessage();
  v41 = objc_msgSend_styleInsertionBehavior(self, v36, v37, v38, v39, v40);
  *(archive + 4) |= 8u;
  *(archive + 35) = v41;
  v47 = objc_msgSend_caretLFAffinity(self, v42, v43, v44, v45, v46);
  *(archive + 4) |= 0x10u;
  *(archive + 36) = v47;
  IsLeadingEdge = objc_msgSend_caretIsLeadingEdge(self, v48, v49, v50, v51, v52);
  *(archive + 4) |= 0x20u;
  *(archive + 148) = IsLeadingEdge;
  objc_msgSend_leadingCharIndex(self, v54, v55, v56, v57, v58);
  v59 = TSPUInt32FromNSUInteger();
  *(archive + 4) |= 0x40u;
  *(archive + 38) = v59;
  objc_msgSend_setWeakReferenceSet_message_(archiverCopy, v60, v61, v62, v63, v64, self->mInfos, archive + 24);
  objc_msgSend_setWeakReferenceSet_message_(archiverCopy, v65, v66, v67, v68, v69, self->mExcludedInfos, archive + 48);
  objc_msgSend_setWeakReferenceSet_message_(archiverCopy, v70, v71, v72, v73, v74, self->mAdditionalInfos, archive + 72);
}

- (void)p_commonCopyTo:(id)to
{
  toCopy = to;
  v9 = objc_msgSend_copy(self->mInfos, v4, v5, v6, v7, v8);
  v10 = toCopy[11];
  toCopy[11] = v9;

  v16 = objc_msgSend_copy(self->mExcludedInfos, v11, v12, v13, v14, v15);
  v17 = toCopy[12];
  toCopy[12] = v16;

  v23 = objc_msgSend_copy(self->mAdditionalInfos, v18, v19, v20, v21, v22);
  v24 = toCopy[13];
  toCopy[13] = v23;
}

@end
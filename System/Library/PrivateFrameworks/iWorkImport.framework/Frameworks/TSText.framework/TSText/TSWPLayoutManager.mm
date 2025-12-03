@interface TSWPLayoutManager
+ (void)fixColumnBoundsForTarget:(id)target storage:(id)storage charIndex:(unint64_t)index firstColumnIndex:(unint64_t)columnIndex precedingHeight:(double)height height:(double)a8 alreadyHasMargins:(BOOL)margins styleProvider:(id)self0;
+ (void)setTransformForColumn:(id)column andInvalidateWPRect:(CGRect)rect inTarget:(id)target;
+ (void)setTransformForColumn:(id)column inTarget:(id)target metrics:(id)metrics;
- (BOOL)needsLayoutInColumn:(id)column;
- (TSWPCTTypesetterCache)typesetterCache;
- (TSWPLayoutManager)initWithStorage:(id)storage owner:(id)owner;
- (TSWPLayoutOwner)owner;
- (id)layoutMetricsCache;
- (id)styleProvider;
- (unint64_t)p_layoutConfigFlagsForTarget:(id)target;
- (void)clearOwner;
- (void)dealloc;
- (void)deflateTarget:(id)target intoHints:(id)hints childHints:(id)childHints anchoredDrawablePositions:(id *)positions startingPartitionedAttachments:(id *)attachments topicNumberHints:(id *)numberHints layoutState:(void *)state;
- (void)destroyLayoutState:(void *)state;
- (void)inflateTarget:(id)target fromHints:(id)hints childHint:(id)hint anchoredDrawablePositions:(id)positions footnoteLayoutRange:(_NSRange)range;
- (void)layOutIntoTarget:(id)target withLayoutState:(void *)state outSync:(BOOL *)sync;
- (void)layoutStateForLayoutAfterHint:(id)hint firstTarget:(id)target childHint:(id)childHint;
- (void)layoutStateForLayoutWithHint:(id)hint firstTarget:(id)target;
- (void)p_dirtyEverything;
- (void)resetDirtyRange;
- (void)storage:(id)storage didChangeRange:(_NSRange)range delta:(int64_t)delta broadcastKind:(unint64_t)kind;
- (void)willRemoveAttachmentLayout:(id)layout;
@end

@implementation TSWPLayoutManager

- (TSWPLayoutManager)initWithStorage:(id)storage owner:(id)owner
{
  storageCopy = storage;
  ownerCopy = owner;
  v47.receiver = self;
  v47.super_class = TSWPLayoutManager;
  v9 = [(TSWPLayoutManager *)&v47 init];
  v10 = v9;
  v11 = v9;
  if (v9)
  {
    if (!storageCopy)
    {
      TSUSetCrashReporterInfo();
      v41 = MEMORY[0x277D81150];
      v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "[TSWPLayoutManager initWithStorage:owner:]", "[TSWPLayoutManager initWithStorage:owner:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutManager.mm", 82);
      v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutManager.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v46, v43, v45, 82, 1, "Cannot initialize with a nil storage.");

      TSUCrashBreakpoint();
      abort();
    }

    objc_storeStrong(&v9->_storage, storage);
    objc_storeWeak(&v10->_owner, ownerCopy);
    if (!ownerCopy || (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend_layoutIsStatic(ownerCopy, v12, v14))
    {
      if (objc_msgSend_caresAboutStorageChanges(ownerCopy, v12, v13))
      {
        v16 = MEMORY[0x277D81150];
        v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSWPLayoutManager initWithStorage:owner:]");
        v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutManager.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 94, 0, "caresAboutStorageChanges should be NO");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
      }
    }

    else
    {
      objc_msgSend_addObserver_(v11->_storage, v12, v11);
      v11->_isObservingStorage = 1;
    }

    if (objc_opt_respondsToSelector())
    {
      v24 = objc_msgSend_topicNumbersForStorage_(ownerCopy, v23, storageCopy);
      topicNumbers = v11->_topicNumbers;
      v11->_topicNumbers = v24;
    }

    if (!v11->_topicNumbers)
    {
      v26 = [TSWPTopicNumbers alloc];
      v28 = objc_msgSend_initWithStorage_(v26, v27, v10->_storage);
      v29 = v11->_topicNumbers;
      v11->_topicNumbers = v28;

      if (!v11->_topicNumbers)
      {
        v31 = MEMORY[0x277D81150];
        v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "[TSWPLayoutManager initWithStorage:owner:]");
        v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutManager.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v35, v32, v34, 107, 0, "invalid nil value for '%{public}s'", "_topicNumbers");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37);
      }
    }

    v38 = objc_opt_new();
    dirtyRanges = v11->_dirtyRanges;
    v11->_dirtyRanges = v38;
  }

  return v11;
}

- (void)dealloc
{
  objc_msgSend_clearOwner(self, a2, v2);
  v4.receiver = self;
  v4.super_class = TSWPLayoutManager;
  [(TSWPLayoutManager *)&v4 dealloc];
}

- (id)styleProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  v10 = &unk_288638918;
  v4 = TSUProtocolCast();

  if (v4)
  {
    if (objc_msgSend_wantsToProvideStylesForTextLayout_(v4, v5, 0, &unk_288638918))
    {
      v8 = objc_msgSend_styleProvider(v4, v6, v7);

      goto LABEL_6;
    }
  }

  v8 = objc_msgSend_styleProviderForStorage_(TSWPStorageStyleProvider, v5, self->_storage, v10);
LABEL_6:

  return v8;
}

- (void)clearOwner
{
  objc_storeWeak(&self->_owner, 0);
  if (self->_isObservingStorage)
  {
    objc_msgSend_removeObserver_(self->_storage, v3, self);
    self->_isObservingStorage = 0;

    objc_msgSend_clearTypesetterCache(self, v4, v5);
  }
}

- (void)resetDirtyRange
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  v6 = objc_msgSend_caresAboutStorageChanges(WeakRetained, v4, v5);

  if (v6)
  {
    v9 = objc_loadWeakRetained(&self->_owner);
    objc_msgSend_didLayoutChangingDirtyRanges(v9, v10, v11);
  }

  dirtyRanges = self->_dirtyRanges;

  objc_msgSend_clear(dirtyRanges, v7, v8);
}

- (void)storage:(id)storage didChangeRange:(_NSRange)range delta:(int64_t)delta broadcastKind:(unint64_t)kind
{
  length = range.length;
  location = range.location;
  storageCopy = storage;
  if (self->_isLayingOut)
  {
    if (kind != 2)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSWPLayoutManager storage:didChangeRange:delta:broadcastKind:]");
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutManager.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 194, 0, "Unexpected storage changes while laying out");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
    }

    goto LABEL_19;
  }

  objc_msgSend_addChangedRange_delta_allowEmpty_(self->_dirtyRanges, v11, location, length, delta, 1);
  if (kind == 2)
  {
    goto LABEL_11;
  }

  if (kind == 1 && delta == length)
  {
    if (location < location + length)
    {
      v22 = location;
      do
      {
        v23 = objc_msgSend_characterAtIndex_(storageCopy, v20, v22);
        if (IsParagraphBreakingCharacter(v23))
        {
          goto LABEL_13;
        }

        ++v22;
      }

      while (--length);
    }

LABEL_11:
    if (storageCopy)
    {
      objc_msgSend_paragraphEnumeratorAtCharIndex_styleProvider_(storageCopy, v20, location, 0);
    }

    else
    {
      memset(&v34, 0, sizeof(v34));
    }

    typesetterCache = self->_typesetterCache;
    v25 = TSWPParagraphEnumerator::relevantParagraphIndex(&v34);
    objc_msgSend_removeTypesetterForParagraphIndex_(typesetterCache, v26, v25);
    TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v34);
    goto LABEL_16;
  }

LABEL_13:
  objc_msgSend_clearCache(self->_typesetterCache, v20, v21);
LABEL_16:
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  v30 = objc_msgSend_caresAboutStorageChanges(WeakRetained, v28, v29);

  if (v30)
  {
    v32 = objc_loadWeakRetained(&self->_owner);
    objc_msgSend_layoutManagerNeedsLayout_(v32, v33, self);
  }

  objc_msgSend_invalidateFromCharIndex_(self->_topicNumbers, v31, location, *&v34.var0, *&v34.var2, *&v34.var4, *&v34.var6, v34.var7.length);
LABEL_19:
}

- (void)willRemoveAttachmentLayout:(id)layout
{
  v4 = objc_msgSend_info(layout, a2, layout);
  v7 = objc_msgSend_owningAttachment(v4, v5, v6);

  CharIndex = objc_msgSend_findCharIndex(v7, v8, v9);
  storage = self->_storage;
  if (storage)
  {
    objc_msgSend_paragraphEnumeratorAtCharIndex_styleProvider_(storage, v10, CharIndex, 0);
  }

  else
  {
    memset(&v16, 0, sizeof(v16));
  }

  typesetterCache = self->_typesetterCache;
  v14 = TSWPParagraphEnumerator::relevantParagraphIndex(&v16);
  objc_msgSend_removeTypesetterForParagraphIndex_(typesetterCache, v15, v14);
  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v16);
}

- (id)layoutMetricsCache
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_owner);
    v7 = objc_msgSend_metricsCacheForStorage_(v5, v6, self->_storage);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)needsLayoutInColumn:(id)column
{
  v4 = objc_msgSend_range(column, a2, column);
  v6 = v5;
  v8 = objc_msgSend_superRange(self->_dirtyRanges, v5, v7);
  v10 = 0;
  if (v6)
  {
    v11 = v8;
    if (v8 <= 0x7FFFFFFFFFFFFFFELL)
    {
      v12 = &v6[v4];
      if (&v6[v4] && ((v15 = objc_msgSend_characterAtIndex_(self->_storage, v9, (v12 - 1)) - 4, v15 >= 0xC) || ((0x907u >> v15) & 1) == 0))
      {
        v16 = objc_msgSend_styleProvider(self, v13, v14);
        v18 = objc_msgSend_paragraphIndexAtCharIndex_(self->_storage, v17, v11);
        v20 = objc_msgSend_paragraphStyleAtParIndex_effectiveRange_(v16, v19, v18, v31);

        v23 = v31[0];
        v10 = v31[0] <= v12 && objc_msgSend_intValueForProperty_(v20, v21, 92) != 0;
        if (v23 == v12 && !v10)
        {
          v10 = objc_msgSend_intValueForProperty_(v20, v21, 89) != 0;
        }

        if (!v10 && v31[0] > v12)
        {
          v10 = 0;
          v24 = v20;
          do
          {
            v25 = objc_msgSend_styleProvider(self, v21, v22);
            v27 = objc_msgSend_paragraphIndexAtCharIndex_(self->_storage, v26, v31[0] - 1);
            v20 = objc_msgSend_paragraphStyleAtParIndex_effectiveRange_(v25, v28, v27, v31);

            if (!objc_msgSend_intValueForProperty_(v20, v29, 90))
            {
              break;
            }

            v24 = v20;
            v10 = v31[0] == v12;
          }

          while (v31[0] > v12);
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return v10;
}

- (void)layOutIntoTarget:(id)target withLayoutState:(void *)state outSync:(BOOL *)sync
{
  v168 = *MEMORY[0x277D85DE8];
  targetCopy = target;
  if (!state)
  {
    objc_msgSend_p_layoutConfigFlagsForTarget_(self, v8, targetCopy);
    operator new();
  }

  self->_layoutFinished = 0;
  self->_isLayingOut = 1;
  v12 = objc_opt_respondsToSelector();
  if (v12)
  {
    v13 = objc_msgSend_array(MEMORY[0x277CBEB18], v10, v11);
    objc_msgSend_setAnchoredDrawablesForRelayout_(targetCopy, v14, v13);
  }

  isLayoutOffscreen = objc_msgSend_isLayoutOffscreen(targetCopy, v10, v11);
  if (isLayoutOffscreen)
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend_canvas(targetCopy, v15, v16), v18 = objc_claimAutoreleasedReturnValue(), MustIncludeAdornments = objc_msgSend_textLayoutMustIncludeAdornments(v18, v19, v20), v18, MustIncludeAdornments))
    {
      v22 = 2752512;
    }

    else
    {
      v22 = 0x20000;
    }
  }

  else
  {
    v22 = 2621441;
  }

  if (isLayoutOffscreen)
  {
    v23 = v22;
  }

  else
  {
    v23 = v22 | 0x100000;
  }

  v157 = objc_msgSend_documentRoot(self->_storage, v15, v16);
  if (!v157 || objc_msgSend_useOptimizedTextVerticalAlignment(v157, v24, v25))
  {
    v23 |= 0x80uLL;
  }

  v156 = *(state + 3);
  if (v156 != self)
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSWPLayoutManager layOutIntoTarget:withLayoutState:outSync:]");
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutManager.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v31, v28, v30, 396, 0, "Layout manager mismatch");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
  }

  v159 = sub_276D74AAC(state, targetCopy, v23, sync);
  if (v12)
  {
    objc_msgSend_setAnchoredDrawablesForRelayout_(targetCopy, v34, 0);
  }

  dirtyRanges = self->_dirtyRanges;
  v37 = objc_msgSend_columns(targetCopy, v34, v35);
  v39 = objc_msgSend_rangeOfColumns_(TSWPColumn, v38, v37);
  v41 = objc_msgSend_dirtyRangesIntersecting_(dirtyRanges, v40, v39, v40);

  v158 = v41;
  if ((objc_msgSend_isEmpty(v41, v42, v43) & 1) == 0)
  {
    v46 = objc_msgSend_superRange(v41, v44, v45);
    v48 = v47;
    v50 = objc_msgSend_columns(targetCopy, v47, v49);
    v53 = objc_msgSend_lastObject(v50, v51, v52);

    if (v53)
    {
      v56 = objc_msgSend_range(v53, v54, v55);
      v59 = &v57[v56];
      if (&v57[v56] > v46)
      {
        v60 = &v48[v46];
        v61 = &v60[-v59];
        if (v60 <= v59)
        {
          objc_msgSend_subtract_(self->_dirtyRanges, v57, v158);
          WeakRetained = objc_loadWeakRetained(&self->_owner);
          v72 = objc_msgSend_delta(v158, v70, v71);
          objc_msgSend_layoutManager_didClearDirtyRangeWithDelta_afterCharIndex_(WeakRetained, v73, self, v72, v60);
        }

        else
        {
          v62 = objc_msgSend_delta(v158, v57, v58);
          objc_msgSend_subtract_(self->_dirtyRanges, v63, v158);
          v64 = self->_dirtyRanges;
          sub_276E30470(v59, v61, v62, &v166);
          objc_msgSend_addRange_(v64, v65, &v166);
          v66 = objc_loadWeakRetained(&self->_owner);
          objc_msgSend_didLayoutChangingDirtyRanges(v66, v67, v68);
        }

        v74 = self->_dirtyRanges;
        v77 = objc_msgSend_copy(v74, v75, v76);
        v78 = *(state + 113);
        *(state + 113) = v77;

        if (*(state + 912))
        {
          v81 = 1;
        }

        else
        {
          v81 = objc_msgSend_isEmpty(v74, v79, v80) ^ 1;
        }

        *(state + 912) = v81;
      }
    }
  }

  if ((v159 & 1) == 0)
  {
    (*(*state + 8))(state);
    objc_msgSend_resetDirtyRange(self, v82, v83);
    state = 0;
  }

  if (!objc_msgSend_wpKind(self->_storage, v44, v45))
  {
    v155 = objc_msgSend_columns(targetCopy, v84, v85);
    v87 = objc_msgSend_rangeOfColumns_(TSWPColumn, v86, v155);
    v89 = v88;
    v91 = objc_msgSend_layoutMetricsCache(self, v88, v90);
    v93 = v91;
    if (v89 && v91)
    {
      storage = self->_storage;
      if (storage)
      {
        objc_msgSend_paragraphEnumeratorForCharRange_styleProvider_(storage, v92, v87, v89, 0);
      }

      else
      {
        memset(&v166, 0, sizeof(v166));
      }

      if (TSWPParagraphEnumerator::paragraphTextRange(&v166, v92) >= v87)
      {
        v97 = &v89[v87];
      }

      else
      {
        v96 = TSWPParagraphEnumerator::paragraphTextRange(&v166, v95);
        v97 = &v89[v87];
        if (&v95[v96] < v97)
        {
          TSWPParagraphEnumerator::operator++(&v166, v95);
        }
      }

      while (1)
      {
        v98 = TSWPParagraphEnumerator::paragraphTextRange(&v166, v95);
        if (v98 + v99 > v97)
        {
          break;
        }

        v100 = TSWPParagraphEnumerator::relevantParagraphIndex(&v166);
        v102 = objc_msgSend_paragraphMetricsForParagraphAtIndex_(v93, v101, v100);
        v104 = v102;
        if (v102)
        {
          if ((*v102 & 1) == 0)
          {
            v164 = 0;
            v165 = 0;
            objc_msgSend_layoutSizeForParagraphEnumerator_inColumns_lineCount_nextLineOffset_(TSWPColumn, v103, &v166, v155, &v165, &v164);
            *(v104 + 1) = v105;
            *(v104 + 2) = v106;
            *(v104 + 3) = v165;
            *(v104 + 4) = v164;
            *v104 = 1;
          }
        }

        else
        {
          v107 = MEMORY[0x277D81150];
          v108 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v103, "[TSWPLayoutManager layOutIntoTarget:withLayoutState:outSync:]");
          v110 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v109, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutManager.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v107, v111, v108, v110, 456, 0, "invalid nil value for '%{public}s'", "parMetrics");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v112, v113);
        }

        if (TSWPParagraphEnumerator::isLastParagraph(&v166))
        {
          break;
        }

        TSWPParagraphEnumerator::operator++(&v166, v114);
      }

      TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v166);
    }
  }

  if (objc_msgSend_textIsVertical(targetCopy, v84, v85) && (objc_msgSend_autosizeFlags(targetCopy, v115, v116) & 3) != 0)
  {
    v119 = objc_msgSend_columns(targetCopy, v117, v118);
    if (objc_msgSend_count(v119, v120, v121) != 1)
    {
      v124 = MEMORY[0x277D81150];
      v125 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v122, "[TSWPLayoutManager layOutIntoTarget:withLayoutState:outSync:]");
      v127 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v126, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutManager.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v124, v128, v125, v127, 484, 0, "Autogrow with multiple columns is not supported");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v129, v130);
    }

    v131 = objc_msgSend_firstObject(v119, v122, v123);
    v134 = objc_msgSend_range(v131, v132, v133);
    v136 = objc_msgSend_columnMetricsForCharIndex_outRange_(targetCopy, v135, v134, 0);
    objc_msgSend_setTransformForColumn_inTarget_metrics_(TSWPLayoutManager, v137, v131, targetCopy, v136);
  }

  v138 = objc_loadWeakRetained(&self->_owner);
  v139 = objc_opt_respondsToSelector();

  if (v139)
  {
    v142 = objc_loadWeakRetained(&self->_owner);
    objc_msgSend_didLayoutWithLayoutManager_(v142, v143, self);
  }

  v162 = 0u;
  v163 = 0u;
  v160 = 0u;
  v161 = 0u;
  v144 = objc_msgSend_columns(targetCopy, v140, v141);
  v148 = objc_msgSend_countByEnumeratingWithState_objects_count_(v144, v145, &v160, v167, 16);
  if (v148)
  {
    v149 = *v161;
    do
    {
      for (i = 0; i != v148; ++i)
      {
        if (*v161 != v149)
        {
          objc_enumerationMutation(v144);
        }

        v151 = *(*(&v160 + 1) + 8 * i);
        v152 = objc_msgSend_layoutResultFlags(v151, v146, v147);
        objc_msgSend_setLayoutResultFlags_(v151, v153, v152 | 0x100000000);
      }

      v148 = objc_msgSend_countByEnumeratingWithState_objects_count_(v144, v146, &v160, v167, 16);
    }

    while (v148);
  }

  self->_layoutFinished = v159 ^ 1;
  self->_isLayingOut = 0;

  return state;
}

- (void)layoutStateForLayoutAfterHint:(id)hint firstTarget:(id)target childHint:(id)childHint
{
  hintCopy = hint;
  targetCopy = target;
  childHintCopy = childHint;
  if (hintCopy)
  {
    objc_msgSend_range(hintCopy, v10, v11);
    objc_msgSend_p_layoutConfigFlagsForTarget_(self, v13, targetCopy);
    objc_msgSend_textIsVertical(hintCopy, v14, v15);
    operator new();
  }

  v16 = MEMORY[0x277D81150];
  v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSWPLayoutManager layoutStateForLayoutAfterHint:firstTarget:childHint:]");
  v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutManager.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 507, 0, "bad hint");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
  return 0;
}

- (void)layoutStateForLayoutWithHint:(id)hint firstTarget:(id)target
{
  hintCopy = hint;
  targetCopy = target;
  objc_msgSend_range(hintCopy, v8, v9);
  objc_msgSend_p_layoutConfigFlagsForTarget_(self, v10, targetCopy);
  objc_msgSend_textIsVertical(hintCopy, v11, v12);
  operator new();
}

+ (void)fixColumnBoundsForTarget:(id)target storage:(id)storage charIndex:(unint64_t)index firstColumnIndex:(unint64_t)columnIndex precedingHeight:(double)height height:(double)a8 alreadyHasMargins:(BOOL)margins styleProvider:(id)self0
{
  targetCopy = target;
  storageCopy = storage;
  providerCopy = provider;
  v192 = *MEMORY[0x277D81490];
  v19 = objc_msgSend_columnMetricsForCharIndex_outRange_(targetCopy, v18, index, &v192);
  v186 = objc_msgSend_columnsAreLeftToRight(v19, v20, v21);
  if (v19)
  {
    v24 = objc_msgSend_columnCount(v19, v22, v23);
  }

  else
  {
    v24 = 1;
  }

  v172 = v24 + columnIndex;
  if (!(v24 + columnIndex))
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "+[TSWPLayoutManager fixColumnBoundsForTarget:storage:charIndex:firstColumnIndex:precedingHeight:height:alreadyHasMargins:styleProvider:]");
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutManager.mm");
    v29 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v30, v26, v28, 549, 0, "newColumnCount shouldn't be 0. %{public}@", v29);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32);
  }

  IsVertical = objc_msgSend_textIsVertical(targetCopy, v22, v23);
  v36 = v192 < index || margins;
  v183 = v36;
  v173 = objc_msgSend_padding(TSWPPadding, v33, v34);
  v41 = objc_msgSend_columns(targetCopy, v37, v38);
  v185 = v41;
  if (!v41)
  {
    v42 = MEMORY[0x277D81150];
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "+[TSWPLayoutManager fixColumnBoundsForTarget:storage:charIndex:firstColumnIndex:precedingHeight:height:alreadyHasMargins:styleProvider:]");
    v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutManager.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v46, v43, v45, 560, 0, "invalid nil value for 'columnsArray'");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v47, v48);
  }

  objc_msgSend_currentSize(targetCopy, v39, v40);
  v53 = v51;
  v175 = v52;
  if (IsVertical)
  {
    v51 = v52;
  }

  v177 = v51;
  if (v19)
  {
    objc_msgSend_adjustedInsetsForTarget_(v19, v49, targetCopy);
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v61 = v60;
  }

  else
  {
    v55 = *MEMORY[0x277D81428];
    v57 = *(MEMORY[0x277D81428] + 8);
    v59 = *(MEMORY[0x277D81428] + 16);
    v61 = *(MEMORY[0x277D81428] + 24);
  }

  v181 = objc_msgSend_count(v41, v49, v50);
  v174 = v53;
  v180 = objc_msgSend_pageNumber(targetCopy, v62, v63);
  v66 = v55 + height;
  v67 = v177 - (v61 + v57);
  v68 = a8 - (v59 + v55);
  v69 = v67 < 0.0;
  v70 = v57 + 0.0 + v67;
  if (v67 < 0.0)
  {
    v67 = 0.0;
  }

  rect = v67;
  if ((v69 & IsVertical) != 0)
  {
    v71 = v70;
  }

  else
  {
    v71 = v57 + 0.0;
  }

  v176 = 0.0;
  if (v68 >= 0.0)
  {
    v72 = v68;
  }

  else
  {
    v72 = 0.0;
  }

  if (columnIndex)
  {
    if (v183)
    {
      v73 = objc_msgSend_columns(targetCopy, v64, v65);
      v176 = 0.0;
      if (objc_msgSend_count(v73, v74, v75) <= columnIndex)
      {
        goto LABEL_38;
      }

      v77 = objc_msgSend_objectAtIndexedSubscript_(v73, v76, columnIndex);
      if (!v77)
      {
        goto LABEL_38;
      }

      v193.origin.x = v71;
      v193.origin.y = v66;
      v193.size.width = rect;
      v193.size.height = v72;
      MaxY = CGRectGetMaxY(v193);
      objc_msgSend_frameBounds(v77, v79, v80);
      v66 = v81;
      v72 = MaxY - v81;
      v176 = 0.0;
    }

    else
    {
      v82 = columnIndex - 1;
      while (1)
      {
        objc_opt_class();
        v85 = objc_msgSend_columns(targetCopy, v83, v84);
        v87 = objc_msgSend_objectAtIndexedSubscript_(v85, v86, v82);
        v73 = TSUDynamicCast();

        v90 = objc_msgSend_range(v73, v88, v89);
        if (v91)
        {
          break;
        }

        if (--v82 == -1)
        {
          goto LABEL_39;
        }
      }

      v77 = objc_msgSend_columnMetricsForCharIndex_outRange_(targetCopy, v91, v90, 0);
      v94 = objc_msgSend_layoutMargins(v77, v92, v93);
      v97 = v94;
      if (v94)
      {
        objc_msgSend_bottomInset(v94, v95, v96);
        v176 = v98;
      }

      else
      {
        v176 = 0.0;
      }
    }

LABEL_38:
  }

LABEL_39:
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_layoutMarginsForTarget_(v19, v99, targetCopy);
  }

  else
  {
    objc_msgSend_layoutMargins(v19, v99, v100);
  }
  v101 = ;
  v102 = v101;
  v103 = v173;
  if (v101)
  {
    v103 = v101;
  }

  v104 = v103;
  v107 = v104;
  v171 = v102;
  if (IsVertical)
  {
    objc_msgSend_topInset(v104, v105, v106);
  }

  else if (v186)
  {
    objc_msgSend_leftInset(v104, v105, v106);
  }

  else
  {
    objc_msgSend_rightInset(v104, v105, v106);
  }

  v111 = v110;
  if (v172 > columnIndex)
  {
    v112 = 0;
    columnIndexCopy = columnIndex;
    do
    {
      v191 = rect;
      v190 = 0;
      if (IsVertical)
      {
        objc_msgSend_topInset(v107, v108, v109);
        v115 = v114;
        objc_msgSend_bottomInset(v107, v116, v117);
        v121 = v175;
      }

      else
      {
        objc_msgSend_leftInset(v107, v108, v109);
        v115 = v122;
        objc_msgSend_rightInset(v107, v123, v124);
        v121 = v174;
      }

      v125 = v121 - v115 - v120;
      if (!objc_msgSend_wpKind(storageCopy, v118, v119) || objc_msgSend_wpKind(storageCopy, v126, v127) == 7)
      {
        v125 = fmax(v125, 36.0);
      }

      if (v19)
      {
        objc_msgSend_positionForColumnIndex_bodyWidth_target_outWidth_outGap_(v19, v126, v112, targetCopy, &v191, &v190, v125);
      }

      else
      {
        v128 = 0.0;
      }

      if (v186)
      {
        v129 = v111 + v128;
      }

      else
      {
        v129 = v125 - v111 - v128 - v191;
      }

      v189 = v129;
      if (objc_msgSend_wpKind(storageCopy, v126, v127) && objc_msgSend_wpKind(storageCopy, v130, v131) != 7)
      {
        v132 = v191;
      }

      else
      {
        v132 = fmax(v191, 18.0);
        v191 = v132;
        v133 = v177 + (v24 * -18.0);
        v188 = v133;
        if (v186)
        {
          v134 = v133 < v129;
          v135 = &v189;
          v136 = &v188;
        }

        else
        {
          v187 = v177 - v133 + -18.0;
          v134 = v129 < v187;
          v135 = &v189;
          v136 = &v187;
        }

        if (v134)
        {
          v135 = v136;
        }

        v129 = *v135;
        v189 = *v135;
      }

      v137 = v72;
      v138 = v66;
      if (!v183)
      {
        if (IsVertical)
        {
          objc_msgSend_rightInset(v107, v130, v131);
          v140 = v139;
          objc_msgSend_maxSize(targetCopy, v141, v142);
          v144 = v143;
        }

        else
        {
          objc_msgSend_topInset(v107, v130, v131);
          v140 = v145;
          objc_msgSend_maxSize(targetCopy, v146, v147);
          v144 = v148;
        }

        v138 = v66 + v176 + v140;
        v194.origin.x = v129;
        v194.origin.y = v138;
        v194.size.width = v132;
        v194.size.height = v72;
        v150 = CGRectGetMaxY(v194);
        if (columnIndex || v150 <= v144)
        {
          v137 = v72;
        }

        else
        {
          v137 = v144 - v138;
          if (objc_msgSend_wpKind(storageCopy, v130, v149) && objc_msgSend_wpKind(storageCopy, v130, v151) != 7 || v137 >= 36.0)
          {
            if (v137 < 1.0)
            {
              v138 = v144 + -1.0;
              v137 = 1.0;
            }
          }

          else
          {
            v138 = v144 + -36.0;
            v137 = 36.0;
          }
        }
      }

      if (columnIndexCopy >= v181)
      {
        if (v41)
        {
          v155 = [TSWPColumn alloc];
          v157 = objc_msgSend_initWithStorage_frameBounds_(v155, v156, storageCopy, v129, v138, v132, v137);
          objc_msgSend_setColumnIndex_(v157, v158, columnIndexCopy);
          v152 = v157;
          objc_msgSend_addObject_(v185, v159, v157);
        }

        else
        {
          v152 = 0;
        }
      }

      else
      {
        v152 = objc_msgSend_objectAtIndexedSubscript_(v41, v130, columnIndexCopy);
        objc_msgSend_setWpBounds_(v152, v153, v154, v129, v138, v132, v137);
      }

      objc_msgSend_setStyleProvider_(v152, v130, providerCopy);
      v162 = objc_msgSend_textIsVertical(targetCopy, v160, v161);
      objc_msgSend_setTextIsVertical_(v152, v163, v162);
      objc_msgSend_setPageNumber_(v152, v164, v180);
      objc_msgSend_setTransformForColumn_inTarget_metrics_(self, v165, v152, targetCopy, v19);

      ++columnIndexCopy;
      ++v112;
      --v24;
      v41 = v185;
    }

    while (v24);
  }

  v166 = objc_msgSend_wpKind(storageCopy, v108, v109);
  if (!columnIndex)
  {
    if (v166)
    {
      v169 = objc_msgSend_count(v41, v167, v168);
      if (v169 > v172)
      {
        objc_msgSend_removeObjectsInRange_(v41, v170, v172, v169 - v172);
      }
    }
  }
}

+ (void)setTransformForColumn:(id)column inTarget:(id)target metrics:(id)metrics
{
  columnCopy = column;
  targetCopy = target;
  metricsCopy = metrics;
  if (objc_msgSend_textIsVertical(targetCopy, v10, v11))
  {
    if ((objc_msgSend_autosizeFlags(targetCopy, v12, v13) & 3) != 0)
    {
      objc_msgSend_adjustedInsetsForTarget_(metricsCopy, v14, targetCopy);
      v17 = v16;
      objc_msgSend_wpBounds(columnCopy, v18, v19);
      v20 = v17 + CGRectGetMaxY(v26);
    }

    else
    {
      objc_msgSend_currentSize(targetCopy, v14, v15);
    }

    CGAffineTransformMakeTranslation(&v25, v20, 0.0);
    v23 = v25;
    CGAffineTransformRotate(&v24, &v23, 1.57079633);
    *&v25.a = *&v24.a;
    *&v25.c = *&v24.c;
    v22 = *&v24.tx;
  }

  else
  {
    v21 = *(MEMORY[0x277CBF2C0] + 16);
    *&v25.a = *MEMORY[0x277CBF2C0];
    *&v25.c = v21;
    v22 = *(MEMORY[0x277CBF2C0] + 32);
  }

  *&v25.tx = v22;
  *&v24.a = *&v25.a;
  *&v24.c = *&v25.c;
  *&v24.tx = v22;
  objc_msgSend_setTransformFromWP_(columnCopy, v12, &v24);
}

+ (void)setTransformForColumn:(id)column andInvalidateWPRect:(CGRect)rect inTarget:(id)target
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  columnCopy = column;
  targetCopy = target;
  v14 = objc_msgSend_range(columnCopy, v12, v13);
  v16 = objc_msgSend_columnMetricsForCharIndex_outRange_(targetCopy, v15, v14, 0);
  objc_msgSend_setTransformForColumn_inTarget_metrics_(TSWPLayoutManager, v17, columnCopy, targetCopy, v16);
  if (columnCopy)
  {
    objc_msgSend_transformFromWP(columnCopy, v18, v19);
  }

  else
  {
    memset(&v22, 0, sizeof(v22));
  }

  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v24 = CGRectApplyAffineTransform(v23, &v22);
  objc_msgSend_setNeedsDisplayInTargetRect_(targetCopy, v20, v21, v24.origin.x, v24.origin.y, v24.size.width, v24.size.height);
}

- (void)deflateTarget:(id)target intoHints:(id)hints childHints:(id)childHints anchoredDrawablePositions:(id *)positions startingPartitionedAttachments:(id *)attachments topicNumberHints:(id *)numberHints layoutState:(void *)state
{
  v268 = *MEMORY[0x277D85DE8];
  targetCopy = target;
  hintsCopy = hints;
  childHintsCopy = childHints;
  v252 = targetCopy;
  v14 = objc_msgSend_columns(targetCopy, v12, v13);
  v17 = objc_msgSend_firstObject(v14, v15, v16);
  started = objc_msgSend_startCharIndex(v17, v18, v19);

  if (objc_msgSend_wpKind(self->_storage, v20, v21))
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSWPLayoutManager deflateTarget:intoHints:childHints:anchoredDrawablePositions:startingPartitionedAttachments:topicNumberHints:layoutState:]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutManager.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v25, v27, 760, 0, "deflation is only supported for body text");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
  }

  v257 = objc_msgSend_columns(v252, v22, v23);
  v33 = objc_msgSend_count(v257, v31, v32);
  if (v33)
  {
    v36 = 0;
    v245 = v33;
    do
    {
      v37 = objc_opt_new();
      v39 = objc_msgSend_objectAtIndexedSubscript_(v257, v38, v36);
      v42 = objc_msgSend_startCharIndex(v39, v40, v41);
      v44 = objc_msgSend_columnMetricsForCharIndex_outRange_(v252, v43, v42, 0);
      v253 = v39;
      v250 = v44;
      if (v44)
      {
        v47 = objc_msgSend_columnCount(v44, v45, v46);
      }

      else
      {
        v47 = 1;
      }

      v248 = v47 + v36;
      v48 = objc_msgSend_objectAtIndexedSubscript_(v257, v45, v47 + v36 - 1);
      objc_msgSend_frameBounds(v39, v49, v50);
      v52 = v51;
      v54 = v53;
      v56 = v55;
      objc_msgSend_frameBounds(v48, v57, v58);
      MaxX = CGRectGetMaxX(v271);
      objc_msgSend_frameBounds(v39, v60, v61);
      MinX = CGRectGetMinX(v272);
      objc_msgSend_setFrameBounds_(v37, v63, v64, v52, v54, MaxX - MinX, v56);
      v67 = objc_msgSend_startCharIndex(v39, v65, v66);
      v70 = objc_msgSend_startCharIndex(v48, v68, v69);
      v73 = objc_msgSend_characterCount(v48, v71, v72);
      if (v67 <= v73 + v70)
      {
        v75 = v73 + v70;
      }

      else
      {
        v75 = v67;
      }

      if (v67 >= v73 + v70)
      {
        objc_msgSend_setRange_(v37, v74, v73 + v70, v75 - (v73 + v70));
      }

      else
      {
        objc_msgSend_setRange_(v37, v74, v67, v75 - v67);
      }

      v78 = objc_msgSend_anchoredRange(v253, v76, v77);
      v80 = v79;
      v270.location = objc_msgSend_anchoredRange(v48, v79, v81);
      v270.length = v82;
      v269.location = v78;
      v269.length = v80;
      v83 = NSUnionRange(v269, v270);
      objc_msgSend_setAnchoredRange_(v37, v83.length, v83.location, v83.length);
      WidowPullsDownFromCharIndex = objc_msgSend_nextWidowPullsDownFromCharIndex(v48, v84, v85);
      objc_msgSend_setNextWidowPullsDownFromCharIndex_(v37, v87, WidowPullsDownFromCharIndex);
      objc_msgSend_setColumnCount_(v37, v88, v47);
      IsVertical = objc_msgSend_textIsVertical(v252, v89, v90);
      objc_msgSend_setTextIsVertical_(v37, v92, IsVertical);
      v95 = 0;
      if (v47)
      {
        for (i = 0; i != v47; ++i)
        {
          v97 = objc_msgSend_objectAtIndexedSubscript_(v257, v93, i + v36);
          v100 = objc_msgSend_lineCount(v97, v98, v99);
          v105 = objc_msgSend_lineCount(v97, v101, v102);
          if (v105)
          {
            v106 = 0;
            while (1)
            {
              v107 = objc_msgSend_lineFragmentArray(v97, v103, v104);
              if (*(sub_276D6F7E8(*v107, v106) + 26))
              {
                break;
              }

              if (v105 == ++v106)
              {
                goto LABEL_22;
              }
            }

            objc_msgSend_setUsedParagraphHeights_(v37, v103, 1);
          }

LABEL_22:
          v95 += v100;
        }
      }

      HasListLabel = objc_msgSend_lastLineIsEmptyAndHasListLabel(v48, v93, v94);
      objc_msgSend_setLastLineIsEmptyAndHasListLabel_(v37, v109, HasListLabel);
      v112 = objc_msgSend_layoutResultFlags(v48, v110, v111);
      objc_msgSend_setTerminatedByBreak_(v37, v113, (v112 >> 11) & 1);
      if (!v95)
      {
        objc_msgSend_range(v37, v114, v115);
        if (v114)
        {
          v116 = MEMORY[0x277D81150];
          v117 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v114, "[TSWPLayoutManager deflateTarget:intoHints:childHints:anchoredDrawablePositions:startingPartitionedAttachments:topicNumberHints:layoutState:]");
          v119 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v118, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutManager.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v116, v120, v117, v119, 802, 0, "Empty range and zero line fragments should be the same");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v121, v122);
        }
      }

      objc_msgSend_setLineFragmentCount_(v37, v114, v95);
      v125 = objc_msgSend_nextWidowPullsDownFromCharIndex(v37, v123, v124);
      v128 = objc_msgSend_range(v37, v126, v127);
      if (v125 < v128 || v125 - v128 >= v129)
      {
        v131 = objc_msgSend_nextWidowPullsDownFromCharIndex(v37, v129, v130);
        v134 = objc_msgSend_range(v37, v132, v133);
        if (v131 != &v129[v134])
        {
          v135 = MEMORY[0x277D81150];
          v136 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v129, "[TSWPLayoutManager deflateTarget:intoHints:childHints:anchoredDrawablePositions:startingPartitionedAttachments:topicNumberHints:layoutState:]");
          v138 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v137, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutManager.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v135, v139, v136, v138, 806, 0, "Bad widow location");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v140, v141);
        }
      }

      objc_msgSend_addObject_(hintsCopy, v129, v37);

      v36 = v248;
    }

    while (v248 < v245);
  }

  v239 = objc_msgSend_lastObject(hintsCopy, v34, v35);
  if (v239)
  {
    v144 = objc_msgSend_layoutFinished(self, v142, v143);
    objc_msgSend_setEndOfLayout_(v239, v145, v144);
  }

  v240 = objc_msgSend_firstObject(v257, v142, v143);
  if (objc_msgSend_lineCount(v240, v146, v147) && (v150 = objc_msgSend_lineFragmentAtIndex_(v240, v148, 0)) != 0)
  {
    v151 = sub_276D6C3C0(v150);
  }

  else
  {
    v151 = 0;
  }

  v264 = 0u;
  v265 = 0u;
  v262 = 0u;
  v263 = 0u;
  v242 = v151;
  v152 = objc_msgSend_reverseObjectEnumerator(v257, v148, v149);
  v156 = objc_msgSend_countByEnumeratingWithState_objects_count_(v152, v153, &v262, v267, 16);
  if (v156)
  {
    v157 = *v263;
    while (2)
    {
      for (j = 0; j != v156; ++j)
      {
        if (*v263 != v157)
        {
          objc_enumerationMutation(v152);
        }

        v159 = *(*(&v262 + 1) + 8 * j);
        if (objc_msgSend_lineCount(v159, v154, v155))
        {
          v241 = v159;
          goto LABEL_47;
        }
      }

      v156 = objc_msgSend_countByEnumeratingWithState_objects_count_(v152, v154, &v262, v267, 16);
      if (v156)
      {
        continue;
      }

      break;
    }
  }

  v241 = 0;
LABEL_47:

  v162 = objc_msgSend_lineCount(v241, v160, v161);
  if (v162 && (v165 = objc_msgSend_lineFragmentAtIndex_(v241, v163, v162 - 1)) != 0 && (*(v165 + 25) & 1) == 0)
  {
    v246 = sub_276D6C3C0(v165);
  }

  else
  {
    v246 = 0;
  }

  if (objc_msgSend_attachmentCount(self->_storage, v163, v164))
  {
    v168 = objc_msgSend_count(v257, v166, v167);
    if (v168)
    {
      v251 = v168;
      v171 = 0;
      v172 = 0;
      v173 = 0;
      v249 = (v151 | v246) != 0;
      do
      {
        v174 = objc_msgSend_objectAtIndexedSubscript_(v257, v169, v171, v235);
        if (objc_msgSend_lineCount(v174, v175, v176))
        {
          if (!v249)
          {
            goto LABEL_62;
          }

          v179 = objc_msgSend_lineFragmentAtIndex_(v174, v177, 0);
          v180 = sub_276D6C3C0(v179);

          v173 = v180;
          if (v180)
          {
            objc_msgSend_addObject_(childHintsCopy, v181, v180);
          }

          v183 = objc_msgSend_lineCount(v174, v181, v182);
          if (v183 >= 2)
          {
            v184 = objc_msgSend_lineFragmentAtIndex_(v174, v177, v183 - 1);
            v254 = sub_276D6C3C0(v184);

            v178 = v254;
            if (v254)
            {
              objc_msgSend_addObject_(childHintsCopy, v177, v254);
            }

            else
            {
              v254 = 0;
            }
          }

          else
          {
LABEL_62:
            v254 = v173;
          }

          v185 = objc_msgSend_lineFragmentArray(v174, v177, v178);
          v189 = **v185;
          v188 = (*v185)[1];
          while (v189 != v188)
          {
            v190 = *v189;
            if ((*(*v189 + 25) & 2) != 0)
            {
              if (!v172)
              {
                v172 = objc_msgSend_set(MEMORY[0x277CBEB58], v186, v187);
                v190 = *v189;
              }

              v191 = sub_276D6493C(v190);
              v194 = objc_msgSend_info(v191, v192, v193);
              objc_opt_class();
              v235 = &unk_28862D558;
              v195 = TSUCheckedClassAndProtocolCast();

              if (v195)
              {
                v198 = objc_msgSend_objectUUID(v195, v196, v197, &unk_28862D558);
                objc_msgSend_addObject_(v172, v199, v198);
              }
            }

            v189 += 2;
          }

          v173 = v254;
        }

        ++v171;
      }

      while (v171 != v251);
    }

    else
    {
      v173 = 0;
      v172 = 0;
    }

    if (attachments)
    {
      *attachments = objc_msgSend_copy(v172, v169, v170);
    }
  }

  else
  {
    v173 = 0;
  }

  if (objc_msgSend_count(childHintsCopy, v166, v167, v235))
  {
    v202 = objc_msgSend_firstObject(childHintsCopy, v200, v201);
    v203 = v202 == v242;

    if (!v203)
    {
      v206 = v242;
      if (!v242)
      {
        v206 = objc_msgSend_null(MEMORY[0x277CBEB68], v204, 0);
      }

      v242 = v206;
      objc_msgSend_insertObject_atIndex_(childHintsCopy, v204, v206, 0);
    }

    v207 = objc_msgSend_lastObject(childHintsCopy, v204, v205);
    v208 = v207 == v246;

    if (!v208)
    {
      v209 = v246;
      if (!v246)
      {
        v209 = objc_msgSend_null(MEMORY[0x277CBEB68], v200, 0);
      }

      v246 = v209;
      objc_msgSend_addObject_(childHintsCopy, v200, v209);
    }
  }

  v210 = objc_msgSend_currentAnchoredDrawableLayouts(v252, v200, v201);
  v255 = objc_msgSend_tsu_arrayOfObjectsPassingTest_(v210, v211, &unk_2885FE670);

  v215 = objc_msgSend_count(v255, v212, v213);
  if (v215)
  {
    *positions = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x277D81278], v214, v215);
    v258 = 0u;
    v259 = 0u;
    v260 = 0u;
    v261 = 0u;
    v216 = v255;
    v220 = objc_msgSend_countByEnumeratingWithState_objects_count_(v216, v217, &v258, v266, 16);
    if (v220)
    {
      v221 = *v259;
      do
      {
        for (k = 0; k != v220; ++k)
        {
          if (*v259 != v221)
          {
            objc_enumerationMutation(v216);
          }

          v223 = *(*(&v258 + 1) + 8 * k);
          v224 = objc_msgSend_info(v223, v218, v219);
          v227 = objc_msgSend_objectUUIDPath(v224, v225, v226);
          v228 = MEMORY[0x277CCAE60];
          objc_msgSend_alignmentFrame(v223, v229, v230);
          v233 = objc_msgSend_valueWithCGPoint_(v228, v231, v232);
          objc_msgSend_setObject_forUncopiedKey_(*positions, v234, v233, v227);
        }

        v220 = objc_msgSend_countByEnumeratingWithState_objects_count_(v216, v218, &v258, v266, 16);
      }

      while (v220);
    }
  }

  *numberHints = objc_msgSend_hintsForCharIndex_(self->_topicNumbers, v214, started);
}

- (void)inflateTarget:(id)target fromHints:(id)hints childHint:(id)hint anchoredDrawablePositions:(id)positions footnoteLayoutRange:(_NSRange)range
{
  v86[22] = *MEMORY[0x277D85DE8];
  targetCopy = target;
  hintsCopy = hints;
  hintCopy = hint;
  positionsCopy = positions;
  v85 = targetCopy;
  v13 = objc_msgSend_columns(targetCopy, v11, v12);
  v16 = objc_msgSend_count(v13, v14, v15);

  if (v16)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSWPLayoutManager inflateTarget:fromHints:childHint:anchoredDrawablePositions:footnoteLayoutRange:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutManager.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 956, 0, "Newly created target should have 0 columns");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
  }

  v26 = objc_msgSend_array(MEMORY[0x277CBEB18], v17, v18);
  objc_msgSend_setAnchoredDrawablesForRelayout_(v85, v27, v26);

  v32 = objc_msgSend_count(hintsCopy, v28, v29);
  if (v32)
  {
    objc_msgSend_columns(v85, v30, v31);
    objc_claimAutoreleasedReturnValue();
    v34 = objc_msgSend_objectAtIndexedSubscript_(hintsCopy, v33, 0);
    v80 = objc_msgSend_range(v34, v35, v36);

    v38 = objc_msgSend_objectAtIndexedSubscript_(hintsCopy, v37, v32 - 1);
    v41 = objc_msgSend_range(v38, v39, v40);
    v43 = v42;

    v45 = objc_msgSend_objectAtIndexedSubscript_(hintsCopy, v44, v32 - 1);
    objc_msgSend_anchoredRange(v45, v46, v47);

    objc_msgSend_p_layoutConfigFlagsForTarget_(self, v48, v85);
    v83 = v32;
    if (objc_opt_respondsToSelector())
    {
      v51 = objc_msgSend_info(v85, v49, v50);
      v52 = TSUProtocolCast();

      v55 = objc_msgSend_parentInfo(v52, v53, v54, &unk_28862D558);
      if (objc_opt_respondsToSelector())
      {
        v57 = objc_msgSend_performSelector_(v55, v56, sel_pageIndex);
        objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v58, @", page #%lu", v57 + 1);
        objc_claimAutoreleasedReturnValue();
      }

      v32 = v83;
    }

    objc_msgSend_wpKind(self->_storage, v49, v50);
    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 3221225472;
    v86[2] = sub_276D6396C;
    v86[3] = &unk_27A6F40C8;
    v86[4] = self;
    v86[5] = v85;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(positionsCopy, v66, v86);
    hintCopy;
    v81 = v41 + v43 - v80;
    if (v32 == 1)
    {
      v68 = objc_msgSend_objectAtIndexedSubscript_(hintsCopy, v67, 0);
      HasListLabel = objc_msgSend_lastLineIsEmptyAndHasListLabel(v68, v69, v70);

      if (HasListLabel)
      {
        if (objc_msgSend_hasTrackedChanges(self->_storage, v72, v73))
        {
          v74 = [TSWPFilteredStorage alloc];
          v76 = objc_msgSend_initWithStorage_subRange_(v74, v75, self->_storage, v80, v81);
          objc_msgSend_charRangeMappedFromStorage_(v76, v77, v80, v81);
        }
      }
    }

    operator new();
  }

  v59 = MEMORY[0x277D81150];
  v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "[TSWPLayoutManager inflateTarget:fromHints:childHint:anchoredDrawablePositions:footnoteLayoutRange:]");
  v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutManager.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v63, v60, v62, 960, 0, "Missing hints.  Unable to inflate");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v64, v65);
}

- (void)destroyLayoutState:(void *)state
{
  if (state)
  {
    (*(*state + 8))(state);
  }
}

- (TSWPCTTypesetterCache)typesetterCache
{
  v4 = objc_msgSend_documentRoot(self->_storage, a2, v2);
  v7 = objc_msgSend_useLigatures(v4, v5, v6);

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_useLigatures != v7 || selfCopy->_shouldClearTypesetterCache)
  {
    objc_msgSend_clearTypesetterCache(selfCopy, v9, v10);
    objc_msgSend_p_dirtyEverything(selfCopy, v11, v12);
    selfCopy->_useLigatures = v7;
    selfCopy->_shouldClearTypesetterCache = 0;
  }

  objc_sync_exit(selfCopy);

  typesetterCache = selfCopy->_typesetterCache;
  if (!typesetterCache)
  {
    v14 = objc_alloc_init(TSWPCTTypesetterCache);
    v15 = selfCopy->_typesetterCache;
    selfCopy->_typesetterCache = v14;

    typesetterCache = selfCopy->_typesetterCache;
  }

  return typesetterCache;
}

- (unint64_t)p_layoutConfigFlagsForTarget:(id)target
{
  targetCopy = target;
  v7 = targetCopy;
  if (targetCopy)
  {
    if (objc_msgSend_descendersCannotClip(targetCopy, v5, v6))
    {
      v10 = 4;
    }

    else
    {
      v10 = 0;
    }
  }

  else if (objc_msgSend_wpKind(self->_storage, v5, v6) && objc_msgSend_wpKind(self->_storage, v8, v9) != 7)
  {
    v10 = 0;
  }

  else
  {
    v10 = 4;
  }

  if (objc_msgSend_textIsVertical(v7, v8, v9))
  {
    v10 = 20;
  }

  return v10;
}

- (void)p_dirtyEverything
{
  dirtyRanges = self->_dirtyRanges;
  v4 = objc_msgSend_range(self->_storage, a2, v2);
  sub_276E30470(v4, v5, 0, v7);
  objc_msgSend_addRange_(dirtyRanges, v6, v7);
}

- (TSWPLayoutOwner)owner
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);

  return WeakRetained;
}

@end
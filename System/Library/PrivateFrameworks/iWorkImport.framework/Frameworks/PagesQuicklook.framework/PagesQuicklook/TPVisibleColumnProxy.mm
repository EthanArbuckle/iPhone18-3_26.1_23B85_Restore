@interface TPVisibleColumnProxy
- (BOOL)lastLineIsEmptyAndHasListLabel;
- (BOOL)terminatedByBreak;
- (TPVisibleColumnProxy)initWithPageIndex:(unint64_t)index pageController:(id)controller flowInfo:(id)info;
- (_NSRange)anchoredRange;
- (_NSRange)range;
- (id)p_targetFirstHint;
- (id)p_targetLastHint;
- (unint64_t)nextWidowPullsDownFromCharIndex;
- (unint64_t)startAnchoredCharIndex;
- (unint64_t)startCharIndex;
- (void)trimToCharIndex:(unint64_t)index inTarget:(id)target removeFootnoteReferenceCount:(unint64_t)count removeAutoNumberFootnoteCount:(unint64_t)footnoteCount;
@end

@implementation TPVisibleColumnProxy

- (TPVisibleColumnProxy)initWithPageIndex:(unint64_t)index pageController:(id)controller flowInfo:(id)info
{
  controllerCopy = controller;
  infoCopy = info;
  v14.receiver = self;
  v14.super_class = TPVisibleColumnProxy;
  v11 = [(TPVisibleColumnProxy *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_pageIndex = index;
    objc_storeStrong(&v11->_pageController, controller);
    objc_storeStrong(&v12->_flowInfo, info);
  }

  return v12;
}

- (unint64_t)startCharIndex
{
  v6 = objc_msgSend_p_targetFirstHint(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_range(v6, v7, v8, v9, v10, v11);

  return v12;
}

- (_NSRange)range
{
  v7 = objc_msgSend_p_targetFirstHint(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_range(v7, v8, v9, v10, v11, v12);
  v15 = v14;
  v20 = objc_msgSend_p_targetLastHint(self, v14, v16, v17, v18, v19);
  v32.location = objc_msgSend_range(v20, v21, v22, v23, v24, v25);
  v32.length = v26;
  v30.location = v13;
  v30.length = v15;
  v27 = NSUnionRange(v30, v32);

  location = v27.location;
  length = v27.length;
  result.length = length;
  result.location = location;
  return result;
}

- (unint64_t)startAnchoredCharIndex
{
  v6 = objc_msgSend_p_targetFirstHint(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_anchoredRange(v6, v7, v8, v9, v10, v11);

  return v12;
}

- (_NSRange)anchoredRange
{
  v7 = objc_msgSend_p_targetFirstHint(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_anchoredRange(v7, v8, v9, v10, v11, v12);
  v15 = v14;
  v20 = objc_msgSend_p_targetLastHint(self, v14, v16, v17, v18, v19);
  v32.location = objc_msgSend_anchoredRange(v20, v21, v22, v23, v24, v25);
  v32.length = v26;
  v30.location = v13;
  v30.length = v15;
  v27 = NSUnionRange(v30, v32);

  location = v27.location;
  length = v27.length;
  result.length = length;
  result.location = location;
  return result;
}

- (unint64_t)nextWidowPullsDownFromCharIndex
{
  v6 = objc_msgSend_p_targetLastHint(self, a2, v2, v3, v4, v5);
  WidowPullsDownFromCharIndex = objc_msgSend_nextWidowPullsDownFromCharIndex(v6, v7, v8, v9, v10, v11);

  return WidowPullsDownFromCharIndex;
}

- (BOOL)lastLineIsEmptyAndHasListLabel
{
  v6 = objc_msgSend_p_targetLastHint(self, a2, v2, v3, v4, v5);
  HasListLabel = objc_msgSend_lastLineIsEmptyAndHasListLabel(v6, v7, v8, v9, v10, v11);

  return HasListLabel;
}

- (BOOL)terminatedByBreak
{
  v6 = objc_msgSend_p_targetLastHint(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_terminatedByBreak(v6, v7, v8, v9, v10, v11);

  return v12;
}

- (void)trimToCharIndex:(unint64_t)index inTarget:(id)target removeFootnoteReferenceCount:(unint64_t)count removeAutoNumberFootnoteCount:(unint64_t)footnoteCount
{
  flowInfo = self->_flowInfo;
  pageController = self->_pageController;
  if (flowInfo)
  {
    v19 = objc_msgSend_i_flowLayoutController(pageController, a2, v6, v7, v8, v9, index, target, count, footnoteCount);
    objc_msgSend_i_trimFlow_pageIndex_toCharIndex_(v19, v14, v15, v16, v17, v18, self->_flowInfo, self->_pageIndex, index);
  }

  else
  {

    (MEMORY[0x2821F9670])(pageController, sel_i_trimPageAtIndex_toCharIndex_removeFootnoteReferenceCount_removeAutoNumberFootnoteCount_);
  }
}

- (id)p_targetFirstHint
{
  flowInfo = self->_flowInfo;
  pageController = self->_pageController;
  if (flowInfo)
  {
    v9 = objc_msgSend_i_flowLayoutController(pageController, a2, v2, v3, v4, v5);
    v15 = objc_msgSend_hintForFlow_pageIndex_(v9, v10, v11, v12, v13, v14, self->_flowInfo, self->_pageIndex);
  }

  else
  {
    v9 = objc_msgSend_i_pageHintForPageIndex_(pageController, a2, v2, v3, v4, v5, self->_pageIndex);
    if (objc_msgSend_pageKind(v9, v16, v17, v18, v19, v20) != 1)
    {
      v26 = MEMORY[0x277D81150];
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, v25, "[TPVisibleColumnProxy p_targetFirstHint]");
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPVisibleColumnProxy.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v34, v35, v36, v37, v38, v27, v33, 94, 0, "Must have a text page hint");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42, v43);
    }

    v15 = objc_msgSend_firstHint(v9, v21, v22, v23, v24, v25);
  }

  v44 = v15;

  return v44;
}

- (id)p_targetLastHint
{
  flowInfo = self->_flowInfo;
  pageController = self->_pageController;
  if (flowInfo)
  {
    v9 = objc_msgSend_i_flowLayoutController(pageController, a2, v2, v3, v4, v5);
    v15 = objc_msgSend_hintForFlow_pageIndex_(v9, v10, v11, v12, v13, v14, self->_flowInfo, self->_pageIndex);
  }

  else
  {
    v9 = objc_msgSend_i_pageHintForPageIndex_(pageController, a2, v2, v3, v4, v5, self->_pageIndex);
    if (objc_msgSend_pageKind(v9, v16, v17, v18, v19, v20) != 1)
    {
      v26 = MEMORY[0x277D81150];
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, v25, "[TPVisibleColumnProxy p_targetLastHint]");
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPVisibleColumnProxy.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v34, v35, v36, v37, v38, v27, v33, 106, 0, "Must have a text page hint");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42, v43);
    }

    v15 = objc_msgSend_lastHint(v9, v21, v22, v23, v24, v25);
  }

  v44 = v15;

  return v44;
}

@end
@interface TPPaginatedBodyInfo
- (BOOL)laysOutVertically;
- (id)nextTargetFirstChildHint;
- (id)nextTargetFirstColumn;
- (id)nextTargetTopicNumberHints;
- (id)pageHint;
- (id)pageInfo;
- (id)previousTargetLastColumn;
- (int64_t)modelRootIndex;
- (void)inflateBodyLayout:(id)a3;
@end

@implementation TPPaginatedBodyInfo

- (id)pageInfo
{
  objc_opt_class();
  v8 = objc_msgSend_parentInfo(self, v3, v4, v5, v6, v7);
  v9 = TSUCheckedDynamicCast();

  return v9;
}

- (id)previousTargetLastColumn
{
  v6 = objc_msgSend_pageInfo(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_pageController(v6, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_pageIndex(v6, v13, v14, v15, v16, v17);
  v24 = objc_msgSend_i_columnPriorToPageIndex_(v12, v19, v20, v21, v22, v23, v18);

  return v24;
}

- (id)nextTargetFirstColumn
{
  v6 = objc_msgSend_pageInfo(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_pageController(v6, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_pageIndex(v6, v13, v14, v15, v16, v17);
  v24 = objc_msgSend_i_columnAfterPageIndex_(v12, v19, v20, v21, v22, v23, v18);

  return v24;
}

- (id)nextTargetTopicNumberHints
{
  v6 = objc_msgSend_pageInfo(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_pageController(v6, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_pageIndex(v6, v13, v14, v15, v16, v17);
  v24 = objc_msgSend_i_topicNumberHintsAfterPageIndex_(v12, v19, v20, v21, v22, v23, v18);

  return v24;
}

- (id)nextTargetFirstChildHint
{
  v6 = objc_msgSend_pageInfo(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_pageController(v6, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_pageIndex(v6, v13, v14, v15, v16, v17);
  v24 = objc_msgSend_i_firstChildHintAfterPageIndex_(v12, v19, v20, v21, v22, v23, v18);

  return v24;
}

- (id)pageHint
{
  v6 = objc_msgSend_pageInfo(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_pageController(v6, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_pageIndex(v6, v13, v14, v15, v16, v17);
  v24 = objc_msgSend_i_pageHintForPageIndex_(v12, v19, v20, v21, v22, v23, v18);

  return v24;
}

- (BOOL)laysOutVertically
{
  v6 = objc_msgSend_pageInfo(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_documentRoot(v6, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_laysOutBodyVertically(v12, v13, v14, v15, v16, v17);

  return v18;
}

- (void)inflateBodyLayout:(id)a3
{
  v4 = a3;
  v10 = objc_msgSend_info(v4, v5, v6, v7, v8, v9);

  if (v10 != self)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, v15, "[TPPaginatedBodyInfo inflateBodyLayout:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedBodyInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v24, v25, v26, v27, v28, v17, v23, 58, 0, "we really only should be inflating body layouts that point to this info");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32, v33);
  }

  v45 = objc_msgSend_pageInfo(self, v11, v12, v13, v14, v15);
  v39 = objc_msgSend_pageController(v45, v34, v35, v36, v37, v38);
  objc_msgSend_i_inflateColumnsInBodyLayout_(v39, v40, v41, v42, v43, v44, v4);
}

- (int64_t)modelRootIndex
{
  v6 = objc_msgSend_pageInfo(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_pageIndex(v6, v7, v8, v9, v10, v11);

  return v12;
}

@end
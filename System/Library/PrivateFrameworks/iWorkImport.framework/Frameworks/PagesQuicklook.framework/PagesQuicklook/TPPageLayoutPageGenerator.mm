@interface TPPageLayoutPageGenerator
- (BOOL)wantsPageInSectionHint:(id)hint withState:(id)state;
- (void)createOrUpdatePageHintInSectionHint:(id)hint withState:(id)state;
@end

@implementation TPPageLayoutPageGenerator

- (BOOL)wantsPageInSectionHint:(id)hint withState:(id)state
{
  stateCopy = state;
  if (objc_msgSend_pageIndex(stateCopy, v5, v6, v7, v8, v9))
  {
    LOBYTE(v15) = 0;
  }

  else
  {
    v16 = objc_msgSend_section(stateCopy, v10, v11, v12, v13, v14);
    v22 = objc_msgSend_documentRoot(v16, v17, v18, v19, v20, v21);
    v28 = objc_msgSend_settings(v22, v23, v24, v25, v26, v27);
    v15 = objc_msgSend_hasBody(v28, v29, v30, v31, v32, v33) ^ 1;
  }

  return v15;
}

- (void)createOrUpdatePageHintInSectionHint:(id)hint withState:(id)state
{
  hintCopy = hint;
  v11 = objc_msgSend_pageIndex(state, v6, v7, v8, v9, v10);
  v22 = objc_msgSend_pageHintForPageIndex_(hintCopy, v12, v13, v14, v15, v16, v11);

  objc_msgSend_setPageKind_(v22, v17, v18, v19, v20, v21, 6);
}

@end
@interface TPFillerPageGenerator
- (BOOL)wantsPageInSectionHint:(id)hint withState:(id)state;
- (void)createOrUpdatePageHintInSectionHint:(id)hint withState:(id)state;
@end

@implementation TPFillerPageGenerator

- (BOOL)wantsPageInSectionHint:(id)hint withState:(id)state
{
  stateCopy = state;
  if (objc_msgSend_pageIndex(stateCopy, v5, v6, v7, v8, v9))
  {
    goto LABEL_5;
  }

  v15 = objc_msgSend_section(stateCopy, v10, v11, v12, v13, v14);
  v21 = objc_msgSend_documentRoot(v15, v16, v17, v18, v19, v20);
  v27 = objc_msgSend_settings(v21, v22, v23, v24, v25, v26);
  hasBody = objc_msgSend_hasBody(v27, v28, v29, v30, v31, v32);

  if (!hasBody)
  {
    goto LABEL_5;
  }

  v39 = objc_msgSend_documentPageIndex(stateCopy, v34, v35, v36, v37, v38);
  v45 = objc_msgSend_section(stateCopy, v40, v41, v42, v43, v44);
  started = objc_msgSend_sectionStartKind(v45, v46, v47, v48, v49, v50);

  if (started == 2)
  {
    v39 ^= 1u;
    goto LABEL_6;
  }

  if (started != 1)
  {
LABEL_5:
    v39 = 0;
  }

LABEL_6:

  return v39 & 1;
}

- (void)createOrUpdatePageHintInSectionHint:(id)hint withState:(id)state
{
  hintCopy = hint;
  v11 = objc_msgSend_pageIndex(state, v6, v7, v8, v9, v10);
  v22 = objc_msgSend_pageHintForPageIndex_(hintCopy, v12, v13, v14, v15, v16, v11);

  objc_msgSend_setPageKind_(v22, v17, v18, v19, v20, v21, 2);
}

@end
@interface TPHeaderFooterFragmentEnumerator
- (TPHeaderFooterFragmentEnumerator)initWithSectionTemplatePage:(id)a3;
- (id)nextObject;
- (void)p_incrementFragmentIndex;
- (void)p_incrementHeaderFooterType;
@end

@implementation TPHeaderFooterFragmentEnumerator

- (TPHeaderFooterFragmentEnumerator)initWithSectionTemplatePage:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TPHeaderFooterFragmentEnumerator;
  v6 = [(TPHeaderFooterFragmentEnumerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sectionTemplatePage, a3);
    v7->_fragmentIndex = -1;
    v7->_headerFooterType = 0;
  }

  return v7;
}

- (id)nextObject
{
  objc_msgSend_p_incrementFragmentIndex(self, a2, v2, v3, v4, v5);
  if (objc_msgSend_fragmentIndex(self, v7, v8, v9, v10, v11) > 2)
  {
    objc_msgSend_p_incrementHeaderFooterType(self, v12, v13, v14, v15, v16);
    self->_fragmentIndex = 0;
  }

  if (objc_msgSend_headerFooterType(self, v12, v13, v14, v15, v16) >= 2)
  {
    v40 = 0;
  }

  else
  {
    v22 = objc_msgSend_sectionTemplatePage(self, v17, v18, v19, v20, v21);
    v28 = objc_msgSend_headerFooterType(self, v23, v24, v25, v26, v27);
    v34 = objc_msgSend_fragmentIndex(self, v29, v30, v31, v32, v33);
    v40 = objc_msgSend_headerFooter_fragmentAtIndex_(v22, v35, v36, v37, v38, v39, v28, v34);
  }

  return v40;
}

- (void)p_incrementFragmentIndex
{
  v7 = objc_msgSend_fragmentIndex(self, a2, v2, v3, v4, v5);
  if (v7 > 0)
  {
    if (v7 == 1)
    {
      v13 = self;
      goto LABEL_13;
    }

    if (v7 == 2)
    {
      v13 = self;
      goto LABEL_13;
    }
  }

  else
  {
    if (v7 == -1)
    {
      v13 = self;
      goto LABEL_13;
    }

    if (!v7)
    {
      v13 = self;
LABEL_13:

      MEMORY[0x2821F9670](v13, sel_setFragmentIndex_, v9, v10, v11, v12);
      return;
    }
  }

  v14 = MEMORY[0x277D81150];
  v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, v12, "[TPHeaderFooterFragmentEnumerator p_incrementFragmentIndex]");
  v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionTemplatePage.mm");
  v27 = objc_msgSend_fragmentIndex(self, v22, v23, v24, v25, v26);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v28, v29, v30, v31, v32, v15, v21, 132, 0, "Tried to increment invalid fragment index value %d", v27);

  v38 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v38, v33, v34, v35, v36, v37);
}

- (void)p_incrementHeaderFooterType
{
  if ((objc_msgSend_headerFooterType(self, a2, v2, v3, v4, v5) + 1) <= 2)
  {

    MEMORY[0x2821F9670](self, sel_setHeaderFooterType_, v7, v8, v9, v10);
  }
}

@end
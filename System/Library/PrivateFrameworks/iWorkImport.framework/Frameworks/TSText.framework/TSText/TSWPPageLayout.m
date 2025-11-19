@interface TSWPPageLayout
- (BOOL)headerFooterProviderValid;
- (BOOL)i_updateHeaderFooterLayouts;
- (BOOL)isHeaderFooterLayout:(id)a3;
- (BOOL)shouldHeaderFooterBeVisible:(int64_t)a3;
- (CGRect)bodyRect;
- (CGRect)borderRectForHeaderFooter:(int64_t)a3 atIndex:(int64_t)a4;
- (CGRect)clipRectForHeaderFooter:(int64_t)a3 atIndex:(int64_t)a4;
- (TSWPHeaderFooterProvider)headerFooterProvider;
- (double)footerHeight;
- (double)headerHeight;
- (id)i_insertValidatedHeaderFooterLayouts:(BOOL *)a3;
- (void)i_clearHeaderFooterLayouts;
- (void)p_updateHeaderFooterClipAndBorderRect;
- (void)parentWillChangeTo:(id)a3;
@end

@implementation TSWPPageLayout

- (TSWPHeaderFooterProvider)headerFooterProvider
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPPageLayout headerFooterProvider]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPPageLayout.mm");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 31, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = MEMORY[0x277CCACA8];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v16 = objc_msgSend_stringWithFormat_(v12, v15, @"Abstract method not overridden by %@: %s", v14, "[TSWPPageLayout headerFooterProvider]");
  v18 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v17, *MEMORY[0x277CBE658], v16, 0);
  v19 = v18;

  objc_exception_throw(v18);
}

- (BOOL)headerFooterProviderValid
{
  v3 = objc_msgSend_headerFooterProvider(self, a2, v2);
  v4 = v3 != 0;

  return v4;
}

- (CGRect)bodyRect
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPPageLayout bodyRect]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPPageLayout.mm");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 39, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = MEMORY[0x277CCACA8];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v16 = objc_msgSend_stringWithFormat_(v12, v15, @"Abstract method not overridden by %@: %s", v14, "[TSWPPageLayout bodyRect]");
  v18 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v17, *MEMORY[0x277CBE658], v16, 0);
  v19 = v18;

  objc_exception_throw(v18);
}

- (double)headerHeight
{
  v2 = 0;
  headerFooterLayouts = self->_headerFooterLayouts;
  v4 = 0.0;
  do
  {
    v5 = (*headerFooterLayouts)[v2];
    v8 = v5;
    if (v5)
    {
      objc_msgSend_frame(v5, v6, v7);
      Height = CGRectGetHeight(v11);
      if (v4 < Height)
      {
        v4 = Height;
      }
    }

    ++v2;
  }

  while (v2 != 3);
  return v4;
}

- (double)footerHeight
{
  v2 = 0;
  v3 = self->_headerFooterLayouts[1];
  v4 = 0.0;
  do
  {
    v5 = v3[v2];
    v8 = v5;
    if (v5)
    {
      objc_msgSend_frame(v5, v6, v7);
      Height = CGRectGetHeight(v11);
      if (v4 < Height)
      {
        v4 = Height;
      }
    }

    ++v2;
  }

  while (v2 != 3);
  return v4;
}

- (BOOL)shouldHeaderFooterBeVisible:(int64_t)a3
{
  result = 0;
  if (objc_msgSend_headerFooterProviderValid(self, a2, a3))
  {
    v7 = objc_msgSend_headerFooterProvider(self, v5, v6);
    isHeaderFooterEmpty = objc_msgSend_isHeaderFooterEmpty_(v7, v8, a3);

    if (!isHeaderFooterEmpty)
    {
      return 1;
    }
  }

  return result;
}

- (BOOL)isHeaderFooterLayout:(id)a3
{
  v5 = a3;
  v6 = 0;
  v7 = 0;
  do
  {
    v8 = 0;
    do
    {
      v9 = objc_msgSend_headerFooterLayout_atIndex_(self, v4, v7, v8);

      if (v8 > 1)
      {
        break;
      }

      ++v8;
    }

    while (v9 != v5);
    v10 = v6 | (v9 == v5);
    v6 = 1;
    v7 = 1;
  }

  while ((v10 & 1) == 0);

  return v9 == v5;
}

- (CGRect)clipRectForHeaderFooter:(int64_t)a3 atIndex:(int64_t)a4
{
  objc_msgSend_p_updateHeaderFooterClipAndBorderRect(self, a2, a3);
  v7 = &self->_headerFooterClipRects[a3][a4];
  x = v7->origin.x;
  y = v7->origin.y;
  width = v7->size.width;
  height = v7->size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)parentWillChangeTo:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = TSWPPageLayout;
  [(TSWPPageLayout *)&v7 parentWillChangeTo:v4];
  if (!v4)
  {
    objc_msgSend_i_clearHeaderFooterLayouts(self, v5, v6);
  }
}

- (void)p_updateHeaderFooterClipAndBorderRect
{
  objc_msgSend_p_updateHeaderFooterClipAndBorderRects_(self, a2, 0);

  objc_msgSend_p_updateHeaderFooterClipAndBorderRects_(self, v3, 1);
}

- (CGRect)borderRectForHeaderFooter:(int64_t)a3 atIndex:(int64_t)a4
{
  objc_msgSend_p_updateHeaderFooterClipAndBorderRect(self, a2, a3);
  v7 = &self->_headerFooterBorderRects[a3][a4];
  x = v7->origin.x;
  y = v7->origin.y;
  width = v7->size.width;
  height = v7->size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BOOL)i_updateHeaderFooterLayouts
{
  v3 = self;
  v4 = objc_msgSend_headerFooterProvider(self, a2, v2);
  v56 = objc_msgSend_usesSingleHeaderFooter(v4, v5, v6);

  v54 = v3;
  v55 = 0;
  v9 = 0;
  v10 = 1;
  do
  {
    v11 = v10;
    v13 = objc_msgSend_headerFooterProvider(v3, v7, v8);
    v53 = v11;
    if (v13)
    {
      shouldHeaderFooterBeVisible = objc_msgSend_shouldHeaderFooterBeVisible_(v3, v12, v55);
    }

    else
    {
      shouldHeaderFooterBeVisible = 0;
    }

    v15 = 0;
    v16 = v3 + 24 * v55;
    do
    {
      if (!shouldHeaderFooterBeVisible)
      {
        v34 = *(v16 + 33);
        if (!v34)
        {
          goto LABEL_24;
        }

        objc_msgSend_removeFromParent(v34, v7, v8);
        v21 = *(v16 + 33);
        *(v16 + 33) = 0;
        v9 = 1;
        goto LABEL_23;
      }

      v17 = v56;
      if (v15 == 1)
      {
        v17 = 0;
      }

      if ((v17 & 1) == 0)
      {
        v18 = *(v16 + 33);
        v21 = v18;
        if (v18)
        {
          v22 = objc_msgSend_storage(v18, v19, v20);
          v25 = objc_msgSend_headerFooterProvider(v3, v23, v24);
          if (objc_msgSend_headerFooterTypeForStorage_(v25, v26, v22) == v55)
          {
            v29 = objc_msgSend_headerFooterProvider(v54, v27, v28);
            v31 = objc_msgSend_headerFragmentIndexForStorage_(v29, v30, v22);

            if (v15 == v31)
            {
LABEL_18:

              v3 = v54;
              goto LABEL_19;
            }
          }

          else
          {
          }

          objc_msgSend_removeFromParent(v21, v32, v33);
          v35 = *(v16 + 33);
          *(v16 + 33) = 0;

          goto LABEL_18;
        }

LABEL_19:
        if (!*(v16 + 33))
        {
          v36 = objc_msgSend_headerFooterProvider(v3, v19, v20);
          v38 = objc_msgSend_headerFooter_fragmentAtIndex_(v36, v37, v55, v15);

          if (!v38)
          {
            v41 = MEMORY[0x277D81150];
            v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "[TSWPPageLayout i_updateHeaderFooterLayouts]");
            v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPPageLayout.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v45, v42, v44, 343, 0, "invalid nil value for '%{public}s'", "fragmentStorage");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47);
          }

          v48 = objc_alloc(objc_msgSend_layoutClass(v38, v39, v40));
          v50 = objc_msgSend_initWithInfo_(v48, v49, v38);
          v51 = *(v16 + 33);
          *(v16 + 33) = v50;

          v9 = 1;
          v3 = v54;
        }

LABEL_23:
      }

LABEL_24:
      ++v15;
      v16 += 8;
    }

    while (v15 != 3);
    v10 = 0;
    v55 = 1;
  }

  while ((v53 & 1) != 0);
  return v9;
}

- (id)i_insertValidatedHeaderFooterLayouts:(BOOL *)a3
{
  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  v8 = objc_msgSend_children(self, v6, v7);
  v10 = objc_msgSend_initWithArray_(v5, v9, v8);

  v11 = objc_alloc(MEMORY[0x277CBEB18]);
  v13 = objc_msgSend_initWithCapacity_(v11, v12, 6);
  updated = objc_msgSend_i_updateHeaderFooterLayouts(self, v14, v15);
  v16 = 0;
  v17 = 1;
  do
  {
    v18 = 0;
    v19 = v17;
    v20 = self->_headerFooterLayouts[v16];
    do
    {
      v22 = v20[v18];
      if (v22)
      {
        objc_msgSend_addObject_(v13, v21, v22);
        if ((objc_msgSend_containsObject_(v10, v23, v22) & 1) == 0)
        {
          objc_msgSend_addChild_(self, v24, v22);
          objc_msgSend_invalidateTextLayout(v22, v25, v26);
        }
      }

      ++v18;
    }

    while (v18 != 3);
    v17 = 0;
    v16 = 1;
  }

  while ((v19 & 1) != 0);
  if (objc_msgSend_count(v13, v27, v28))
  {
    v31 = objc_msgSend_layoutController(self, v29, v30);
    v33 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v32, v13);
    objc_msgSend_validateLayoutsWithDependencies_(v31, v34, v33);
  }

  if (a3)
  {
    *a3 = updated;
  }

  return v13;
}

- (void)i_clearHeaderFooterLayouts
{
  v2 = 0;
  headerFooterLayouts = self->_headerFooterLayouts;
  v4 = 1;
  do
  {
    v5 = 0;
    v6 = v4;
    v7 = headerFooterLayouts[v2];
    do
    {
      v8 = v7[v5];
      v11 = v8;
      if (v8)
      {
        objc_msgSend_removeFromParent(v8, v9, v10);
        v12 = v7[v5];
        v7[v5] = 0;
      }

      ++v5;
    }

    while (v5 != 3);
    v4 = 0;
    v2 = 1;
  }

  while ((v6 & 1) != 0);
}

@end
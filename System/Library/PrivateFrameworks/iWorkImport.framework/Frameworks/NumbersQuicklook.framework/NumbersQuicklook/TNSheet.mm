@interface TNSheet
+ (id)sheetForSelectionModel:(id)a3 outIsPaginated:(BOOL *)a4;
- (BOOL)canMoveDrawables:(id)a3 toIndexes:(id)a4;
- (BOOL)hasReferenceToTables:(id)a3;
- (BOOL)printBackgrounds;
- (BOOL)resolverNameIsUsed:(id)a3;
- (CGColor)printingBackgroundCGColor;
- (CGRect)frame;
- (NSArray)printableInfos;
- (NSEnumerator)headerFooterFragmentEnumerator;
- (NSSet)referencedStyles;
- (NSString)description;
- (TNDocumentRoot)documentRoot;
- (TNSheet)initWithContext:(id)a3 suppressingHeaderFooterCreation:(BOOL)a4;
- (TSDColorFill)backgroundColor;
- (UIEdgeInsets)printMargins;
- (double)bodyWidth;
- (id)chartAndTableInfos;
- (id)chartInfos;
- (id)childEnumerator;
- (id)headerFooter:(int64_t)a3 fragmentAtIndex:(int64_t)a4;
- (id)i_newHeaderFooterStorage;
- (id)p_newHeaderFooterStorageWithStylesheet:(id)a3;
- (id)p_storagesForHeaderType:(int64_t)a3;
- (id)printableInfosIncludingComments:(BOOL)a3;
- (id)resolverMatchingName:(id)a3;
- (id)resolversMatchingPrefix:(id)a3;
- (id)tableInfoForName:(id)a3 caseSensitive:(BOOL)a4;
- (id)tableInfos;
- (int64_t)headerFooterTypeForStorage:(id)a3;
- (int64_t)headerFragmentIndexForStorage:(id)a3;
- (unsigned)nextUntitledResolverIndex;
- (void)acceptVisitor:(id)a3;
- (void)addChildInfo:(id)a3;
- (void)addRemappedTableName:(id)a3;
- (void)adoptStylesheet:(id)a3 withMapper:(id)a4;
- (void)clearRemappedTableNames;
- (void)enumerateHeaderFooterStoragesWithBlock:(id)a3;
- (void)i_importHeadersFooters:(id)a3 headerType:(int64_t)a4 useSingleHeaderFooter:(BOOL)a5;
- (void)insertChildInfo:(id)a3 above:(id)a4;
- (void)insertChildInfo:(id)a3 atIndex:(unint64_t)a4;
- (void)insertChildInfo:(id)a3 below:(id)a4;
- (void)insertContainedModel:(id)a3 atIndex:(unint64_t)a4;
- (void)insertDrawableInfo:(id)a3 atIndex:(unint64_t)a4 context:(id)a5;
- (void)insertDrawableInfo:(id)a3 context:(id)a4;
- (void)insertDrawableInfos:(id)a3 atIndex:(unint64_t)a4 context:(id)a5;
- (void)insertDrawableInfos:(id)a3 context:(id)a4;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)moveDrawables:(id)a3 toIndexes:(id)a4;
- (void)moveModel:(id)a3 toIndex:(unint64_t)a4;
- (void)p_createHeadersFooters:(int64_t)a3 stylesheet:(id)a4 mayAlreadyExist:(BOOL)a5;
- (void)p_dolcDispatch:(id)a3 skippingTextBoxes:(BOOL)a4;
- (void)p_setupHeadersFooters;
- (void)removeChildInfo:(id)a3;
- (void)removeContainedModel:(id)a3;
- (void)removeDrawableInfo:(id)a3;
- (void)removeDrawableInfos:(id)a3;
- (void)replaceChildInfo:(id)a3 with:(id)a4;
- (void)replaceReferencedStylesUsingBlock:(id)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
- (void)setChildInfos:(id)a3;
- (void)setContentScale:(double)a3;
- (void)setInPortraitPageOrientation:(BOOL)a3;
- (void)setIsAutofitOn:(BOOL)a3;
- (void)setLayoutDirection:(unint64_t)a3;
- (void)setName:(id)a3;
- (void)setPageFooterInset:(double)a3;
- (void)setPageHeaderInset:(double)a3;
- (void)setPageOrder:(unint64_t)a3;
- (void)setPrintMargins:(UIEdgeInsets)a3;
- (void)setShouldPrintComments:(BOOL)a3;
- (void)setShowPageNumbers:(BOOL)a3;
- (void)setStartPageNumber:(int64_t)a3;
- (void)setStyle:(id)a3;
- (void)setUsesSingleHeaderFooter:(BOOL)a3;
- (void)setUsingStartPageNumber:(BOOL)a3;
- (void)wasAddedToDocumentRoot:(id)a3 dolcContext:(id)a4;
- (void)wasRemovedFromDocumentRoot:(id)a3;
- (void)willBeAddedToDocumentRoot:(id)a3 dolcContext:(id)a4;
- (void)willBeRemovedFromDocumentRoot:(id)a3;
@end

@implementation TNSheet

- (TNSheet)initWithContext:(id)a3 suppressingHeaderFooterCreation:(BOOL)a4
{
  v6 = a3;
  v27.receiver = self;
  v27.super_class = TNSheet;
  v7 = [(TNSheet *)&v27 initWithContext:v6];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v9 = *(v7 + 8);
    *(v7 + 8) = v8;

    v10 = *(v7 + 18);
    *(v7 + 18) = &stru_2884F65E0;

    v7[143] = 0;
    *(v7 + 18) = 1;
    *(v7 + 19) = 0;
    v11 = vdupq_n_s64(0x4052000000000000uLL);
    v7[137] = 1;
    *(v7 + 216) = v11;
    *(v7 + 232) = v11;
    v7[138] = 1;
    v7[139] = 1;
    *(v7 + 20) = 0xBFF0000000000000;
    *(v7 + 21) = 0;
    v7[140] = 1;
    *(v7 + 22) = 1;
    *(v7 + 24) = 0x4032000000000000;
    *(v7 + 23) = 0x4032000000000000;
    v7[136] = 1;
    objc_opt_class();
    v14 = objc_msgSend_documentRoot(v7, v12, v13);
    v17 = objc_msgSend_stylesheet(v14, v15, v16);
    v19 = objc_msgSend_sheetStyleIDForPreset_(TNSheetStyle, v18, 0);
    v21 = objc_msgSend_cascadedStyleWithIdentifier_(v17, v20, v19);
    v22 = TSUDynamicCast();
    v23 = *(v7 + 25);
    *(v7 + 25) = v22;

    if (!a4)
    {
      objc_msgSend_p_setupHeadersFooters(v7, v24, v25);
    }
  }

  return v7;
}

- (void)p_setupHeadersFooters
{
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = v5;
    v25 = objc_msgSend_documentRoot(self, a2, v2);
    v9 = objc_msgSend_stylesheet(v25, v7, v8);
    objc_msgSend_p_createHeadersFooters_stylesheet_mayAlreadyExist_(self, v10, v4, v9, 0);

    v5 = 0;
    v4 = 1;
  }

  while ((v6 & 1) != 0);
  v26 = objc_msgSend_headerFooter_fragmentAtIndex_(self, a2, 1, 1);
  v11 = objc_alloc(MEMORY[0x277D80EC0]);
  v14 = objc_msgSend_context(self, v12, v13);
  v16 = objc_msgSend_initWithContext_(v11, v15, v14);

  v19 = objc_msgSend_documentRoot(self, v17, v18);
  v22 = objc_msgSend_documentLocale(v19, v20, v21);
  objc_msgSend_performTemplateLocalization_(v16, v23, v22);

  objc_msgSend_insertAttachmentOrFootnote_range_(v26, v24, v16, 0, 0);
}

- (double)bodyWidth
{
  v4 = objc_msgSend_documentRoot(self, a2, v2);
  objc_msgSend_pageSize(v4, v5, v6);
  v8 = v7;

  objc_msgSend_printMargins(self, v9, v10);
  return v8 - v11 - v12;
}

- (id)p_newHeaderFooterStorageWithStylesheet:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_headerAndFooterStyle(v4, v5, v6);
  v8 = objc_alloc(MEMORY[0x277D80F28]);
  v11 = objc_msgSend_context(self, v9, v10);
  v14 = objc_msgSend_initialListStyle(v7, v12, v13);
  v16 = objc_msgSend_initWithContext_string_kind_stylesheet_paragraphStyle_listStyle_section_columnStyle_(v8, v15, v11, &stru_2884F65E0, 1, v4, v7, v14, 0, 0);

  objc_msgSend_nonUndoableFilterParagraphStylesForHeaderFooter(v16, v17, v18);
  objc_msgSend_setParentInfo_(v16, v19, self);

  return v16;
}

- (void)p_createHeadersFooters:(int64_t)a3 stylesheet:(id)a4 mayAlreadyExist:(BOOL)a5
{
  v24 = a4;
  v9 = self->_headerFooters[a3];
  v10 = 3;
  do
  {
    if (!a5 && *v9)
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TNSheet p_createHeadersFooters:stylesheet:mayAlreadyExist:]");
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNSheet.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 213, 0, "skipping unexpected non-nil header or footer");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
    }

    if (!*v9)
    {
      v18 = objc_msgSend_p_newHeaderFooterStorageWithStylesheet_(self, v8, v24);
      objc_storeStrong(v9, v18);
      v22 = objc_msgSend_documentRoot(self, v19, v20);
      if (v22 && self->_inDocument)
      {
        objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v18, v21, v22, 0);
        objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v18, v23, v22, 0);
      }
    }

    ++v9;
    --v10;
  }

  while (v10);
}

- (void)enumerateHeaderFooterStoragesWithBlock:(id)a3
{
  v4 = 0;
  v9 = 0;
  headerFooters = self->_headerFooters;
  v6 = 1;
  do
  {
    v7 = 0;
    v8 = v6;
    do
    {
      (*(a3 + 2))(a3, headerFooters[v4][v7], v4, v7, &v9);
      if (v7 > 1)
      {
        break;
      }

      ++v7;
    }

    while ((v9 & 1) == 0);
    v6 = 0;
    v4 = 1;
  }

  while ((v8 & 1) != 0);
}

- (id)headerFooter:(int64_t)a3 fragmentAtIndex:(int64_t)a4
{
  if (a4 >= 3)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TNSheet headerFooter:fragmentAtIndex:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNSheet.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 243, 0, "bad header index");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v14 = self->_headerFooters[a3][a4];

  return v14;
}

- (int64_t)headerFooterTypeForStorage:(id)a3
{
  v4 = a3;
  v5 = self->_headerFooters[0][0];
  if (v5)
  {
    v6 = v5 == v4;
  }

  else
  {
    v6 = 0;
  }

  if (v6 || ((v7 = self->_headerFooters[0][1]) != 0 ? (v8 = v7 == v4) : (v8 = 0), v8 || ((v9 = self->_headerFooters[0][2]) != 0 ? (v10 = v9 == v4) : (v10 = 0), v10)))
  {
    v17 = 0;
  }

  else
  {
    v11 = self->_headerFooters[1][0];
    if (v11)
    {
      v12 = v11 == v4;
    }

    else
    {
      v12 = 0;
    }

    if (v12 || ((v13 = self->_headerFooters[1][1]) != 0 ? (v14 = v13 == v4) : (v14 = 0), v14 || ((v15 = self->_headerFooters[1][2]) != 0 ? (v16 = v15 == v4) : (v16 = 0), v16)))
    {
      v17 = 1;
    }

    else
    {
      v17 = -1;
    }
  }

  return v17;
}

- (int64_t)headerFragmentIndexForStorage:(id)a3
{
  v4 = a3;
  v5 = self->_headerFooters[0][0];
  if (v5)
  {
    v6 = v5 == v4;
  }

  else
  {
    v6 = 0;
  }

  if (v6 || ((v7 = self->_headerFooters[1][0]) != 0 ? (v8 = v7 == v4) : (v8 = 0), v8))
  {
    v17 = 0;
  }

  else
  {
    v9 = self->_headerFooters[0][1];
    if (v9)
    {
      v10 = v9 == v4;
    }

    else
    {
      v10 = 0;
    }

    if (v10 || ((v11 = self->_headerFooters[1][1]) != 0 ? (v12 = v11 == v4) : (v12 = 0), v12))
    {
      v17 = 1;
    }

    else
    {
      v13 = self->_headerFooters[0][2];
      if (v13)
      {
        v14 = v13 == v4;
      }

      else
      {
        v14 = 0;
      }

      if (v14 || ((v15 = self->_headerFooters[1][2]) != 0 ? (v16 = v15 == v4) : (v16 = 0), v16))
      {
        v17 = 2;
      }

      else
      {
        v17 = -1;
      }
    }
  }

  return v17;
}

- (id)p_storagesForHeaderType:(int64_t)a3
{
  v5 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3);
  v6 = 0;
  v7 = self->_headerFooters[a3];
  do
  {
    v9 = v7[v6];
    if (v9)
    {
      objc_msgSend_addObject_(v5, v8, v9);
    }

    ++v6;
  }

  while (v6 != 3);
  v11 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v10, v5);

  return v11;
}

- (NSEnumerator)headerFooterFragmentEnumerator
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TNSheet headerFooterFragmentEnumerator]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNSheet.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 310, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%s: %s", "Do not call method", "[TNSheet headerFooterFragmentEnumerator]");
  v14 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v13, v10, v12, 0);
  v15 = v14;

  objc_exception_throw(v14);
}

- (void)setName:(id)a3
{
  v15 = a3;
  objc_msgSend_willModify(self, v5, v6);
  objc_storeStrong(&self->_name, a3);
  v9 = objc_msgSend_documentRoot(self, v7, v8);
  v12 = objc_msgSend_calculationEngine(v9, v10, v11);
  objc_msgSend_markIndirectCallsAsDirty(v12, v13, v14);
}

- (TNDocumentRoot)documentRoot
{
  v4.receiver = self;
  v4.super_class = TNSheet;
  v2 = [(TNSheet *)&v4 documentRoot];

  return v2;
}

- (void)setLayoutDirection:(unint64_t)a3
{
  if (self->_layoutDirection != a3)
  {
    objc_msgSend_willModify(self, a2, a3);
    self->_layoutDirection = a3;
  }
}

- (void)setInPortraitPageOrientation:(BOOL)a3
{
  if (self->_inPortraitPageOrientation != a3)
  {
    objc_msgSend_willModify(self, a2, a3);
    self->_inPortraitPageOrientation = a3;
  }
}

- (void)setShowPageNumbers:(BOOL)a3
{
  if (self->_showPageNumbers != a3)
  {
    objc_msgSend_willModify(self, a2, a3);
    self->_showPageNumbers = a3;
  }
}

- (void)setIsAutofitOn:(BOOL)a3
{
  if (self->_isAutofitOn != a3)
  {
    objc_msgSend_willModify(self, a2, a3);
    self->_isAutofitOn = a3;
  }
}

- (void)setContentScale:(double)a3
{
  if (self->_contentScale != a3)
  {
    objc_msgSend_willModify(self, a2, v3);
    self->_contentScale = a3;
  }
}

- (void)setPageOrder:(unint64_t)a3
{
  if (self->_pageOrder != a3)
  {
    objc_msgSend_willModify(self, a2, a3);
    self->_pageOrder = a3;
  }
}

- (void)setUsingStartPageNumber:(BOOL)a3
{
  if (self->_usingStartPageNumber != a3)
  {
    objc_msgSend_willModify(self, a2, a3);
    self->_usingStartPageNumber = a3;
  }
}

- (void)setStartPageNumber:(int64_t)a3
{
  if (self->_startPageNumber != a3)
  {
    objc_msgSend_willModify(self, a2, a3);
    self->_startPageNumber = a3;
  }
}

- (void)setPageHeaderInset:(double)a3
{
  if (self->_pageHeaderInset != a3)
  {
    objc_msgSend_willModify(self, a2, v3);
    self->_pageHeaderInset = a3;
  }
}

- (void)setPageFooterInset:(double)a3
{
  if (self->_pageFooterInset != a3)
  {
    objc_msgSend_willModify(self, a2, v3);
    self->_pageFooterInset = a3;
  }
}

- (void)setShouldPrintComments:(BOOL)a3
{
  if (self->_shouldPrintComments != a3)
  {
    objc_msgSend_willModify(self, a2, a3);
    self->_shouldPrintComments = a3;
  }
}

- (void)setUsesSingleHeaderFooter:(BOOL)a3
{
  if (self->_usesSingleHeaderFooter != a3)
  {
    objc_msgSend_willModify(self, a2, a3);
    self->_usesSingleHeaderFooter = a3;
  }
}

- (void)setPrintMargins:(UIEdgeInsets)a3
{
  p_printMargins = &self->_printMargins;
  v5.f64[0] = a3.top;
  v5.f64[1] = a3.left;
  v6.f64[0] = a3.bottom;
  v6.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_printMargins.top, v5), vceqq_f64(*&self->_printMargins.bottom, v6)))) & 1) == 0)
  {
    right = a3.right;
    left = a3.left;
    bottom = a3.bottom;
    top = a3.top;
    objc_msgSend_willModify(self, a2, v3);
    p_printMargins->top = top;
    p_printMargins->left = left;
    p_printMargins->bottom = bottom;
    p_printMargins->right = right;
  }
}

+ (id)sheetForSelectionModel:(id)a3 outIsPaginated:(BOOL *)a4
{
  v5 = a3;
  objc_opt_class();
  v6 = TSUDynamicCast();
  *a4 = 0;
  if (!v6)
  {
    v7 = TSUProtocolCast();
    v8 = v7;
    if (v7)
    {
      v9 = sub_275F36B44(v7);
      if (v9)
      {
        objc_opt_class();
        v12 = objc_msgSend_parentInfo(v9, v10, v11, &unk_2885092B0);
        v6 = TSUDynamicCast();

        objc_opt_class();
        v13 = TSUDynamicCast();
        v16 = v13;
        if (v13 && objc_msgSend_wpKind(v13, v14, v15) == 1)
        {
          *a4 = 1;
        }
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)setChildInfos:(id)a3
{
  v9 = a3;
  if (self->_childInfos != v9)
  {
    objc_msgSend_willModify(self, v4, v5);
    v7 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], v6, v9);
    childInfos = self->_childInfos;
    self->_childInfos = v7;
  }
}

- (NSArray)printableInfos
{
  shouldPrintComments = objc_msgSend_shouldPrintComments(self, a2, v2);

  return objc_msgSend_printableInfosIncludingComments_(self, v4, shouldPrintComments);
}

- (id)printableInfosIncludingComments:(BOOL)a3
{
  v4 = objc_msgSend_childInfos(self, a2, a3);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_275F092A4;
  v8[3] = &unk_27A6A2A18;
  v9 = a3;
  v6 = objc_msgSend_tsu_arrayOfObjectsPassingTest_(v4, v5, v8);

  return v6;
}

- (void)insertDrawableInfo:(id)a3 context:(id)a4
{
  v18 = a3;
  v6 = a4;
  v9 = objc_msgSend_documentRoot(self, v7, v8);
  objc_msgSend_willModify(self, v10, v11);
  objc_msgSend_setParentInfo_(v18, v12, self);
  if (self->_inDocument)
  {
    objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v18, v13, v9, v6);
  }

  objc_msgSend_addObject_(self->_childInfos, v13, v18);
  if (self->_inDocument)
  {
    objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v18, v14, v9, v6);
  }

  v16 = objc_msgSend_documentRoot(self, v14, v15);
  objc_msgSend_sheet_insertedDrawable_(v16, v17, self, v18);
}

- (void)insertDrawableInfo:(id)a3 atIndex:(unint64_t)a4 context:(id)a5
{
  v20 = a3;
  v8 = a5;
  v11 = objc_msgSend_documentRoot(self, v9, v10);
  objc_msgSend_willModify(self, v12, v13);
  objc_msgSend_setParentInfo_(v20, v14, self);
  if (self->_inDocument)
  {
    objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v20, v15, v11, v8);
  }

  objc_msgSend_insertObject_atIndex_(self->_childInfos, v15, v20, a4);
  if (self->_inDocument)
  {
    objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v20, v16, v11, v8);
  }

  v18 = objc_msgSend_documentRoot(self, v16, v17);
  objc_msgSend_sheet_insertedDrawable_(v18, v19, self, v20);
}

- (void)insertDrawableInfos:(id)a3 atIndex:(unint64_t)a4 context:(id)a5
{
  v64 = *MEMORY[0x277D85DE8];
  v43 = a3;
  v8 = a5;
  v11 = objc_msgSend_documentRoot(self, v9, v10);
  objc_msgSend_willModify(self, v12, v13);
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v14 = v43;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v56, v63, 16);
  if (v17)
  {
    v18 = *v57;
    do
    {
      v19 = 0;
      do
      {
        if (*v57 != v18)
        {
          objc_enumerationMutation(v14);
        }

        objc_msgSend_setParentInfo_(*(*(&v56 + 1) + 8 * v19++), v16, self);
      }

      while (v17 != v19);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v16, &v56, v63, 16);
    }

    while (v17);
  }

  if (self->_inDocument)
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v21 = v14;
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v52, v62, 16);
    if (v24)
    {
      v25 = *v53;
      do
      {
        v26 = 0;
        do
        {
          if (*v53 != v25)
          {
            objc_enumerationMutation(v21);
          }

          objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(*(*(&v52 + 1) + 8 * v26++), v23, v11, v8);
        }

        while (v24 != v26);
        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v23, &v52, v62, 16);
      }

      while (v24);
    }
  }

  objc_msgSend_replaceObjectsInRange_withObjectsFromArray_(self->_childInfos, v20, a4, 0, v14);
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v27 = v14;
  v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v48, v61, 16);
  if (v31)
  {
    v32 = *v49;
    do
    {
      v33 = 0;
      do
      {
        if (*v49 != v32)
        {
          objc_enumerationMutation(v27);
        }

        v34 = *(*(&v48 + 1) + 8 * v33);
        v35 = objc_msgSend_documentRoot(self, v29, v30);
        objc_msgSend_sheet_insertedDrawable_(v35, v36, self, v34);

        ++v33;
      }

      while (v31 != v33);
      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v29, &v48, v61, 16);
    }

    while (v31);
  }

  if (self->_inDocument)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v37 = v27;
    v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v44, v60, 16);
    if (v40)
    {
      v41 = *v45;
      do
      {
        v42 = 0;
        do
        {
          if (*v45 != v41)
          {
            objc_enumerationMutation(v37);
          }

          objc_msgSend_wasAddedToDocumentRoot_dolcContext_(*(*(&v44 + 1) + 8 * v42++), v39, v11, v8);
        }

        while (v40 != v42);
        v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v39, &v44, v60, 16);
      }

      while (v40);
    }
  }
}

- (void)insertDrawableInfos:(id)a3 context:(id)a4
{
  v11 = a3;
  v6 = a4;
  v9 = objc_msgSend_count(self->_childInfos, v7, v8);
  objc_msgSend_insertDrawableInfos_atIndex_context_(self, v10, v11, v9, v6);
}

- (void)removeDrawableInfo:(id)a3
{
  v16 = a3;
  v6 = objc_msgSend_documentRoot(self, v4, v5);
  objc_msgSend_willModify(self, v7, v8);
  if (self->_inDocument)
  {
    objc_msgSend_willBeRemovedFromDocumentRoot_(v16, v9, v6);
  }

  objc_msgSend_setParentInfo_(v16, v9, 0);
  objc_msgSend_removeObject_(self->_childInfos, v10, v16);
  v13 = objc_msgSend_documentRoot(self, v11, v12);
  objc_msgSend_sheet_removedDrawable_(v13, v14, self, v16);

  if (self->_inDocument)
  {
    objc_msgSend_wasRemovedFromDocumentRoot_(v16, v15, v6);
  }
}

- (void)removeDrawableInfos:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_documentRoot(self, v5, v6);
  objc_msgSend_willModify(self, v8, v9);
  if (self->_inDocument)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v11 = v4;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v42, v48, 16);
    if (v14)
    {
      v15 = *v43;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v43 != v15)
          {
            objc_enumerationMutation(v11);
          }

          objc_msgSend_willBeRemovedFromDocumentRoot_(*(*(&v42 + 1) + 8 * i), v13, v7);
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v42, v48, 16);
      }

      while (v14);
    }
  }

  objc_msgSend_removeObjectsInArray_(self->_childInfos, v10, v4);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v17 = v4;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v38, v47, 16);
  if (v20)
  {
    v21 = *v39;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v39 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v38 + 1) + 8 * j);
        objc_msgSend_setParentInfo_(v23, v19, 0);
        v26 = objc_msgSend_documentRoot(self, v24, v25);
        objc_msgSend_sheet_removedDrawable_(v26, v27, self, v23);
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v19, &v38, v47, 16);
    }

    while (v20);
  }

  if (self->_inDocument)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v28 = v17;
    v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v34, v46, 16);
    if (v31)
    {
      v32 = *v35;
      do
      {
        for (k = 0; k != v31; ++k)
        {
          if (*v35 != v32)
          {
            objc_enumerationMutation(v28);
          }

          objc_msgSend_wasRemovedFromDocumentRoot_(*(*(&v34 + 1) + 8 * k), v30, v7, v34);
        }

        v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v30, &v34, v46, 16);
      }

      while (v31);
    }
  }
}

- (BOOL)canMoveDrawables:(id)a3 toIndexes:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v10 = v7;
  v11 = 0;
  if (v6 && v7)
  {
    v12 = objc_msgSend_count(v6, v8, v9);
    v15 = objc_msgSend_count(v10, v13, v14);
    Index = objc_msgSend_lastIndex(v10, v16, v17);
    v21 = objc_msgSend_count(self->_childInfos, v19, v20);
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v22 = v6;
    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v33, v37, 16);
    if (v25)
    {
      v31 = Index;
      v32 = v12;
      v26 = *v34;
      while (2)
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v34 != v26)
          {
            objc_enumerationMutation(v22);
          }

          if (objc_msgSend_indexOfObjectIdenticalTo_(self->_childInfos, v24, *(*(&v33 + 1) + 8 * i)) == 0x7FFFFFFFFFFFFFFFLL)
          {
            v28 = 0;
            goto LABEL_13;
          }
        }

        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v24, &v33, v37, 16);
        if (v25)
        {
          continue;
        }

        break;
      }

      v28 = 1;
LABEL_13:
      v12 = v32;
      Index = v31;
    }

    else
    {
      v28 = 1;
    }

    if (v12 != v15 || Index >= v21)
    {
      v11 = 0;
    }

    else
    {
      v11 = v28;
    }
  }

  return v11;
}

- (void)moveDrawables:(id)a3 toIndexes:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v10 = v7;
  if (v6 && v7)
  {
    v11 = objc_msgSend_count(v6, v8, v9);
    v14 = objc_msgSend_count(v10, v12, v13);
    Index = objc_msgSend_lastIndex(v10, v15, v16);
    v20 = objc_msgSend_count(self->_childInfos, v18, v19);
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    v44 = 0u;
    v21 = v6;
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v44, v48, 16);
    v43 = v20;
    if (v24)
    {
      v41 = Index;
      v42 = v14;
      v25 = *v45;
      while (2)
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v45 != v25)
          {
            objc_enumerationMutation(v21);
          }

          if (objc_msgSend_indexOfObjectIdenticalTo_(self->_childInfos, v23, *(*(&v44 + 1) + 8 * i)) == 0x7FFFFFFFFFFFFFFFLL)
          {
            v27 = 1;
            goto LABEL_13;
          }
        }

        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v23, &v44, v48, 16);
        if (v24)
        {
          continue;
        }

        break;
      }

      v27 = 0;
LABEL_13:
      v14 = v42;
      Index = v41;
    }

    else
    {
      v27 = 0;
    }

    if (v14)
    {
      v30 = v11 == v14;
    }

    else
    {
      v30 = 0;
    }

    if (!v30 || Index >= v43)
    {
      v32 = 1;
    }

    else
    {
      v32 = v27;
    }

    if ((v32 & 1) == 0)
    {
      objc_msgSend_willModify(self, v28, v29);
      v43 = &v40;
      objc_msgSend_getIndexes_maxCount_inIndexRange_(v10, v33, &v40 - ((8 * v11 + 15) & 0xFFFFFFFFFFFFFFF0), v11, 0);
      objc_msgSend_removeObjectsInArray_(self->_childInfos, v34, v21);
      v36 = 0;
      do
      {
        childInfos = self->_childInfos;
        v38 = objc_msgSend_objectAtIndex_(v21, v35, v36);
        objc_msgSend_insertObject_atIndex_(childInfos, v39, v38, *(&v40 + 8 * v36 - ((8 * v11 + 15) & 0xFFFFFFFFFFFFFFF0)));

        ++v36;
      }

      while (v11 != v36);
    }
  }
}

- (id)chartAndTableInfos
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = objc_msgSend_childInfos(self, v5, v6, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v15, v19, 16);
  if (v9)
  {
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }
        }

        objc_msgSend_addObject_(v4, v13, v12);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v13, &v15, v19, 16);
    }

    while (v9);
  }

  return v4;
}

- (id)chartInfos
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = objc_msgSend_childInfos(self, v5, v6, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v15, v19, 16);
  if (v9)
  {
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_msgSend_addObject_(v4, v13, v12);
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v13, &v15, v19, 16);
    }

    while (v9);
  }

  return v4;
}

- (id)tableInfos
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = objc_msgSend_childInfos(self, v5, v6, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v15, v19, 16);
  if (v9)
  {
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_msgSend_addObject_(v4, v13, v12);
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v13, &v15, v19, 16);
    }

    while (v9);
  }

  return v4;
}

- (id)tableInfoForName:(id)a3 caseSensitive:(BOOL)a4
{
  v4 = a4;
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v31 = self;
  obj = objc_msgSend_childInfos(self, v7, v8);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v33, v37, 16);
  if (v10)
  {
    v11 = *v34;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(obj);
        }

        objc_opt_class();
        v13 = TSUDynamicCast();
        v16 = v13;
        if (v4)
        {
          v17 = objc_msgSend_tableName(v13, v14, v15);
          isEqualToString = objc_msgSend_isEqualToString_(v17, v18, v6);

          if (isEqualToString)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v20 = objc_msgSend_documentRoot(v31, v14, v15);
          v23 = objc_msgSend_documentLocale(v20, v21, v22);
          v26 = objc_msgSend_tableName(v16, v24, v25);
          IsEqual_toString = objc_msgSend_localizedCaseInsensitiveIsEqual_toString_(v23, v27, v26, v6);

          if (IsEqual_toString)
          {
            goto LABEL_13;
          }
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, &v33, v37, 16);
    }

    while (v10);
  }

  v16 = 0;
LABEL_13:

  return v16;
}

- (BOOL)hasReferenceToTables:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_tableInfos(self, v5, v6);
  v10 = objc_msgSend_allObjects(v4, v8, v9);
  v12 = objc_msgSend_firstObjectCommonWithArray_(v7, v11, v10);
  v13 = v12 != 0;

  return v13;
}

- (void)adoptStylesheet:(id)a3 withMapper:(id)a4
{
  v60 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_mappedStyleForStyle_(v7, v8, self->_style);
  if (!v10)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TNSheet adoptStylesheet:withMapper:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNSheet.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 681, 0, "Failed to map style %@", self->_style);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TNSheet adoptStylesheet:withMapper:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNSheet.mm");
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v22, 682, 0, "style mapped returned style of class %@ for %@", v24, self->_style);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
  }

  objc_opt_class();
  v30 = TSUDynamicCast();
  if (v30)
  {
    objc_msgSend_setStyle_(self, v28, v30);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v31 = objc_msgSend_childInfos(self, v28, v29);
  v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v55, v59, 16);
  if (v34)
  {
    v35 = *v56;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v56 != v35)
        {
          objc_enumerationMutation(v31);
        }

        objc_msgSend_adoptStylesheet_withMapper_(*(*(&v55 + 1) + 8 * i), v33, v6, v7);
      }

      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v33, &v55, v59, 16);
    }

    while (v34);
  }

  v39 = objc_msgSend_footerStorages(self, v37, v38);
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = sub_275F0AE74;
  v52[3] = &unk_27A6A2A40;
  v40 = v6;
  v53 = v40;
  v41 = v7;
  v54 = v41;
  objc_msgSend_enumerateObjectsUsingBlock_(v39, v42, v52);

  v45 = objc_msgSend_headerStorages(self, v43, v44);
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = sub_275F0AE80;
  v49[3] = &unk_27A6A2A40;
  v46 = v40;
  v50 = v46;
  v47 = v41;
  v51 = v47;
  objc_msgSend_enumerateObjectsUsingBlock_(v45, v48, v49);
}

- (void)p_dolcDispatch:(id)a3 skippingTextBoxes:(BOOL)a4
{
  v4 = a4;
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v9 = objc_msgSend_array(MEMORY[0x277CBEB18], v7, v8);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = objc_msgSend_childInfos(self, v10, v11);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v29, v34, 16);
  if (v14)
  {
    v15 = *v30;
    do
    {
      v16 = 0;
      do
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v29 + 1) + 8 * v16);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_msgSend_addObject_(v9, v18, v17);
        }

        else if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_msgSend_invokeWithTarget_(v6, v18, v17);
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v18, &v29, v34, 16);
    }

    while (v14);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v19 = v9;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v25, v33, 16);
  if (v22)
  {
    v23 = *v26;
    do
    {
      v24 = 0;
      do
      {
        if (*v26 != v23)
        {
          objc_enumerationMutation(v19);
        }

        objc_msgSend_invokeWithTarget_(v6, v21, *(*(&v25 + 1) + 8 * v24++), v25);
      }

      while (v22 != v24);
      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v25, v33, 16);
    }

    while (v22);
  }
}

- (void)willBeAddedToDocumentRoot:(id)a3 dolcContext:(id)a4
{
  v41 = a3;
  v40 = a4;
  if ((objc_msgSend_wasMigratingStyles(v40, v7, v8) & 1) == 0)
  {
    objc_opt_class();
    v10 = TSUDynamicCast();
    v13 = objc_msgSend_name(self, v11, v12);
    valid = objc_msgSend_validNameForNewSheet_(v10, v14, v13);

    if ((valid & 1) == 0)
    {
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TNSheet willBeAddedToDocumentRoot:dolcContext:]");
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNSheet.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 733, 0, "Sheet name that is not valid when added to the document");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
    }
  }

  v24 = MEMORY[0x277CBEAE8];
  v25 = objc_msgSend_methodSignatureForSelector_(self, v9, a2);
  v27 = objc_msgSend_invocationWithMethodSignature_(v24, v26, v25);

  objc_msgSend_setSelector_(v27, v28, a2);
  objc_msgSend_setArgument_atIndex_(v27, v29, &v41, 2);
  objc_msgSend_setArgument_atIndex_(v27, v30, &v40, 3);
  v33 = objc_msgSend_wasUnarchived(v40, v31, v32);
  objc_msgSend_p_dolcDispatch_skippingTextBoxes_(self, v34, v27, v33);
  v36 = 0;
  headerFooters = self->_headerFooters;
  v38 = self->_headerFooters[1];
  do
  {
    objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v38[v36++], v35, v41, v40);
  }

  while (v36 != 3);
  for (i = 0; i != 3; ++i)
  {
    objc_msgSend_willBeAddedToDocumentRoot_dolcContext_((*headerFooters)[i], v35, v41, v40);
  }
}

- (void)wasAddedToDocumentRoot:(id)a3 dolcContext:(id)a4
{
  v27 = a3;
  v26 = a4;
  v9 = objc_msgSend_context(v27, v7, v8);
  objc_msgSend_wasAddedToDocumentWithContext_(self, v10, v9);

  v11 = MEMORY[0x277CBEAE8];
  v13 = objc_msgSend_methodSignatureForSelector_(self, v12, a2);
  v15 = objc_msgSend_invocationWithMethodSignature_(v11, v14, v13);

  objc_msgSend_setSelector_(v15, v16, a2);
  objc_msgSend_setArgument_atIndex_(v15, v17, &v27, 2);
  objc_msgSend_setArgument_atIndex_(v15, v18, &v26, 3);
  v21 = objc_msgSend_wasUnarchived(v26, v19, v20);
  objc_msgSend_p_dolcDispatch_skippingTextBoxes_(self, v22, v15, v21);
  for (i = 0; i != 3; ++i)
  {
    objc_msgSend_wasAddedToDocumentRoot_dolcContext_(self->_headerFooters[1][i], v23, v27, v26);
  }

  for (j = 0; j != 3; ++j)
  {
    objc_msgSend_wasAddedToDocumentRoot_dolcContext_(self->_headerFooters[0][j], v23, v27, v26);
  }

  self->_inDocument = 1;
}

- (void)willBeRemovedFromDocumentRoot:(id)a3
{
  v19 = a3;
  v5 = MEMORY[0x277CBEAE8];
  v7 = objc_msgSend_methodSignatureForSelector_(self, v6, a2);
  v9 = objc_msgSend_invocationWithMethodSignature_(v5, v8, v7);

  objc_msgSend_setSelector_(v9, v10, a2);
  objc_msgSend_setArgument_atIndex_(v9, v11, &v19, 2);
  objc_msgSend_p_dolcDispatch_skippingTextBoxes_(self, v12, v9, 0);
  for (i = 0; i != 3; ++i)
  {
    objc_msgSend_willBeRemovedFromDocumentRoot_(self->_headerFooters[1][i], v13, v19);
  }

  for (j = 0; j != 3; ++j)
  {
    objc_msgSend_willBeRemovedFromDocumentRoot_(self->_headerFooters[0][j], v13, v19);
  }

  v17 = objc_msgSend_context(v19, v13, v16);
  objc_msgSend_willBeRemovedFromDocumentWithContext_(self, v18, v17);
}

- (void)wasRemovedFromDocumentRoot:(id)a3
{
  v16 = a3;
  v5 = MEMORY[0x277CBEAE8];
  v7 = objc_msgSend_methodSignatureForSelector_(self, v6, a2);
  v9 = objc_msgSend_invocationWithMethodSignature_(v5, v8, v7);

  objc_msgSend_setSelector_(v9, v10, a2);
  objc_msgSend_setArgument_atIndex_(v9, v11, &v16, 2);
  objc_msgSend_p_dolcDispatch_skippingTextBoxes_(self, v12, v9, 0);
  for (i = 0; i != 3; ++i)
  {
    objc_msgSend_wasRemovedFromDocumentRoot_(self->_headerFooters[1][i], v13, v16);
  }

  for (j = 0; j != 3; ++j)
  {
    objc_msgSend_wasRemovedFromDocumentRoot_(self->_headerFooters[0][j], v13, v16);
  }

  self->_inDocument = 0;
}

- (id)childEnumerator
{
  v3 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], a2, self->_childInfos);
  v6 = objc_msgSend_headerStorages(self, v4, v5);
  objc_msgSend_addObjectsFromArray_(v3, v7, v6);

  v10 = objc_msgSend_footerStorages(self, v8, v9);
  objc_msgSend_addObjectsFromArray_(v3, v11, v10);

  v14 = objc_msgSend_objectEnumerator(v3, v12, v13);

  return v14;
}

- (id)resolverMatchingName:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v27 = a3;
  objc_msgSend_tableInfos(self, v4, v5);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  obj = v29 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v28, v32, 16);
  if (v9)
  {
    v10 = 0;
    v11 = *v29;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        v14 = objc_msgSend_tableName(v13, v7, v8);
        v17 = objc_msgSend_documentRoot(self, v15, v16);
        v20 = objc_msgSend_documentLocale(v17, v18, v19);
        IsEqual_toString = objc_msgSend_localizedCaseInsensitiveIsEqual_toString_(v20, v21, v27, v14);

        if (IsEqual_toString)
        {
          if (v10)
          {

            goto LABEL_13;
          }

          v10 = objc_msgSend_baseTableModel(v13, v23, v24);
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v28, v32, 16);
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_13:
    v10 = 0;
  }

  return v10;
}

- (id)resolversMatchingPrefix:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6);
  objc_msgSend_tableInfos(self, v8, v9);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  obj = v33 = 0u;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v32, v36, 16);
  if (v13)
  {
    v14 = *v33;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v32 + 1) + 8 * i);
        v17 = objc_msgSend_tableName(v16, v11, v12);
        if (!objc_msgSend_length(v4, v18, v19) || (objc_msgSend_objectLocale(v16, v20, v21), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend_locale(v22, v23, v24), v25 = objc_claimAutoreleasedReturnValue(), hasCaseInsensitivePrefix_withLocale = objc_msgSend_tst_hasCaseInsensitivePrefix_withLocale_(v17, v26, v4, v25), v25, v22, hasCaseInsensitivePrefix_withLocale))
        {
          v28 = objc_msgSend_resolver(v16, v20, v21);
          objc_msgSend_addObject_(v7, v29, v28);
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v32, v36, 16);
    }

    while (v13);
  }

  return v7;
}

- (BOOL)resolverNameIsUsed:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v25 = a3;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v3 = self->_childInfos;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v26, v30, 16);
  if (v5)
  {
    v6 = *v27;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v8;
          v15 = objc_msgSend_tableName(v10, v11, v12);
          if (v15)
          {
            v16 = objc_msgSend_documentRoot(self, v13, v14);
            v19 = objc_msgSend_documentLocale(v16, v17, v18);
            IsEqual_toString = objc_msgSend_localizedCaseInsensitiveIsEqual_toString_(v19, v20, v25, v15);

            if (IsEqual_toString)
            {
              v22 = 1;
              goto LABEL_14;
            }
          }

          else
          {
          }
        }
      }

      v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v9, &v26, v30, 16);
    }

    while (v5);
  }

  v22 = 0;
LABEL_14:

  return v22;
}

- (unsigned)nextUntitledResolverIndex
{
  tableNameCounter = self->_tableNameCounter;
  self->_tableNameCounter = tableNameCounter + 1;
  return tableNameCounter;
}

- (void)addRemappedTableName:(id)a3
{
  v4 = a3;
  remappedTableNames = self->_remappedTableNames;
  v8 = v4;
  if (!remappedTableNames)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7 = self->_remappedTableNames;
    self->_remappedTableNames = v6;

    remappedTableNames = self->_remappedTableNames;
    v4 = v8;
  }

  objc_msgSend_addObject_(remappedTableNames, v4, v4);
}

- (void)clearRemappedTableNames
{
  remappedTableNames = self->_remappedTableNames;
  self->_remappedTableNames = 0;
}

- (void)insertContainedModel:(id)a3 atIndex:(unint64_t)a4
{
  v6 = TSUProtocolCast();
  v15 = v6;
  if (v6)
  {
    objc_msgSend_insertChildInfo_atIndex_(self, v6, v6, a4, &unk_2885092B0);
  }

  else
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TNSheet insertContainedModel:atIndex:]", &unk_2885092B0);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNSheet.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 944, 0, "Must provide an info!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }
}

- (void)removeContainedModel:(id)a3
{
  v4 = TSUProtocolCast();
  v13 = v4;
  if (v4)
  {
    objc_msgSend_removeChildInfo_(self, v4, v4, &unk_2885092B0);
  }

  else
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TNSheet removeContainedModel:]", &unk_2885092B0);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNSheet.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 952, 0, "Must provide an info!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }
}

- (void)moveModel:(id)a3 toIndex:(unint64_t)a4
{
  v21[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = TSUProtocolCast();
  v9 = v7;
  if (v7)
  {
    v21[0] = v7;
    v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v8, v21, 1, &unk_2885092B0);
    v12 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAA78], v11, a4);
    objc_msgSend_moveChildren_toIndexes_(self, v13, v10, v12);
  }

  else
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TNSheet moveModel:toIndex:]", &unk_2885092B0);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNSheet.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 960, 0, "Must provide an info!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }
}

- (void)addChildInfo:(id)a3
{
  v8 = a3;
  v6 = objc_msgSend_count(self->_childInfos, v4, v5);
  objc_msgSend_insertChildInfo_atIndex_(self, v7, v8, v6);
}

- (void)insertChildInfo:(id)a3 atIndex:(unint64_t)a4
{
  v11 = a3;
  objc_opt_class();
  v6 = TSUDynamicCast();
  v9 = objc_msgSend_insertingPrototypeContext(MEMORY[0x277D805F0], v7, v8);
  objc_msgSend_insertDrawableInfo_atIndex_context_(self, v10, v6, a4, v9);
}

- (void)insertChildInfo:(id)a3 below:(id)a4
{
  v10 = a3;
  v6 = a4;
  v8 = objc_msgSend_indexOfObject_(self->_childInfos, v7, v6);
  objc_msgSend_insertChildInfo_atIndex_(self, v9, v10, v8 + 1);
}

- (void)insertChildInfo:(id)a3 above:(id)a4
{
  v10 = a3;
  v6 = a4;
  v8 = objc_msgSend_indexOfObject_(self->_childInfos, v7, v6);
  objc_msgSend_insertChildInfo_atIndex_(self, v9, v10, v8);
}

- (void)removeChildInfo:(id)a3
{
  v6 = a3;
  objc_opt_class();
  v4 = TSUDynamicCast();
  objc_msgSend_removeDrawableInfo_(self, v5, v4);
}

- (void)replaceChildInfo:(id)a3 with:(id)a4
{
  v14 = a3;
  v6 = a4;
  objc_msgSend_willModify(self, v7, v8);
  v10 = objc_msgSend_indexOfObject_(self->_childInfos, v9, v14);
  objc_msgSend_replaceObjectAtIndex_withObject_(self->_childInfos, v11, v10, v6);
  objc_msgSend_setParentInfo_(v14, v12, 0);
  objc_msgSend_setParentInfo_(v6, v13, self);
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v8 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v7, *(a3 + 12) & 0xFFFFFFFFFFFFFFFELL);
  name = self->_name;
  self->_name = v8;

  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = sub_275F0D0A4;
  v70[3] = &unk_27A6A2A68;
  v70[4] = self;
  sub_275F0CFF8(v6, a3 + 24, &unk_2885092B0, v70);
  self->_inDocument = 1;
  self->_tableNameCounter = 1;
  v12 = *(a3 + 4);
  self->_inPortraitPageOrientation = ((v12 & 0x40) == 0) | *(a3 + 144) & 1;
  self->_showPageNumbers = ((v12 & 0x100) == 0) | *(a3 + 146) & 1;
  self->_isAutofitOn = ((v12 & 0x200) == 0) | *(a3 + 147) & 1;
  self->_printBackgrounds = ((v12 & 0x20000) == 0) | *(a3 + 170) & 1;
  if ((v12 & 0x400) != 0)
  {
    v13 = *(a3 + 37);
    if (!self->_isAutofitOn)
    {
      v14 = fmax(fmin(v13, 1.75), 0.25);
      self->_contentScale = v14;
LABEL_8:
      if (v14 == v13)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

LABEL_5:
    self->_contentScale = -1.0;
    v14 = -1.0;
    goto LABEL_8;
  }

  if (self->_isAutofitOn)
  {
    v13 = 0.00999999978;
    goto LABEL_5;
  }

  self->_contentScale = 1.0;
LABEL_9:
  objc_msgSend_willModifyForUpgrade(self, v10, v11);
  v12 = *(a3 + 4);
LABEL_10:
  self->_pageOrder = 0;
  self->_pageOrder = (*(a3 + 38) == 1) & (v12 >> 11);
  if ((v12 & 2) != 0)
  {
    TSDEdgeInsetsCreateFromMessage();
  }

  else
  {
    v15 = 72.0;
    v16 = 72.0;
    v17 = 72.0;
    v18 = 72.0;
  }

  self->_printMargins.top = v15;
  self->_printMargins.left = v16;
  self->_printMargins.bottom = v17;
  self->_printMargins.right = v18;
  v19 = *(a3 + 4);
  if ((v19 & 0x40000) != 0)
  {
    self->_shouldPrintComments = *(a3 + 171);
  }

  v20 = *(a3 + 168);
  if ((v19 & 0x8000) == 0)
  {
    v20 = 1;
  }

  self->_usingStartPageNumber = v20;
  v21 = *(a3 + 39);
  if ((v19 & 0x1000) == 0)
  {
    v21 = 1;
  }

  self->_startPageNumber = v21;
  if ((v19 & 0x2000) != 0)
  {
    TSPCGFloatFromFloat(*(a3 + 40));
    self->_pageHeaderInset = v22;
    v19 = *(a3 + 4);
    if ((v19 & 0x4000) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    self->_pageHeaderInset = 18.0;
    if ((v19 & 0x4000) == 0)
    {
LABEL_21:
      self->_pageFooterInset = 18.0;
      goto LABEL_24;
    }
  }

  TSPCGFloatFromFloat(*(a3 + 41));
  self->_pageFooterInset = v23;
  v19 = *(a3 + 4);
LABEL_24:
  self->_layoutDirection = (*(a3 + 43) != 0) & (v19 >> 19);
  v68[0] = 0;
  v68[1] = v68;
  v68[2] = 0x3032000000;
  v68[3] = sub_275F0D1F4;
  v68[4] = sub_275F0D204;
  v69 = 0;
  v66[0] = 0;
  v66[1] = v66;
  v66[2] = 0x3032000000;
  v66[3] = sub_275F0D1F4;
  v66[4] = sub_275F0D204;
  v67 = 0;
  if ((v19 & 0x10000) != 0)
  {
    self->_usesSingleHeaderFooter = *(a3 + 169);
  }

  else
  {
    if ((v19 & 4) != 0)
    {
      v24 = *(a3 + 14);
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = sub_275F0D20C;
      v65[3] = &unk_27A6A2A90;
      v65[4] = v68;
      v25 = v6;
      v26 = objc_opt_class();
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v25, v27, v24, v26, 0, v65);

      v19 = *(a3 + 4);
    }

    if ((v19 & 8) != 0)
    {
      v28 = *(a3 + 15);
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = sub_275F0D21C;
      v64[3] = &unk_27A6A2A90;
      v64[4] = v66;
      v29 = v6;
      v30 = objc_opt_class();
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v29, v31, v28, v30, 0, v64);
    }
  }

  v61 = 0;
  v62 = 0;
  v63 = 0;
  v32 = *(a3 + 14);
  if (v32 >= 1)
  {
    v33 = 8;
    v34 = *(a3 + 14);
    while (1)
    {
      v35 = v63;
      if (!v63)
      {
        goto LABEL_37;
      }

      v36 = *v63;
      if (v62 >= *v63)
      {
        break;
      }

      v37 = &v63[2 * v62];
      LODWORD(v62) = v62 + 1;
      v38 = *(v37 + 1);
LABEL_39:
      TSP::Reference::CopyFrom(v38, *(*(a3 + 8) + v33));
      v33 += 8;
      if (!--v34)
      {
        goto LABEL_40;
      }
    }

    if (v36 == HIDWORD(v62))
    {
LABEL_37:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v61);
      v35 = v63;
      v36 = *v63;
    }

    *v35 = v36 + 1;
    v38 = MEMORY[0x277C90F90](v61);
    v39 = &v63[2 * v62];
    LODWORD(v62) = v62 + 1;
    *(v39 + 1) = v38;
    goto LABEL_39;
  }

LABEL_40:
  v40 = *(a3 + 20);
  if (v40 >= 1)
  {
    v41 = 8;
    v42 = *(a3 + 20);
    while (1)
    {
      v43 = v63;
      if (!v63)
      {
        goto LABEL_47;
      }

      v44 = *v63;
      if (v62 >= *v63)
      {
        break;
      }

      v45 = &v63[2 * v62];
      LODWORD(v62) = v62 + 1;
      v46 = *(v45 + 1);
LABEL_49:
      TSP::Reference::CopyFrom(v46, *(*(a3 + 11) + v41));
      v41 += 8;
      if (!--v42)
      {
        goto LABEL_50;
      }
    }

    if (v44 == HIDWORD(v62))
    {
LABEL_47:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v61);
      v43 = v63;
      v44 = *v63;
    }

    *v43 = v44 + 1;
    v46 = MEMORY[0x277C90F90](v61);
    v47 = &v63[2 * v62];
    LODWORD(v62) = v62 + 1;
    *(v47 + 1) = v46;
    goto LABEL_49;
  }

LABEL_50:
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = sub_275F0D22C;
  v58[3] = &unk_27A6A2AB8;
  v58[4] = self;
  v59 = v32;
  v60 = v40;
  v48 = v6;
  v49 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v48, v50, &v61, v49, 0, v58);

  if ((*(a3 + 16) & 0x20) != 0)
  {
    v52 = *(a3 + 17);
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = sub_275F0D450;
    v57[3] = &unk_27A6A2AE0;
    v57[4] = self;
    v53 = v48;
    v54 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v53, v55, v52, v54, 0, v57);
  }

  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = sub_275F0D464;
  v56[3] = &unk_27A6A2B30;
  v56[4] = self;
  v56[5] = v68;
  v56[6] = v66;
  objc_msgSend_addFinalizeHandler_(v48, v51, v56);
  sub_275EEF3F0(&v61);
  _Block_object_dispose(v66, 8);

  _Block_object_dispose(v68, 8);
}

- (void)loadFromUnarchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(v7, v4, off_2812DAFE8[22]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v6, v5, v7);
}

- (void)saveToArchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(v7, v4, sub_275F0ECD4, off_2812DAFE8[22]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, v7);
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v109 = a4;
  v8 = objc_msgSend_name(self, v6, v7);
  v11 = objc_msgSend_tsp_protobufString(v8, v9, v10);
  sub_275F0E0DC(a3, v11);

  objc_msgSend_setStrongReferenceArray_message_(v109, v12, self->_childInfos, a3 + 24);
  contentScale = self->_contentScale;
  if (!self->_isAutofitOn)
  {
    if (contentScale >= 0.25 && contentScale <= 1.75)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (contentScale != -1.0)
  {
LABEL_9:
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TNSheet saveToArchive:archiver:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNSheet.mm");
    isAutofitOn = self->_isAutofitOn;
    v21 = self->_contentScale;
    v24 = objc_msgSend_objectUUID(self, v22, v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v25, v17, v19, 1376, 0, "Mismatch between isAutoFit:%d and contentScale:%f  in Sheet uid:%{public}@", isAutofitOn, *&v21, v24);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
  }

LABEL_10:
  v28 = *(a3 + 4);
  *(a3 + 144) = self->_inPortraitPageOrientation;
  *(a3 + 146) = self->_showPageNumbers;
  *(a3 + 147) = self->_isAutofitOn;
  v29 = self->_contentScale;
  *(a3 + 37) = v29;
  *(a3 + 4) = v28 | 0x742;
  if (!*(a3 + 13))
  {
    v30 = *(a3 + 1);
    if (v30)
    {
      v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
    }

    *(a3 + 13) = MEMORY[0x277C90F20](v30);
  }

  TSDEdgeInsetsCopyToMessage();
  style = self->_style;
  if (style)
  {
    *(a3 + 4) |= 0x20u;
    v34 = *(a3 + 17);
    if (!v34)
    {
      v35 = *(a3 + 1);
      if (v35)
      {
        v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
      }

      v34 = MEMORY[0x277C90F90](v35);
      *(a3 + 17) = v34;
    }

    objc_msgSend_setStrongReference_message_(v109, v31, style, v34);
    objc_msgSend_backgroundColor(self->_style, v36, v37);
  }

  else
  {
    objc_msgSend_backgroundColor(0, v31, v32);
  }
  v40 = ;
  if (v40)
  {
    v41 = objc_msgSend_backgroundColor(self->_style, v38, v39);
    v44 = objc_msgSend_color(v41, v42, v43);
    v47 = objc_msgSend_whiteColor(MEMORY[0x277D81180], v45, v46);
    isEqual = objc_msgSend_isEqual_(v44, v48, v47);

    if ((isEqual & 1) == 0)
    {
      objc_msgSend_requiresDocumentReadVersion_writeVersion_featureIdentifier_(v109, v38, *MEMORY[0x277D80968], *MEMORY[0x277D808C8], @"TNSheetBackgrounds");
    }
  }

  v50 = objc_msgSend_layoutDirection(self, v38, v39);
  v53 = *(a3 + 4) | 0x80000;
  *(a3 + 4) = v53;
  if (v50)
  {
    *(a3 + 43) = 1;
    objc_msgSend_requiresDocumentVersion_(v109, v51, *MEMORY[0x277D80990]);
    v53 = *(a3 + 4);
  }

  else
  {
    *(a3 + 43) = 0;
  }

  v54 = self->_pageOrder == 1;
  *(a3 + 4) = v53 | 0x800;
  *(a3 + 38) = v54;
  shouldPrintComments = objc_msgSend_shouldPrintComments(self, v51, v52);
  *(a3 + 4) |= 0x40000u;
  *(a3 + 171) = shouldPrintComments;
  isUsingStartPageNumber = objc_msgSend_isUsingStartPageNumber(self, v56, v57);
  *(a3 + 4) |= 0x8000u;
  *(a3 + 168) = isUsingStartPageNumber;
  started = objc_msgSend_startPageNumber(self, v59, v60);
  if (started >= 0x80000000)
  {
    v95 = MEMORY[0x277D81150];
    v96 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "[TNSheet saveToArchive:archiver:]");
    v98 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v97, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNSheet.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v95, v99, v96, v98, 1408, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v100, v101);
    LODWORD(started) = 0x7FFFFFFF;
  }

  else if (started <= 0xFFFFFFFF7FFFFFFFLL)
  {
    v102 = MEMORY[0x277D81150];
    v103 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "[TNSheet saveToArchive:archiver:]");
    v105 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v104, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNSheet.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v102, v106, v103, v105, 1408, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v107, v108);
    LODWORD(started) = 0x80000000;
  }

  *(a3 + 4) |= 0x1000u;
  *(a3 + 39) = started;
  objc_msgSend_pageHeaderInset(self, v62, v63);
  TSPCGFloatToFloat(v64);
  *(a3 + 4) |= 0x2000u;
  *(a3 + 40) = v65;
  objc_msgSend_pageFooterInset(self, v66, v67);
  TSPCGFloatToFloat(v68);
  *(a3 + 4) |= 0x4000u;
  *(a3 + 41) = v69;
  v72 = objc_msgSend_printBackgrounds(self, v70, v71);
  v74 = *(a3 + 4);
  *(a3 + 170) = v72;
  usesSingleHeaderFooter = self->_usesSingleHeaderFooter;
  *(a3 + 4) = v74 | 0x30000;
  *(a3 + 169) = usesSingleHeaderFooter;
  v76 = 1;
  do
  {
    v77 = 0;
    v78 = v76;
    do
    {
      while (1)
      {
        if (v77 != 1 && self->_usesSingleHeaderFooter)
        {
          goto LABEL_46;
        }

        if (v78)
        {
          break;
        }

        v83 = self->_headerFooters[1][v77];
        v84 = *(a3 + 11);
        if (!v84)
        {
          goto LABEL_49;
        }

        v85 = *(a3 + 20);
        v86 = *v84;
        if (v85 >= *v84)
        {
          if (v86 == *(a3 + 21))
          {
LABEL_49:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 72));
            v84 = *(a3 + 11);
            v86 = *v84;
          }

          *v84 = v86 + 1;
          v91 = MEMORY[0x277C90F90](*(a3 + 9));
          v92 = *(a3 + 20);
          v93 = *(a3 + 11) + 8 * v92;
          *(a3 + 20) = v92 + 1;
          *(v93 + 8) = v91;
          objc_msgSend_setStrongReference_message_(v109, v94, v83, v91);
          goto LABEL_51;
        }

        *(a3 + 20) = v85 + 1;
        objc_msgSend_setStrongReference_message_(v109, v73, v83, *&v84[2 * v85 + 2]);
LABEL_51:
        if (++v77 == 3)
        {
          goto LABEL_54;
        }
      }

      v79 = self->_headerFooters[0][v77];
      v80 = *(a3 + 8);
      if (!v80)
      {
        goto LABEL_44;
      }

      v81 = *(a3 + 14);
      v82 = *v80;
      if (v81 < *v80)
      {
        *(a3 + 14) = v81 + 1;
        objc_msgSend_setStrongReference_message_(v109, v73, v79, *&v80[2 * v81 + 2]);
        goto LABEL_46;
      }

      if (v82 == *(a3 + 15))
      {
LABEL_44:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 48));
        v80 = *(a3 + 8);
        v82 = *v80;
      }

      *v80 = v82 + 1;
      v87 = MEMORY[0x277C90F90](*(a3 + 6));
      v88 = *(a3 + 14);
      v89 = *(a3 + 8) + 8 * v88;
      *(a3 + 14) = v88 + 1;
      *(v89 + 8) = v87;
      objc_msgSend_setStrongReference_message_(v109, v90, v79, v87);
LABEL_46:
      ++v77;
    }

    while (v77 != 3);
    v76 = 0;
  }

  while ((v78 & 1) != 0);
LABEL_54:
}

- (NSString)description
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_stringWithCapacity_(MEMORY[0x277CCAB68], a2, 1024);
  v6 = objc_msgSend_name(self, v4, v5);
  objc_msgSend_appendFormat_(v3, v7, @"\nSheet Name: %@\n", v6);

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_childInfos;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v18, v22, 16);
  if (v12)
  {
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = objc_msgSend_description(*(*(&v18 + 1) + 8 * i), v10, v11);
        objc_msgSend_appendFormat_(v3, v16, @"Info: %@\n", v15);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v18, v22, 16);
    }

    while (v12);
  }

  return v3;
}

- (CGRect)frame
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)i_importHeadersFooters:(id)a3 headerType:(int64_t)a4 useSingleHeaderFooter:(BOOL)a5
{
  v5 = a5;
  v43 = a3;
  objc_msgSend_willModify(self, v8, v9);
  self->_usesSingleHeaderFooter = v5;
  if (v5)
  {
    if (objc_msgSend_count(v43, v10, v11) == 1)
    {
      goto LABEL_7;
    }

    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TNSheet i_importHeadersFooters:headerType:useSingleHeaderFooter:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNSheet.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 1456, 0, "expected equality between %{public}s and %{public}s", "1", "[inputStorages count]");
  }

  else
  {
    if (objc_msgSend_count(v43, v10, v11) == 3)
    {
      goto LABEL_7;
    }

    v19 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TNSheet i_importHeadersFooters:headerType:useSingleHeaderFooter:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNSheet.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v21, v15, v17, 1458, 0, "expected equality between %{public}s and %{public}s", "TSWPHeaderFragmentCasesCount", "[inputStorages count]");
  }

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
LABEL_7:
  v25 = objc_msgSend_documentRoot(self, v12, v13);
  if (!v25)
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TNSheet i_importHeadersFooters:headerType:useSingleHeaderFooter:]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNSheet.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v30, v27, v29, 1462, 0, "invalid nil value for '%{public}s'", "documentRoot");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32);
  }

  v33 = 0;
  v34 = self->_headerFooters[a4];
  do
  {
    v35 = v34[v33];
    v37 = v35;
    if (self->_inDocument)
    {
      objc_msgSend_willBeRemovedFromDocumentRoot_(v35, v36, v25);
    }

    if (v33 == 1 || !self->_usesSingleHeaderFooter)
    {
      if (self->_usesSingleHeaderFooter)
      {
        objc_msgSend_objectAtIndexedSubscript_(v43, v36, 0);
      }

      else
      {
        objc_msgSend_objectAtIndexedSubscript_(v43, v36, v33);
      }
      v40 = ;
      v41 = v34[v33];
      v34[v33] = v40;

      objc_msgSend_setParentInfo_(v34[v33], v42, self);
    }

    else
    {
      v38 = v34[v33];
      v34[v33] = 0;
    }

    if (self->_inDocument)
    {
      objc_msgSend_wasRemovedFromDocumentRoot_(v37, v39, v25);
    }

    ++v33;
  }

  while (v33 != 3);
}

- (id)i_newHeaderFooterStorage
{
  v4 = objc_msgSend_documentRoot(self, a2, v2);
  v7 = objc_msgSend_stylesheet(v4, v5, v6);
  v9 = objc_msgSend_p_newHeaderFooterStorageWithStylesheet_(self, v8, v7);

  return v9;
}

- (void)acceptVisitor:(id)a3
{
  v5 = TSUProtocolCast();
  if (v5)
  {
    objc_msgSend_visitTNSheet_(v5, v4, self, &unk_28852D2E8);
  }
}

- (NSSet)referencedStyles
{
  v4 = objc_msgSend_style(self, a2, v2);

  if (!v4 || (v7 = MEMORY[0x277CBEB98], objc_msgSend_style(self, v5, v6), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend_setWithObject_(v7, v9, v8), v10 = objc_claimAutoreleasedReturnValue(), v8, !v10))
  {
    v10 = objc_msgSend_set(MEMORY[0x277CBEB98], v5, v6);
  }

  return v10;
}

- (void)replaceReferencedStylesUsingBlock:(id)a3
{
  v4 = a3;
  if (self->_style)
  {
    v8 = v4;
    objc_opt_class();
    v5 = v8[2](v8, self->_style);
    v6 = TSUDynamicCast();
    style = self->_style;
    self->_style = v6;

    v4 = v8;
  }
}

- (TSDColorFill)backgroundColor
{
  v3 = objc_msgSend_style(self, a2, v2);
  v6 = objc_msgSend_backgroundColor(v3, v4, v5);

  return v6;
}

- (BOOL)printBackgrounds
{
  printBackgrounds = self->_printBackgrounds;
  if (printBackgrounds || (objc_msgSend_backgroundColor(self, a2, v2), v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend_color(v3, v8, v9), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend_whiteColor(MEMORY[0x277D81180], v10, v11), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend_isEqual_(v4, v12, v5)))
  {
    v13 = objc_msgSend_isForm(self, a2, v2) ^ 1;
    if (printBackgrounds)
    {
      return v13;
    }
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13;
}

- (CGColor)printingBackgroundCGColor
{
  if (objc_msgSend_printBackgrounds(self, a2, v2))
  {
    objc_msgSend_backgroundColor(self, v4, v5);
  }

  else
  {
    objc_msgSend_whiteColor(MEMORY[0x277D81180], v4, v5);
  }
  v6 = ;
  v9 = objc_msgSend_CGColor(v6, v7, v8);

  return v9;
}

- (void)setStyle:(id)a3
{
  v7 = a3;
  if (self->_style != v7)
  {
    objc_msgSend_willModify(self, v5, v6);
    objc_storeStrong(&self->_style, a3);
  }
}

- (UIEdgeInsets)printMargins
{
  top = self->_printMargins.top;
  left = self->_printMargins.left;
  bottom = self->_printMargins.bottom;
  right = self->_printMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end
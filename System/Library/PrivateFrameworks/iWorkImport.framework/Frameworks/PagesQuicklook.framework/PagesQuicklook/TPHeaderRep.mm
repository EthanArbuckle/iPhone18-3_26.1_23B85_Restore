@interface TPHeaderRep
- (BOOL)p_isInDocumentSetup;
- (BOOL)p_isMiddleFooterRep;
- (BOOL)p_isMiddleHeaderRep;
- (BOOL)p_shouldCreateArrowKnobs;
- (TPPaginatedPageInfo)pageInfo;
- (id)pageLayout;
@end

@implementation TPHeaderRep

- (id)pageLayout
{
  objc_opt_class();
  v8 = objc_msgSend_layout(self, v3, v4, v5, v6, v7);
  v14 = objc_msgSend_pageLayout(v8, v9, v10, v11, v12, v13);
  v15 = TSUDynamicCast();

  return v15;
}

- (TPPaginatedPageInfo)pageInfo
{
  objc_opt_class();
  v8 = objc_msgSend_pageLayout(self, v3, v4, v5, v6, v7);
  v14 = objc_msgSend_info(v8, v9, v10, v11, v12, v13);
  v15 = TSUCheckedDynamicCast();

  return v15;
}

- (BOOL)p_isInDocumentSetup
{
  v6 = objc_msgSend_pageInfo(self, a2, v2, v3, v4, v5);
  isDocumentSetupPage = objc_msgSend_isDocumentSetupPage(v6, v7, v8, v9, v10, v11);

  return isDocumentSetupPage;
}

- (BOOL)p_shouldCreateArrowKnobs
{
  if (self->_hideKnobs)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = objc_msgSend_p_isInDocumentSetup(self, a2, v2, v3, v4, v5);
    if (v6)
    {
      if (objc_msgSend_p_isMiddleHeaderRep(self, v8, v9, v10, v11, v12))
      {
        LOBYTE(v6) = 1;
      }

      else
      {

        LOBYTE(v6) = MEMORY[0x2821F9670](self, sel_p_isMiddleFooterRep, v13, v14, v15, v16);
      }
    }
  }

  return v6;
}

- (BOOL)p_isMiddleHeaderRep
{
  selfCopy = self;
  v7 = objc_msgSend_pageLayout(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_headerFooterProvider(v7, v8, v9, v10, v11, v12);
  v19 = objc_msgSend_headerFooter_fragmentAtIndex_(v13, v14, v15, v16, v17, v18, 0, 1);

  v25 = objc_msgSend_storage(selfCopy, v20, v21, v22, v23, v24);
  LOBYTE(selfCopy) = v25 == v19;

  return selfCopy;
}

- (BOOL)p_isMiddleFooterRep
{
  selfCopy = self;
  v7 = objc_msgSend_pageLayout(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_headerFooterProvider(v7, v8, v9, v10, v11, v12);
  v19 = objc_msgSend_headerFooter_fragmentAtIndex_(v13, v14, v15, v16, v17, v18, 1, 1);

  v25 = objc_msgSend_storage(selfCopy, v20, v21, v22, v23, v24);
  LOBYTE(selfCopy) = v25 == v19;

  return selfCopy;
}

@end
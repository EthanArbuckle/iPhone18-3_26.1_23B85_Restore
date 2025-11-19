@interface TNPageLayoutContainer
- (BOOL)containsLayoutForInfo:(id)a3;
- (BOOL)hasValidatedHeadersAndFooters;
- (BOOL)pageLayoutDirectionIsRTL;
- (CGColor)backgroundColor;
- (CGRect)autosizedFrameForTextLayout:(id)a3 textSize:(CGSize)a4;
- (CGRect)contentFrame;
- (CGRect)nonAutosizedFrameForTextLayout:(id)a3;
- (TNPageLayoutContainer)initWithPageController:(id)a3 pageCoordinate:(TSUCellCoord)a4;
- (UIEdgeInsets)adjustedInsetsForTarget:(id)a3;
- (double)textScaleFactor;
- (id)computeLayoutGeometry;
- (id)dependentLayouts;
- (id)dependentsOfTextLayout:(id)a3;
- (id)p_pageInfo;
- (id)printableInfoProvider;
- (unint64_t)autosizeFlagsForTextLayout:(id)a3;
- (unint64_t)pageCount;
- (unint64_t)pageNumber;
- (void)_addOverlayContentLayout;
- (void)_removeOverlayContentLayout;
- (void)_updateOverlayContentLayout;
- (void)addChild:(id)a3;
- (void)invalidateForAutosizingTextLayout:(id)a3;
- (void)invalidateSize;
- (void)parentDidChange;
- (void)performBlockForEachHeaderFooterLayout:(id)a3;
- (void)processChanges:(id)a3 forChangeSource:(id)a4;
- (void)setChildren:(id)a3;
- (void)updateChildrenFromInfo;
- (void)willBeAddedToLayoutController:(id)a3;
- (void)willBeRemovedFromLayoutController:(id)a3;
@end

@implementation TNPageLayoutContainer

- (TNPageLayoutContainer)initWithPageController:(id)a3 pageCoordinate:(TSUCellCoord)a4
{
  v17.receiver = self;
  v17.super_class = TNPageLayoutContainer;
  v4 = [(TNPageLayoutAbstract *)&v17 initWithPageController:a3 pageCoordinate:a4];
  v7 = v4;
  if (v4)
  {
    v8 = objc_alloc(objc_msgSend_contentLayoutClassOverride(v4, v5, v6));
    v10 = objc_msgSend_initWithPageLayout_(v8, v9, v7);
    contentLayout = v7->_contentLayout;
    v7->_contentLayout = v10;

    v12 = v7->_contentLayout;
    v16.receiver = v7;
    v16.super_class = TNPageLayoutContainer;
    [(TNPageLayoutContainer *)&v16 addChild:v12];
    objc_msgSend_updateChildrenFromInfo(v7, v13, v14);
  }

  return v7;
}

- (void)performBlockForEachHeaderFooterLayout:(id)a3
{
  v4 = a3;
  v5 = 0;
  v11 = 0;
  v6 = self + *MEMORY[0x277D80FC0];
  v7 = 1;
LABEL_2:
  v8 = 0;
  v9 = v7;
  while (1)
  {
    v10 = *&v6[24 * v5 + 8 * v8];
    if (v10)
    {
      v4[2](v4, v10, v5, v8, &v11);
    }

    if (v11)
    {
      break;
    }

    if (++v8 == 3)
    {
      v7 = 0;
      v5 = 1;
      if (v9)
      {
        goto LABEL_2;
      }

      break;
    }
  }
}

- (BOOL)hasValidatedHeadersAndFooters
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_275F174E8;
  v4[3] = &unk_27A6A2CB0;
  v4[4] = &v5;
  objc_msgSend_performBlockForEachHeaderFooterLayout_(self, a2, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (id)printableInfoProvider
{
  v3 = objc_msgSend_pageController(self, a2, v2);
  v6 = objc_msgSend_infoProvider(v3, v4, v5);

  return v6;
}

- (void)willBeAddedToLayoutController:(id)a3
{
  v4 = objc_msgSend_printableInfoProvider(self, a2, a3);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_275F1763C;
  v19[3] = &unk_27A6A2CD8;
  v19[4] = self;
  objc_msgSend_enumerateHeaderFooterStoragesWithBlock_(v4, v5, v19);

  v8 = objc_msgSend_printableInfoProvider(self, v6, v7);
  v11 = objc_msgSend_documentRoot(v8, v9, v10);
  v14 = objc_msgSend_changeNotifier(v11, v12, v13);
  v17 = objc_msgSend_printableInfoProvider(self, v15, v16);
  objc_msgSend_addObserver_forChangeSource_(v14, v18, self, v17);
}

- (void)willBeRemovedFromLayoutController:(id)a3
{
  v4 = objc_msgSend_printableInfoProvider(self, a2, a3);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_275F17738;
  v19[3] = &unk_27A6A2CD8;
  v19[4] = self;
  objc_msgSend_enumerateHeaderFooterStoragesWithBlock_(v4, v5, v19);

  v8 = objc_msgSend_printableInfoProvider(self, v6, v7);
  v11 = objc_msgSend_documentRoot(v8, v9, v10);
  v14 = objc_msgSend_changeNotifier(v11, v12, v13);
  v17 = objc_msgSend_printableInfoProvider(self, v15, v16);
  objc_msgSend_removeObserver_forChangeSource_(v14, v18, self, v17);
}

- (id)p_pageInfo
{
  v3 = objc_msgSend_info(self, a2, v2);
  objc_opt_class();
  v4 = TSUDynamicCast();

  return v4;
}

- (CGRect)contentFrame
{
  v3 = objc_msgSend_pageController(self, a2, v2);
  objc_msgSend_contentFrame(v3, v4, v5);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)addChild:(id)a3
{
  v4 = a3;
  if (objc_msgSend_isHeaderFooterLayout_(self, v5, v4))
  {
    v10.receiver = self;
    v10.super_class = TNPageLayoutContainer;
    [(TNPageLayoutContainer *)&v10 addChild:v4];
  }

  else
  {
    v8 = objc_msgSend_contentLayout(self, v6, v7);
    objc_msgSend_addChild_(v8, v9, v4);
  }
}

- (BOOL)pageLayoutDirectionIsRTL
{
  v3 = objc_msgSend_printableInfoProvider(self, a2, v2);
  IsRightToLeft = objc_msgSend_layoutIsRightToLeft(v3, v4, v5);

  return IsRightToLeft;
}

- (void)setChildren:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_contentLayout(self, v5, v6);
  objc_msgSend_setChildren_(v8, v7, v4);
}

- (BOOL)containsLayoutForInfo:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_contentLayout(self, v5, v6);
  v10 = objc_msgSend_children(v7, v8, v9);

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v10;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v20, v24, 16);
  if (v15)
  {
    v16 = *v21;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = objc_msgSend_info(*(*(&v20 + 1) + 8 * i), v13, v14, v20);

        if (v18 == v4)
        {
          LOBYTE(v15) = 1;
          goto LABEL_11;
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v20, v24, 16);
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v15;
}

- (CGColor)backgroundColor
{
  v3 = objc_msgSend_pageController(self, a2, v2);
  v6 = objc_msgSend_sheet(v3, v4, v5);
  v9 = objc_msgSend_printingBackgroundCGColor(v6, v7, v8);

  return v9;
}

- (void)updateChildrenFromInfo
{
  v3 = objc_msgSend_i_insertValidatedHeaderFooterLayouts_(self, a2, 0);

  MEMORY[0x2821F9670](self, sel__updateOverlayContentLayout, v4);
}

- (void)_updateOverlayContentLayout
{
  if (objc_msgSend_wantsOverlayContentLayout(self, a2, v2) && (objc_msgSend_pageController(self, v4, v5), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend_additionalContentProviders(v6, v7, v8), v9 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend_count(v9, v10, v11), v9, v6, v12))
  {
    v13 = objc_msgSend_overlayContentLayout(self, v4, v5);

    if (v13)
    {
      objc_msgSend__removeOverlayContentLayout(self, v14, v15);
    }

    MEMORY[0x2821F9670](self, sel__addOverlayContentLayout, v15);
  }

  else
  {

    objc_msgSend__removeOverlayContentLayout(self, v4, v5);
  }
}

- (void)_addOverlayContentLayout
{
  v4 = objc_msgSend_overlayContentLayout(self, a2, v2);

  if (v4)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TNPageLayoutContainer _addOverlayContentLayout]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNPageLayoutContainer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 179, 0, "expected nil value for '%{public}s'", "self.overlayContentLayout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  v13 = [TNAdditionalPageContentLayout alloc];
  v15 = objc_msgSend_initWithPageLayout_(v13, v14, self);
  v17.receiver = self;
  v17.super_class = TNPageLayoutContainer;
  [(TNPageLayoutContainer *)&v17 addChild:v15];
  objc_msgSend_setOverlayContentLayout_(self, v16, v15);
}

- (void)_removeOverlayContentLayout
{
  v4 = objc_msgSend_overlayContentLayout(self, a2, v2);
  objc_msgSend_removeFromParent(v4, v5, v6);

  objc_msgSend_setOverlayContentLayout_(self, v7, 0);
}

- (void)processChanges:(id)a3 forChangeSource:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  v8 = TSUDynamicCast();
  v11 = objc_msgSend_printableInfoProvider(self, v9, v10);

  if (v8 == v11)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = v6;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v20, v24, 16);
    if (v14)
    {
      v17 = v14;
      v18 = *v21;
      do
      {
        v19 = 0;
        do
        {
          if (*v21 != v18)
          {
            objc_enumerationMutation(v12);
          }

          if (objc_msgSend_kind(*(*(&v20 + 1) + 8 * v19), v15, v16, v20) == 10019)
          {
            objc_msgSend_invalidateChildren(self, v15, v16);
          }

          ++v19;
        }

        while (v17 != v19);
        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v20, v24, 16);
      }

      while (v17);
    }
  }
}

- (id)computeLayoutGeometry
{
  v4 = objc_msgSend_p_pageInfo(self, a2, v2);

  if (v4)
  {
    v7 = objc_msgSend_pageController(self, v5, v6);
    v10 = objc_msgSend_pageCoordinate(self, v8, v9);
    v12 = objc_msgSend_pageLayoutGeometryForPrintingAtPageCoordinate_(v7, v11, v10);
  }

  else
  {
    v14.receiver = self;
    v14.super_class = TNPageLayoutContainer;
    v12 = [(TNPageLayoutAbstract *)&v14 computeLayoutGeometry];
  }

  return v12;
}

- (void)parentDidChange
{
  v6 = objc_msgSend_p_pageInfo(self, a2, v2);
  if (v6 || (objc_msgSend_hasValidatedHeadersAndFooters(self, v4, v5) & 1) == 0)
  {
    v7 = objc_msgSend_parent(self, v4, v5);

    if (v7)
    {
      if (!self->_contentLayout)
      {
        v10 = objc_alloc(objc_msgSend_contentLayoutClassOverride(self, v8, v9));
        v12 = objc_msgSend_initWithPageLayout_(v10, v11, self);
        contentLayout = self->_contentLayout;
        self->_contentLayout = v12;

        v16 = objc_msgSend_contentLayout(self, v14, v15);
        v30.receiver = self;
        v30.super_class = TNPageLayoutContainer;
        [(TNPageLayoutContainer *)&v30 addChild:v16];
      }

      if (v6)
      {
        v17 = objc_msgSend_pageController(v6, v8, v9);
        v20 = objc_msgSend_pageIndex(v6, v18, v19);
        v22 = objc_msgSend_pageCoordinateForPageIndex_(v17, v21, v20);
        objc_msgSend_setPageController_(self, v23, v17);
        objc_msgSend_setPageCoordinate_(self, v24, v22);
        objc_msgSend_registerPageLayout_atPageCoordinate_(v17, v25, self, v22);
        objc_msgSend_layoutPrintableInfosIntoPageLayout_atPageCoordinate_(v17, v26, self, v22);
      }

      objc_msgSend_invalidate(self, v8, v9);
      v28 = objc_msgSend_i_insertValidatedHeaderFooterLayouts_(self, v27, 0);
      objc_msgSend_performBlockForEachHeaderFooterLayout_(self, v29, &unk_2884F5FB0);
    }
  }
}

- (id)dependentLayouts
{
  v4 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_275F1816C;
  v10[3] = &unk_27A6A2D20;
  v11 = v4;
  v5 = v4;
  objc_msgSend_performBlockForEachHeaderFooterLayout_(self, v6, v10);
  v8 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v7, v5);

  return v8;
}

- (void)invalidateSize
{
  v4.receiver = self;
  v4.super_class = TNPageLayoutContainer;
  [(TNPageLayoutContainer *)&v4 invalidateSize];
  objc_msgSend_performBlockForEachHeaderFooterLayout_(self, v3, &unk_2884F5FD0);
}

- (unint64_t)autosizeFlagsForTextLayout:(id)a3
{
  v4 = objc_msgSend_storage(a3, a2, a3);
  if (objc_msgSend_wpKind(v4, v5, v6) == 1)
  {
    v9 = objc_msgSend_headerFooterProvider(self, v7, v8);
    v12 = objc_msgSend_usesSingleHeaderFooter(v9, v10, v11);

    if (v12)
    {
      v13 = 3;
    }

    else
    {
      v13 = 15;
    }
  }

  else
  {
    v13 = 15;
  }

  return v13;
}

- (CGRect)autosizedFrameForTextLayout:(id)a3 textSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v10 = objc_msgSend_pageController(self, v8, v9);
  objc_msgSend_contentScale(v10, v11, v12);
  v14 = v13;

  v17 = (&self->super.super.super.super.super.isa + *MEMORY[0x277D80FC0]);
  v18 = v17[3] == v7 || v17[4] == v7 || v17[5] == v7;
  v19 = objc_msgSend_pageController(self, v15, v16);
  v22 = objc_msgSend_printProperties(v19, v20, v21);
  v25 = objc_msgSend_pageController(self, v23, v24);
  isPortrait = objc_msgSend_isPortrait(v25, v26, v27);
  objc_msgSend_pageHeaderFooterRectForContentScale_portraitOrientation_footer_textHeight_(v22, v29, isPortrait, v18, v14, height * v14);
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  v40 = objc_msgSend_headerFooterProvider(self, v38, v39);
  v43 = objc_msgSend_usesSingleHeaderFooter(v40, v41, v42);

  if (*v17 == v7 || v17[3] == v7)
  {
LABEL_14:
    if (v43)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (v17[1] != v7 && v17[4] != v7)
  {
    if (v17[2] != v7 && v17[5] != v7)
    {
      v45 = MEMORY[0x277D81150];
      v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "[TNPageLayoutContainer autosizedFrameForTextLayout:textSize:]");
      v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNPageLayoutContainer.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v49, v46, v48, 342, 0, "unexpected layout");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51);
    }

    v57.origin.x = v31;
    v57.origin.y = v33;
    v57.size.width = v35;
    v57.size.height = v37;
    v31 = CGRectGetMaxX(v57) - width;
    goto LABEL_14;
  }

  if (v43)
  {
    goto LABEL_21;
  }

  v31 = v31 + (v35 - width) * 0.5;
LABEL_18:
  v58.origin.x = v31;
  v58.origin.y = v33;
  v58.size.width = v35;
  v58.size.height = v37;
  v52 = CGRectGetWidth(v58);
  if (width >= v52)
  {
    v35 = v52;
  }

  else
  {
    v35 = width;
  }

LABEL_21:

  v53 = v31;
  v54 = v33;
  v55 = v35;
  v56 = v37;
  result.size.height = v56;
  result.size.width = v55;
  result.origin.y = v54;
  result.origin.x = v53;
  return result;
}

- (id)dependentsOfTextLayout:(id)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_contentLayout(self, a2, a3);
  v7[0] = v3;
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v4, v7, 1);

  return v5;
}

- (CGRect)nonAutosizedFrameForTextLayout:(id)a3
{
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (double)textScaleFactor
{
  v3 = objc_msgSend_pageController(self, a2, v2);
  objc_msgSend_contentScale(v3, v4, v5);
  v7 = 1.0 / v6;

  return v7;
}

- (void)invalidateForAutosizingTextLayout:(id)a3
{
  v34 = a3;
  v6 = objc_msgSend_layoutController(self, v4, v5);

  v9 = v34;
  if (v6)
  {
    v10 = objc_msgSend_storage(v34, v7, v8);
    v13 = objc_msgSend_wpKind(v10, v11, v12);

    v16 = objc_msgSend_pageController(self, v14, v15);
    v19 = v16;
    if (v13 == 1)
    {
      objc_msgSend_i_invalidateForHeaderChange(v16, v17, v18);
    }

    else
    {
      objc_msgSend_i_invalidatePageLayoutCache(v16, v17, v18);

      v19 = objc_msgSend_pageController(self, v20, v21);
      objc_msgSend_i_invalidateHintCache(v19, v22, v23);
    }

    v26 = objc_msgSend_contentLayout(self, v24, v25);
    objc_msgSend_invalidatePosition(v26, v27, v28);

    v31 = objc_msgSend_contentLayout(self, v29, v30);
    objc_msgSend_invalidateSize(v31, v32, v33);

    v9 = v34;
  }
}

- (unint64_t)pageCount
{
  v4 = objc_msgSend_layoutController(self, a2, v2);

  if (!v4)
  {
    return 1;
  }

  v7 = objc_msgSend_pageController(self, v5, v6);
  v10 = objc_msgSend_pageCount(v7, v8, v9);

  return v10;
}

- (unint64_t)pageNumber
{
  v4 = objc_msgSend_layoutController(self, a2, v2);

  if (!v4)
  {
    return 1;
  }

  v7 = objc_msgSend_pageController(self, v5, v6);
  v10 = objc_msgSend_pageCoordinate(self, v8, v9);
  v12 = objc_msgSend_pageNumberForPageCoordinate_(v7, v11, v10);

  return v12;
}

- (UIEdgeInsets)adjustedInsetsForTarget:(id)a3
{
  v3 = *MEMORY[0x277D81428];
  v4 = *(MEMORY[0x277D81428] + 8);
  v5 = *(MEMORY[0x277D81428] + 16);
  v6 = *(MEMORY[0x277D81428] + 24);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

@end
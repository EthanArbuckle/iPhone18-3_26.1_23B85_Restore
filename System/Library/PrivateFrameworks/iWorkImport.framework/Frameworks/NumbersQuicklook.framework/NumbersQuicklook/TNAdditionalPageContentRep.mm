@interface TNAdditionalPageContentRep
- (CGRect)clipRect;
- (TNAdditionalPageContentRep)initWithLayout:(id)layout canvas:(id)canvas;
- (unint64_t)pageIndex;
- (void)drawInContext:(CGContext *)context;
- (void)willBeRemoved;
@end

@implementation TNAdditionalPageContentRep

- (TNAdditionalPageContentRep)initWithLayout:(id)layout canvas:(id)canvas
{
  v17.receiver = self;
  v17.super_class = TNAdditionalPageContentRep;
  v4 = [(TNPageContentRep *)&v17 initWithLayout:layout canvas:canvas];
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_pageController(v4, v5, v6);
    v11 = objc_msgSend_documentRoot(v8, v9, v10);
    v14 = objc_msgSend_changeNotifier(v11, v12, v13);

    objc_msgSend_addObserver_forChangeSource_(v14, v15, v7, v8);
  }

  return v7;
}

- (void)willBeRemoved
{
  v4 = objc_msgSend_pageController(self, a2, v2);
  v7 = objc_msgSend_documentRoot(v4, v5, v6);
  v10 = objc_msgSend_changeNotifier(v7, v8, v9);

  objc_msgSend_removeObserver_forChangeSource_(v10, v11, self, v4);
  v12.receiver = self;
  v12.super_class = TNAdditionalPageContentRep;
  [(TNPageContentRep *)&v12 willBeRemoved];
}

- (unint64_t)pageIndex
{
  v3 = objc_msgSend_layout(self, a2, v2);
  v6 = objc_msgSend_pageNumber(v3, v4, v5) - 1;

  return v6;
}

- (void)drawInContext:(CGContext *)context
{
  v9 = objc_msgSend_pageController(self, a2, context);
  v7 = objc_msgSend_pageIndex(self, v5, v6);
  objc_msgSend_drawAdditionalContentForPageIndex_inContext_(v9, v8, v7, context);
}

- (CGRect)clipRect
{
  v4 = objc_msgSend_layout(self, a2, v2);
  objc_msgSend_frame(v4, v5, v6);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v61.receiver = self;
  v61.super_class = TNAdditionalPageContentRep;
  [(TSDRep *)&v61 clipRect];
  v16 = v15;
  v18 = v8 + v17;
  v21 = objc_msgSend_layout(self, v19, v20);
  v24 = objc_msgSend_pageLayout(v21, v22, v23);
  IsRTL = objc_msgSend_pageLayoutDirectionIsRTL(v24, v25, v26);

  if (IsRTL)
  {
    v30 = objc_msgSend_layout(self, v28, v29);
    v33 = objc_msgSend_pageLayout(v30, v31, v32);
    objc_msgSend_pageBounds(v33, v34, v35);
    v36 = v12;
    MaxX = CGRectGetMaxX(v62);
    v40 = objc_msgSend_layout(self, v38, v39);
    v43 = objc_msgSend_pageLayout(v40, v41, v42);
    objc_msgSend_contentFrame(v43, v44, v45);
    v60 = MaxX - CGRectGetMaxX(v63);

    v64.origin.x = v8;
    v64.origin.y = v10;
    v64.size.width = v36;
    v64.size.height = v14;
    v46 = CGRectGetMaxX(v64);
    v49 = objc_msgSend_layout(self, v47, v48);
    v52 = objc_msgSend_pageLayout(v49, v50, v51);
    objc_msgSend_contentFrame(v52, v53, v54);
    v55 = v46 / CGRectGetMaxX(v65);

    v18 = v18 + v60 * v55;
  }

  TSUSubtractPoints();
  v58 = v18;
  v59 = v10 + v16;
  result.size.height = v59;
  result.size.width = v58;
  result.origin.y = v57;
  result.origin.x = v56;
  return result;
}

@end
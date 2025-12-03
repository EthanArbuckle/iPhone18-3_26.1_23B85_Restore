@interface SKUISignInTemplateView
+ (BOOL)_useEditorialLayoutForLabelElement:(id)element;
+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context;
+ (CGSize)_sizeForViewElement:(id)element width:(double)width context:(id)context;
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
+ (UIEdgeInsets)_marginsForViewElement:(id)element index:(unint64_t)index width:(double)width context:(id)context;
+ (id)_attributedStringForText:(id)text style:(id)style context:(id)context;
+ (void)_enumerateChildrenOfViewElement:(id)element usingBlock:(id)block;
+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context;
- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context;
- (SKUISignInTemplateView)initWithFrame:(CGRect)frame;
- (SKUISignInViewDelegate)delegate;
- (void)_buttonAction:(id)action;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
@end

@implementation SKUISignInTemplateView

- (SKUISignInTemplateView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUISignInTemplateView *)v8 initWithFrame:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v22.receiver = self;
  v22.super_class = SKUISignInTemplateView;
  height = [(SKUIViewReuseView *)&v22 initWithFrame:x, y, width, height];
  if (height)
  {
    v17 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    viewElements = height->_viewElements;
    height->_viewElements = v17;

    v19 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    viewMargins = height->_viewMargins;
    height->_viewMargins = v19;
  }

  return height;
}

+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v9)
      {
        [(SKUISignInTemplateView *)v9 prefetchResourcesForViewElement:v10 reason:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __73__SKUISignInTemplateView_prefetchResourcesForViewElement_reason_context___block_invoke;
  v20[3] = &unk_2781F95A0;
  v17 = contextCopy;
  v22 = &v24;
  reasonCopy = reason;
  v21 = v17;
  [elementCopy enumerateChildrenUsingBlock:v20];
  v18 = *(v25 + 24);

  _Block_object_dispose(&v24, 8);
  return v18;
}

uint64_t __73__SKUISignInTemplateView_prefetchResourcesForViewElement_reason_context___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) prefetchResourcesForViewElement:a2 reason:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = (*(*(*(a1 + 40) + 8) + 24) | result) & 1;
  return result;
}

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUISignInTemplateView *)v4 preferredSizeForViewElement:v5 context:v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = *MEMORY[0x277CBF3A8];
  v13 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v13;
  result.width = v12;
  return result;
}

+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v10)
      {
        [(SKUISignInTemplateView *)v10 requestLayoutForViewElement:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  labelLayoutCache = [contextCopy labelLayoutCache];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __68__SKUISignInTemplateView_requestLayoutForViewElement_width_context___block_invoke;
  v21[3] = &unk_2781FAEB8;
  widthCopy = width;
  selfCopy = self;
  v22 = contextCopy;
  v23 = labelLayoutCache;
  v19 = labelLayoutCache;
  v20 = contextCopy;
  [elementCopy enumerateChildrenUsingBlock:v21];
}

void __68__SKUISignInTemplateView_requestLayoutForViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = [v16 elementType];
  if (v3 <= 119)
  {
    if (v3 != 4)
    {
      v4 = v3 == 12;
      goto LABEL_7;
    }

    v10 = SKUIActivityIndicatorView;
LABEL_14:
    [(__objc2_class *)v10 requestLayoutForViewElement:v16 width:*(a1 + 32) context:*(a1 + 48)];
LABEL_18:
    v5 = v16;
    goto LABEL_19;
  }

  if (v3 == 120)
  {
    v10 = SKUISignInTemplateView;
    goto LABEL_14;
  }

  if (v3 == 138)
  {
    v9 = v16;
    v11 = [*(a1 + 32) maxWidthForElement:v9 withDefaultWidth:*(a1 + 48)];
    if ([*(a1 + 56) _useEditorialLayoutForLabelElement:v9])
    {
      v12 = [*(a1 + 32) editorialLayoutForLabelElement:v9 width:v11];
      [v12 enqueueLayoutRequests];
    }

    else
    {
      v13 = *(a1 + 56);
      v14 = [v9 text];
      v15 = [v9 style];
      v12 = [v13 _attributedStringForText:v14 style:v15 context:*(a1 + 32)];

      [*(a1 + 40) requestLayoutForLabel:v9 attributedString:v12 width:v11];
    }

    goto LABEL_17;
  }

  v4 = v3 == 141;
LABEL_7:
  v5 = v16;
  if (v4)
  {
    v6 = *(a1 + 56);
    v7 = [v16 buttonText];
    v8 = [v16 style];
    v9 = [v6 _attributedStringForText:v7 style:v8 context:*(a1 + 32)];

    [*(a1 + 40) requestLayoutForButton:v16 attributedString:v9 width:*(a1 + 48)];
LABEL_17:

    goto LABEL_18;
  }

LABEL_19:
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v10)
      {
        [(SKUISignInTemplateView *)v10 sizeThatFitsWidth:v11 viewElement:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x3010000000;
  v31 = &unk_215F8ACD7;
  widthCopy = width;
  v33 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __64__SKUISignInTemplateView_sizeThatFitsWidth_viewElement_context___block_invoke;
  v23[3] = &unk_2781FDD10;
  selfCopy = self;
  widthCopy2 = width;
  v18 = contextCopy;
  v24 = v18;
  v25 = &v28;
  [self _enumerateChildrenOfViewElement:elementCopy usingBlock:v23];
  v19 = v29[4];
  v20 = v29[5];

  _Block_object_dispose(&v28, 8);
  v21 = v19;
  v22 = v20;
  result.height = v22;
  result.width = v21;
  return result;
}

double __64__SKUISignInTemplateView_sizeThatFitsWidth_viewElement_context___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 32);
  v9 = a2;
  [v6 _sizeForViewElement:v9 width:v8 context:v7];
  *(*(*(a1 + 40) + 8) + 40) = v10 + *(*(*(a1 + 40) + 8) + 40);
  [*(a1 + 48) _marginsForViewElement:v9 index:a4 width:*(a1 + 32) context:*(a1 + 56)];
  v12 = v11;
  v14 = v13;

  v15 = *(*(a1 + 40) + 8);
  result = v14 + v12 + *(v15 + 40);
  *(v15 + 40) = result;
  return result;
}

- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  [(NSMapTable *)self->_viewElements removeAllObjects];
  [(NSMapTable *)self->_viewMargins removeAllObjects];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__SKUISignInTemplateView_reloadWithViewElement_width_context___block_invoke;
  v12[3] = &unk_2781F95C8;
  v12[4] = self;
  v13 = elementCopy;
  widthCopy = width;
  v14 = contextCopy;
  v10 = contextCopy;
  v11 = elementCopy;
  [(SKUIViewReuseView *)self modifyUsingBlock:v12];
}

void __62__SKUISignInTemplateView_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__SKUISignInTemplateView_reloadWithViewElement_width_context___block_invoke_2;
  v7[3] = &unk_2781FDD38;
  v11 = *(a1 + 56);
  v5 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = v3;
  v10 = *(a1 + 32);
  v6 = v3;
  [v4 _enumerateChildrenOfViewElement:v5 usingBlock:v7];
}

void __62__SKUISignInTemplateView_reloadWithViewElement_width_context___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v6 = [v27 elementType];
  if (v6 > 49)
  {
    if (v6 > 137)
    {
      if (v6 == 138)
      {
        v12 = v27;
        v13 = [*(a1 + 32) maxWidthForElement:v12 withDefaultWidth:*(a1 + 56)];
        v14 = [objc_opt_class() _useEditorialLayoutForLabelElement:v12];
        v16 = *(a1 + 32);
        v15 = *(a1 + 40);
        if (v14)
        {
          [v15 addTextViewWithElement:v12 width:v16 context:v13];
        }

        else
        {
          [v15 addLabelViewWithElement:v12 width:v16 context:v13];
        }
        v7 = ;

        if (!v7)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      if (v6 != 141)
      {
        goto LABEL_28;
      }

      goto LABEL_16;
    }

    if (v6 == 50)
    {
LABEL_16:
      v7 = [*(a1 + 40) addButtonWithElement:v27 width:*(a1 + 32) context:*(a1 + 56)];
      [(SKUISignInView *)v7 addTarget:*(a1 + 48) action:sel__buttonAction_ forControlEvents:64];
      if (!v7)
      {
        goto LABEL_28;
      }

LABEL_27:
      [objc_opt_class() _marginsForViewElement:v27 index:a4 width:*(a1 + 32) context:*(a1 + 56)];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
      [*(*(a1 + 48) + 424) setObject:v27 forKey:v7];
      v25 = *(*(a1 + 48) + 432);
      v26 = [MEMORY[0x277CCAE60] valueWithUIEdgeInsets:{v18, v20, v22, v24}];
      [v25 setObject:v26 forKey:v7];

      goto LABEL_28;
    }

    if (v6 != 120)
    {
      goto LABEL_28;
    }

    v7 = objc_alloc_init(SKUISignInView);
    v8 = [*(a1 + 48) delegate];
    [(SKUISignInView *)v7 setDelegate:v8];

    v9 = *(a1 + 56);
    v10 = *(a1 + 32);
    v11 = v7;
  }

  else
  {
    if (v6 > 31)
    {
      if (v6 == 32)
      {
        v7 = [*(a1 + 40) addDividerWithElement:v27 context:*(a1 + 32)];
        [(SKUISignInView *)v7 setDividerOrientation:0];
        if (v7)
        {
          goto LABEL_27;
        }
      }

      else if (v6 == 49)
      {
        v7 = [*(a1 + 40) addImageViewWithElement:v27 context:*(a1 + 32)];
        if (v7)
        {
          goto LABEL_27;
        }
      }

      goto LABEL_28;
    }

    if (v6 != 4)
    {
      if (v6 != 12)
      {
        goto LABEL_28;
      }

      goto LABEL_16;
    }

    v11 = objc_alloc_init(SKUIActivityIndicatorView);
    v7 = v11;
    v9 = *(a1 + 56);
    v10 = *(a1 + 32);
  }

  [(SKUIActivityIndicatorView *)v11 reloadWithViewElement:v27 width:v10 context:v9];
  [*(a1 + 40) addView:v7];
  if (v7)
  {
    goto LABEL_27;
  }

LABEL_28:
}

- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context
{
  v37 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  requestCopy = request;
  contextCopy = context;
  v27 = requestCopy;
  requestIdentifier = [requestCopy requestIdentifier];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = 424;
  selfCopy = self;
  obj = self->_viewElements;
  v12 = [(NSMapTable *)obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v33;
    do
    {
      v16 = 0;
      v28 = v13;
      do
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v32 + 1) + 8 * v16);
        v18 = [*(&selfCopy->super.super.super.super.isa + v11) objectForKey:v17];
        if (objc_opt_respondsToSelector())
        {
          v14 = v14 | [v17 setImage:imageCopy forArtworkRequest:v27 context:contextCopy];
        }

        else
        {
          v19 = v14;
          v20 = v11;
          v21 = a2;
          v22 = contextCopy;
          v23 = [contextCopy requestIdentifierForViewElement:v18];
          unsignedIntegerValue = [v23 unsignedIntegerValue];

          if (unsignedIntegerValue == requestIdentifier)
          {
            a2 = v21;
            contextCopy = v22;
            v11 = v20;
            v14 = v19;
            v13 = v28;
            if (objc_opt_respondsToSelector())
            {
              [v17 setImage:imageCopy];
              v14 = 1;
            }
          }

          else
          {
            a2 = v21;
            contextCopy = v22;
            v11 = v20;
            v14 = v19;
            v13 = v28;
          }
        }

        ++v16;
      }

      while (v13 != v16);
      v13 = [(NSMapTable *)obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v13);
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14 & 1;
}

- (void)layoutSubviews
{
  v88[3] = *MEMORY[0x277D85DE8];
  [(SKUISignInTemplateView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SKUISignInTemplateView *)self layoutMargins];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  allExistingViews = [(SKUIViewReuseView *)self allExistingViews];
  v82 = 0;
  v83 = &v82;
  v84 = 0x2020000000;
  v85 = 0;
  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 0;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = 0;
  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v62[1] = 3221225472;
  v62[0] = MEMORY[0x277D85DD0];
  v62[2] = __40__SKUISignInTemplateView_layoutSubviews__block_invoke;
  v62[3] = &unk_2781FDD60;
  v69 = v8 - v14 - v18;
  v70 = v4;
  v71 = v6;
  v72 = v8;
  v73 = v10;
  v62[4] = self;
  v66 = &v82;
  v22 = v19;
  v63 = v22;
  v67 = &v78;
  v23 = v20;
  v64 = v23;
  v68 = &v74;
  v24 = v21;
  v65 = v24;
  [allExistingViews enumerateObjectsUsingBlock:v62];
  v25 = v10 - v16 - v83[3];
  v26 = v75[3];
  v27 = v12 + v26;
  v28 = v79[3];
  if (v28 <= 0.00000011920929 || v25 - v12 - v26 >= v28)
  {
    v29 = v27 + (v25 - v27 - v28) * 0.5;
    v30 = floorf(v29);
    if (v27 > v25 && v28 < 0.00000011920929)
    {
      v25 = v27;
    }

    v27 = v30;
  }

  else
  {
    v25 = v27 + v28;
  }

  *v88 = v12;
  *&v88[1] = v27;
  *&v88[2] = v25;
  v56 = v24;
  v87[0] = v56;
  v55 = v23;
  v87[1] = v55;
  v32 = 0;
  v54 = v22;
  v87[2] = v54;
  v33 = *MEMORY[0x277D768C8];
  v34 = *(MEMORY[0x277D768C8] + 16);
  do
  {
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v35 = v87[v32];
    v36 = [v35 countByEnumeratingWithState:&v58 objects:v86 count:16];
    if (v36)
    {
      v37 = *v59;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v59 != v37)
          {
            objc_enumerationMutation(v35);
          }

          v39 = *(*(&v58 + 1) + 8 * i);
          v40 = [(NSMapTable *)self->_viewMargins objectForKey:v39, v54, v55, v56];
          v41 = v40;
          v42 = v33;
          v43 = v34;
          if (v40)
          {
            [v40 UIEdgeInsetsValue];
            v42 = v44;
            v43 = v45;
          }

          [v39 frame];
          v47 = v46;
          v49 = v48;
          v51 = v50;
          v52 = v42 + *&v88[v32];
          [v39 setFrame:{v46, v52}];
          v89.origin.x = v47;
          v89.origin.y = v52;
          v89.size.width = v49;
          v89.size.height = v51;
          *&v88[v32] = v43 + CGRectGetMaxY(v89);
        }

        v36 = [v35 countByEnumeratingWithState:&v58 objects:v86 count:16];
      }

      while (v36);
    }

    ++v32;
  }

  while (v32 != 3);
  for (j = 2; j != -1; --j)
  {
  }

  _Block_object_dispose(&v74, 8);
  _Block_object_dispose(&v78, 8);
  _Block_object_dispose(&v82, 8);
}

void __40__SKUISignInTemplateView_layoutSubviews__block_invoke(uint64_t a1, void *a2)
{
  v21 = a2;
  v3 = [*(*(a1 + 32) + 424) objectForKey:v21];
  [v21 frame];
  v5 = v4;
  v7 = v6;
  [v21 sizeThatFits:{*(a1 + 88), 1.79769313e308}];
  v23.size.width = v8;
  v10 = v9;
  v23.origin.x = v5;
  v23.origin.y = v7;
  v23.size.height = v10;
  [SKUIViewElementLayoutContext itemWidthForElement:v3 withDefaultWidth:CGRectGetWidth(v23) fitWidth:*(a1 + 88)];
  v12 = fmin(v11, *(a1 + 88));
  *&v11 = (*(a1 + 112) - v12) * 0.5;
  [v21 setFrame:{floorf(*&v11), v7, v12, v10}];
  v13 = [*(*(a1 + 32) + 432) objectForKey:v21];
  v14 = v13;
  if (v13)
  {
    [v13 UIEdgeInsetsValue];
    v10 = v10 + v16 + v15;
  }

  v17 = [v3 style];
  v18 = [v17 elementPosition];
  if (v18 > 7)
  {
    v20 = 40;
    v19 = 64;
  }

  else
  {
    v19 = qword_215F404E8[v18];
    v20 = qword_215F40528[v18];
  }

  *(*(*(a1 + v19) + 8) + 24) = v10 + *(*(*(a1 + v19) + 8) + 24);
  [*(a1 + v20) addObject:v21];
}

- (void)_buttonAction:(id)action
{
  v3 = [(NSMapTable *)self->_viewElements objectForKey:action];
  [v3 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
}

+ (id)_attributedStringForText:(id)text style:(id)style context:(id)context
{
  contextCopy = context;
  styleCopy = style;
  textCopy = text;
  v10 = SKUIViewElementFontWithStyle(styleCopy);
  tintColor = [contextCopy tintColor];

  v12 = SKUIViewElementPlainColorWithStyle(styleCopy, tintColor);

  textAlignment = [styleCopy textAlignment];
  v14 = [textCopy attributedStringWithDefaultFont:v10 foregroundColor:v12 textAlignment:SKUIViewElementNSTextAlignmentForIKElementAlignment(textAlignment)];

  return v14;
}

+ (void)_enumerateChildrenOfViewElement:(id)element usingBlock:(id)block
{
  elementCopy = element;
  blockCopy = block;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v15[3] = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__SKUISignInTemplateView__enumerateChildrenOfViewElement_usingBlock___block_invoke;
  v8[3] = &unk_278200290;
  v7 = blockCopy;
  v9 = v7;
  v10 = v15;
  v11 = v14;
  v12 = v13;
  [elementCopy enumerateChildrenUsingBlock:v8];

  _Block_object_dispose(v13, 8);
  _Block_object_dispose(v14, 8);
  _Block_object_dispose(v15, 8);
}

void __69__SKUISignInTemplateView__enumerateChildrenOfViewElement_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 style];
  v4 = [v3 elementPosition];
  if (v4 > 7)
  {
    v5 = 40;
  }

  else
  {
    v5 = qword_215F40528[v4];
  }

  (*(*(a1 + 32) + 16))();
  ++*(*(*(a1 + v5) + 8) + 24);
}

+ (UIEdgeInsets)_marginsForViewElement:(id)element index:(unint64_t)index width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  style = [elementCopy style];
  v12 = [style valueForStyle:*MEMORY[0x277D1AFE8]];

  if (v12)
  {
    [v12 UIEdgeInsetsValue];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
  }

  else
  {
    v16 = *(MEMORY[0x277D768C8] + 8);
    v18 = *(MEMORY[0x277D768C8] + 16);
    v20 = *(MEMORY[0x277D768C8] + 24);
    if (index)
    {
      v21 = [contextCopy textPropertiesForViewElement:elementCopy width:width];
      v22 = v21;
      if (v21)
      {
        [v21 desiredOffsetTop];
        v14 = v23;
      }

      else
      {
        v14 = 10.0;
      }
    }

    else
    {
      v14 = *MEMORY[0x277D768C8];
    }
  }

  v24 = v14;
  v25 = v16;
  v26 = v18;
  v27 = v20;
  result.right = v27;
  result.bottom = v26;
  result.left = v25;
  result.top = v24;
  return result;
}

+ (CGSize)_sizeForViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  elementType = [elementCopy elementType];
  if (elementType == 120)
  {
    [SKUISignInView sizeThatFitsWidth:elementCopy viewElement:contextCopy context:width];
LABEL_9:
    v13 = v15;
    v14 = v16;
    goto LABEL_10;
  }

  if (elementType != 140)
  {
    if (elementType == 138)
    {
      widthCopy = [contextCopy maxWidthForElement:elementCopy withDefaultWidth:width];
      v11 = contextCopy;
      v12 = elementCopy;
    }

    else
    {
      v11 = contextCopy;
      v12 = elementCopy;
      widthCopy = width;
    }

    [v11 sizeForViewElement:v12 width:widthCopy];
    goto LABEL_9;
  }

  v13 = *MEMORY[0x277CBF3A8];
  v14 = *(MEMORY[0x277CBF3A8] + 8);
LABEL_10:

  v17 = v13;
  v18 = v14;
  result.height = v18;
  result.width = v17;
  return result;
}

+ (BOOL)_useEditorialLayoutForLabelElement:(id)element
{
  elementCopy = element;
  if ([elementCopy numberOfLines] == 1)
  {
    v4 = 0;
  }

  else
  {
    moreButtonTitle = [elementCopy moreButtonTitle];
    v4 = [moreButtonTitle length] != 0;
  }

  return v4;
}

- (SKUISignInViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
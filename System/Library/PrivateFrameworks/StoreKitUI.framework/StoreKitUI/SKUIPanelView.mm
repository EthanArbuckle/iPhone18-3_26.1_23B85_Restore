@interface SKUIPanelView
+ (BOOL)_isValidTextInputViewElement:(id)element;
+ (BOOL)_useEditorialLayoutForLabelElement:(id)element;
+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context;
+ (CGSize)_sizeForViewElement:(id)element width:(double)width context:(id)context;
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
+ (UIEdgeInsets)_marginsForViewElement:(id)element index:(unint64_t)index width:(double)width context:(id)context;
+ (id)_attributedStringForText:(id)text style:(id)style context:(id)context;
+ (void)_enumerateChildrenOfViewElement:(id)element usingBlock:(id)block;
+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)resignFirstResponder;
- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context;
- (SKUIPanelView)initWithFrame:(CGRect)frame;
- (void)_buttonAction:(id)action;
- (void)animatorFeature:(id)feature performAnimationWithName:(id)name options:(id)options;
- (void)dealloc;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
@end

@implementation SKUIPanelView

- (SKUIPanelView)initWithFrame:(CGRect)frame
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
        [(SKUIPanelView *)v8 initWithFrame:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v24.receiver = self;
  v24.super_class = SKUIPanelView;
  height = [(SKUIViewReuseView *)&v24 initWithFrame:x, y, width, height];
  if (height)
  {
    v17 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    animators = height->_animators;
    height->_animators = v17;

    v19 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    viewElements = height->_viewElements;
    height->_viewElements = v19;

    v21 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    viewMargins = height->_viewMargins;
    height->_viewMargins = v21;
  }

  return height;
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_animators;
  v4 = [(NSMapTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) setDelegate:0];
      }

      while (v5 != v7);
      v5 = [(NSMapTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = SKUIPanelView;
  [(SKUIViewReuseView *)&v8 dealloc];
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
        [(SKUIPanelView *)v9 prefetchResourcesForViewElement:v10 reason:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __64__SKUIPanelView_prefetchResourcesForViewElement_reason_context___block_invoke;
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

uint64_t __64__SKUIPanelView_prefetchResourcesForViewElement_reason_context___block_invoke(uint64_t a1, uint64_t a2)
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
        [(SKUIPanelView *)v4 preferredSizeForViewElement:v5 context:v6, v7, v8, v9, v10, v11];
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
        [(SKUIPanelView *)v10 requestLayoutForViewElement:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  labelLayoutCache = [contextCopy labelLayoutCache];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __59__SKUIPanelView_requestLayoutForViewElement_width_context___block_invoke;
  v21[3] = &unk_2781FAEB8;
  widthCopy = width;
  selfCopy = self;
  v22 = contextCopy;
  v23 = labelLayoutCache;
  v19 = labelLayoutCache;
  v20 = contextCopy;
  [elementCopy enumerateChildrenUsingBlock:v21];
}

uint64_t __59__SKUIPanelView_requestLayoutForViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = [v16 elementType];
  if (v3 <= 137)
  {
    if (v3 != 4)
    {
      v4 = v16;
      if (v3 != 12)
      {
        goto LABEL_19;
      }

      goto LABEL_8;
    }

    v11 = SKUIActivityIndicatorView;
LABEL_14:
    v3 = [(__objc2_class *)v11 requestLayoutForViewElement:v16 width:*(a1 + 32) context:*(a1 + 48)];
LABEL_18:
    v4 = v16;
    goto LABEL_19;
  }

  if (v3 == 138)
  {
    v8 = v16;
    v9 = [*(a1 + 32) maxWidthForElement:v8 withDefaultWidth:*(a1 + 48)];
    if ([*(a1 + 56) _useEditorialLayoutForLabelElement:v8])
    {
      v10 = [*(a1 + 32) editorialLayoutForLabelElement:v8 width:v9];
      [v10 enqueueLayoutRequests];
    }

    else
    {
      v12 = *(a1 + 56);
      v13 = [v8 text];
      v14 = [v8 style];
      v10 = [v12 _attributedStringForText:v13 style:v14 context:*(a1 + 32)];

      [*(a1 + 40) requestLayoutForLabel:v8 attributedString:v10 width:v9];
    }

    goto LABEL_17;
  }

  v4 = v16;
  if (v3 == 140)
  {
    v3 = [*(a1 + 56) _isValidTextInputViewElement:v16];
    v4 = v16;
    if (!v3)
    {
      goto LABEL_19;
    }

    v11 = SKUIPINInputControl;
    goto LABEL_14;
  }

  if (v3 == 141)
  {
LABEL_8:
    v5 = *(a1 + 56);
    v6 = [v4 buttonText];
    v7 = [v16 style];
    v8 = [v5 _attributedStringForText:v6 style:v7 context:*(a1 + 32)];

    [*(a1 + 40) requestLayoutForButton:v16 attributedString:v8 width:*(a1 + 48)];
LABEL_17:

    goto LABEL_18;
  }

LABEL_19:

  return MEMORY[0x2821F96F8](v3, v4);
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
        [(SKUIPanelView *)v10 sizeThatFitsWidth:v11 viewElement:v12 context:v13, v14, v15, v16, v17];
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
  v23[2] = __55__SKUIPanelView_sizeThatFitsWidth_viewElement_context___block_invoke;
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

double __55__SKUIPanelView_sizeThatFitsWidth_viewElement_context___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
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
  v27 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  contextCopy = context;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = self->_animators;
  v11 = [(NSMapTable *)v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      v14 = 0;
      do
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v22 + 1) + 8 * v14++) setDelegate:0];
      }

      while (v12 != v14);
      v12 = [(NSMapTable *)v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  inputResponder = self->_inputResponder;
  self->_inputResponder = 0;

  [(NSMapTable *)self->_animators removeAllObjects];
  [(NSMapTable *)self->_viewElements removeAllObjects];
  [(NSMapTable *)self->_viewMargins removeAllObjects];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __53__SKUIPanelView_reloadWithViewElement_width_context___block_invoke;
  v18[3] = &unk_2781F95C8;
  v18[4] = self;
  v19 = elementCopy;
  widthCopy = width;
  v20 = contextCopy;
  v16 = contextCopy;
  v17 = elementCopy;
  [(SKUIViewReuseView *)self modifyUsingBlock:v18];
}

void __53__SKUIPanelView_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__SKUIPanelView_reloadWithViewElement_width_context___block_invoke_2;
  v7[3] = &unk_2781FDD38;
  v11 = *(a1 + 56);
  v5 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = v3;
  v10 = *(a1 + 32);
  v6 = v3;
  [v4 _enumerateChildrenOfViewElement:v5 usingBlock:v7];
}

void __53__SKUIPanelView_reloadWithViewElement_width_context___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v26 = a2;
  v6 = [v26 elementType];
  if (v6 > 49)
  {
    if (v6 > 139)
    {
      if (v6 == 140)
      {
        v7 = v26;
        if ([objc_opt_class() _isValidTextInputViewElement:v7])
        {
          v13 = objc_alloc_init(SKUIPINInputControl);
          [(SKUIPINInputControl *)v13 reloadWithViewElement:v7 width:*(a1 + 32) context:*(a1 + 56)];
          [*(a1 + 40) addView:v13];
          objc_storeStrong((*(a1 + 48) + 432), v13);
          v12 = v13;
          v14 = [v7 animationInterface];
          v15 = v14;
          if (v14)
          {
            [v14 setDelegate:*(a1 + 48)];
            [*(*(a1 + 48) + 424) setObject:v12 forKey:v15];
          }
        }

        else
        {
          v12 = 0;
        }

LABEL_26:

        goto LABEL_27;
      }

      if (v6 != 141)
      {
        goto LABEL_29;
      }
    }

    else if (v6 != 50)
    {
      if (v6 != 138)
      {
        goto LABEL_29;
      }

      v7 = v26;
      v8 = [*(a1 + 32) maxWidthForElement:v7 withDefaultWidth:*(a1 + 56)];
      v9 = [objc_opt_class() _useEditorialLayoutForLabelElement:v7];
      v11 = *(a1 + 32);
      v10 = *(a1 + 40);
      if (v9)
      {
        [v10 addTextViewWithElement:v7 width:v11 context:v8];
      }

      else
      {
        [v10 addLabelViewWithElement:v7 width:v11 context:v8];
      }
      v12 = ;
      goto LABEL_26;
    }

LABEL_16:
    v12 = [*(a1 + 40) addButtonWithElement:v26 width:*(a1 + 32) context:*(a1 + 56)];
    [(SKUIActivityIndicatorView *)v12 addTarget:*(a1 + 48) action:sel__buttonAction_ forControlEvents:64];
    goto LABEL_27;
  }

  if (v6 > 31)
  {
    if (v6 == 32)
    {
      v12 = [*(a1 + 40) addDividerWithElement:v26 context:*(a1 + 32)];
      [(SKUIActivityIndicatorView *)v12 setDividerOrientation:0];
    }

    else
    {
      if (v6 != 49)
      {
        goto LABEL_29;
      }

      v12 = [*(a1 + 40) addImageViewWithElement:v26 context:*(a1 + 32)];
    }

    goto LABEL_27;
  }

  if (v6 != 4)
  {
    if (v6 != 12)
    {
      goto LABEL_29;
    }

    goto LABEL_16;
  }

  v12 = objc_alloc_init(SKUIActivityIndicatorView);
  [(SKUIActivityIndicatorView *)v12 reloadWithViewElement:v26 width:*(a1 + 32) context:*(a1 + 56)];
  [*(a1 + 40) addView:v12];
LABEL_27:
  if (v12)
  {
    [objc_opt_class() _marginsForViewElement:v26 index:a4 width:*(a1 + 32) context:*(a1 + 56)];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    [*(*(a1 + 48) + 440) setObject:v26 forKey:v12];
    v24 = *(*(a1 + 48) + 448);
    v25 = [MEMORY[0x277CCAE60] valueWithUIEdgeInsets:{v17, v19, v21, v23}];
    [v24 setObject:v25 forKey:v12];
  }

LABEL_29:
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
  v11 = 440;
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

- (BOOL)becomeFirstResponder
{
  if (self->_inputResponder)
  {
    inputResponder = self->_inputResponder;

    return [(UIResponder *)inputResponder becomeFirstResponder];
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = SKUIPanelView;
    return [(SKUIPanelView *)&v6 becomeFirstResponder];
  }
}

- (BOOL)canBecomeFirstResponder
{
  if (self->_inputResponder)
  {
    inputResponder = self->_inputResponder;

    return [(UIResponder *)inputResponder canBecomeFirstResponder];
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = SKUIPanelView;
    return [(SKUIPanelView *)&v6 canBecomeFirstResponder];
  }
}

- (BOOL)resignFirstResponder
{
  if (self->_inputResponder)
  {
    inputResponder = self->_inputResponder;

    return [(UIResponder *)inputResponder resignFirstResponder];
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = SKUIPanelView;
    return [(SKUIPanelView *)&v6 resignFirstResponder];
  }
}

- (void)layoutSubviews
{
  v88[3] = *MEMORY[0x277D85DE8];
  [(SKUIPanelView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SKUIPanelView *)self layoutMargins];
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
  v62[2] = __31__SKUIPanelView_layoutSubviews__block_invoke;
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

void __31__SKUIPanelView_layoutSubviews__block_invoke(uint64_t a1, void *a2)
{
  v21 = a2;
  v3 = [*(*(a1 + 32) + 440) objectForKey:v21];
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
  v13 = [*(*(a1 + 32) + 448) objectForKey:v21];
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
    v19 = qword_215F3FB10[v18];
    v20 = qword_215F3FB50[v18];
  }

  *(*(*(a1 + v19) + 8) + 24) = v10 + *(*(*(a1 + v19) + 8) + 24);
  [*(a1 + v20) addObject:v21];
}

- (void)_buttonAction:(id)action
{
  v3 = [(NSMapTable *)self->_viewElements objectForKey:action];
  [v3 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
}

- (void)animatorFeature:(id)feature performAnimationWithName:(id)name options:(id)options
{
  nameCopy = name;
  optionsCopy = options;
  v9 = [(NSMapTable *)self->_animators objectForKey:feature];
  if ([v9 isDescendantOfView:self] && objc_msgSend(nameCopy, "isEqualToString:", 0x282809028))
  {
    v10 = [[SKUIShakeAnimation alloc] initWithOptions:optionsCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SKUIShakeAnimation *)v10 animatePINInputControl:v9];
    }

    else
    {
      [(SKUIShakeAnimation *)v10 animateView:v9];
    }
  }
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
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v17[3] = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v16[3] = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v15[3] = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__SKUIPanelView__enumerateChildrenOfViewElement_usingBlock___block_invoke;
  v9[3] = &unk_2781FDD88;
  selfCopy = self;
  v8 = blockCopy;
  v10 = v8;
  v11 = v17;
  v12 = v16;
  v13 = v15;
  [elementCopy enumerateChildrenUsingBlock:v9];

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v16, 8);
  _Block_object_dispose(v17, 8);
}

void __60__SKUIPanelView__enumerateChildrenOfViewElement_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([*(a1 + 64) _shouldDisplayViewElement:?])
  {
    v3 = [v6 style];
    v4 = [v3 elementPosition];
    if (v4 > 7)
    {
      v5 = 40;
    }

    else
    {
      v5 = qword_215F3FB50[v4];
    }

    (*(*(a1 + 32) + 16))();
    ++*(*(*(a1 + v5) + 8) + 24);
  }
}

+ (BOOL)_isValidTextInputViewElement:(id)element
{
  elementCopy = element;
  style = [elementCopy style];
  textStyle = [style textStyle];

  maximumLength = [elementCopy maximumLength];
  if (maximumLength < 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = [textStyle isEqualToString:0x282808808];
  }

  return v7;
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
  if (elementType == 140)
  {
    v11 = *MEMORY[0x277CBF3A8];
    v13 = *(MEMORY[0x277CBF3A8] + 8);
  }

  else
  {
    if (elementType == 138)
    {
      width = [contextCopy maxWidthForElement:elementCopy withDefaultWidth:width];
    }

    [contextCopy sizeForViewElement:elementCopy width:width];
    v11 = v10;
    v13 = v12;
  }

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
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

@end
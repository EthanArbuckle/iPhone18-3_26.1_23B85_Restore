@interface _TVTumblerView
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIImageView)arrowLeading;
- (UIImageView)arrowTrailing;
- (UIView)focusedItemView;
- (UIView)gestureTargetView;
- (_TVTumblerView)initWithFrame:(CGRect)frame;
- (_TVTumblerViewDataSource)dataSource;
- (_TVTumblerViewDelegate)delegate;
- (id)_itemViewAtIndex:(int64_t)index;
- (id)dequeueReusableItemView;
- (void)_leftAction:(id)action;
- (void)_markItemViewForInUse:(id)use forIndex:(int64_t)index;
- (void)_markItemViewForReuse:(id)reuse;
- (void)_rightAction:(id)action;
- (void)_scheduleMoveToIndex:(int64_t)index;
- (void)dealloc;
- (void)layoutSubviews;
- (void)registerItemViewClass:(Class)class;
- (void)reloadData;
- (void)setDataSource:(id)source;
- (void)setDelegate:(id)delegate;
- (void)setFocusedItemIndex:(int64_t)index;
- (void)setGestureTargetView:(id)view;
- (void)setSemanticContentAttribute:(int64_t)attribute;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation _TVTumblerView

- (_TVTumblerView)initWithFrame:(CGRect)frame
{
  v36.receiver = self;
  v36.super_class = _TVTumblerView;
  v3 = [(_TVTumblerView *)&v36 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    containerView = v3->_containerView;
    v3->_containerView = v5;

    [(UIView *)v3->_containerView setClipsToBounds:1];
    [(_TVTumblerView *)v3 addSubview:v3->_containerView];
    effectiveUserInterfaceLayoutDirection = [(_TVTumblerView *)v3 effectiveUserInterfaceLayoutDirection];
    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      v8 = sel__rightAction_;
    }

    else
    {
      v8 = sel__leftAction_;
    }

    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      v9 = sel__leftAction_;
    }

    else
    {
      v9 = sel__rightAction_;
    }

    v10 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v3 action:v8];
    leftTapGesture = v3->_leftTapGesture;
    v3->_leftTapGesture = v10;

    [(UITapGestureRecognizer *)v3->_leftTapGesture setAllowedPressTypes:&unk_287E486C0];
    v12 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v3 action:v9];
    rightTapGesture = v3->_rightTapGesture;
    v3->_rightTapGesture = v12;

    [(UITapGestureRecognizer *)v3->_rightTapGesture setAllowedPressTypes:&unk_287E486D8];
    v14 = [objc_alloc(MEMORY[0x277D75AE0]) initWithTarget:v3 action:v8];
    leftSwipeGesture = v3->_leftSwipeGesture;
    v3->_leftSwipeGesture = v14;

    [(UISwipeGestureRecognizer *)v3->_leftSwipeGesture setDirection:2];
    v16 = [objc_alloc(MEMORY[0x277D75AE0]) initWithTarget:v3 action:v9];
    rightSwipeGesture = v3->_rightSwipeGesture;
    v3->_rightSwipeGesture = v16;

    [(UISwipeGestureRecognizer *)v3->_rightSwipeGesture setDirection:1];
    v3->_unfocusedItemIndex = 0x7FFFFFFFFFFFFFFFLL;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    itemViewsByIndex = v3->_itemViewsByIndex;
    v3->_itemViewsByIndex = dictionary;

    *(&v3->_delegateFlags + 1) = 1;
    v20 = MEMORY[0x277D755B8];
    v21 = +[TVMLUtilities TVMLKitBundle];
    v22 = [v20 imageNamed:@"tumbler-chevron" inBundle:v21];

    traitCollection = [(_TVTumblerView *)v3 traitCollection];
    if ([traitCollection userInterfaceStyle] == 2)
    {
      [MEMORY[0x277D75348] whiteColor];
    }

    else
    {
      [MEMORY[0x277D75348] blackColor];
    }
    v24 = ;

    v25 = objc_alloc(MEMORY[0x277D755E8]);
    v26 = [v22 imageWithRenderingMode:2];
    v27 = [v25 initWithImage:v26];
    arrowLeft = v3->_arrowLeft;
    v3->_arrowLeft = v27;

    v29 = v3->_arrowLeft;
    CGAffineTransformMakeRotation(&v35, 3.14159265);
    [(UIImageView *)v29 setTransform:&v35];
    [(UIImageView *)v3->_arrowLeft setTintColor:v24];
    [(_TVTumblerView *)v3 addSubview:v3->_arrowLeft];
    v30 = objc_alloc(MEMORY[0x277D755E8]);
    v31 = [v22 imageWithRenderingMode:2];
    v32 = [v30 initWithImage:v31];
    arrowRight = v3->_arrowRight;
    v3->_arrowRight = v32;

    [(UIImageView *)v3->_arrowRight setTintColor:v24];
    [(_TVTumblerView *)v3 addSubview:v3->_arrowRight];
  }

  return v3;
}

- (void)dealloc
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__enableMove object:0];
  v3.receiver = self;
  v3.super_class = _TVTumblerView;
  [(_TVTumblerView *)&v3 dealloc];
}

- (UIImageView)arrowLeading
{
  effectiveUserInterfaceLayoutDirection = [(_TVTumblerView *)self effectiveUserInterfaceLayoutDirection];
  v4 = &OBJC_IVAR____TVTumblerView__arrowLeft;
  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v4 = &OBJC_IVAR____TVTumblerView__arrowRight;
  }

  v5 = *(&self->super.super.super.isa + *v4);

  return v5;
}

- (UIImageView)arrowTrailing
{
  effectiveUserInterfaceLayoutDirection = [(_TVTumblerView *)self effectiveUserInterfaceLayoutDirection];
  v4 = &OBJC_IVAR____TVTumblerView__arrowRight;
  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v4 = &OBJC_IVAR____TVTumblerView__arrowLeft;
  }

  v5 = *(&self->super.super.super.isa + *v4);

  return v5;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  traitCollection = [(_TVTumblerView *)self traitCollection];
  if (![traitCollection userInterfaceStyle])
  {
LABEL_7:

    goto LABEL_8;
  }

  userInterfaceStyle = [changeCopy userInterfaceStyle];
  traitCollection2 = [(_TVTumblerView *)self traitCollection];
  userInterfaceStyle2 = [traitCollection2 userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    traitCollection3 = [(_TVTumblerView *)self traitCollection];
    if ([traitCollection3 userInterfaceStyle] == 2)
    {
      [MEMORY[0x277D75348] whiteColor];
    }

    else
    {
      [MEMORY[0x277D75348] blackColor];
    }
    traitCollection = ;

    [(UIImageView *)self->_arrowLeft setTintColor:traitCollection];
    [(UIImageView *)self->_arrowRight setTintColor:traitCollection];
    goto LABEL_7;
  }

LABEL_8:
  v10.receiver = self;
  v10.super_class = _TVTumblerView;
  [(_TVTumblerView *)&v10 traitCollectionDidChange:changeCopy];
}

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  if ([(_TVTumblerView *)self semanticContentAttribute]!= attribute)
  {
    [(UITapGestureRecognizer *)self->_leftTapGesture removeTarget:self action:0];
    [(UITapGestureRecognizer *)self->_rightTapGesture removeTarget:self action:0];
    [(UISwipeGestureRecognizer *)self->_leftSwipeGesture removeTarget:self action:0];
    [(UISwipeGestureRecognizer *)self->_rightSwipeGesture removeTarget:self action:0];
    v5 = [MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:attribute];
    if (v5 == 1)
    {
      v6 = sel__rightAction_;
    }

    else
    {
      v6 = sel__leftAction_;
    }

    if (v5 == 1)
    {
      v7 = sel__leftAction_;
    }

    else
    {
      v7 = sel__rightAction_;
    }

    [(UITapGestureRecognizer *)self->_leftTapGesture addTarget:self action:v6];
    [(UITapGestureRecognizer *)self->_rightTapGesture addTarget:self action:v7];
    [(UISwipeGestureRecognizer *)self->_leftSwipeGesture addTarget:self action:v6];
    [(UISwipeGestureRecognizer *)self->_rightSwipeGesture addTarget:self action:v7];
  }

  v8.receiver = self;
  v8.super_class = _TVTumblerView;
  [(_TVTumblerView *)&v8 setSemanticContentAttribute:attribute];
}

- (void)setDataSource:(id)source
{
  objc_storeWeak(&self->_dataSource, source);

  [(_TVTumblerView *)self reloadData];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = objc_storeWeak(&self->_delegate, delegateCopy);
  v5 = objc_opt_respondsToSelector();

  *&self->_delegateFlags = *&self->_delegateFlags & 0xFE | v5 & 1;
}

- (void)setGestureTargetView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->_gestureTargetView);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_gestureTargetView);
    leftTapGesture = [(_TVTumblerView *)self leftTapGesture];
    [v5 removeGestureRecognizer:leftTapGesture];

    v7 = objc_loadWeakRetained(&self->_gestureTargetView);
    rightTapGesture = [(_TVTumblerView *)self rightTapGesture];
    [v7 removeGestureRecognizer:rightTapGesture];

    v9 = objc_loadWeakRetained(&self->_gestureTargetView);
    leftSwipeGesture = [(_TVTumblerView *)self leftSwipeGesture];
    [v9 removeGestureRecognizer:leftSwipeGesture];

    v11 = objc_loadWeakRetained(&self->_gestureTargetView);
    rightSwipeGesture = [(_TVTumblerView *)self rightSwipeGesture];
    [v11 removeGestureRecognizer:rightSwipeGesture];
  }

  v13 = objc_storeWeak(&self->_gestureTargetView, obj);
  leftTapGesture2 = [(_TVTumblerView *)self leftTapGesture];
  [obj addGestureRecognizer:leftTapGesture2];

  v15 = objc_loadWeakRetained(&self->_gestureTargetView);
  rightTapGesture2 = [(_TVTumblerView *)self rightTapGesture];
  [v15 addGestureRecognizer:rightTapGesture2];

  v17 = objc_loadWeakRetained(&self->_gestureTargetView);
  leftSwipeGesture2 = [(_TVTumblerView *)self leftSwipeGesture];
  [v17 addGestureRecognizer:leftSwipeGesture2];

  v19 = objc_loadWeakRetained(&self->_gestureTargetView);
  rightSwipeGesture2 = [(_TVTumblerView *)self rightSwipeGesture];
  [v19 addGestureRecognizer:rightSwipeGesture2];
}

- (void)setFocusedItemIndex:(int64_t)index
{
  if (self->_focusedItemIndex != index)
  {
    self->_focusedItemIndex = index;
    [(_TVTumblerView *)self setUnfocusedItemIndex:0x7FFFFFFFFFFFFFFFLL];

    [(_TVTumblerView *)self setNeedsLayout];
  }
}

- (UIView)focusedItemView
{
  focusedItemIndex = [(_TVTumblerView *)self focusedItemIndex];
  if (focusedItemIndex < 0 || (v4 = focusedItemIndex, -[_TVTumblerView dataSource](self, "dataSource"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 numberOfItemsInTumblerView:self], v5, v4 >= v6))
  {
    v9 = 0;
  }

  else
  {
    itemViewsByIndex = [(_TVTumblerView *)self itemViewsByIndex];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:v4];
    v9 = [itemViewsByIndex objectForKey:v8];
  }

  return v9;
}

- (void)registerItemViewClass:(Class)class
{
  objc_storeStrong(&self->_itemViewClass, class);

  [(_TVTumblerView *)self reloadData];
}

- (id)dequeueReusableItemView
{
  spareItemView = [(_TVTumblerView *)self spareItemView];

  if (!spareItemView)
  {
    [(UIView *)self tv_padding];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [(_TVTumblerView *)self bounds];
    v16 = [objc_alloc(-[_TVTumblerView itemViewClass](self "itemViewClass"))];
    [(_TVTumblerView *)self setSpareItemView:v16];
  }

  return [(_TVTumblerView *)self spareItemView];
}

- (void)reloadData
{
  dataSource = [(_TVTumblerView *)self dataSource];
  v4 = [dataSource numberOfItemsInTumblerView:self];

  if ([(_TVTumblerView *)self focusedItemIndex]>= v4)
  {
    if (v4 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }

    [(_TVTumblerView *)self setFocusedItemIndex:v5 - 1];
  }

  focusedItemView = [(_TVTumblerView *)self focusedItemView];
  if (focusedItemView)
  {
    [(_TVTumblerView *)self _markItemViewForReuse:focusedItemView];
  }

  [(_TVTumblerView *)self setReferredFocusedItemView:0];
  [(_TVTumblerView *)self setUnfocusedItemIndex:0x7FFFFFFFFFFFFFFFLL];
  [(_TVTumblerView *)self setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(_TVTumblerView *)self bounds:fits.width];
  v6 = fmax(width, v5);
  [(_TVTumblerView *)self bounds];
  v8 = v7;
  v9 = v6;
  result.height = v8;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  v80 = *MEMORY[0x277D85DE8];
  dataSource = [(_TVTumblerView *)self dataSource];
  v4 = [dataSource numberOfItemsInTumblerView:self];

  if (([(_TVTumblerView *)self focusedItemIndex]& 0x8000000000000000) == 0 && [(_TVTumblerView *)self focusedItemIndex]< v4)
  {
    [(_TVTumblerView *)self bounds];
    v6 = v5;
    v57 = v7;
    v58 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    arrowLeft = [(_TVTumblerView *)self arrowLeft];
    [arrowLeft sizeThatFits:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
    v15 = v14;
    v17 = v16;

    [(UIView *)self tv_padding];
    if (v19 < v15 + 56.0)
    {
      v19 = v15 + 56.0;
    }

    if (v21 < v15 + 56.0)
    {
      v21 = v15 + 56.0;
    }

    v22 = v6 + v19;
    v23 = v8 + v18;
    v24 = v10 - (v19 + v21);
    v25 = v12 - (v18 + v20);
    containerView = [(_TVTumblerView *)self containerView];
    [containerView setFrame:{v22, v23, v24, v25}];

    v81.origin.x = v22;
    v81.origin.y = v23;
    v55 = v25;
    v56 = v24;
    v81.size.width = v24;
    v81.size.height = v25;
    v27 = CGRectGetMidY(v81) + v17 * -0.5;
    arrowLeft2 = [(_TVTumblerView *)self arrowLeft];
    v82.origin.x = v58;
    v82.origin.y = v57;
    v82.size.width = v10;
    v82.size.height = v12;
    [arrowLeft2 setFrame:{CGRectGetMinX(v82) + 28.0, v27, v15, v17}];

    arrowRight = [(_TVTumblerView *)self arrowRight];
    v83.origin.x = v58;
    v83.origin.y = v57;
    v83.size.width = v10;
    v83.size.height = v12;
    [arrowRight setFrame:{CGRectGetMaxX(v83) - (v15 + 28.0), v27, v15, v17}];

    v30 = [(_TVTumblerView *)self _itemViewAtIndex:[(_TVTumblerView *)self focusedItemIndex]];
    focusedItemView = [(_TVTumblerView *)self focusedItemView];

    if (v30 != focusedItemView)
    {
      if ([(_TVTumblerView *)self unfocusedItemIndex]== 0x7FFFFFFFFFFFFFFFLL)
      {
        [v30 setFrame:{0.0, 0.0, v24, v25}];
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        itemViewsByIndex = [(_TVTumblerView *)self itemViewsByIndex];
        allValues = [itemViewsByIndex allValues];

        v34 = [allValues countByEnumeratingWithState:&v59 objects:v79 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v60;
          do
          {
            for (i = 0; i != v35; ++i)
            {
              if (*v60 != v36)
              {
                objc_enumerationMutation(allValues);
              }

              if (*(*(&v59 + 1) + 8 * i) != v30)
              {
                [(_TVTumblerView *)self _markItemViewForReuse:?];
              }
            }

            v35 = [allValues countByEnumeratingWithState:&v59 objects:v79 count:16];
          }

          while (v35);
        }

        arrowLeading = [(_TVTumblerView *)self arrowLeading];
        if ([(_TVTumblerView *)self focusedItemIndex]<= 0)
        {
          v39 = 0.0;
        }

        else
        {
          v39 = 1.0;
        }

        [arrowLeading setAlpha:{v39, *&v25}];

        arrowTrailing = [(_TVTumblerView *)self arrowTrailing];
        if ([(_TVTumblerView *)self focusedItemIndex]>= v4 - 1)
        {
          v41 = 0.0;
        }

        else
        {
          v41 = 1.0;
        }

        [arrowTrailing setAlpha:v41];

        [(_TVTumblerView *)self _enableMove];
      }

      else
      {
        unfocusedItemIndex = [(_TVTumblerView *)self unfocusedItemIndex];
        v43 = [(_TVTumblerView *)self _itemViewAtIndex:unfocusedItemIndex];
        if ([(_TVTumblerView *)self effectiveUserInterfaceLayoutDirection]== 1)
        {
          v44 = -1;
        }

        else
        {
          v44 = 1;
        }

        v45 = v44;
        if (unfocusedItemIndex >= [(_TVTumblerView *)self focusedItemIndex])
        {
          v46 = v44;
        }

        else
        {
          v46 = -v44;
        }

        [(_TVTumblerView *)self interitemSpacing];
        v48 = v46 * (v56 + v47) + 0.0;
        if (unfocusedItemIndex >= [(_TVTumblerView *)self focusedItemIndex])
        {
          v45 = -v44;
        }

        [(_TVTumblerView *)self interitemSpacing];
        [v30 setFrame:{v45 * (v56 + v49) + 0.0, 0.0, v56, v55}];
        v50 = MEMORY[0x277D75D18];
        v66[0] = MEMORY[0x277D85DD0];
        v66[1] = 3221225472;
        v66[2] = __32___TVTumblerView_layoutSubviews__block_invoke;
        v66[3] = &unk_279D6EE00;
        v67 = v43;
        v70 = v48;
        v71 = 0;
        v72 = v56;
        v73 = v55;
        v74 = 0;
        v75 = 0;
        v76 = v56;
        v77 = v55;
        v68 = v30;
        selfCopy = self;
        v78 = v4;
        v63[0] = MEMORY[0x277D85DD0];
        v63[1] = 3221225472;
        v63[2] = __32___TVTumblerView_layoutSubviews__block_invoke_2;
        v63[3] = &unk_279D6EE28;
        v64 = v67;
        v65 = unfocusedItemIndex;
        v63[4] = self;
        v51 = v67;
        [v50 animateWithDuration:v66 animations:v63 completion:0.3];
      }

      [(_TVTumblerView *)self setReferredFocusedItemView:v30];
      containerView2 = [(_TVTumblerView *)self containerView];
      [containerView2 addSubview:v30];

      [(_TVTumblerView *)self _markItemViewForInUse:v30 forIndex:[(_TVTumblerView *)self focusedItemIndex]];
      if (*&self->_delegateFlags)
      {
        delegate = [(_TVTumblerView *)self delegate];
        [delegate tumblerView:self didFocusItemAtIndex:{-[_TVTumblerView focusedItemIndex](self, "focusedItemIndex")}];
      }
    }

    gestureTargetView = [(_TVTumblerView *)self gestureTargetView];

    if (!gestureTargetView)
    {
      [(_TVTumblerView *)self setGestureTargetView:self];
    }
  }
}

- (void)_leftAction:(id)action
{
  focusedItemIndex = [(_TVTumblerView *)self focusedItemIndex];
  unfocusedItemIndex = [(_TVTumblerView *)self unfocusedItemIndex];
  if ((unfocusedItemIndex >= focusedItemIndex || unfocusedItemIndex == 0x7FFFFFFFFFFFFFFFLL) && focusedItemIndex >= 1)
  {

    [(_TVTumblerView *)self _scheduleMoveToIndex:focusedItemIndex - 1];
  }
}

- (void)_rightAction:(id)action
{
  focusedItemIndex = [(_TVTumblerView *)self focusedItemIndex];
  unfocusedItemIndex = [(_TVTumblerView *)self unfocusedItemIndex];
  if (unfocusedItemIndex == 0x7FFFFFFFFFFFFFFFLL || unfocusedItemIndex <= focusedItemIndex)
  {
    dataSource = [(_TVTumblerView *)self dataSource];
    v7 = [dataSource numberOfItemsInTumblerView:self] - 1;

    if (focusedItemIndex < v7)
    {

      [(_TVTumblerView *)self _scheduleMoveToIndex:focusedItemIndex + 1];
    }
  }
}

- (void)_scheduleMoveToIndex:(int64_t)index
{
  if ([(_TVTumblerView *)self canMove])
  {
    focusedItemIndex = [(_TVTumblerView *)self focusedItemIndex];
    [(_TVTumblerView *)self setFocusedItemIndex:index];
    [(_TVTumblerView *)self setUnfocusedItemIndex:focusedItemIndex];

    [(_TVTumblerView *)self _disableMove];
  }
}

- (id)_itemViewAtIndex:(int64_t)index
{
  itemViewsByIndex = [(_TVTumblerView *)self itemViewsByIndex];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:index];
  v7 = [itemViewsByIndex objectForKey:v6];

  if (!v7)
  {
    dataSource = [(_TVTumblerView *)self dataSource];
    v7 = [dataSource tumblerView:self viewForItemAtIndex:index];
  }

  return v7;
}

- (void)_markItemViewForInUse:(id)use forIndex:(int64_t)index
{
  useCopy = use;
  spareItemView = [(_TVTumblerView *)self spareItemView];

  if (spareItemView == useCopy)
  {
    [(_TVTumblerView *)self setSpareItemView:0];
  }

  itemViewsByIndex = [(_TVTumblerView *)self itemViewsByIndex];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:index];
  [itemViewsByIndex setObject:useCopy forKey:v8];

  [useCopy setHidden:0];
}

- (void)_markItemViewForReuse:(id)reuse
{
  reuseCopy = reuse;
  spareItemView = [(_TVTumblerView *)self spareItemView];

  if (spareItemView)
  {
    spareItemView2 = [(_TVTumblerView *)self spareItemView];
    [spareItemView2 removeFromSuperview];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  itemViewsByIndex = [(_TVTumblerView *)self itemViewsByIndex];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __40___TVTumblerView__markItemViewForReuse___block_invoke;
  v13 = &unk_279D6EE50;
  v8 = reuseCopy;
  v14 = v8;
  v15 = &v16;
  [itemViewsByIndex enumerateKeysAndObjectsUsingBlock:&v10];

  v9 = [(_TVTumblerView *)self itemViewsByIndex:v10];
  [v9 removeObjectForKey:v17[5]];

  [v8 setHidden:1];
  _Block_object_dispose(&v16, 8);
}

- (_TVTumblerViewDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (_TVTumblerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIView)gestureTargetView
{
  WeakRetained = objc_loadWeakRetained(&self->_gestureTargetView);

  return WeakRetained;
}

@end
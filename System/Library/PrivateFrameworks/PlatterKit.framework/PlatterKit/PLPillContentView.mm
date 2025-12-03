@interface PLPillContentView
- (BOOL)_isAccessoryPinnedToTopLine;
- (BOOL)_isWrappingRequiredForCenterContentItemView:(id)view inBounds:(CGRect)bounds;
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)adjustsFontForContentSizeCategory;
- (BOOL)isWrappingRequiredForCenterContentItem:(id)item inBounds:(CGRect)bounds;
- (CGSize)_intrinsicContentSizeWithReferenceView:(id)view;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFitsContentItem:(id)item;
- (PLPillContentView)initWithLeadingAccessoryView:(id)view trailingAccessoryView:(id)accessoryView;
- (double)_capInsetForAccessoryView:(id)view;
- (double)_capWidthWithAccessoryView:(id)view;
- (id)_arrangedSubviewForContentItem:(id)item;
- (id)_referenceContentItemView;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_cleanupStackView;
- (void)_configureCenterStackViewIfNecessary;
- (void)_incomingTopWrapperView:(id *)view incomingBottomWrapperView:(id *)wrapperView outgoingWrapperViews:(id)views forOutgoingContentItems:(id)items incomingContentItems:(id)contentItems existingWrapperViews:(id)wrapperViews;
- (void)_invalidateVerticalCenterConstraintsForAccessoryView:(id)view;
- (void)_updateConstraintsForAccessoryView:(id)view;
- (void)_updateConstraintsForWrapperView:(id)view;
- (void)setCenterContentItems:(id)items animated:(BOOL)animated;
- (void)setReferenceContentItemForIntrinsicContentSize:(id)size;
- (void)updateCenterContentItem:(id)item withContentItem:(id)contentItem;
- (void)updateConstraints;
@end

@implementation PLPillContentView

- (PLPillContentView)initWithLeadingAccessoryView:(id)view trailingAccessoryView:(id)accessoryView
{
  viewCopy = view;
  accessoryViewCopy = accessoryView;
  v18.receiver = self;
  v18.super_class = PLPillContentView;
  v8 = [(PLPillContentView *)&v18 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v9 = v8;
  if (v8)
  {
    [(PLPillContentView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    traitCollection = [(PLPillContentView *)v9 traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory = v9->_preferredContentSizeCategory;
    v9->_preferredContentSizeCategory = preferredContentSizeCategory;

    translatesAutoresizingMaskIntoConstraints = [(_PLPillAccessoryWrapperView *)viewCopy translatesAutoresizingMaskIntoConstraints];
    v14 = viewCopy;
    if (translatesAutoresizingMaskIntoConstraints)
    {
      v14 = [[_PLPillAccessoryWrapperView alloc] initWithManagedSubview:viewCopy];
    }

    objc_storeStrong(&v9->_leadingAccessoryView, v14);
    if (translatesAutoresizingMaskIntoConstraints)
    {
    }

    if (v9->_leadingAccessoryView)
    {
      [(PLPillContentView *)v9 addSubview:?];
    }

    translatesAutoresizingMaskIntoConstraints2 = [(_PLPillAccessoryWrapperView *)accessoryViewCopy translatesAutoresizingMaskIntoConstraints];
    v16 = accessoryViewCopy;
    if (translatesAutoresizingMaskIntoConstraints2)
    {
      v16 = [[_PLPillAccessoryWrapperView alloc] initWithManagedSubview:accessoryViewCopy];
    }

    objc_storeStrong(&v9->_trailingAccessoryView, v16);
    if (translatesAutoresizingMaskIntoConstraints2)
    {
    }

    if (v9->_trailingAccessoryView)
    {
      [(PLPillContentView *)v9 addSubview:?];
    }
  }

  return v9;
}

- (BOOL)isWrappingRequiredForCenterContentItem:(id)item inBounds:(CGRect)bounds
{
  if (!item)
  {
    return 0;
  }

  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v9 = [(PLPillContentView *)self _arrangedSubviewForContentItem:?];
  if (v9)
  {
    height = [(PLPillContentView *)self _isWrappingRequiredForCenterContentItemView:v9 inBounds:x, y, width, height];
  }

  else
  {
    height = 0;
  }

  return height;
}

- (void)setCenterContentItems:(id)items animated:(BOOL)animated
{
  animatedCopy = animated;
  itemsCopy = items;
  if ([itemsCopy count] >= 3)
  {
    [PLPillContentView setCenterContentItems:animated:];
  }

  if (([itemsCopy isEqualToArray:self->_centerContentItems] & 1) == 0)
  {
    [(PLPillContentView *)self _configureCenterStackViewIfNecessary];
    v8 = self->_centerContentItems;
    objc_storeStrong(&self->_centerContentItems, items);
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    firstObject = [(NSArray *)self->_centerContentItems firstObject];
    if ([(NSArray *)self->_centerContentItems count]== 2 && ([(NSArray *)self->_centerContentItems lastObject], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v12 = v11;
    }

    else
    {
      soloItem = [firstObject soloItem];

      v12 = 0;
      firstObject = soloItem;
    }

    v54 = 0;
    v55[0] = 0;
    v14 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{firstObject, v12, 0}];
    arrangedSubviews = [(UIStackView *)self->_centerStackView arrangedSubviews];
    v36 = v8;
    [(PLPillContentView *)self _incomingTopWrapperView:v55 incomingBottomWrapperView:&v54 outgoingWrapperViews:v9 forOutgoingContentItems:v8 incomingContentItems:v14 existingWrapperViews:arrangedSubviews];
    v16 = v55[0];
    v17 = v54;

    firstObject2 = [v9 firstObject];
    [firstObject2 setTopConstraintBreakable:1];

    if ([v9 count] >= 2)
    {
      v19 = 1;
      do
      {
        v20 = [v9 objectAtIndexedSubscript:v19];
        [v20 setTopConstraintBreakable:0];

        ++v19;
      }

      while (v19 < [v9 count]);
    }

    [v16 setTopConstraintBreakable:v17 != 0];
    [v17 setTopConstraintBreakable:0];
    v21 = objc_alloc_init(MEMORY[0x277D763A0]);
    [v21 _setContainerView:self];
    [v21 _setIsAnimated:animatedCopy];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __52__PLPillContentView_setCenterContentItems_animated___block_invoke;
    v47[3] = &unk_278425698;
    v22 = v21;
    v48 = v22;
    v23 = v9;
    v49 = v23;
    v24 = v16;
    v50 = v24;
    v35 = firstObject;
    v51 = v35;
    v25 = v17;
    v52 = v25;
    v26 = v12;
    v53 = v26;
    v27 = animatedCopy;
    v28 = MEMORY[0x223D70F60](v47);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __52__PLPillContentView_setCenterContentItems_animated___block_invoke_5;
    v41[3] = &unk_2784256C0;
    v29 = v24;
    v42 = v29;
    v30 = v25;
    v43 = v30;
    v31 = v23;
    v44 = v31;
    selfCopy = self;
    v32 = v22;
    v46 = v32;
    v33 = MEMORY[0x223D70F60](v41);
    if (v27)
    {
      v34 = MEMORY[0x277D75D18];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __52__PLPillContentView_setCenterContentItems_animated___block_invoke_6;
      v39[3] = &unk_2784256E8;
      v40 = v28;
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __52__PLPillContentView_setCenterContentItems_animated___block_invoke_7;
      v37[3] = &unk_278425710;
      v38 = v33;
      [v34 _animateUsingDefaultDampedSpringWithDelay:4100 initialSpringVelocity:v39 options:v37 animations:0.0 completion:0.0];
    }

    else
    {
      v28[2](v28);
      v33[2](v33);
    }

    [(PLPillContentView *)self invalidateIntrinsicContentSize];
    [(PLPillContentView *)self needsUpdateConstraints];
    [(PLPillContentView *)self setNeedsLayout];
  }
}

void __52__PLPillContentView_setCenterContentItems_animated___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__PLPillContentView_setCenterContentItems_animated___block_invoke_3;
  v12[3] = &unk_278425670;
  v13 = *(a1 + 32);
  v2 = MEMORY[0x223D70F60](v12);
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        __52__PLPillContentView_setCenterContentItems_animated___block_invoke_2(v4, *(*(&v8 + 1) + 8 * v7++));
      }

      while (v5 != v7);
      v4 = [v3 countByEnumeratingWithState:&v8 objects:v14 count:16];
      v5 = v4;
    }

    while (v4);
  }

  v2[2](v2, *(a1 + 48), *(a1 + 56));
  v2[2](v2, *(a1 + 64), *(a1 + 72));
  [*(a1 + 32) __runAlongsideAnimations];
}

void __52__PLPillContentView_setCenterContentItems_animated___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    [v2 setHidden:1];
    [v2 setAlpha:0.0];
    [v2 beginAppearanceTransition:0];
  }
}

void __52__PLPillContentView_setCenterContentItems_animated___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    v7 = MEMORY[0x277D75D18];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __52__PLPillContentView_setCenterContentItems_animated___block_invoke_4;
    v11[3] = &unk_2784250D8;
    v8 = v5;
    v12 = v8;
    v9 = a3;
    [v7 performWithoutAnimation:v11];
    v10 = [*(a1 + 32) _transitionCoordinator];
    [v8 setContentItem:v9 transitionCoordinator:v10];

    [v8 setHidden:0];
    [v8 setAlpha:1.0];
    [v8 beginAppearanceTransition:1];
  }
}

uint64_t __52__PLPillContentView_setCenterContentItems_animated___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) beginAppearanceTransition:0];
  v2 = *(a1 + 32);

  return [v2 endAppearanceTransition:0];
}

uint64_t __52__PLPillContentView_setCenterContentItems_animated___block_invoke_5(id *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  [a1[4] endAppearanceTransition:1];
  [a1[5] endAppearanceTransition:1];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = a1[6];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) endAppearanceTransition:{0, v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  [a1[7] _cleanupStackView];
  return [a1[8] completeTransition:1];
}

- (CGSize)sizeThatFitsContentItem:(id)item
{
  itemCopy = item;
  traitCollection = [(PLPillContentView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v7 = UIViewForPLPillContentItem(itemCopy, preferredContentSizeCategory);

  [(PLPillContentView *)self _intrinsicContentSizeWithReferenceView:v7];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)setReferenceContentItemForIntrinsicContentSize:(id)size
{
  sizeCopy = size;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_referenceContentItemForIntrinsicContentSize, size);
    referenceContentItemView = self->_referenceContentItemView;
    self->_referenceContentItemView = 0;
  }
}

- (void)updateCenterContentItem:(id)item withContentItem:(id)contentItem
{
  itemCopy = item;
  contentItemCopy = contentItem;
  if ([(NSArray *)self->_centerContentItems containsObject:itemCopy])
  {
    if (!contentItemCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  [PLPillContentView updateCenterContentItem:withContentItem:];
  if (contentItemCopy)
  {
LABEL_3:
    [itemCopy updateWithContentItem:contentItemCopy];
  }

LABEL_4:
}

- (CGSize)intrinsicContentSize
{
  _referenceContentItemView = [(PLPillContentView *)self _referenceContentItemView];
  [(PLPillContentView *)self _intrinsicContentSizeWithReferenceView:_referenceContentItemView];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)updateConstraints
{
  v19 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = PLPillContentView;
  [(PLPillContentView *)&v17 updateConstraints];
  [(PLPillContentView *)self _updateConstraintsForAccessoryView:self->_leadingAccessoryView];
  [(PLPillContentView *)self _updateConstraintsForAccessoryView:self->_trailingAccessoryView];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  arrangedSubviews = [(UIStackView *)self->_centerStackView arrangedSubviews];
  v4 = [arrangedSubviews countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(arrangedSubviews);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = objc_opt_class();
        v10 = v8;
        if (v9)
        {
          if (objc_opt_isKindOfClass())
          {
            v11 = v10;
          }

          else
          {
            v11 = 0;
          }
        }

        else
        {
          v11 = 0;
        }

        v12 = v11;

        [(PLPillContentView *)self _updateConstraintsForWrapperView:v12];
        ++v7;
      }

      while (v5 != v7);
      v5 = [arrangedSubviews countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v5);
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = PLPillContentView;
  v5 = [(PLPillContentView *)&v10 hitTest:event withEvent:test.x, test.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

- (BOOL)adjustsFontForContentSizeCategory
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_adjustsFontForContentSizeCategory)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    arrangedSubviews = [(UIStackView *)self->_centerStackView arrangedSubviews];
    v3 = [arrangedSubviews countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = *v9;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v9 != v4)
          {
            objc_enumerationMutation(arrangedSubviews);
          }

          v6 = *(*(&v8 + 1) + 8 * i);
          if (objc_opt_respondsToSelector() & 1) != 0 && ([v6 adjustsFontForContentSizeCategory])
          {
            LOBYTE(v3) = 1;
            goto LABEL_14;
          }
        }

        v3 = [arrangedSubviews countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)adjustForContentSizeCategoryChange
{
  v19 = *MEMORY[0x277D85DE8];
  if ([(PLPillContentView *)self adjustsFontForContentSizeCategory])
  {
    traitCollection = [(PLPillContentView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

    if ((BSEqualObjects() & 1) == 0)
    {
      objc_storeStrong(&self->_preferredContentSizeCategory, preferredContentSizeCategory);
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    arrangedSubviews = [(UIStackView *)self->_centerStackView arrangedSubviews];
    v6 = [arrangedSubviews countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(arrangedSubviews);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v8 |= [v11 adjustForContentSizeCategoryChange];
          }
        }

        v7 = [arrangedSubviews countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);

      if (v8)
      {
        [(PLPillContentView *)self invalidateIntrinsicContentSize];
        [(PLPillContentView *)self _invalidateVerticalCenterConstraintsForAccessoryView:self->_leadingAccessoryView];
        [(PLPillContentView *)self _invalidateVerticalCenterConstraintsForAccessoryView:self->_trailingAccessoryView];
        [(PLPillContentView *)self setNeedsUpdateConstraints];
        [(PLPillContentView *)self setNeedsLayout];
        v12 = 1;
LABEL_18:

        return v12;
      }
    }

    else
    {
    }

    v12 = 0;
    goto LABEL_18;
  }

  return 0;
}

- (id)_referenceContentItemView
{
  referenceContentItemView = self->_referenceContentItemView;
  if (!referenceContentItemView)
  {
    referenceContentItemForIntrinsicContentSize = self->_referenceContentItemForIntrinsicContentSize;
    if (referenceContentItemForIntrinsicContentSize)
    {
      traitCollection = [(PLPillContentView *)self traitCollection];
      preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
      v7 = UIViewForPLPillContentItem(referenceContentItemForIntrinsicContentSize, preferredContentSizeCategory);
      v8 = self->_referenceContentItemView;
      self->_referenceContentItemView = v7;

      referenceContentItemView = self->_referenceContentItemView;
    }

    else
    {
      referenceContentItemView = 0;
    }
  }

  return referenceContentItemView;
}

- (BOOL)_isAccessoryPinnedToTopLine
{
  arrangedSubviews = [(UIStackView *)self->_centerStackView arrangedSubviews];
  v4 = [arrangedSubviews count] >= 2 && UIContentSizeCategoryCompareToCategory(*MEMORY[0x277D76800], self->_preferredContentSizeCategory) == NSOrderedAscending;

  return v4;
}

- (BOOL)_isWrappingRequiredForCenterContentItemView:(id)view inBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  leadingAccessoryView = self->_leadingAccessoryView;
  viewCopy = view;
  [(PLPillContentView *)self _capWidthWithAccessoryView:leadingAccessoryView];
  v12 = v11;
  [(PLPillContentView *)self _capWidthWithAccessoryView:self->_trailingAccessoryView];
  v14 = v13;
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  [viewCopy sizeThatFits:{CGRectGetWidth(v18) - v12 - v14, 1.79769313e308}];
  v16 = v15;

  return v16 + 24.0 > PLContentViewHeightForContentSizeCategory(self->_preferredContentSizeCategory, 1uLL, 0.0);
}

- (CGSize)_intrinsicContentSizeWithReferenceView:(id)view
{
  v52 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  arrangedSubviews = [(UIStackView *)self->_centerStackView arrangedSubviews];
  v6 = arrangedSubviews;
  if (viewCopy)
  {
    v7 = [arrangedSubviews arrayByAddingObject:viewCopy];

    v6 = v7;
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v48;
    v12 = 0.0;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v48 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v47 + 1) + 8 * i) sizeThatFits:{1.79769313e308, 1.79769313e308, v47}];
        if (v14 >= v12)
        {
          v12 = v14;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = 0.0;
  }

  [(PLPillContentView *)self _capWidthWithAccessoryView:self->_leadingAccessoryView];
  v16 = v15;
  [(PLPillContentView *)self _capWidthWithAccessoryView:self->_trailingAccessoryView];
  v18 = v17;
  v19 = MEMORY[0x277D759A0];
  v20 = self->_preferredContentSizeCategory;
  mainScreen = [v19 mainScreen];
  [mainScreen bounds];
  v23 = v22;

  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 bounds];
  v26 = v25;

  if (v23 >= v26)
  {
    v27 = v26;
  }

  else
  {
    v27 = v23;
  }

  v28 = v27 + -40.0;
  v29 = fmin(v27 + -40.0, 556.0);
  v30 = *MEMORY[0x277D76838];
  if (UIContentSizeCategoryCompareToCategory(*MEMORY[0x277D76838], v20) == NSOrderedAscending)
  {
    v31 = fmax(v29, 300.0);
    if (v31 >= v28 + -100.0)
    {
      v29 = v31;
    }

    else
    {
      v29 = v28 + -100.0;
    }
  }

  v32 = *MEMORY[0x277D76818];
  v33 = UIContentSizeCategoryCompareToCategory(*MEMORY[0x277D76818], v20);

  v34 = self->_preferredContentSizeCategory;
  v35 = UIContentSizeCategoryCompareToCategory(v30, v34);
  v36 = UIContentSizeCategoryCompareToCategory(v32, v34);

  v37 = [(NSArray *)self->_centerContentItems count];
  v38 = 0.0;
  if (v37 <= 1)
  {
    lastObject = [(NSArray *)self->_centerContentItems lastObject];
    v40 = [(PLPillContentView *)self _arrangedSubviewForContentItem:lastObject];
    [(PLPillContentView *)self bounds];
    v38 = [(PLPillContentView *)self _isWrappingRequiredForCenterContentItemView:v40 inBounds:?];
  }

  v41 = fmax(v29, 400.0);
  if (v41 < v28)
  {
    v41 = v28;
  }

  if (v33 != NSOrderedAscending)
  {
    v41 = v29;
  }

  v42 = 200.0;
  if (v35 == NSOrderedAscending)
  {
    v42 = 250.0;
  }

  if (v36 == NSOrderedAscending)
  {
    v42 = 300.0;
  }

  if (v42 < v12 + v16 + v18)
  {
    v42 = v12 + v16 + v18;
  }

  if (v41 <= v42)
  {
    v43 = v41;
  }

  else
  {
    v43 = v42;
  }

  v44 = PLContentViewHeightForContentSizeCategory(self->_preferredContentSizeCategory, v37, v38);

  v45 = v43;
  v46 = v44;
  result.height = v46;
  result.width = v45;
  return result;
}

- (id)_arrangedSubviewForContentItem:(id)item
{
  v18 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  arrangedSubviews = [(UIStackView *)self->_centerStackView arrangedSubviews];
  v6 = [arrangedSubviews countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(arrangedSubviews);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        contentItem = [v9 contentItem];
        v11 = [contentItem isLikePillContentItem:itemCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [arrangedSubviews countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_configureCenterStackViewIfNecessary
{
  v16[3] = *MEMORY[0x277D85DE8];
  if (!self->_centerStackView)
  {
    v3 = objc_alloc_init(MEMORY[0x277D75A68]);
    centerStackView = self->_centerStackView;
    self->_centerStackView = v3;

    [(UIStackView *)self->_centerStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)self->_centerStackView setAxis:1];
    [(UIStackView *)self->_centerStackView setAlignment:3];
    [(UIStackView *)self->_centerStackView setDistribution:0];
    [(UIStackView *)self->_centerStackView setSpacing:2.0];
    [(PLPillContentView *)self insertSubview:self->_centerStackView atIndex:0];
    v15 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(UIStackView *)self->_centerStackView leadingAnchor];
    leadingAnchor2 = [(PLPillContentView *)self leadingAnchor];
    v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v16[0] = v7;
    trailingAnchor = [(UIStackView *)self->_centerStackView trailingAnchor];
    trailingAnchor2 = [(PLPillContentView *)self trailingAnchor];
    v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v16[1] = v10;
    centerYAnchor = [(UIStackView *)self->_centerStackView centerYAnchor];
    centerYAnchor2 = [(PLPillContentView *)self centerYAnchor];
    v13 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v16[2] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
    [v15 activateConstraints:v14];
  }
}

- (void)_cleanupStackView
{
  v15 = *MEMORY[0x277D85DE8];
  arrangedSubviews = [(UIStackView *)self->_centerStackView arrangedSubviews];
  v3 = [arrangedSubviews copy];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([v9 isHidden])
        {
          [v9 removeFromSuperview];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (double)_capInsetForAccessoryView:(id)view
{
  viewCopy = view;
  traitCollection = [(PLPillContentView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v7 = [preferredContentSizeCategory isEqualToString:*MEMORY[0x277D76860]];
  v8 = *MEMORY[0x277D76838];
  if (!v7)
  {
    v8 = preferredContentSizeCategory;
  }

  v9 = v8;
  v10 = UIContentSizeCategoryCompareToCategory(*MEMORY[0x277D76818], v9);

  if (v10 == NSOrderedAscending)
  {
    v11 = 10.0;
  }

  else
  {
    v11 = 30.0;
  }

  if (viewCopy && (self->_leadingAccessoryView == viewCopy || self->_trailingAccessoryView == viewCopy))
  {
    [(UIView *)viewCopy intrinsicContentSize];
    if (v12 + 15.0 + 10.0 <= 45.0)
    {
      v11 = 15.0;
    }

    else
    {
      v11 = 8.0;
    }
  }

  return v11;
}

- (double)_capWidthWithAccessoryView:(id)view
{
  viewCopy = view;
  [(PLPillContentView *)self _capInsetForAccessoryView:viewCopy];
  v6 = v5;
  if (viewCopy && (self->_leadingAccessoryView == viewCopy || self->_trailingAccessoryView == viewCopy))
  {
    [(UIView *)viewCopy intrinsicContentSize];
    v8 = v6 + v7;
    v9 = 8.0;
    if (v6 > 8.0)
    {
      v9 = 10.0;
    }

    v6 = v9 + v8;
  }

  return v6;
}

- (void)_updateConstraintsForAccessoryView:(id)view
{
  viewCopy = view;
  v5 = viewCopy;
  if (viewCopy && (self->_leadingAccessoryView == viewCopy || self->_trailingAccessoryView == viewCopy))
  {
    accessoryViewsToConstraints = self->_accessoryViewsToConstraints;
    v24 = v5;
    if (!accessoryViewsToConstraints)
    {
      weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
      v8 = self->_accessoryViewsToConstraints;
      self->_accessoryViewsToConstraints = weakToStrongObjectsMapTable;

      v5 = v24;
      accessoryViewsToConstraints = self->_accessoryViewsToConstraints;
    }

    v9 = [(NSMapTable *)accessoryViewsToConstraints objectForKey:v5];
    if (!v9)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [(NSMapTable *)self->_accessoryViewsToConstraints setObject:v9 forKey:v24];
    }

    [(PLPillContentView *)self _capInsetForAccessoryView:v24];
    v11 = v10;
    leadingAccessoryView = self->_leadingAccessoryView;
    if (leadingAccessoryView == v24)
    {
      v13 = &unk_28339A318;
    }

    else
    {
      v13 = &unk_28339A330;
    }

    v14 = [v9 objectForKey:v13];
    if (!v14)
    {
      if (leadingAccessoryView == v24)
      {
        leadingAnchor = [(UIView *)v24 leadingAnchor];
        [(PLPillContentView *)self leadingAnchor];
      }

      else
      {
        leadingAnchor = [(UIView *)v24 trailingAnchor];
        [(PLPillContentView *)self trailingAnchor];
      }
      v16 = ;
      v14 = [leadingAnchor constraintEqualToAnchor:v16];

      [v9 setObject:v14 forKey:v13];
      [v14 setActive:1];
    }

    v17 = -v11;
    if (leadingAccessoryView == v24)
    {
      v17 = v11;
    }

    [v14 setConstant:v17];
    v18 = [v9 objectForKey:&unk_28339A348];
    if (!v18)
    {
      _isAccessoryPinnedToTopLine = [(PLPillContentView *)self _isAccessoryPinnedToTopLine];
      centerYAnchor = [(UIView *)v24 centerYAnchor];
      if (_isAccessoryPinnedToTopLine)
      {
        arrangedSubviews = [(UIStackView *)self->_centerStackView arrangedSubviews];
        firstObject = [arrangedSubviews firstObject];
        centerYAnchor2 = [firstObject centerYAnchor];
        v18 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      }

      else
      {
        arrangedSubviews = [(PLPillContentView *)self centerYAnchor];
        v18 = [centerYAnchor constraintEqualToAnchor:arrangedSubviews];
      }

      [v9 setObject:v18 forKey:&unk_28339A348];
      [v18 setActive:1];
    }

    v5 = v24;
  }

  MEMORY[0x2821F96F8](viewCopy, v5);
}

- (void)_invalidateVerticalCenterConstraintsForAccessoryView:(id)view
{
  if (view)
  {
    v5 = [(NSMapTable *)self->_accessoryViewsToConstraints objectForKey:?];
    v3 = [v5 objectForKey:&unk_28339A348];
    v4 = v3;
    if (v3)
    {
      [v3 setActive:0];
      [v5 removeObjectForKey:&unk_28339A348];
    }
  }
}

- (void)_updateConstraintsForWrapperView:(id)view
{
  v42 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  if (viewCopy)
  {
    wrapperViewsToConstraints = self->_wrapperViewsToConstraints;
    if (!wrapperViewsToConstraints)
    {
      weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
      v6 = self->_wrapperViewsToConstraints;
      self->_wrapperViewsToConstraints = weakToStrongObjectsMapTable;

      wrapperViewsToConstraints = self->_wrapperViewsToConstraints;
    }

    v7 = [(NSMapTable *)wrapperViewsToConstraints objectForKey:viewCopy];
    if (!v7)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [(NSMapTable *)self->_wrapperViewsToConstraints setObject:v7 forKey:viewCopy];
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v8 = [&unk_28339A3D8 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v8)
    {
      v9 = v8;
      v36 = *v38;
      v35 = *MEMORY[0x277D76860];
      v34 = *MEMORY[0x277D76838];
      lhs = *MEMORY[0x277D76818];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v38 != v36)
          {
            objc_enumerationMutation(&unk_28339A3D8);
          }

          v11 = *(*(&v37 + 1) + 8 * i);
          unsignedIntegerValue = [v11 unsignedIntegerValue];
          traitCollection = [(PLPillContentView *)self traitCollection];
          preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
          v15 = [preferredContentSizeCategory isEqualToString:v35];
          v16 = v34;
          if (!v15)
          {
            v16 = preferredContentSizeCategory;
          }

          v17 = v16;
          v18 = UIContentSizeCategoryCompareToCategory(lhs, v17);

          if (v18 == NSOrderedAscending)
          {
            v19 = 10.0;
          }

          else
          {
            v19 = 30.0;
          }

          v20 = [v7 objectForKey:v11];
          v21 = &OBJC_IVAR___PLPillContentView__trailingAccessoryView;
          if (unsignedIntegerValue == 2)
          {
            v21 = &OBJC_IVAR___PLPillContentView__leadingAccessoryView;
          }

          v22 = *(&self->super.super.super.isa + *v21);
          if (v22 && (!-[PLPillContentView _isAccessoryPinnedToTopLine](self, "_isAccessoryPinnedToTopLine") || ([viewCopy contentItem], v23 = objc_claimAutoreleasedReturnValue(), -[NSArray firstObject](self->_centerContentItems, "firstObject"), v24 = objc_claimAutoreleasedReturnValue(), v24, v23, v23 == v24)))
          {
            if (!v20)
            {
              if (unsignedIntegerValue == 2)
              {
                leadingAnchor = [viewCopy leadingAnchor];
                [v22 trailingAnchor];
              }

              else
              {
                leadingAnchor = [viewCopy trailingAnchor];
                [v22 leadingAnchor];
              }
              v28 = ;
              v20 = [leadingAnchor constraintEqualToAnchor:v28];
            }

            v29 = [(NSMapTable *)self->_accessoryViewsToConstraints objectForKey:v22];
            leadingAnchor2 = [v29 objectForKey:v11];

            [leadingAnchor2 constant];
            if (v30 < 0.0)
            {
              v30 = -v30;
            }

            if (v30 <= 8.0)
            {
              v19 = 8.0;
            }

            else
            {
              v19 = 10.0;
            }
          }

          else
          {
            if (v20)
            {
              goto LABEL_37;
            }

            if (unsignedIntegerValue == 2)
            {
              leadingAnchor2 = [viewCopy leadingAnchor];
              [(PLPillContentView *)self leadingAnchor];
            }

            else
            {
              leadingAnchor2 = [viewCopy trailingAnchor];
              [(PLPillContentView *)self trailingAnchor];
            }
            v27 = ;
            v20 = [leadingAnchor2 constraintEqualToAnchor:v27];
          }

LABEL_37:
          [v7 setObject:v20 forKey:v11];
          [v20 setActive:1];
          v31 = -v19;
          if (unsignedIntegerValue == 2)
          {
            v31 = v19;
          }

          [v20 setConstant:v31];
        }

        v9 = [&unk_28339A3D8 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v9);
    }
  }
}

- (void)_incomingTopWrapperView:(id *)view incomingBottomWrapperView:(id *)wrapperView outgoingWrapperViews:(id)views forOutgoingContentItems:(id)items incomingContentItems:(id)contentItems existingWrapperViews:(id)wrapperViews
{
  viewsCopy = views;
  itemsCopy = items;
  contentItemsCopy = contentItems;
  wrapperViewsCopy = wrapperViews;
  if (view)
  {
    if (wrapperView)
    {
      goto LABEL_3;
    }

LABEL_35:
    [PLPillContentView _incomingTopWrapperView:incomingBottomWrapperView:outgoingWrapperViews:forOutgoingContentItems:incomingContentItems:existingWrapperViews:];
    if (viewsCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_36;
  }

  [PLPillContentView _incomingTopWrapperView:incomingBottomWrapperView:outgoingWrapperViews:forOutgoingContentItems:incomingContentItems:existingWrapperViews:];
  if (!wrapperView)
  {
    goto LABEL_35;
  }

LABEL_3:
  if (viewsCopy)
  {
    goto LABEL_4;
  }

LABEL_36:
  [PLPillContentView _incomingTopWrapperView:incomingBottomWrapperView:outgoingWrapperViews:forOutgoingContentItems:incomingContentItems:existingWrapperViews:];
LABEL_4:
  v17 = [itemsCopy count];
  v18 = [contentItemsCopy count];
  firstObject = [contentItemsCopy firstObject];
  if ([contentItemsCopy count] == 2)
  {
    lastObject = [contentItemsCopy lastObject];
  }

  else
  {
    lastObject = 0;
  }

  v50 = firstObject;
  v51 = lastObject;
  if (v17 != 2 || v18 != 2)
  {
    v29 = [wrapperViewsCopy mutableCopy];
    if (!v18)
    {
      wrapperView4 = 0;
      wrapperView2 = 0;
LABEL_25:
      [viewsCopy addObjectsFromArray:{v29, v46}];
      goto LABEL_26;
    }

    v46 = itemsCopy;
    v31 = viewsCopy;
    viewCopy2 = view;
    wrapperViewCopy2 = wrapperView;
LABEL_20:
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __158__PLPillContentView__incomingTopWrapperView_incomingBottomWrapperView_outgoingWrapperViews_forOutgoingContentItems_incomingContentItems_existingWrapperViews___block_invoke_3;
    v52[3] = &unk_278425738;
    v29 = v29;
    v53 = v29;
    v39 = MEMORY[0x223D70F60](v52);
    wrapperView2 = (v39)[2](v39, firstObject);
    if (wrapperView2)
    {
      [(UIStackView *)self->_centerStackView insertArrangedSubview:wrapperView2 atIndex:0];
    }

    wrapperView4 = (v39)[2](v39, v51);
    if (wrapperView4)
    {
      [(UIStackView *)self->_centerStackView addArrangedSubview:wrapperView4];
    }

    wrapperView = wrapperViewCopy2;
    view = viewCopy2;
    viewsCopy = v31;
    itemsCopy = v46;
    goto LABEL_25;
  }

  lastObject2 = [itemsCopy lastObject];
  v22 = [lastObject2 isLikePillContentItem:firstObject];

  if (v22)
  {
    firstObject2 = [itemsCopy firstObject];
    wrapperView = [firstObject2 wrapperView];
    [viewsCopy addObject:wrapperView];

    lastObject3 = [itemsCopy lastObject];
    wrapperView2 = [lastObject3 wrapperView];

    [firstObject setWrapperView:wrapperView2];
    v27 = [(PLPillContentView *)self _arrangedSubviewForContentItem:lastObject];
    v28 = lastObject;
    v29 = v27;
    if (v27)
    {
      v29 = v27;
      wrapperView4 = v29;
    }

    else
    {
      v42 = objc_alloc_init(PLPillContentWrapperView);
      [v28 setWrapperView:v42];
      [(PLPillContentWrapperView *)v42 setAdjustsFontForContentSizeCategory:1];
      v48 = MEMORY[0x277D75D18];
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __158__PLPillContentView__incomingTopWrapperView_incomingBottomWrapperView_outgoingWrapperViews_forOutgoingContentItems_incomingContentItems_existingWrapperViews___block_invoke;
      v56[3] = &unk_2784254E0;
      v56[4] = self;
      wrapperView4 = v42;
      v57 = wrapperView4;
      [v48 performWithoutAnimation:v56];
    }

    goto LABEL_26;
  }

  if (!lastObject || ([itemsCopy firstObject], v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "isLikePillContentItem:", lastObject), v34, !v35))
  {
    v47 = itemsCopy;
    v31 = viewsCopy;
    viewCopy2 = view;
    wrapperViewCopy2 = wrapperView;
    v29 = [wrapperViewsCopy mutableCopy];
    goto LABEL_20;
  }

  lastObject4 = [itemsCopy lastObject];
  wrapperView3 = [lastObject4 wrapperView];
  [viewsCopy addObject:wrapperView3];

  v38 = [(PLPillContentView *)self _arrangedSubviewForContentItem:firstObject];
  v29 = v38;
  if (v38)
  {
    wrapperView2 = v38;
  }

  else
  {
    v43 = objc_alloc_init(PLPillContentWrapperView);
    [firstObject setWrapperView:v43];
    [(PLPillContentWrapperView *)v43 setAdjustsFontForContentSizeCategory:1];
    v44 = MEMORY[0x277D75D18];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __158__PLPillContentView__incomingTopWrapperView_incomingBottomWrapperView_outgoingWrapperViews_forOutgoingContentItems_incomingContentItems_existingWrapperViews___block_invoke_2;
    v54[3] = &unk_2784254E0;
    v54[4] = self;
    wrapperView2 = v43;
    v55 = wrapperView2;
    [v44 performWithoutAnimation:v54];
  }

  firstObject3 = [itemsCopy firstObject];
  wrapperView4 = [firstObject3 wrapperView];

  [v51 setWrapperView:wrapperView4];
LABEL_26:

  if (view)
  {
    v40 = wrapperView2;
    *view = wrapperView2;
  }

  if (wrapperView)
  {
    v41 = wrapperView4;
    *wrapperView = wrapperView4;
  }
}

uint64_t __158__PLPillContentView__incomingTopWrapperView_incomingBottomWrapperView_outgoingWrapperViews_forOutgoingContentItems_incomingContentItems_existingWrapperViews___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 408) addArrangedSubview:*(a1 + 40)];
  [*(a1 + 40) setHidden:1];
  v2 = *(a1 + 40);

  return [v2 setAlpha:0.0];
}

uint64_t __158__PLPillContentView__incomingTopWrapperView_incomingBottomWrapperView_outgoingWrapperViews_forOutgoingContentItems_incomingContentItems_existingWrapperViews___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 408) insertArrangedSubview:*(a1 + 40) atIndex:0];
  [*(a1 + 40) setHidden:1];
  v2 = *(a1 + 40);

  return [v2 setAlpha:0.0];
}

PLPillContentWrapperView *__158__PLPillContentView__incomingTopWrapperView_incomingBottomWrapperView_outgoingWrapperViews_forOutgoingContentItems_incomingContentItems_existingWrapperViews___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 wrapperView];
  v5 = v4;
  if (v3)
  {
    if (v4 || [*(a1 + 32) count] && (objc_msgSend(*(a1 + 32), "firstObject"), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      [*(a1 + 32) removeObject:v5];
    }

    else
    {
      v5 = objc_alloc_init(PLPillContentWrapperView);
      [(PLPillContentWrapperView *)v5 setAdjustsFontForContentSizeCategory:1];
    }

    [v3 setWrapperView:v5];
  }

  return v5;
}

- (void)setCenterContentItems:animated:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)updateCenterContentItem:withContentItem:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"[_centerContentItems containsObject:referenceContentItem]" object:? file:? lineNumber:? description:?];
}

- (void)_incomingTopWrapperView:incomingBottomWrapperView:outgoingWrapperViews:forOutgoingContentItems:incomingContentItems:existingWrapperViews:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"incomingTopWrapperViewPtr" object:? file:? lineNumber:? description:?];
}

- (void)_incomingTopWrapperView:incomingBottomWrapperView:outgoingWrapperViews:forOutgoingContentItems:incomingContentItems:existingWrapperViews:.cold.2()
{
  OUTLINED_FUNCTION_0_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"incomingBottomWrapperViewPtr" object:? file:? lineNumber:? description:?];
}

- (void)_incomingTopWrapperView:incomingBottomWrapperView:outgoingWrapperViews:forOutgoingContentItems:incomingContentItems:existingWrapperViews:.cold.3()
{
  OUTLINED_FUNCTION_0_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"outgoingWrapperViews" object:? file:? lineNumber:? description:?];
}

@end
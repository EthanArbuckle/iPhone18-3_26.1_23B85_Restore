@interface STUIStatusBarRegion
- (BOOL)disableWithToken:(unint64_t)a3;
- (BOOL)enableWithToken:(unint64_t)a3;
- (BOOL)isEnabled;
- (CGRect)absoluteHoverFrame;
- (NSArray)currentEnabledDisplayItems;
- (NSArray)enabledDisplayItems;
- (NSDictionary)displayItemAbsoluteFrames;
- (NSDictionary)displayItemAbsolutePresentationFrames;
- (NSDirectionalEdgeInsets)extendedHoverInsets;
- (STUIStatusBar)statusBar;
- (STUIStatusBarDisplayItem)overflowedDisplayItem;
- (STUIStatusBarRegion)enabilityRegion;
- (STUIStatusBarRegion)initWithIdentifier:(id)a3;
- (UIEdgeInsets)actionInsets;
- (UILayoutItem)containerItem;
- (UILayoutItem)layoutItem;
- (UIOffset)offset;
- (UIView)hoverView;
- (id)_descriptionBuilderWithMultilinePrefix:(id)a3 forDebug:(BOOL)a4;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)displayItemForHUDAtLocation:(CGPoint)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)effectiveStyle;
- (void)_addSubview:(id)a3 atBack:(BOOL)a4;
- (void)_overriddenStyleAttributesChanged;
- (void)setAlpha:(double)a3;
- (void)setAutomaticStyle:(int64_t)a3;
- (void)setBackgroundView:(id)a3;
- (void)setContentView:(id)a3;
- (void)setDisplayItems:(id)a3;
- (void)setFrozen:(BOOL)a3;
- (void)setHighlightView:(id)a3;
- (void)setIdentifier:(id)a3;
- (void)setLayout:(id)a3;
- (void)setOffset:(UIOffset)a3;
- (void)setOffsetable:(BOOL)a3;
- (void)setOverriddenStyle:(int64_t)a3;
- (void)setOverriddenStyleAttributes:(id)a3;
- (void)setStyle:(int64_t)a3;
@end

@implementation STUIStatusBarRegion

- (UILayoutItem)containerItem
{
  if (self->_offsetable || (layoutGuide = self->_contentView) == 0)
  {
    layoutGuide = self->_layoutGuide;
  }

  v3 = layoutGuide;

  return v3;
}

- (NSArray)currentEnabledDisplayItems
{
  displayItems = self->_displayItems;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__STUIStatusBarRegion_currentEnabledDisplayItems__block_invoke;
  v6[3] = &unk_279D38290;
  v6[4] = self;
  v3 = [(NSOrderedSet *)displayItems indexesOfObjectsPassingTest:v6];
  v4 = [(NSOrderedSet *)displayItems objectsAtIndexes:v3];

  return v4;
}

- (UILayoutItem)layoutItem
{
  contentView = self->_contentView;
  if (!contentView)
  {
    contentView = self->_layoutGuide;
  }

  v3 = contentView;

  return v3;
}

- (void)_overriddenStyleAttributesChanged
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(STUIStatusBarRegion *)self currentEnabledDisplayItems];
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

        v7 = [*(*(&v8 + 1) + 8 * v6) item];
        [v7 setNeedsUpdate];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (BOOL)isEnabled
{
  WeakRetained = objc_loadWeakRetained(&self->_enabilityRegion);
  result = (!WeakRetained || (v4 = WeakRetained, v5 = objc_loadWeakRetained(&self->_enabilityRegion), v6 = [v5 isEnabled], v5, v4, v6)) && -[NSMutableIndexSet count](self->_disablingTokens, "count") == 0;
  return result;
}

- (int64_t)effectiveStyle
{
  result = self->_overriddenStyle;
  if (result == 4)
  {
    result = self->_style;
    if (result == 4)
    {
      v4 = [(STUIStatusBarRegion *)self statusBar];
      v5 = [v4 _useAutomaticStyle];

      v6 = 80;
      if (v5)
      {
        v6 = 88;
      }

      return *(&self->super.isa + v6);
    }
  }

  return result;
}

- (STUIStatusBar)statusBar
{
  WeakRetained = objc_loadWeakRetained(&self->_statusBar);

  return WeakRetained;
}

- (NSArray)enabledDisplayItems
{
  displayItems = self->_displayItems;
  v3 = [(NSOrderedSet *)displayItems indexesOfObjectsPassingTest:&__block_literal_global_4];
  v4 = [(NSOrderedSet *)displayItems objectsAtIndexes:v3];

  return v4;
}

uint64_t __42__STUIStatusBarRegion_enabledDisplayItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isEnabled])
  {
    v3 = [v2 floating] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (STUIStatusBarDisplayItem)overflowedDisplayItem
{
  if (([(STUIStatusBarRegionLayout *)self->_layout fitsAllItems]& 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = STUIStatusBarGetLowestPrioritizedItem(self->_displayItems);
  }

  return v3;
}

BOOL __49__STUIStatusBarRegion_currentEnabledDisplayItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEnabled] && (objc_msgSend(v3, "floating") & 1) == 0)
  {
    v5 = [v3 region];
    v4 = v5 == *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDictionary)displayItemAbsolutePresentationFrames
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(STUIStatusBarRegion *)self layout];
  v5 = [v4 displayItems];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__STUIStatusBarRegion_displayItemAbsolutePresentationFrames__block_invoke;
  v8[3] = &unk_279D37E98;
  v6 = v3;
  v9 = v6;
  [v5 enumerateObjectsUsingBlock:v8];

  return v6;
}

void __60__STUIStatusBarRegion_displayItemAbsolutePresentationFrames__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 view];
  v4 = [v3 window];

  if (v4)
  {
    v5 = MEMORY[0x277CCAE60];
    [v9 absolutePresentationFrame];
    v6 = [v5 valueWithCGRect:?];
    v7 = *(a1 + 32);
    v8 = [v9 identifier];
    [v7 setObject:v6 forKeyedSubscript:v8];
  }
}

- (STUIStatusBarRegion)initWithIdentifier:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = STUIStatusBarRegion;
  v5 = [(STUIStatusBarRegion *)&v15 init];
  identifier = v5->_identifier;
  v5->_identifier = v4;
  v7 = v4;

  v8 = objc_alloc_init(MEMORY[0x277D756D0]);
  layoutGuide = v5->_layoutGuide;
  v5->_layoutGuide = v8;

  v10 = objc_alloc_init(MEMORY[0x277CBEB40]);
  displayItems = v5->_displayItems;
  v5->_displayItems = v10;

  v12 = [MEMORY[0x277CCAB58] indexSet];
  disablingTokens = v5->_disablingTokens;
  v5->_disablingTokens = v12;

  v5->_style = 4;
  v5->_overriddenStyle = 4;
  return v5;
}

- (UIView)hoverView
{
  contentView = self->_contentView;
  if (!contentView)
  {
    contentView = self->_backgroundView;
  }

  v3 = contentView;

  return v3;
}

- (CGRect)absoluteHoverFrame
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = [(STUIStatusBarRegion *)self layout];
  v3 = [v2 displayItems];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    v8 = 1.79769313e308;
    v9 = 2.22507386e-308;
    v10 = 2.22507386e-308;
    v11 = 1.79769313e308;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v27 + 1) + 8 * i) absoluteFrame];
        x = v33.origin.x;
        y = v33.origin.y;
        width = v33.size.width;
        height = v33.size.height;
        MinX = CGRectGetMinX(v33);
        if (v11 >= MinX)
        {
          v11 = MinX;
        }

        v34.origin.x = x;
        v34.origin.y = y;
        v34.size.width = width;
        v34.size.height = height;
        MinY = CGRectGetMinY(v34);
        if (v8 >= MinY)
        {
          v8 = MinY;
        }

        v35.origin.x = x;
        v35.origin.y = y;
        v35.size.width = width;
        v35.size.height = height;
        MaxX = CGRectGetMaxX(v35);
        if (v10 < MaxX)
        {
          v10 = MaxX;
        }

        v36.origin.x = x;
        v36.origin.y = y;
        v36.size.width = width;
        v36.size.height = height;
        MaxY = CGRectGetMaxY(v36);
        if (v9 < MaxY)
        {
          v9 = MaxY;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 1.79769313e308;
    v9 = 2.22507386e-308;
    v10 = 2.22507386e-308;
    v11 = 1.79769313e308;
  }

  if ([v4 count])
  {
    v21 = v10 - v11;
    v22 = v9 - v8;
  }

  else
  {
    v11 = *MEMORY[0x277CBF398];
    v8 = *(MEMORY[0x277CBF398] + 8);
    v21 = *(MEMORY[0x277CBF398] + 16);
    v22 = *(MEMORY[0x277CBF398] + 24);
  }

  v23 = v11;
  v24 = v8;
  v25 = v21;
  v26 = v22;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (void)setIdentifier:(id)a3
{
  v5 = a3;
  p_identifier = &self->_identifier;
  if (self->_identifier != v5)
  {
    v8 = v5;
    objc_storeStrong(p_identifier, a3);
    v7 = [(STUIStatusBarRegion *)self layoutGuide];
    [v7 setIdentifier:v8];
  }

  MEMORY[0x2821F9730](p_identifier);
}

- (void)setLayout:(id)a3
{
  v5 = a3;
  p_layout = &self->_layout;
  layout = self->_layout;
  v9 = v5;
  if (layout != v5)
  {
    if (layout)
    {
      [(STUIStatusBarRegionLayout *)layout setRegion:0];
      [(STUIStatusBarRegionLayout *)*p_layout setDisplayItems:MEMORY[0x277CBEBF8]];
    }

    objc_storeStrong(&self->_layout, a3);
    if (*p_layout)
    {
      [(STUIStatusBarRegionLayout *)*p_layout setRegion:self];
      v8 = [(STUIStatusBarRegion *)self currentEnabledDisplayItems];
      [(STUIStatusBarRegionLayout *)self->_layout setDisplayItems:v8];
    }
  }
}

- (void)setContentView:(id)a3
{
  v5 = a3;
  p_contentView = &self->_contentView;
  if (self->_contentView != v5)
  {
    v11 = v5;
    v7 = [(STUIStatusBarRegion *)self layoutItem];
    [v7 _ui_removeFromParentLayoutItem];

    if (v11)
    {
      objc_storeStrong(&self->_contentView, a3);
      [(UIView *)self->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
      p_contentView = &self->_layoutGuide;
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x277D756D0]);
      layoutGuide = self->_layoutGuide;
      self->_layoutGuide = v8;
    }

    v10 = *p_contentView;
    *p_contentView = 0;

    v5 = v11;
  }
}

- (void)setOffsetable:(BOOL)a3
{
  v25[4] = *MEMORY[0x277D85DE8];
  if (self->_offsetable != a3)
  {
    self->_offsetable = a3;
    if (a3)
    {
      if (!self->_contentView)
      {
        v4 = objc_alloc_init(MEMORY[0x277D75D18]);
        [(STUIStatusBarRegion *)self setContentView:v4];
      }

      v5 = objc_alloc_init(MEMORY[0x277D756D0]);
      layoutGuide = self->_layoutGuide;
      self->_layoutGuide = v5;

      [(UIView *)self->_contentView addLayoutGuide:self->_layoutGuide];
      v7 = [(UILayoutGuide *)self->_layoutGuide centerXAnchor];
      v8 = [(UIView *)self->_contentView centerXAnchor];
      v9 = [v7 constraintEqualToAnchor:v8];
      centerXConstraint = self->_centerXConstraint;
      self->_centerXConstraint = v9;

      v11 = [(UILayoutGuide *)self->_layoutGuide centerYAnchor];
      v12 = [(UIView *)self->_contentView centerYAnchor];
      v13 = [v11 constraintEqualToAnchor:v12];
      centerYConstraint = self->_centerYConstraint;
      self->_centerYConstraint = v13;

      v15 = MEMORY[0x277CCAAD0];
      v16 = self->_centerYConstraint;
      v17 = self->_layoutGuide;
      v25[0] = self->_centerXConstraint;
      v25[1] = v16;
      v18 = [(UILayoutGuide *)v17 widthAnchor];
      v19 = [(UIView *)self->_contentView widthAnchor];
      v20 = [v18 constraintEqualToAnchor:v19];
      v25[2] = v20;
      v21 = [(UILayoutGuide *)self->_layoutGuide heightAnchor];
      v22 = [(UIView *)self->_contentView heightAnchor];
      v23 = [v21 constraintEqualToAnchor:v22];
      v25[3] = v23;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];
      [v15 activateConstraints:v24];
    }
  }
}

- (void)setOffset:(UIOffset)a3
{
  if (self->_offsetable)
  {
    vertical = a3.vertical;
    if (a3.horizontal != self->_offset.horizontal || a3.vertical != self->_offset.vertical)
    {
      self->_offset = a3;
      [(NSLayoutConstraint *)self->_centerXConstraint setConstant:?];
      centerYConstraint = self->_centerYConstraint;

      [(NSLayoutConstraint *)centerYConstraint setConstant:vertical];
    }
  }
}

- (void)_addSubview:(id)a3 atBack:(BOOL)a4
{
  v4 = a4;
  v23[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [(STUIStatusBarRegion *)self layoutItem];
  v8 = [v7 _ui_superview];
  v22 = v8;
  if (v4)
  {
    [v8 insertSubview:v6 atIndex:0];
  }

  else if (self->_contentView)
  {
    [v8 insertSubview:v6 aboveSubview:?];
  }

  else
  {
    [v8 addSubview:v6];
  }

  v21 = [v6 topAnchor];
  v20 = [v7 topAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v23[0] = v19;
  v18 = [v6 leftAnchor];
  v17 = [v7 leftAnchor];
  v9 = [v18 constraintEqualToAnchor:v17];
  v23[1] = v9;
  v10 = [v6 bottomAnchor];
  v11 = [v7 bottomAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v23[2] = v12;
  v13 = [v6 rightAnchor];
  v14 = [v7 rightAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v23[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];

  [MEMORY[0x277CCAAD0] activateConstraints:v16];
}

- (void)setBackgroundView:(id)a3
{
  v5 = a3;
  backgroundView = self->_backgroundView;
  if (backgroundView != v5)
  {
    v7 = v5;
    if (v5)
    {
      [(STUIStatusBarRegion *)self _addSubview:v5 atBack:1];
      backgroundView = self->_backgroundView;
    }

    [(UIView *)backgroundView removeFromSuperview];
    objc_storeStrong(&self->_backgroundView, a3);
    v5 = v7;
  }

  MEMORY[0x2821F96F8](backgroundView, v5);
}

- (void)setHighlightView:(id)a3
{
  v5 = a3;
  highlightView = self->_highlightView;
  if (highlightView != v5)
  {
    v7 = v5;
    if (v5)
    {
      [(STUIStatusBarRegion *)self _addSubview:v5 atBack:0];
      highlightView = self->_highlightView;
    }

    [(UIView *)highlightView removeFromSuperview];
    objc_storeStrong(&self->_highlightView, a3);
    v5 = v7;
  }

  MEMORY[0x2821F96F8](highlightView, v5);
}

- (BOOL)disableWithToken:(unint64_t)a3
{
  v5 = [(NSMutableIndexSet *)self->_disablingTokens containsIndex:?];
  if ((v5 & 1) == 0)
  {
    [(NSMutableIndexSet *)self->_disablingTokens addIndex:a3];
    [(UIView *)self->_contentView setHidden:1];
    v6 = [(STUIStatusBarRegion *)self isEnabled];
    [(STUIStatusBarAction *)self->_action setEnabled:v6];
    [(STUIStatusBarAction *)self->_hoverAction setEnabled:v6];
  }

  return v5 ^ 1;
}

- (BOOL)enableWithToken:(unint64_t)a3
{
  v5 = [(NSMutableIndexSet *)self->_disablingTokens containsIndex:?];
  if (v5)
  {
    [(NSMutableIndexSet *)self->_disablingTokens removeIndex:a3];
    [(UIView *)self->_contentView setHidden:[(NSMutableIndexSet *)self->_disablingTokens count]!= 0];
    v6 = [(STUIStatusBarRegion *)self isEnabled];
    [(STUIStatusBarAction *)self->_action setEnabled:v6];
    [(STUIStatusBarAction *)self->_hoverAction setEnabled:v6];
  }

  return v5;
}

- (void)setFrozen:(BOOL)a3
{
  v3 = a3;
  v24[2] = *MEMORY[0x277D85DE8];
  if ([(STUIStatusBarRegion *)self isFrozen]!= a3)
  {
    if (v3)
    {
      [(UIView *)self->_contentView bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
      [(UIView *)self->_contentView alpha];
      v14 = v13;
      [(UIView *)self->_contentView setAlpha:1.0];
      v15 = [objc_alloc(MEMORY[0x277D75A48]) initWithFrame:{v6, v8, v10, v12}];
      [v15 captureSnapshotRect:self->_contentView fromView:0 withSnapshotType:{v6, v8, v10, v12}];
      [(STUIStatusBarRegion *)self setFrozenView:v15];
      [(UIView *)self->_frozenView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)self->_frozenView setAlpha:v14];
      [(STUIStatusBarRegion *)self _addSubview:self->_frozenView atBack:1];
      v16 = [(UIView *)self->_frozenView widthAnchor];
      v26.origin.x = v6;
      v26.origin.y = v8;
      v26.size.width = v10;
      v26.size.height = v12;
      v17 = [v16 constraintEqualToConstant:CGRectGetWidth(v26)];
      v24[0] = v17;
      v18 = [(UIView *)self->_frozenView heightAnchor];
      v27.origin.x = v6;
      v27.origin.y = v8;
      v27.size.width = v10;
      v27.size.height = v12;
      v19 = [v18 constraintEqualToConstant:CGRectGetHeight(v27)];
      v24[1] = v19;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];

      [MEMORY[0x277CCAAD0] activateConstraints:v20];
      [(UIView *)self->_contentView setAlpha:0.0];
    }

    else
    {
      [(UIView *)self->_frozenView alpha];
      v22 = v21;
      v23 = [(STUIStatusBarRegion *)self containerView];
      [v23 setAlpha:v22];

      [(UIView *)self->_frozenView removeFromSuperview];

      [(STUIStatusBarRegion *)self setFrozenView:0];
    }
  }
}

- (void)setAlpha:(double)a3
{
  v5 = [(STUIStatusBarRegion *)self isFrozen];
  v6 = 112;
  if (v5)
  {
    v6 = 184;
  }

  v7 = *(&self->super.isa + v6);

  [v7 setAlpha:a3];
}

- (void)setStyle:(int64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    if (self->_overriddenStyle == 4)
    {
      [(STUIStatusBarRegion *)self _overriddenStyleAttributesChanged];
    }
  }
}

- (void)setAutomaticStyle:(int64_t)a3
{
  if (self->_automaticStyle != a3)
  {
    self->_automaticStyle = a3;
    if (self->_overriddenStyle == 4)
    {
      v5 = [(STUIStatusBarRegion *)self statusBar];
      if ([v5 style])
      {
      }

      else
      {
        style = self->_style;

        if (style == 4)
        {

          [(STUIStatusBarRegion *)self _overriddenStyleAttributesChanged];
        }
      }
    }
  }
}

- (void)setOverriddenStyle:(int64_t)a3
{
  if (self->_overriddenStyle != a3)
  {
    self->_overriddenStyle = a3;
    [(STUIStatusBarRegion *)self _overriddenStyleAttributesChanged];
  }
}

- (void)setOverriddenStyleAttributes:(id)a3
{
  v5 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_overriddenStyleAttributes, a3);
    [(STUIStatusBarRegion *)self _overriddenStyleAttributesChanged];
  }
}

- (void)setDisplayItems:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  displayItems = self->_displayItems;
  if (displayItems != v4 && ([(NSOrderedSet *)displayItems isEqual:v4]& 1) == 0)
  {
    self->_needsReLayout = 0;
    goto LABEL_16;
  }

  needsReLayout = self->_needsReLayout;
  self->_needsReLayout = 0;
  if (needsReLayout)
  {
    goto LABEL_16;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = v4;
  v8 = [(NSOrderedSet *)v7 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (!v8)
  {
LABEL_27:

    goto LABEL_28;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v42;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v42 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v41 + 1) + 8 * i);
      if ([v13 needsAddingToLayout])
      {
        [v13 setNeedsAddingToLayout:0];
        v10 = 1;
      }
    }

    v9 = [(NSOrderedSet *)v7 countByEnumeratingWithState:&v41 objects:v45 count:16];
  }

  while (v9);

  if (v10)
  {
LABEL_16:
    v14 = self->_displayItems;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __39__STUIStatusBarRegion_setDisplayItems___block_invoke;
    v38[3] = &unk_279D388F8;
    v15 = v4;
    v39 = v15;
    v40 = self;
    [(NSOrderedSet *)v14 enumerateObjectsUsingBlock:v38];
    v16 = [(NSOrderedSet *)v15 copy];
    v17 = self->_displayItems;
    self->_displayItems = v16;

    v18 = [(STUIStatusBarRegion *)self enabledDisplayItems];
    if ((objc_opt_respondsToSelector() & 1) != 0 && (v19 = self->_layout, [(STUIStatusBarRegion *)self containerItem], v20 = objc_claimAutoreleasedReturnValue(), LOBYTE(v19) = [(STUIStatusBarRegionLayout *)v19 mayFitDisplayItems:v18 inContainerItem:v20], v20, (v19 & 1) == 0))
    {
      v22 = [(NSOrderedSet *)self->_displayItems mutableCopy];
      v21 = [v18 mutableCopy];
      do
      {
        v23 = STUIStatusBarGetLowestPrioritizedItem(v21);
        if (!v23)
        {
          break;
        }

        v24 = v23;
        [v21 removeObject:v23];
        [(NSOrderedSet *)v22 removeObject:v24];
        [v24 setContainerView:0];
        [v24 setRegion:0];

        layout = self->_layout;
        v26 = [(STUIStatusBarRegion *)self containerItem];
        LODWORD(layout) = [(STUIStatusBarRegionLayout *)layout mayFitDisplayItems:v21 inContainerItem:v26];
      }

      while (!layout);
      v27 = self->_displayItems;
      self->_displayItems = v22;
    }

    else
    {
      v21 = v18;
    }

    contentView = self->_contentView;
    if (contentView)
    {
      v29 = contentView;
    }

    else
    {
      v29 = [(UILayoutGuide *)self->_layoutGuide owningView];
    }

    v32 = MEMORY[0x277D85DD0];
    v33 = 3221225472;
    v34 = __39__STUIStatusBarRegion_setDisplayItems___block_invoke_2;
    v35 = &unk_279D388F8;
    v36 = v29;
    v37 = self;
    v30 = v29;
    [v21 enumerateObjectsUsingBlock:&v32];
    v31 = [(STUIStatusBarRegion *)self enabledDisplayItems:v32];
    [(STUIStatusBarRegionLayout *)self->_layout setDisplayItems:v31];

    v7 = v39;
    goto LABEL_27;
  }

LABEL_28:
}

void __39__STUIStatusBarRegion_setDisplayItems___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    v3 = [v6 region];
    v4 = v3;
    if (v3 == *(a1 + 40))
    {
      v5 = [v6 floating];

      if ((v5 & 1) == 0)
      {
        [v6 setContainerView:0];
        [v6 setRegion:0];
      }
    }

    else
    {
    }
  }
}

void __39__STUIStatusBarRegion_setDisplayItems___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setContainerView:v3];
  [v4 setRegion:*(a1 + 40)];
}

- (NSDictionary)displayItemAbsoluteFrames
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(STUIStatusBarRegion *)self layout];
  v5 = [v4 displayItems];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__STUIStatusBarRegion_displayItemAbsoluteFrames__block_invoke;
  v8[3] = &unk_279D37E98;
  v6 = v3;
  v9 = v6;
  [v5 enumerateObjectsUsingBlock:v8];

  return v6;
}

void __48__STUIStatusBarRegion_displayItemAbsoluteFrames__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 view];
  v4 = [v3 window];

  if (v4)
  {
    v5 = MEMORY[0x277CCAE60];
    [v9 absoluteFrame];
    v6 = [v5 valueWithCGRect:?];
    v7 = *(a1 + 32);
    v8 = [v9 identifier];
    [v7 setObject:v6 forKeyedSubscript:v8];
  }
}

- (id)displayItemForHUDAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v34 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = [(STUIStatusBarRegion *)self layout];
  v7 = [v6 displayItems];

  v8 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v30;
    v12 = 1.79769313e308;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v30 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v14 = *(*(&v29 + 1) + 8 * v13);
      v15 = [v14 view];
      [v15 frame];
      if (CGRectIsEmpty(v36))
      {
        goto LABEL_18;
      }

      v16 = [(STUIStatusBarRegion *)self statusBar];
      [v16 convertPoint:v15 toView:{x, y}];
      v18 = v17;

      [v15 bounds];
      if ([v15 pointInside:0 withEvent:{v18, CGRectGetMidY(v37)}])
      {
        v27 = v14;

        goto LABEL_24;
      }

      [v15 bounds];
      MinX = CGRectGetMinX(v38);
      [v15 bounds];
      if (v18 <= MinX)
      {
        break;
      }

      if (v18 >= CGRectGetMaxX(*&v20))
      {
        [v15 bounds];
        v24 = v18 - CGRectGetMaxX(v39);
        goto LABEL_12;
      }

LABEL_18:

      if (v9 == ++v13)
      {
        v9 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_23;
      }
    }

    v24 = CGRectGetMinX(*&v20) - v18;
LABEL_12:
    if (v24 < 6.0 && v24 < v12)
    {
      v26 = v14;

      v10 = v26;
      v12 = v24;
    }

    goto LABEL_18;
  }

  v10 = 0;
LABEL_23:

  v10 = v10;
  v27 = v10;
LABEL_24:

  return v27;
}

- (id)succinctDescription
{
  v2 = [(STUIStatusBarRegion *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(STUIStatusBarRegion *)self identifier];
  v5 = [v3 appendObject:v4 withName:@"identifier"];

  v6 = [v3 appendBool:-[STUIStatusBarRegion isEnabled](self withName:{"isEnabled"), @"enabled"}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STUIStatusBarRegion *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STUIStatusBarRegion *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
  v4 = [v3 build];

  return v4;
}

- (id)_descriptionBuilderWithMultilinePrefix:(id)a3 forDebug:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(STUIStatusBarRegion *)self succinctDescriptionBuilder];
  [v7 setUseDebugDescription:v4];
  [v7 setActiveMultilinePrefix:v6];

  v8 = [(STUIStatusBarRegion *)self displayItems];
  v9 = [v8 array];
  [v7 appendArraySection:v9 withName:@"displayItems" skipIfEmpty:1];

  return v7;
}

- (UIEdgeInsets)actionInsets
{
  top = self->_actionInsets.top;
  left = self->_actionInsets.left;
  bottom = self->_actionInsets.bottom;
  right = self->_actionInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (NSDirectionalEdgeInsets)extendedHoverInsets
{
  top = self->_extendedHoverInsets.top;
  leading = self->_extendedHoverInsets.leading;
  bottom = self->_extendedHoverInsets.bottom;
  trailing = self->_extendedHoverInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (STUIStatusBarRegion)enabilityRegion
{
  WeakRetained = objc_loadWeakRetained(&self->_enabilityRegion);

  return WeakRetained;
}

- (UIOffset)offset
{
  horizontal = self->_offset.horizontal;
  vertical = self->_offset.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

@end
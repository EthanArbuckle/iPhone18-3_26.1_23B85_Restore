@interface STUIStatusBarRegion
- (BOOL)disableWithToken:(unint64_t)token;
- (BOOL)enableWithToken:(unint64_t)token;
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
- (STUIStatusBarRegion)initWithIdentifier:(id)identifier;
- (UIEdgeInsets)actionInsets;
- (UILayoutItem)containerItem;
- (UILayoutItem)layoutItem;
- (UIOffset)offset;
- (UIView)hoverView;
- (id)_descriptionBuilderWithMultilinePrefix:(id)prefix forDebug:(BOOL)debug;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)displayItemForHUDAtLocation:(CGPoint)location;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)effectiveStyle;
- (void)_addSubview:(id)subview atBack:(BOOL)back;
- (void)_overriddenStyleAttributesChanged;
- (void)setAlpha:(double)alpha;
- (void)setAutomaticStyle:(int64_t)style;
- (void)setBackgroundView:(id)view;
- (void)setContentView:(id)view;
- (void)setDisplayItems:(id)items;
- (void)setFrozen:(BOOL)frozen;
- (void)setHighlightView:(id)view;
- (void)setIdentifier:(id)identifier;
- (void)setLayout:(id)layout;
- (void)setOffset:(UIOffset)offset;
- (void)setOffsetable:(BOOL)offsetable;
- (void)setOverriddenStyle:(int64_t)style;
- (void)setOverriddenStyleAttributes:(id)attributes;
- (void)setStyle:(int64_t)style;
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
  currentEnabledDisplayItems = [(STUIStatusBarRegion *)self currentEnabledDisplayItems];
  v3 = [currentEnabledDisplayItems countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(currentEnabledDisplayItems);
        }

        item = [*(*(&v8 + 1) + 8 * v6) item];
        [item setNeedsUpdate];

        ++v6;
      }

      while (v4 != v6);
      v4 = [currentEnabledDisplayItems countByEnumeratingWithState:&v8 objects:v12 count:16];
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
      statusBar = [(STUIStatusBarRegion *)self statusBar];
      _useAutomaticStyle = [statusBar _useAutomaticStyle];

      v6 = 80;
      if (_useAutomaticStyle)
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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  layout = [(STUIStatusBarRegion *)self layout];
  displayItems = [layout displayItems];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__STUIStatusBarRegion_displayItemAbsolutePresentationFrames__block_invoke;
  v8[3] = &unk_279D37E98;
  v6 = dictionary;
  v9 = v6;
  [displayItems enumerateObjectsUsingBlock:v8];

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

- (STUIStatusBarRegion)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = STUIStatusBarRegion;
  v5 = [(STUIStatusBarRegion *)&v15 init];
  identifier = v5->_identifier;
  v5->_identifier = identifierCopy;
  v7 = identifierCopy;

  v8 = objc_alloc_init(MEMORY[0x277D756D0]);
  layoutGuide = v5->_layoutGuide;
  v5->_layoutGuide = v8;

  v10 = objc_alloc_init(MEMORY[0x277CBEB40]);
  displayItems = v5->_displayItems;
  v5->_displayItems = v10;

  indexSet = [MEMORY[0x277CCAB58] indexSet];
  disablingTokens = v5->_disablingTokens;
  v5->_disablingTokens = indexSet;

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
  layout = [(STUIStatusBarRegion *)self layout];
  displayItems = [layout displayItems];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = displayItems;
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

- (void)setIdentifier:(id)identifier
{
  identifierCopy = identifier;
  p_identifier = &self->_identifier;
  if (self->_identifier != identifierCopy)
  {
    v8 = identifierCopy;
    objc_storeStrong(p_identifier, identifier);
    layoutGuide = [(STUIStatusBarRegion *)self layoutGuide];
    [layoutGuide setIdentifier:v8];
  }

  MEMORY[0x2821F9730](p_identifier);
}

- (void)setLayout:(id)layout
{
  layoutCopy = layout;
  p_layout = &self->_layout;
  layout = self->_layout;
  v9 = layoutCopy;
  if (layout != layoutCopy)
  {
    if (layout)
    {
      [(STUIStatusBarRegionLayout *)layout setRegion:0];
      [(STUIStatusBarRegionLayout *)*p_layout setDisplayItems:MEMORY[0x277CBEBF8]];
    }

    objc_storeStrong(&self->_layout, layout);
    if (*p_layout)
    {
      [(STUIStatusBarRegionLayout *)*p_layout setRegion:self];
      currentEnabledDisplayItems = [(STUIStatusBarRegion *)self currentEnabledDisplayItems];
      [(STUIStatusBarRegionLayout *)self->_layout setDisplayItems:currentEnabledDisplayItems];
    }
  }
}

- (void)setContentView:(id)view
{
  viewCopy = view;
  p_contentView = &self->_contentView;
  if (self->_contentView != viewCopy)
  {
    v11 = viewCopy;
    layoutItem = [(STUIStatusBarRegion *)self layoutItem];
    [layoutItem _ui_removeFromParentLayoutItem];

    if (v11)
    {
      objc_storeStrong(&self->_contentView, view);
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

    viewCopy = v11;
  }
}

- (void)setOffsetable:(BOOL)offsetable
{
  v25[4] = *MEMORY[0x277D85DE8];
  if (self->_offsetable != offsetable)
  {
    self->_offsetable = offsetable;
    if (offsetable)
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
      centerXAnchor = [(UILayoutGuide *)self->_layoutGuide centerXAnchor];
      centerXAnchor2 = [(UIView *)self->_contentView centerXAnchor];
      v9 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      centerXConstraint = self->_centerXConstraint;
      self->_centerXConstraint = v9;

      centerYAnchor = [(UILayoutGuide *)self->_layoutGuide centerYAnchor];
      centerYAnchor2 = [(UIView *)self->_contentView centerYAnchor];
      v13 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      centerYConstraint = self->_centerYConstraint;
      self->_centerYConstraint = v13;

      v15 = MEMORY[0x277CCAAD0];
      v16 = self->_centerYConstraint;
      v17 = self->_layoutGuide;
      v25[0] = self->_centerXConstraint;
      v25[1] = v16;
      widthAnchor = [(UILayoutGuide *)v17 widthAnchor];
      widthAnchor2 = [(UIView *)self->_contentView widthAnchor];
      v20 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
      v25[2] = v20;
      heightAnchor = [(UILayoutGuide *)self->_layoutGuide heightAnchor];
      heightAnchor2 = [(UIView *)self->_contentView heightAnchor];
      v23 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
      v25[3] = v23;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];
      [v15 activateConstraints:v24];
    }
  }
}

- (void)setOffset:(UIOffset)offset
{
  if (self->_offsetable)
  {
    vertical = offset.vertical;
    if (offset.horizontal != self->_offset.horizontal || offset.vertical != self->_offset.vertical)
    {
      self->_offset = offset;
      [(NSLayoutConstraint *)self->_centerXConstraint setConstant:?];
      centerYConstraint = self->_centerYConstraint;

      [(NSLayoutConstraint *)centerYConstraint setConstant:vertical];
    }
  }
}

- (void)_addSubview:(id)subview atBack:(BOOL)back
{
  backCopy = back;
  v23[4] = *MEMORY[0x277D85DE8];
  subviewCopy = subview;
  [subviewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  layoutItem = [(STUIStatusBarRegion *)self layoutItem];
  _ui_superview = [layoutItem _ui_superview];
  v22 = _ui_superview;
  if (backCopy)
  {
    [_ui_superview insertSubview:subviewCopy atIndex:0];
  }

  else if (self->_contentView)
  {
    [_ui_superview insertSubview:subviewCopy aboveSubview:?];
  }

  else
  {
    [_ui_superview addSubview:subviewCopy];
  }

  topAnchor = [subviewCopy topAnchor];
  topAnchor2 = [layoutItem topAnchor];
  v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v23[0] = v19;
  leftAnchor = [subviewCopy leftAnchor];
  leftAnchor2 = [layoutItem leftAnchor];
  v9 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v23[1] = v9;
  bottomAnchor = [subviewCopy bottomAnchor];
  bottomAnchor2 = [layoutItem bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v23[2] = v12;
  rightAnchor = [subviewCopy rightAnchor];
  rightAnchor2 = [layoutItem rightAnchor];
  v15 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v23[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];

  [MEMORY[0x277CCAAD0] activateConstraints:v16];
}

- (void)setBackgroundView:(id)view
{
  viewCopy = view;
  backgroundView = self->_backgroundView;
  if (backgroundView != viewCopy)
  {
    v7 = viewCopy;
    if (viewCopy)
    {
      [(STUIStatusBarRegion *)self _addSubview:viewCopy atBack:1];
      backgroundView = self->_backgroundView;
    }

    [(UIView *)backgroundView removeFromSuperview];
    objc_storeStrong(&self->_backgroundView, view);
    viewCopy = v7;
  }

  MEMORY[0x2821F96F8](backgroundView, viewCopy);
}

- (void)setHighlightView:(id)view
{
  viewCopy = view;
  highlightView = self->_highlightView;
  if (highlightView != viewCopy)
  {
    v7 = viewCopy;
    if (viewCopy)
    {
      [(STUIStatusBarRegion *)self _addSubview:viewCopy atBack:0];
      highlightView = self->_highlightView;
    }

    [(UIView *)highlightView removeFromSuperview];
    objc_storeStrong(&self->_highlightView, view);
    viewCopy = v7;
  }

  MEMORY[0x2821F96F8](highlightView, viewCopy);
}

- (BOOL)disableWithToken:(unint64_t)token
{
  v5 = [(NSMutableIndexSet *)self->_disablingTokens containsIndex:?];
  if ((v5 & 1) == 0)
  {
    [(NSMutableIndexSet *)self->_disablingTokens addIndex:token];
    [(UIView *)self->_contentView setHidden:1];
    isEnabled = [(STUIStatusBarRegion *)self isEnabled];
    [(STUIStatusBarAction *)self->_action setEnabled:isEnabled];
    [(STUIStatusBarAction *)self->_hoverAction setEnabled:isEnabled];
  }

  return v5 ^ 1;
}

- (BOOL)enableWithToken:(unint64_t)token
{
  v5 = [(NSMutableIndexSet *)self->_disablingTokens containsIndex:?];
  if (v5)
  {
    [(NSMutableIndexSet *)self->_disablingTokens removeIndex:token];
    [(UIView *)self->_contentView setHidden:[(NSMutableIndexSet *)self->_disablingTokens count]!= 0];
    isEnabled = [(STUIStatusBarRegion *)self isEnabled];
    [(STUIStatusBarAction *)self->_action setEnabled:isEnabled];
    [(STUIStatusBarAction *)self->_hoverAction setEnabled:isEnabled];
  }

  return v5;
}

- (void)setFrozen:(BOOL)frozen
{
  frozenCopy = frozen;
  v24[2] = *MEMORY[0x277D85DE8];
  if ([(STUIStatusBarRegion *)self isFrozen]!= frozen)
  {
    if (frozenCopy)
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
      widthAnchor = [(UIView *)self->_frozenView widthAnchor];
      v26.origin.x = v6;
      v26.origin.y = v8;
      v26.size.width = v10;
      v26.size.height = v12;
      v17 = [widthAnchor constraintEqualToConstant:CGRectGetWidth(v26)];
      v24[0] = v17;
      heightAnchor = [(UIView *)self->_frozenView heightAnchor];
      v27.origin.x = v6;
      v27.origin.y = v8;
      v27.size.width = v10;
      v27.size.height = v12;
      v19 = [heightAnchor constraintEqualToConstant:CGRectGetHeight(v27)];
      v24[1] = v19;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];

      [MEMORY[0x277CCAAD0] activateConstraints:v20];
      [(UIView *)self->_contentView setAlpha:0.0];
    }

    else
    {
      [(UIView *)self->_frozenView alpha];
      v22 = v21;
      containerView = [(STUIStatusBarRegion *)self containerView];
      [containerView setAlpha:v22];

      [(UIView *)self->_frozenView removeFromSuperview];

      [(STUIStatusBarRegion *)self setFrozenView:0];
    }
  }
}

- (void)setAlpha:(double)alpha
{
  isFrozen = [(STUIStatusBarRegion *)self isFrozen];
  v6 = 112;
  if (isFrozen)
  {
    v6 = 184;
  }

  v7 = *(&self->super.isa + v6);

  [v7 setAlpha:alpha];
}

- (void)setStyle:(int64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    if (self->_overriddenStyle == 4)
    {
      [(STUIStatusBarRegion *)self _overriddenStyleAttributesChanged];
    }
  }
}

- (void)setAutomaticStyle:(int64_t)style
{
  if (self->_automaticStyle != style)
  {
    self->_automaticStyle = style;
    if (self->_overriddenStyle == 4)
    {
      statusBar = [(STUIStatusBarRegion *)self statusBar];
      if ([statusBar style])
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

- (void)setOverriddenStyle:(int64_t)style
{
  if (self->_overriddenStyle != style)
  {
    self->_overriddenStyle = style;
    [(STUIStatusBarRegion *)self _overriddenStyleAttributesChanged];
  }
}

- (void)setOverriddenStyleAttributes:(id)attributes
{
  attributesCopy = attributes;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_overriddenStyleAttributes, attributes);
    [(STUIStatusBarRegion *)self _overriddenStyleAttributesChanged];
  }
}

- (void)setDisplayItems:(id)items
{
  v46 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  displayItems = self->_displayItems;
  if (displayItems != itemsCopy && ([(NSOrderedSet *)displayItems isEqual:itemsCopy]& 1) == 0)
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
  v7 = itemsCopy;
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
    v15 = itemsCopy;
    v39 = v15;
    selfCopy = self;
    [(NSOrderedSet *)v14 enumerateObjectsUsingBlock:v38];
    v16 = [(NSOrderedSet *)v15 copy];
    v17 = self->_displayItems;
    self->_displayItems = v16;

    enabledDisplayItems = [(STUIStatusBarRegion *)self enabledDisplayItems];
    if ((objc_opt_respondsToSelector() & 1) != 0 && (v19 = self->_layout, [(STUIStatusBarRegion *)self containerItem], v20 = objc_claimAutoreleasedReturnValue(), LOBYTE(v19) = [(STUIStatusBarRegionLayout *)v19 mayFitDisplayItems:enabledDisplayItems inContainerItem:v20], v20, (v19 & 1) == 0))
    {
      v22 = [(NSOrderedSet *)self->_displayItems mutableCopy];
      v21 = [enabledDisplayItems mutableCopy];
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
        containerItem = [(STUIStatusBarRegion *)self containerItem];
        LODWORD(layout) = [(STUIStatusBarRegionLayout *)layout mayFitDisplayItems:v21 inContainerItem:containerItem];
      }

      while (!layout);
      v27 = self->_displayItems;
      self->_displayItems = v22;
    }

    else
    {
      v21 = enabledDisplayItems;
    }

    contentView = self->_contentView;
    if (contentView)
    {
      owningView = contentView;
    }

    else
    {
      owningView = [(UILayoutGuide *)self->_layoutGuide owningView];
    }

    v32 = MEMORY[0x277D85DD0];
    v33 = 3221225472;
    v34 = __39__STUIStatusBarRegion_setDisplayItems___block_invoke_2;
    v35 = &unk_279D388F8;
    v36 = owningView;
    selfCopy2 = self;
    v30 = owningView;
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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  layout = [(STUIStatusBarRegion *)self layout];
  displayItems = [layout displayItems];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__STUIStatusBarRegion_displayItemAbsoluteFrames__block_invoke;
  v8[3] = &unk_279D37E98;
  v6 = dictionary;
  v9 = v6;
  [displayItems enumerateObjectsUsingBlock:v8];

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

- (id)displayItemForHUDAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v34 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  layout = [(STUIStatusBarRegion *)self layout];
  displayItems = [layout displayItems];

  v8 = [displayItems countByEnumeratingWithState:&v29 objects:v33 count:16];
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
        objc_enumerationMutation(displayItems);
      }

      v14 = *(*(&v29 + 1) + 8 * v13);
      view = [v14 view];
      [view frame];
      if (CGRectIsEmpty(v36))
      {
        goto LABEL_18;
      }

      statusBar = [(STUIStatusBarRegion *)self statusBar];
      [statusBar convertPoint:view toView:{x, y}];
      v18 = v17;

      [view bounds];
      if ([view pointInside:0 withEvent:{v18, CGRectGetMidY(v37)}])
      {
        v27 = v14;

        goto LABEL_24;
      }

      [view bounds];
      MinX = CGRectGetMinX(v38);
      [view bounds];
      if (v18 <= MinX)
      {
        break;
      }

      if (v18 >= CGRectGetMaxX(*&v20))
      {
        [view bounds];
        v24 = v18 - CGRectGetMaxX(v39);
        goto LABEL_12;
      }

LABEL_18:

      if (v9 == ++v13)
      {
        v9 = [displayItems countByEnumeratingWithState:&v29 objects:v33 count:16];
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
  succinctDescriptionBuilder = [(STUIStatusBarRegion *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  identifier = [(STUIStatusBarRegion *)self identifier];
  v5 = [v3 appendObject:identifier withName:@"identifier"];

  v6 = [v3 appendBool:-[STUIStatusBarRegion isEnabled](self withName:{"isEnabled"), @"enabled"}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STUIStatusBarRegion *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STUIStatusBarRegion *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
  build = [v3 build];

  return build;
}

- (id)_descriptionBuilderWithMultilinePrefix:(id)prefix forDebug:(BOOL)debug
{
  debugCopy = debug;
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(STUIStatusBarRegion *)self succinctDescriptionBuilder];
  [succinctDescriptionBuilder setUseDebugDescription:debugCopy];
  [succinctDescriptionBuilder setActiveMultilinePrefix:prefixCopy];

  displayItems = [(STUIStatusBarRegion *)self displayItems];
  array = [displayItems array];
  [succinctDescriptionBuilder appendArraySection:array withName:@"displayItems" skipIfEmpty:1];

  return succinctDescriptionBuilder;
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
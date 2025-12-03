@interface SKUIHorizontalLockupCollectionViewCell
+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context;
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context;
- (BOOL)isDeleteButtonHidden;
- (BOOL)isScrollingCellToHideActionButton;
- (SKUIHorizontalLockupCollectionViewCell)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)contentInset;
- (id)_attributedStringForActionButton:(id)button context:(id)context;
- (id)_editControlImage;
- (id)_highlightBackgroundColor;
- (void)_addEditControlAnimated:(BOOL)animated;
- (void)_reloadActionsScrollViewWithViewElement:(id)element context:(id)context;
- (void)_reloadHighlightBackgroundView;
- (void)_reloadLockupViewBackgroundColor;
- (void)_removeEditControlAnimated:(BOOL)animated;
- (void)applyLayoutAttributes:(id)attributes;
- (void)dealloc;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setBackgroundColor:(id)color;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setPerspectiveTargetView:(id)view;
- (void)setSelected:(BOOL)selected;
- (void)setSemanticContentAttribute:(int64_t)attribute;
@end

@implementation SKUIHorizontalLockupCollectionViewCell

- (SKUIHorizontalLockupCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v8)
      {
        [(SKUIHorizontalLockupCollectionViewCell *)v8 initWithFrame:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v22.receiver = self;
  v22.super_class = SKUIHorizontalLockupCollectionViewCell;
  height = [(SKUICollectionViewCell *)&v22 initWithFrame:x, y, width, height];
  if (height)
  {
    v17 = [SKUIHorizontalLockupView alloc];
    [(SKUIHorizontalLockupCollectionViewCell *)height bounds];
    v18 = [(SKUIHorizontalLockupView *)v17 initWithFrame:?];
    lockupView = height->_lockupView;
    height->_lockupView = v18;

    contentView = [(SKUIHorizontalLockupCollectionViewCell *)height contentView];
    [contentView addSubview:height->_lockupView];
  }

  return height;
}

- (void)dealloc
{
  [(UIButton *)self->_actionButton removeTarget:self action:0 forControlEvents:4095];
  [(SKUICellScrollView *)self->_actionsScrollView setDelegate:0];
  v3.receiver = self;
  v3.super_class = SKUIHorizontalLockupCollectionViewCell;
  [(SKUIHorizontalLockupCollectionViewCell *)&v3 dealloc];
}

- (BOOL)isDeleteButtonHidden
{
  actionsScrollView = self->_actionsScrollView;
  result = 1;
  if (actionsScrollView)
  {
    [(SKUICellScrollView *)actionsScrollView contentOffset];
    if (v3 > 0.0)
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)isScrollingCellToHideActionButton
{
  actionsScrollView = self->_actionsScrollView;
  result = 0;
  if (actionsScrollView)
  {
    [(SKUICellScrollView *)actionsScrollView contentOffset];
    if (v4 != 0.0)
    {
      [(SKUICellScrollView *)self->_actionsScrollView contentOffset];
      v6 = v5;
      [(UIButton *)self->_actionButton frame];
      if (v6 < v7)
      {
        return 1;
      }
    }
  }

  return result;
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_contentInset.top), vceqq_f64(v4, *&self->_contentInset.bottom)))) & 1) == 0)
  {
    self->_contentInset = inset;
    [(SKUIHorizontalLockupCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  if ((((self->_editModeControl == 0) ^ editing) & 1) == 0)
  {
    v11 = v4;
    if (editing)
    {
      [(SKUIHorizontalLockupCollectionViewCell *)self _addEditControlAnimated:animated];
    }

    else
    {
      [(SKUIHorizontalLockupCollectionViewCell *)self _removeEditControlAnimated:animated];
    }

    [(SKUICellScrollView *)self->_actionsScrollView setContentOffset:0 animated:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v5, v11, v6];
    actionsScrollView = self->_actionsScrollView;
    _isActionsScrollViewEnabled = [(SKUIHorizontalLockupCollectionViewCell *)self _isActionsScrollViewEnabled];

    [(SKUICellScrollView *)actionsScrollView setScrollEnabled:_isActionsScrollViewEnabled];
  }
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  backgroundColor = [attributesCopy backgroundColor];
  lockupViewBackgroundColor = self->_lockupViewBackgroundColor;
  self->_lockupViewBackgroundColor = backgroundColor;

  if (self->_lockupViewBackgroundColor)
  {
    [(SKUIHorizontalLockupView *)self->_lockupView setBackgroundColor:?];
  }

  v7.receiver = self;
  v7.super_class = SKUIHorizontalLockupCollectionViewCell;
  [(SKUICollectionViewCell *)&v7 applyLayoutAttributes:attributesCopy];
}

- (void)setPerspectiveTargetView:(id)view
{
  lockupView = self->_lockupView;
  viewCopy = view;
  [(SKUIHorizontalLockupView *)lockupView setPerspectiveTargetView:viewCopy];
}

+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v9)
      {
        [(SKUIHorizontalLockupCollectionViewCell *)v9 prefetchResourcesForViewElement:v10 reason:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  v17 = [SKUIHorizontalLockupView prefetchResourcesForViewElement:elementCopy reason:reason context:contextCopy];

  return v17;
}

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[SKUIHorizontalLockupCollectionViewCell preferredSizeForViewElement:context:];
  }

  [contextCopy defaultItemWidthForViewElement:elementCopy];
  [self sizeThatFitsWidth:elementCopy viewElement:contextCopy context:?];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v9)
      {
        [(SKUIHorizontalLockupCollectionViewCell *)v9 requestLayoutForViewElement:v10 width:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  [SKUIHorizontalLockupView requestLayoutForViewElement:elementCopy width:contextCopy context:width];
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v9)
      {
        [(SKUIHorizontalLockupCollectionViewCell *)v9 sizeThatFitsWidth:v10 viewElement:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  [SKUIHorizontalLockupView sizeThatFitsWidth:elementCopy viewElement:contextCopy context:width];
  v18 = v17;
  v20 = v19;

  v21 = v18;
  v22 = v20;
  result.height = v22;
  result.width = v21;
  return result;
}

- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  [(SKUIHorizontalLockupCollectionViewCell *)self _reloadActionsScrollViewWithViewElement:elementCopy context:contextCopy];
  v9 = [contextCopy aggregateValueForKey:@"SKUIHorizontalLockupShowsEditModeKey"];
  bOOLValue = [v9 BOOLValue];

  v11 = [elementCopy firstChildForElementType:18];
  editModeCheckboxElement = self->_editModeCheckboxElement;
  self->_editModeCheckboxElement = v11;

  if (bOOLValue)
  {
    v13 = self->_editModeCheckboxElement != 0;
  }

  else
  {
    v13 = 0;
  }

  [(SKUIHorizontalLockupCollectionViewCell *)self setEditing:v13 animated:0];
  editModeControl = self->_editModeControl;
  if (editModeControl)
  {
    _editControlImage = [(SKUIHorizontalLockupCollectionViewCell *)self _editControlImage];
    [(UIImageView *)editModeControl setImage:_editControlImage];
  }

  [(SKUICellScrollView *)self->_actionsScrollView setContentOffset:0 animated:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  [(SKUICellScrollView *)self->_actionsScrollView setScrollEnabled:[(SKUIHorizontalLockupCollectionViewCell *)self _isActionsScrollViewEnabled]];
  [(SKUIHorizontalLockupView *)self->_lockupView reloadWithViewElement:elementCopy width:contextCopy context:width];
  if (!self->_lockupViewBackgroundColor)
  {
    preferredBackgroundColor = [(SKUIHorizontalLockupView *)self->_lockupView preferredBackgroundColor];

    if (preferredBackgroundColor)
    {
      preferredBackgroundColor2 = [(SKUIHorizontalLockupView *)self->_lockupView preferredBackgroundColor];
      lockupViewBackgroundColor = self->_lockupViewBackgroundColor;
      self->_lockupViewBackgroundColor = preferredBackgroundColor2;
    }
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = SKUIHorizontalLockupCollectionViewCell;
  [(SKUICollectionViewCell *)&v4 setHighlighted:highlighted];
  if (!self->_editModeControl)
  {
    [(SKUIHorizontalLockupCollectionViewCell *)self _reloadHighlightBackgroundView];
  }
}

- (void)setSelected:(BOOL)selected
{
  v4.receiver = self;
  v4.super_class = SKUIHorizontalLockupCollectionViewCell;
  [(SKUICollectionViewCell *)&v4 setSelected:selected];
  if (!self->_editModeControl)
  {
    [(SKUIHorizontalLockupCollectionViewCell *)self _reloadHighlightBackgroundView];
  }
}

- (void)layoutSubviews
{
  v33.receiver = self;
  v33.super_class = SKUIHorizontalLockupCollectionViewCell;
  [(SKUICollectionViewCell *)&v33 layoutSubviews];
  contentView = [(SKUIHorizontalLockupCollectionViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  editModeControl = self->_editModeControl;
  v32 = v5;
  if (editModeControl)
  {
    [(UIImageView *)editModeControl frame];
    v14 = v13;
    v16 = v15;
    v17 = v5 + 15.0;
    v18 = v7 + (v11 - v15) * 0.5;
    v19 = floorf(v18);
    [(UIImageView *)self->_editModeControl setFrame:v17, v19];
    v34.origin.x = v17;
    v34.origin.y = v19;
    v34.size.width = v14;
    v34.size.height = v16;
    MaxX = CGRectGetMaxX(v34);
    left = self->_contentInset.left;
    v5 = MaxX + 15.0 - left;
  }

  else
  {
    left = self->_contentInset.left;
  }

  [(SKUIHorizontalLockupView *)self->_lockupView setContentInset:self->_contentInset.top, left, self->_contentInset.bottom, self->_contentInset.right];
  actionsScrollView = self->_actionsScrollView;
  if (actionsScrollView)
  {
    [(SKUICellScrollView *)actionsScrollView setFrame:v5, v7, v9, v11];
    [(SKUIHorizontalLockupView *)self->_lockupView setFrame:0.0, v7, v9, v11];
    [(UIButton *)self->_actionButton frame];
    v24 = v23;
    v35.origin.x = 0.0;
    v35.origin.y = v7;
    v35.size.width = v9;
    v35.size.height = v11;
    v25 = CGRectGetMaxX(v35);
    [(UIButton *)self->_actionButton sizeThatFits:1.79769313e308, v11];
    v27 = v26;
    actionButton = self->_actionButton;
    SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v25, v24, v26, v11, v32, v7, v9, v11);
    [(UIButton *)actionButton setFrame:?];
    v29 = self->_actionButton;
    [(SKUICellScrollView *)self->_actionsScrollView contentOffset];
    [(UIButton *)v29 setHidden:v30 < 0.00000011920929];
    [(SKUICellScrollView *)self->_actionsScrollView setContentSize:v9 + v27, v11];
  }

  else
  {
    lockupView = self->_lockupView;
    SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v5, v7, v9, v11, v32, v7, v9, v11);
    [(SKUIHorizontalLockupView *)lockupView setFrame:?];
  }
}

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  v5.receiver = self;
  v5.super_class = SKUIHorizontalLockupCollectionViewCell;
  [(SKUIHorizontalLockupCollectionViewCell *)&v5 setSemanticContentAttribute:?];
  [(SKUIHorizontalLockupView *)self->_lockupView setSemanticContentAttribute:attribute];
  [(SKUICellScrollView *)self->_actionsScrollView setSemanticContentAttribute:attribute];
  [(UIButton *)self->_actionButton setSemanticContentAttribute:attribute];
}

- (void)setBackgroundColor:(id)color
{
  v4.receiver = self;
  v4.super_class = SKUIHorizontalLockupCollectionViewCell;
  [(SKUICollectionViewCell *)&v4 setBackgroundColor:color];
  [(SKUIHorizontalLockupCollectionViewCell *)self _reloadLockupViewBackgroundColor];
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  animationCopy = animation;
  v9 = SKUICollectionViewForView(self);
  delegate = [v9 delegate];
  [animationCopy contentOffset];
  v7 = v6;

  if (v7 == 0.0 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v8 = [v9 indexPathForCell:self];
    [delegate collectionView:v9 didEndEditingItemAtIndexPath:v8];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  [scrollCopy contentOffset];
  v5 = v4;
  v6 = SKUICollectionViewForView(self);
  delegate = [v6 delegate];
  if (v5 <= 0.0 || (objc_opt_respondsToSelector() & 1) != 0 && ([v6 indexPathForCell:self], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(delegate, "collectionView:canScrollCellAtIndexPath:", v6, v8), v8, (v9 & 1) == 0))
  {
    [scrollCopy setContentOffset:0 animated:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  }

  else
  {
    [(UIButton *)self->_actionButton frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [(SKUIHorizontalLockupView *)self->_lockupView frame];
    MaxX = CGRectGetMaxX(v20);
    if (v5 >= v13)
    {
      MaxX = v5 - v13 + MaxX;
    }

    [(UIButton *)self->_actionButton setFrame:MaxX, v11, v13, v15];
    [(UIButton *)self->_actionButton setHidden:v5 < 0.00000011920929];
    if (objc_opt_respondsToSelector())
    {
      v17 = [v6 indexPathForCell:self];
      [delegate collectionView:v6 willBeginEditingItemAtIndexPath:v17];
    }
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  draggingCopy = dragging;
  [(UIButton *)self->_actionButton frame];
  y = offset->y;
  if (v7 * 0.5 <= offset->x)
  {
    [draggingCopy setContentOffset:1 animated:{v7, y}];
  }

  else
  {
    [draggingCopy setContentOffset:1 animated:{0.0, y}];
    [(SKUIHorizontalLockupCollectionViewCell *)self scrollViewDidEndScrollingAnimation:draggingCopy];
  }
}

- (void)_addEditControlAnimated:(BOOL)animated
{
  v5 = objc_alloc(MEMORY[0x277D755E8]);
  _editControlImage = [(SKUIHorizontalLockupCollectionViewCell *)self _editControlImage];
  v7 = [v5 initWithImage:_editControlImage];
  editModeControl = self->_editModeControl;
  self->_editModeControl = v7;

  contentView = [(SKUIHorizontalLockupCollectionViewCell *)self contentView];
  [contentView addSubview:self->_editModeControl];
  if (animated)
  {
    [contentView bounds];
    v11 = v10;
    v18 = 0;
    v19 = &v18;
    v20 = 0x4010000000;
    v21 = &unk_215F8ACD7;
    v22 = 0u;
    v23 = 0u;
    [(UIImageView *)self->_editModeControl frame];
    *&v22 = v12;
    *(&v22 + 1) = v13;
    *&v23 = v14;
    *(&v23 + 1) = v15;
    v16 = v19;
    *&v13 = (v11 - v19[7]) * 0.5;
    v19[4] = -v19[6];
    v16[5] = floorf(*&v13);
    [(UIImageView *)self->_editModeControl setFrame:?];
    [(SKUIHorizontalLockupCollectionViewCell *)self layoutIfNeeded];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __66__SKUIHorizontalLockupCollectionViewCell__addEditControlAnimated___block_invoke;
    v17[3] = &unk_2781F8608;
    v17[4] = self;
    v17[5] = &v18;
    [MEMORY[0x277D75D18] animateWithDuration:v17 animations:0.3];
    _Block_object_dispose(&v18, 8);
  }

  else
  {
    [(SKUIHorizontalLockupCollectionViewCell *)self setNeedsLayout];
  }
}

void __66__SKUIHorizontalLockupCollectionViewCell__addEditControlAnimated___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 32) = 0x402E000000000000;
  [*(*(a1 + 32) + 832) setFrame:{*(*(*(a1 + 40) + 8) + 32), *(*(*(a1 + 40) + 8) + 40), *(*(*(a1 + 40) + 8) + 48), *(*(*(a1 + 40) + 8) + 56)}];
  v2 = *(a1 + 32);
  v3 = *(v2 + 784);
  if (!v3)
  {
    v3 = *(v2 + 848);
  }

  v7 = v3;
  [v7 frame];
  [v7 setFrame:{CGRectGetMaxX(*(*(*(a1 + 40) + 8) + 32)) + 15.0 - *(*(a1 + 32) + 800), v4, v5, v6}];
}

- (id)_attributedStringForActionButton:(id)button context:(id)context
{
  buttonCopy = button;
  contextCopy = context;
  buttonTitleStyle = [buttonCopy buttonTitleStyle];
  v8 = buttonTitleStyle;
  if (buttonTitleStyle)
  {
    style = buttonTitleStyle;
  }

  else
  {
    style = [buttonCopy style];
  }

  v10 = style;

  v11 = SKUIViewElementFontWithStyle(v10);
  if (!v11)
  {
    v11 = SKUIFontPreferredFontForTextStyle(1);
  }

  tintColor = [contextCopy tintColor];
  whiteColor = SKUIViewElementPlainColorWithStyle(v10, tintColor);

  if (!whiteColor)
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
  }

  buttonText = [buttonCopy buttonText];
  v15 = [buttonText attributedStringWithDefaultFont:v11 foregroundColor:whiteColor style:v10];

  return v15;
}

- (id)_editControlImage
{
  editModeCheckboxElement = self->_editModeCheckboxElement;
  if (editModeCheckboxElement)
  {
    if ([(SKUICheckboxInputViewElement *)editModeCheckboxElement isSelected])
    {
      v4 = [MEMORY[0x277D755B8] _kitImageNamed:@"UITintedCircularButtonCheckmark" withTrait:0];
      style = [(SKUICheckboxInputViewElement *)self->_editModeCheckboxElement style];
      v6 = SKUIViewElementPlainColorWithStyle(style, 0);

      if (v6)
      {
        [v4 _flatImageWithColor:v6];
      }

      else
      {
        [v4 imageWithRenderingMode:2];
      }
      v9 = ;

      _imageThatSuppressesAccessibilityHairlineThickening = [v9 _imageThatSuppressesAccessibilityHairlineThickening];
    }

    else
    {
      backgroundColor = [(SKUIHorizontalLockupCollectionViewCell *)self backgroundColor];
      v6 = SKUIBorderColorWithBackgroundColor(backgroundColor);

      v9 = [MEMORY[0x277D755B8] _kitImageNamed:@"UIRemoveControlMultiNotCheckedImage" withTrait:0];
      _imageThatSuppressesAccessibilityHairlineThickening = [v9 _flatImageWithColor:v6];
    }

    v7 = _imageThatSuppressesAccessibilityHairlineThickening;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_highlightBackgroundColor
{
  backgroundColor = [(SKUIHorizontalLockupCollectionViewCell *)self backgroundColor];
  v3 = backgroundColor;
  if (!backgroundColor)
  {
    v6 = [MEMORY[0x277D75348] colorWithWhite:0.9 alpha:1.0];
LABEL_12:
    v5 = v6;
    goto LABEL_13;
  }

  v4 = SKUIColorSchemeStyleForColor(backgroundColor);
  v5 = 0;
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v4 != 3)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }

LABEL_10:
    v7 = -0.1;
    goto LABEL_11;
  }

  if (!v4)
  {
    goto LABEL_10;
  }

  if (v4 == 1)
  {
LABEL_9:
    v7 = 0.2;
LABEL_11:
    v6 = SKUIColorByAdjustingBrightness(v3, v7);
    goto LABEL_12;
  }

LABEL_13:

  return v5;
}

- (void)_reloadActionsScrollViewWithViewElement:(id)element context:(id)context
{
  contextCopy = context;
  v6 = [element firstChildForElementType:3];
  v7 = [v6 firstChildForElementType:12];
  actionButtonViewElement = self->_actionButtonViewElement;
  self->_actionButtonViewElement = v7;

  if (self->_actionButtonViewElement)
  {
    if (!self->_actionsScrollView)
    {
      v9 = [SKUICellScrollView alloc];
      [(SKUIHorizontalLockupView *)self->_lockupView frame];
      v10 = [(SKUICellScrollView *)v9 initWithFrame:?];
      actionsScrollView = self->_actionsScrollView;
      self->_actionsScrollView = v10;

      v12 = self->_actionsScrollView;
      backgroundColor = [(SKUIHorizontalLockupView *)self->_lockupView backgroundColor];
      [(SKUICellScrollView *)v12 setBackgroundColor:backgroundColor];

      [(SKUICellScrollView *)self->_actionsScrollView setDelegate:self];
      [(SKUICellScrollView *)self->_actionsScrollView setScrollsToTop:0];
      [(SKUICellScrollView *)self->_actionsScrollView setShowsHorizontalScrollIndicator:0];
      lockupView = self->_lockupView;
      [(SKUICellScrollView *)self->_actionsScrollView bounds];
      [(SKUIHorizontalLockupView *)lockupView setFrame:?];
      [(SKUICellScrollView *)self->_actionsScrollView addSubview:self->_lockupView];
      contentView = [(SKUIHorizontalLockupCollectionViewCell *)self contentView];
      [contentView addSubview:self->_actionsScrollView];
    }

    if (!self->_actionButton)
    {
      v16 = objc_alloc_init(MEMORY[0x277D75220]);
      actionButton = self->_actionButton;
      self->_actionButton = v16;

      [(UIButton *)self->_actionButton addTarget:self action:sel__actionButtonAction_ forControlEvents:64];
      [(UIButton *)self->_actionButton setContentEdgeInsets:0.0, 15.0, 0.0, 15.0];
      [(UIButton *)self->_actionButton setHidden:1];
      titleLabel = [(UIButton *)self->_actionButton titleLabel];
      [titleLabel setTextAlignment:1];
    }

    style = [(SKUIButtonViewElement *)self->_actionButtonViewElement style];
    ikBackgroundColor = [style ikBackgroundColor];
    color = [ikBackgroundColor color];

    if (!color)
    {
      color = [MEMORY[0x277D75348] systemRedColor];
    }

    v22 = self->_actionButton;
    v23 = [(SKUIHorizontalLockupCollectionViewCell *)self _attributedStringForActionButton:self->_actionButtonViewElement context:contextCopy];
    [(UIButton *)v22 setAttributedTitle:v23 forState:0];

    [(UIButton *)self->_actionButton setBackgroundColor:color];
    [(SKUICellScrollView *)self->_actionsScrollView addSubview:self->_actionButton];
  }

  else
  {
    [(UIButton *)self->_actionButton setHidden:1];
  }
}

- (void)_reloadHighlightBackgroundView
{
  if (([(SKUIHorizontalLockupCollectionViewCell *)self isHighlighted]& 1) != 0 || [(SKUIHorizontalLockupCollectionViewCell *)self isSelected])
  {
    highlightBackgroundView = self->_highlightBackgroundView;
    if (!highlightBackgroundView)
    {
      [(SKUIHorizontalLockupCollectionViewCell *)self bounds];
      v8 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v4, v5, v6, v7}];
      v9 = self->_highlightBackgroundView;
      self->_highlightBackgroundView = v8;

      v10 = self->_highlightBackgroundView;
      _highlightBackgroundColor = [(SKUIHorizontalLockupCollectionViewCell *)self _highlightBackgroundColor];
      [(UIView *)v10 setBackgroundColor:_highlightBackgroundColor];

      highlightBackgroundView = self->_highlightBackgroundView;
    }

    [(SKUIHorizontalLockupCollectionViewCell *)self insertSubview:highlightBackgroundView atIndex:0];

    [(SKUIHorizontalLockupCollectionViewCell *)self _reloadLockupViewBackgroundColor];
  }

  else
  {
    v12 = self->_highlightBackgroundView;
    if (v12)
    {
      v13 = v12;
      v14 = self->_highlightBackgroundView;
      self->_highlightBackgroundView = 0;

      objc_initWeak(&location, self);
      [MEMORY[0x277CD9FF0] begin];
      v15 = MEMORY[0x277CD9FF0];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __72__SKUIHorizontalLockupCollectionViewCell__reloadHighlightBackgroundView__block_invoke;
      v17[3] = &unk_2781F8230;
      v16 = v13;
      v18 = v16;
      objc_copyWeak(&v19, &location);
      [v15 setCompletionBlock:v17];
      [(UIView *)v16 setAlpha:0.0];
      [MEMORY[0x277CD9FF0] commit];
      objc_destroyWeak(&v19);

      objc_destroyWeak(&location);
    }
  }
}

void __72__SKUIHorizontalLockupCollectionViewCell__reloadHighlightBackgroundView__block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _reloadLockupViewBackgroundColor];
}

- (void)_reloadLockupViewBackgroundColor
{
  metadataBackgroundView = [(SKUIHorizontalLockupView *)self->_lockupView metadataBackgroundView];
  if (([(SKUIHorizontalLockupCollectionViewCell *)self isHighlighted]& 1) != 0 || ([(SKUIHorizontalLockupCollectionViewCell *)self isSelected]& 1) != 0 || self->_highlightBackgroundView)
  {
    lockupView = self->_lockupView;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SKUIHorizontalLockupView *)lockupView setBackgroundColor:clearColor];

    if (metadataBackgroundView)
    {
      clearColor2 = [MEMORY[0x277D75348] clearColor];
      [metadataBackgroundView setBackgroundColor:clearColor2];
    }
  }

  else if (self->_lockupViewBackgroundColor)
  {
    [(SKUIHorizontalLockupView *)self->_lockupView setBackgroundColor:?];
    if (metadataBackgroundView)
    {
      [metadataBackgroundView setBackgroundColor:self->_lockupViewBackgroundColor];
    }
  }

  actionsScrollView = self->_actionsScrollView;
  backgroundColor = [(SKUIHorizontalLockupView *)self->_lockupView backgroundColor];
  [(SKUICellScrollView *)actionsScrollView setBackgroundColor:backgroundColor];
}

- (void)_removeEditControlAnimated:(BOOL)animated
{
  v5 = self->_editModeControl;
  editModeControl = self->_editModeControl;
  self->_editModeControl = 0;

  if (animated)
  {
    contentView = [(SKUIHorizontalLockupCollectionViewCell *)self contentView];
    [contentView bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = MEMORY[0x277D75D18];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __69__SKUIHorizontalLockupCollectionViewCell__removeEditControlAnimated___block_invoke;
    v19[3] = &unk_2781FDE88;
    v20 = v5;
    selfCopy = self;
    v22 = v9;
    v23 = v11;
    v24 = v13;
    v25 = v15;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __69__SKUIHorizontalLockupCollectionViewCell__removeEditControlAnimated___block_invoke_2;
    v17[3] = &unk_2781F84A0;
    v18 = v20;
    [v16 animateWithDuration:v19 animations:v17 completion:0.3];
  }

  else
  {
    [(UIImageView *)v5 removeFromSuperview];
    [(SKUIHorizontalLockupCollectionViewCell *)self setNeedsLayout];
  }
}

uint64_t __69__SKUIHorizontalLockupCollectionViewCell__removeEditControlAnimated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) frame];
  [*(a1 + 32) setFrame:-v2];
  [*(*(a1 + 40) + 784) setFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v3 = *(*(a1 + 40) + 848);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);

  return [v3 setFrame:{v4, v5, v6, v7}];
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

+ (void)preferredSizeForViewElement:context:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIHorizontalLockupCollectionViewCell preferredSizeForViewElement:context:]";
}

@end
@interface SUTableCell
- ($3CC19D079FD0B010EE84973AA846B91B)position;
- (SUItemOfferButton)itemOfferButton;
- (SUTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)copyPurchaseAnimationView;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)dealloc;
- (void)drawRect:(CGRect)rect;
- (void)layoutSubviews;
- (void)setBottomBorderColor:(id)color;
- (void)setEditState:(int64_t)state;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setPosition:(id *)position;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)setShowingDeleteConfirmation:(BOOL)confirmation;
- (void)setTopBorderColor:(id)color;
@end

@implementation SUTableCell

- (SUTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = SUTableCell;
  v4 = [(SUTableCell *)&v10 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    contentView = [(SUTableCell *)v4 contentView];
    v7 = [SUTableCellContentView alloc];
    [contentView bounds];
    v8 = [(SUTableCellContentView *)v7 initWithFrame:?];
    v5->_configurationView = v8;
    [(SUTableCellContentView *)v8 setContentMode:9];
    [(SUTableCellContentView *)v5->_configurationView setAutoresizingMask:18];
    -[SUTableCellContentView setBackgroundColor:](v5->_configurationView, "setBackgroundColor:", [MEMORY[0x1E69DC888] clearColor]);
    [contentView addSubview:v5->_configurationView];
    if (!initWithStyle_reuseIdentifier__sLayoutManager)
    {
      initWithStyle_reuseIdentifier__sLayoutManager = objc_alloc_init(SUTableCellLayoutManager);
    }

    [(SUTableCell *)v5 setLayoutManager:?];
  }

  return v5;
}

- (void)dealloc
{
  self->_bottomBorderColor = 0;

  self->_configurationView = 0;
  self->_itemOfferButton = 0;

  self->_topBorderColor = 0;
  v3.receiver = self;
  v3.super_class = SUTableCell;
  [(SUTableCell *)&v3 dealloc];
}

- (id)copyPurchaseAnimationView
{
  configuration = [(SUTableCell *)self configuration];
  indexOfLabelForPurchaseAnimation = [(SUCellConfiguration *)configuration indexOfLabelForPurchaseAnimation];
  if (indexOfLabelForPurchaseAnimation == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return __CreateLabel(configuration, indexOfLabelForPurchaseAnimation, 0);
}

- (void)drawRect:(CGRect)rect
{
  [(SUTableCell *)self bounds:rect.origin.x];
  v5 = v4;
  v7 = v6;
  topBorderColor = self->_topBorderColor;
  if (topBorderColor && self->_position.globalIndex)
  {
    [(UIColor *)topBorderColor set];
    v12.origin.x = 0.0;
    v12.origin.y = 0.0;
    v12.size.height = 1.0;
    v12.size.width = v5;
    UIRectFill(v12);
  }

  if (self->_bottomBorderColor)
  {
    v9 = 1.0;
    if (self->_topBorderColor)
    {
      v10 = *&self->_position.globalIndex;
      v11[0] = *&self->_position.localIndex;
      v11[1] = v10;
      if (SUPositionIsLast(v11))
      {
        [(UIColor *)self->_topBorderColor set];
        v13.origin.y = v7 + -1.0;
        v13.origin.x = 0.0;
        v13.size.height = 1.0;
        v13.size.width = v5;
        UIRectFill(v13);
        v9 = 2.0;
      }
    }

    [(UIColor *)self->_bottomBorderColor set];
    v14.origin.y = v7 - v9;
    v14.origin.x = 0.0;
    v14.size.height = 1.0;
    v14.size.width = v5;
    UIRectFill(v14);
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v10.receiver = self;
  v10.super_class = SUTableCell;
  v7 = [(SUTableCell *)&v10 hitTest:event withEvent:?];
  if (v7)
  {
    itemOfferButton = self->_itemOfferButton;
    if (v7 != itemOfferButton)
    {
      if ([(SUItemOfferButton *)itemOfferButton isDescendantOfView:self])
      {
        [(SUItemOfferButton *)self->_itemOfferButton frame];
        v13 = CGRectInset(v12, -30.0, -8.0);
        v11.x = x;
        v11.y = y;
        if (CGRectContainsPoint(v13, v11))
        {
          return self->_itemOfferButton;
        }
      }
    }
  }

  return v7;
}

- (void)layoutSubviews
{
  v38.receiver = self;
  v38.super_class = SUTableCell;
  [(SUTableCell *)&v38 layoutSubviews];
  accessoryView = [(SUTableCell *)self accessoryView];
  if ([accessoryView superview] == self && (objc_msgSend(accessoryView, "alpha"), v4 > 0.00000011920929))
  {
    [-[SUTableCell layoutManager](self "layoutManager")];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    contentView = [(SUTableCell *)self contentView];
    [contentView frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v39.origin.x = v6;
    v39.origin.y = v8;
    v39.size.width = v10;
    v39.size.height = v12;
    v20 = CGRectGetMinX(v39) + -5.0 - v15;
  }

  else
  {
    contentView = [(SUTableCell *)self contentView];
    [contentView frame];
    v15 = v21;
    v17 = v22;
    v19 = v23;
    v20 = v24 + -10.0;
  }

  [contentView setFrame:{v15, v17, v20, v19}];
  [-[SUTableCell contentView](self "contentView")];
  v28 = v27;
  v30 = v29;
  editState = self->_editState;
  if (editState)
  {
    v32 = v25 + 40.0;
  }

  else
  {
    v32 = v25;
  }

  if (editState)
  {
    v33 = v26 + -40.0;
  }

  else
  {
    v33 = v26;
  }

  [(SUTableCellContentView *)self->_configurationView frame];
  v41.origin.x = v34;
  v41.origin.y = v35;
  v41.size.width = v36;
  v41.size.height = v37;
  v40.origin.x = v32;
  v40.origin.y = v28;
  v40.size.width = v33;
  v40.size.height = v30;
  if (!CGRectEqualToRect(v40, v41))
  {
    [(SUTableCellContentView *)self->_configurationView setFrame:v32, v28, v33, v30];
    [(SUTableCellContentView *)self->_configurationView layoutSubviews];
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  if (editing)
  {
    *&editing = [(SUTableCell *)self showingDeleteConfirmation];
  }

  [(SUTableCellContentView *)self->_configurationView setDeleteConfirmationVisisble:editing];
  [(SUTableCellContentView *)self->_configurationView setUsesSubviews:editingCopy animated:animatedCopy];
  v7.receiver = self;
  v7.super_class = SUTableCell;
  [(SUTableCell *)&v7 setEditing:editingCopy animated:animatedCopy];
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  animatedCopy = animated;
  highlightedCopy = highlighted;
  if ([(SUTableCell *)self highlightsOnlyContentView])
  {
    configurationView = self->_configurationView;

    [(SUTableCellContentView *)configurationView setHighlighted:highlightedCopy];
  }

  else
  {
    v8 = highlightedCopy && (*(self + 1040) & 1) == 0;
    v9.receiver = self;
    v9.super_class = SUTableCell;
    [(SUTableCell *)&v9 setHighlighted:v8 animated:animatedCopy];
  }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  animatedCopy = animated;
  selectedCopy = selected;
  if ([(SUTableCell *)self highlightsOnlyContentView])
  {
    configurationView = self->_configurationView;

    [(SUTableCellContentView *)configurationView setHighlighted:selectedCopy];
  }

  else
  {
    v8 = selectedCopy && (*(self + 1040) & 1) == 0;
    v9.receiver = self;
    v9.super_class = SUTableCell;
    [(SUTableCell *)&v9 setSelected:v8 animated:animatedCopy];
  }
}

- (void)setShowingDeleteConfirmation:(BOOL)confirmation
{
  confirmationCopy = confirmation;
  [(SUTableCellContentView *)self->_configurationView setDeleteConfirmationVisisble:?];
  v5.receiver = self;
  v5.super_class = SUTableCell;
  [(SUTableCell *)&v5 setShowingDeleteConfirmation:confirmationCopy];
}

- (void)setEditState:(int64_t)state
{
  if (self->_editState != state)
  {
    self->_editState = state;
    [(SUTableCell *)self setEditing:state != 0 animated:0];
    [(SUTableCell *)self setNeedsLayout];

    [(SUTableCell *)self setNeedsDisplay];
  }
}

- (SUItemOfferButton)itemOfferButton
{
  result = self->_itemOfferButton;
  if (!result)
  {
    v4 = objc_alloc_init(SUItemOfferButton);
    self->_itemOfferButton = v4;
    [(SUItemOfferButton *)v4 sizeToFit];
    return self->_itemOfferButton;
  }

  return result;
}

- (void)setBottomBorderColor:(id)color
{
  bottomBorderColor = self->_bottomBorderColor;
  if (bottomBorderColor != color)
  {

    self->_bottomBorderColor = color;

    [(SUTableCell *)self setNeedsDisplay];
  }
}

- (void)setPosition:(id *)position
{
  p_position = &self->_position;
  v6 = *&self->_position.globalIndex;
  v10[0] = *&self->_position.localIndex;
  v10[1] = v6;
  v7 = *&position->var2;
  v9[0] = *&position->var0;
  v9[1] = v7;
  if (!SUPositionEqualToPosition(v10, v9))
  {
    v8 = *&position->var2;
    *&p_position->localIndex = *&position->var0;
    *&p_position->globalIndex = v8;
    [(SUTableCell *)self setNeedsDisplay];
  }
}

- (void)setTopBorderColor:(id)color
{
  topBorderColor = self->_topBorderColor;
  if (topBorderColor != color)
  {

    self->_topBorderColor = color;

    [(SUTableCell *)self setNeedsDisplay];
  }
}

- ($3CC19D079FD0B010EE84973AA846B91B)position
{
  v3 = *&self[33].var2;
  *&retstr->var0 = *&self[33].var0;
  *&retstr->var2 = v3;
  return self;
}

@end
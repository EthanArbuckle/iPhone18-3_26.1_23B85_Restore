@interface SKUIEditorialCellLayout
- (SKUIEditorialCellLayout)initWithCollectionViewCell:(id)cell;
- (SKUIEditorialCellLayout)initWithParentView:(id)view;
- (UIEdgeInsets)contentInset;
- (id)_linkView;
- (id)_textBoxView;
- (void)applyEditorialLayout:(id)layout withOrientation:(int64_t)orientation expanded:(BOOL)expanded;
- (void)dealloc;
- (void)editorialLinkView:(id)view didSelectLink:(id)link;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setColoringWithColorScheme:(id)scheme;
@end

@implementation SKUIEditorialCellLayout

- (SKUIEditorialCellLayout)initWithCollectionViewCell:(id)cell
{
  cellCopy = cell;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIEditorialCellLayout initWithCollectionViewCell:];
  }

  v8.receiver = self;
  v8.super_class = SKUIEditorialCellLayout;
  v5 = [(SKUICellLayout *)&v8 initWithCollectionViewCell:cellCopy];
  v6 = v5;
  if (v5)
  {
    [(SKUIEditorialCellLayout *)v5 _initContentInset];
  }

  return v6;
}

- (SKUIEditorialCellLayout)initWithParentView:(id)view
{
  viewCopy = view;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIEditorialCellLayout initWithParentView:];
  }

  v8.receiver = self;
  v8.super_class = SKUIEditorialCellLayout;
  v5 = [(SKUICellLayout *)&v8 initWithParentView:viewCopy];
  v6 = v5;
  if (v5)
  {
    [(SKUIEditorialCellLayout *)v5 _initContentInset];
  }

  return v6;
}

- (void)dealloc
{
  [(SKUIEditorialLinkView *)self->_linkView setDelegate:0];
  v3.receiver = self;
  v3.super_class = SKUIEditorialCellLayout;
  [(SKUIEditorialCellLayout *)&v3 dealloc];
}

- (void)applyEditorialLayout:(id)layout withOrientation:(int64_t)orientation expanded:(BOOL)expanded
{
  expandedCopy = expanded;
  layoutCopy = layout;
  v9 = [layoutCopy bodyTextLayoutForOrientation:orientation];
  v10 = [layoutCopy linkLayoutForOrientation:orientation];
  v11 = [layoutCopy titleTextLayoutForOrientation:orientation];
  if (v9 | v11)
  {
    v17 = 0u;
    v18 = 0u;
    editorialComponent = [layoutCopy editorialComponent];
    v13 = editorialComponent;
    if (editorialComponent)
    {
      [editorialComponent editorialStyle];
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
    }

    self->_linkSpacing = *(&v18 + 1);
    _textBoxView = [(SKUIEditorialCellLayout *)self _textBoxView];
    [_textBoxView titleInsets];
    [_textBoxView setTitleInsets:?];
    [_textBoxView setFixedWidthTextFrame:{objc_msgSend(v9, "textFrame")}];
    [_textBoxView setFixedWidthTitleTextFrame:{objc_msgSend(v11, "textFrame")}];
    if (v10)
    {
      _linkView = [(SKUIEditorialCellLayout *)self _linkView];
      [_linkView setHorizontalAlignment:v17];
      [_linkView setLinkLayout:v10];
    }

    else
    {
      [(SKUIEditorialLinkView *)self->_linkView setLinkLayout:0];
    }

    [layoutCopy layoutHeightForOrientation:orientation expanded:{expandedCopy, v17, v18, 0}];
    self->_totalHeight = v16;
  }

  else
  {
    [(SKUIEditorialLinkView *)self->_linkView setLinkLayout:0];
    [(SKUITextBoxView *)self->_textBoxView reset];
  }

  [(SKUICellLayout *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = SKUIEditorialCellLayout;
  [(SKUICellLayout *)&v15 layoutSubviews];
  contentView = [(SKUICellLayout *)self contentView];
  [contentView bounds];
  v5 = v4;

  v6 = v5 - self->_contentInset.left - self->_contentInset.right;
  _textBoxView = [(SKUIEditorialCellLayout *)self _textBoxView];
  [_textBoxView frame];
  totalHeight = self->_totalHeight;
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  linkLayout = [(SKUIEditorialLinkView *)self->_linkView linkLayout];

  linkView = self->_linkView;
  if (linkLayout)
  {
    [(SKUIEditorialLinkView *)linkView sizeThatFits:v6, 1.79769313e308];
    v14 = v13;
    [(SKUIEditorialLinkView *)self->_linkView setFrame:self->_contentInset.left, self->_contentInset.top + self->_totalHeight - v13, v6, v13];
    [(SKUIEditorialLinkView *)self->_linkView setHidden:0];
    totalHeight = totalHeight - (v14 + self->_linkSpacing);
  }

  else
  {
    [(SKUIEditorialLinkView *)linkView setHidden:1];
  }

  [_textBoxView setFrame:{left, top, v6, totalHeight}];
}

- (void)setBackgroundColor:(id)color
{
  linkView = self->_linkView;
  colorCopy = color;
  [(SKUIEditorialLinkView *)linkView setBackgroundColor:colorCopy];
  [(SKUITextBoxView *)self->_textBoxView setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SKUIEditorialCellLayout;
  [(SKUICellLayout *)&v6 setBackgroundColor:colorCopy];
}

- (void)setColoringWithColorScheme:(id)scheme
{
  schemeCopy = scheme;
  _linkView = [(SKUIEditorialCellLayout *)self _linkView];
  [_linkView setColoringWithColorScheme:schemeCopy];

  _textBoxView = [(SKUIEditorialCellLayout *)self _textBoxView];
  [_textBoxView setColorScheme:schemeCopy];
}

- (void)editorialLinkView:(id)view didSelectLink:(id)link
{
  linkCopy = link;
  parentCellView = [(SKUICellLayout *)self parentCellView];
  v6 = SKUICollectionViewForView(parentCellView);
  delegate = [v6 delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate collectionView:v6 editorialView:parentCellView didSelectLink:linkCopy];
  }
}

- (id)_linkView
{
  linkView = self->_linkView;
  if (!linkView)
  {
    contentView = [(SKUICellLayout *)self contentView];
    v5 = objc_alloc_init(SKUIEditorialLinkView);
    v6 = self->_linkView;
    self->_linkView = v5;

    v7 = self->_linkView;
    parentCellView = [(SKUICellLayout *)self parentCellView];
    backgroundColor = [parentCellView backgroundColor];
    [(SKUIEditorialLinkView *)v7 setBackgroundColor:backgroundColor];

    [(SKUIEditorialLinkView *)self->_linkView setDelegate:self];
    [contentView addSubview:self->_linkView];

    linkView = self->_linkView;
  }

  return linkView;
}

- (id)_textBoxView
{
  textBoxView = self->_textBoxView;
  if (!textBoxView)
  {
    contentView = [(SKUICellLayout *)self contentView];
    v5 = [SKUITextBoxView alloc];
    [contentView bounds];
    v6 = [(SKUITextBoxView *)v5 initWithFrame:?];
    v7 = self->_textBoxView;
    self->_textBoxView = v6;

    v8 = self->_textBoxView;
    parentCellView = [(SKUICellLayout *)self parentCellView];
    backgroundColor = [parentCellView backgroundColor];
    [(SKUITextBoxView *)v8 setBackgroundColor:backgroundColor];

    [(SKUITextBoxView *)self->_textBoxView setContentInsets:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    [(SKUITextBoxView *)self->_textBoxView setEnabled:0];
    [contentView addSubview:self->_textBoxView];

    textBoxView = self->_textBoxView;
  }

  return textBoxView;
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

- (void)initWithCollectionViewCell:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIEditorialCellLayout initWithCollectionViewCell:]";
}

- (void)initWithParentView:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIEditorialCellLayout initWithParentView:]";
}

@end
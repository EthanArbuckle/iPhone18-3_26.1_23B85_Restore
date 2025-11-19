@interface SKUIEditorialCellLayout
- (SKUIEditorialCellLayout)initWithCollectionViewCell:(id)a3;
- (SKUIEditorialCellLayout)initWithParentView:(id)a3;
- (UIEdgeInsets)contentInset;
- (id)_linkView;
- (id)_textBoxView;
- (void)applyEditorialLayout:(id)a3 withOrientation:(int64_t)a4 expanded:(BOOL)a5;
- (void)dealloc;
- (void)editorialLinkView:(id)a3 didSelectLink:(id)a4;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setColoringWithColorScheme:(id)a3;
@end

@implementation SKUIEditorialCellLayout

- (SKUIEditorialCellLayout)initWithCollectionViewCell:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIEditorialCellLayout initWithCollectionViewCell:];
  }

  v8.receiver = self;
  v8.super_class = SKUIEditorialCellLayout;
  v5 = [(SKUICellLayout *)&v8 initWithCollectionViewCell:v4];
  v6 = v5;
  if (v5)
  {
    [(SKUIEditorialCellLayout *)v5 _initContentInset];
  }

  return v6;
}

- (SKUIEditorialCellLayout)initWithParentView:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIEditorialCellLayout initWithParentView:];
  }

  v8.receiver = self;
  v8.super_class = SKUIEditorialCellLayout;
  v5 = [(SKUICellLayout *)&v8 initWithParentView:v4];
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

- (void)applyEditorialLayout:(id)a3 withOrientation:(int64_t)a4 expanded:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [v8 bodyTextLayoutForOrientation:a4];
  v10 = [v8 linkLayoutForOrientation:a4];
  v11 = [v8 titleTextLayoutForOrientation:a4];
  if (v9 | v11)
  {
    v17 = 0u;
    v18 = 0u;
    v12 = [v8 editorialComponent];
    v13 = v12;
    if (v12)
    {
      [v12 editorialStyle];
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
    }

    self->_linkSpacing = *(&v18 + 1);
    v14 = [(SKUIEditorialCellLayout *)self _textBoxView];
    [v14 titleInsets];
    [v14 setTitleInsets:?];
    [v14 setFixedWidthTextFrame:{objc_msgSend(v9, "textFrame")}];
    [v14 setFixedWidthTitleTextFrame:{objc_msgSend(v11, "textFrame")}];
    if (v10)
    {
      v15 = [(SKUIEditorialCellLayout *)self _linkView];
      [v15 setHorizontalAlignment:v17];
      [v15 setLinkLayout:v10];
    }

    else
    {
      [(SKUIEditorialLinkView *)self->_linkView setLinkLayout:0];
    }

    [v8 layoutHeightForOrientation:a4 expanded:{v5, v17, v18, 0}];
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
  v3 = [(SKUICellLayout *)self contentView];
  [v3 bounds];
  v5 = v4;

  v6 = v5 - self->_contentInset.left - self->_contentInset.right;
  v7 = [(SKUIEditorialCellLayout *)self _textBoxView];
  [v7 frame];
  totalHeight = self->_totalHeight;
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  v11 = [(SKUIEditorialLinkView *)self->_linkView linkLayout];

  linkView = self->_linkView;
  if (v11)
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

  [v7 setFrame:{left, top, v6, totalHeight}];
}

- (void)setBackgroundColor:(id)a3
{
  linkView = self->_linkView;
  v5 = a3;
  [(SKUIEditorialLinkView *)linkView setBackgroundColor:v5];
  [(SKUITextBoxView *)self->_textBoxView setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SKUIEditorialCellLayout;
  [(SKUICellLayout *)&v6 setBackgroundColor:v5];
}

- (void)setColoringWithColorScheme:(id)a3
{
  v4 = a3;
  v5 = [(SKUIEditorialCellLayout *)self _linkView];
  [v5 setColoringWithColorScheme:v4];

  v6 = [(SKUIEditorialCellLayout *)self _textBoxView];
  [v6 setColorScheme:v4];
}

- (void)editorialLinkView:(id)a3 didSelectLink:(id)a4
{
  v8 = a4;
  v5 = [(SKUICellLayout *)self parentCellView];
  v6 = SKUICollectionViewForView(v5);
  v7 = [v6 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 collectionView:v6 editorialView:v5 didSelectLink:v8];
  }
}

- (id)_linkView
{
  linkView = self->_linkView;
  if (!linkView)
  {
    v4 = [(SKUICellLayout *)self contentView];
    v5 = objc_alloc_init(SKUIEditorialLinkView);
    v6 = self->_linkView;
    self->_linkView = v5;

    v7 = self->_linkView;
    v8 = [(SKUICellLayout *)self parentCellView];
    v9 = [v8 backgroundColor];
    [(SKUIEditorialLinkView *)v7 setBackgroundColor:v9];

    [(SKUIEditorialLinkView *)self->_linkView setDelegate:self];
    [v4 addSubview:self->_linkView];

    linkView = self->_linkView;
  }

  return linkView;
}

- (id)_textBoxView
{
  textBoxView = self->_textBoxView;
  if (!textBoxView)
  {
    v4 = [(SKUICellLayout *)self contentView];
    v5 = [SKUITextBoxView alloc];
    [v4 bounds];
    v6 = [(SKUITextBoxView *)v5 initWithFrame:?];
    v7 = self->_textBoxView;
    self->_textBoxView = v6;

    v8 = self->_textBoxView;
    v9 = [(SKUICellLayout *)self parentCellView];
    v10 = [v9 backgroundColor];
    [(SKUITextBoxView *)v8 setBackgroundColor:v10];

    [(SKUITextBoxView *)self->_textBoxView setContentInsets:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    [(SKUITextBoxView *)self->_textBoxView setEnabled:0];
    [v4 addSubview:self->_textBoxView];

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
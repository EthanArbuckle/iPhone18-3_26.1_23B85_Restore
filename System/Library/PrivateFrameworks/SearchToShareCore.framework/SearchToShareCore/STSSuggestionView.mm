@interface STSSuggestionView
- (CGPoint)footerOffset;
- (CGSize)footerSize;
- (STSSuggestionView)init;
- (STSSuggestionViewDelegate)delegate;
- (UIEdgeInsets)contentInset;
- (void)_handleLogoTap:(id)tap;
- (void)_updateContentInsets;
- (void)_updateFooterOrigin;
- (void)layoutSubviews;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setFooterOffset:(CGPoint)offset;
- (void)setOverlayView:(id)view animated:(BOOL)animated;
@end

@implementation STSSuggestionView

- (STSSuggestionView)init
{
  v28.receiver = self;
  v28.super_class = STSSuggestionView;
  v2 = [(STSSuggestionView *)&v28 init];
  v3 = v2;
  if (v2)
  {
    [(STSSuggestionView *)v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v4 = objc_alloc(MEMORY[0x277D75B40]);
    v5 = [v4 initWithFrame:0 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    tableView = v3->_tableView;
    v3->_tableView = v5;

    v7 = v3->_tableView;
    sts_defaultBackgroundColor = [MEMORY[0x277D75348] sts_defaultBackgroundColor];
    [(UITableView *)v7 setBackgroundColor:sts_defaultBackgroundColor];

    [(UITableView *)v3->_tableView setCellLayoutMarginsFollowReadableWidth:1];
    [(UITableView *)v3->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = objc_alloc_init(STSSuggestionFooter);
    footerView = v3->_footerView;
    v3->_footerView = v9;

    [(STSSuggestionFooter *)v3->_footerView sizeToFit];
    v11 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v3 action:sel__handleLogoTap_];
    [(STSSuggestionFooter *)v3->_footerView addGestureRecognizer:v11];
    [(STSSuggestionFooter *)v3->_footerView setUserInteractionEnabled:1];
    v12 = objc_alloc(MEMORY[0x277D75D18]);
    [(STSSuggestionFooter *)v3->_footerView bounds];
    v13 = [v12 initWithFrame:?];
    [(UITableView *)v3->_tableView setTableFooterView:v13];
    [(STSSuggestionView *)v3 addSubview:v3->_tableView];
    [(STSSuggestionView *)v3 addSubview:v3->_footerView];
    array = [MEMORY[0x277CBEB18] array];
    leadingAnchor = [(UITableView *)v3->_tableView leadingAnchor];
    leadingAnchor2 = [(STSSuggestionView *)v3 leadingAnchor];
    v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [array addObject:v17];

    trailingAnchor = [(UITableView *)v3->_tableView trailingAnchor];
    trailingAnchor2 = [(STSSuggestionView *)v3 trailingAnchor];
    v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [array addObject:v20];

    topAnchor = [(UITableView *)v3->_tableView topAnchor];
    topAnchor2 = [(STSSuggestionView *)v3 topAnchor];
    v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [array addObject:v23];

    bottomAnchor = [(UITableView *)v3->_tableView bottomAnchor];
    bottomAnchor2 = [(STSSuggestionView *)v3 bottomAnchor];
    v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [array addObject:v26];

    [MEMORY[0x277CCAAD0] activateConstraints:array];
  }

  return v3;
}

- (void)layoutSubviews
{
  [(STSSuggestionView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UITableView *)self->_tableView setFrame:?];
  [(UIView *)self->_overlayView setFrame:v4 + self->_contentInset.left, v6 + self->_contentInset.top, v8 - (self->_contentInset.left + self->_contentInset.right), v10 - (self->_contentInset.top + self->_contentInset.bottom)];

  [(STSSuggestionView *)self _updateFooterOrigin];
}

- (void)setOverlayView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  overlayView = self->_overlayView;
  if (overlayView != viewCopy)
  {
    v9 = overlayView;
    objc_storeStrong(&self->_overlayView, view);
    [(STSSuggestionView *)self addSubview:self->_overlayView];
    [(STSSuggestionView *)self setNeedsLayout];
    [(STSSuggestionView *)self layoutIfNeeded];
    [(UIView *)self->_overlayView setAlpha:0.0];
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __45__STSSuggestionView_setOverlayView_animated___block_invoke;
    v23 = &unk_279B8AEF0;
    selfCopy = self;
    v10 = v9;
    v25 = v10;
    v11 = MEMORY[0x266751FB0](&v20);
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __45__STSSuggestionView_setOverlayView_animated___block_invoke_2;
    v17 = &unk_279B8B2E8;
    v18 = v10;
    selfCopy2 = self;
    v12 = v10;
    v13 = MEMORY[0x266751FB0](&v14);
    if (animatedCopy)
    {
      [MEMORY[0x277D75D18] animateWithDuration:v11 animations:v13 completion:{0.2, v14, v15, v16, v17, v18, selfCopy2, v20, v21, v22, v23, selfCopy}];
    }

    else
    {
      v11[2](v11);
      v13[2](v13, 1);
    }
  }
}

uint64_t __45__STSSuggestionView_setOverlayView_animated___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 424) setAlpha:1.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:0.0];
}

uint64_t __45__STSSuggestionView_setOverlayView_animated___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) isEqual:*(*(a1 + 40) + 424)];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 removeFromSuperview];
  }

  return result;
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  p_contentInset = &self->_contentInset;
  self->_contentInset = inset;
  [(UITableView *)self->_tableView setScrollIndicatorInsets:?];
  [(UITableView *)self->_tableView setContentInset:p_contentInset->top, p_contentInset->left, p_contentInset->bottom, p_contentInset->right];

  [(STSSuggestionView *)self setNeedsLayout];
}

- (void)setFooterOffset:(CGPoint)offset
{
  if (self->_footerOffset.x != offset.x || self->_footerOffset.y != offset.y)
  {
    self->_footerOffset = offset;
    [(STSSuggestionView *)self _updateFooterOrigin];
  }
}

- (CGSize)footerSize
{
  [(STSSuggestionFooter *)self->_footerView sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_handleLogoTap:(id)tap
{
  delegate = [(STSSuggestionView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(STSSuggestionView *)self delegate];
    [delegate2 suggestionViewDidTapLogo:self];
  }
}

- (void)_updateFooterOrigin
{
  [(STSSuggestionFooter *)self->_footerView frame];
  footerView = self->_footerView;
  x = self->_footerOffset.x;
  y = self->_footerOffset.y;

  [(STSSuggestionFooter *)footerView setFrame:x, y];
}

- (void)_updateContentInsets
{
  p_contentInset = &self->_contentInset;
  [(UITableView *)self->_tableView setScrollIndicatorInsets:self->_contentInset.top, 0.0, self->_contentInset.bottom, 0.0];
  [(STSSuggestionFooter *)self->_footerView bounds];
  CGRectGetHeight(v10);
  tableView = self->_tableView;
  top = p_contentInset->top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;

  [(UITableView *)tableView setContentInset:top, left, bottom, right];
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

- (CGPoint)footerOffset
{
  x = self->_footerOffset.x;
  y = self->_footerOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (STSSuggestionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
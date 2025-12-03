@interface RUITableViewHeaderFooterView
- (BOOL)_useLegacyLayout;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIEdgeInsets)insetsForHeaderFooter;
- (void)_embedContentView:(id)view;
- (void)embedFooterView:(id)view;
- (void)embedHeaderView:(id)view;
- (void)layoutSubviews;
- (void)removeEmbeddedView;
@end

@implementation RUITableViewHeaderFooterView

- (BOOL)_useLegacyLayout
{
  tableView = [(RUITableViewHeaderFooterView *)self tableView];
  v3 = [tableView style] != 2;

  return v3;
}

- (void)layoutSubviews
{
  v46.receiver = self;
  v46.super_class = RUITableViewHeaderFooterView;
  [(RUITableViewHeaderFooterView *)&v46 layoutSubviews];
  headerView = [(RUITableViewHeaderFooterView *)self headerView];
  v4 = headerView;
  if (headerView)
  {
    footerView = headerView;
  }

  else
  {
    footerView = [(RUITableViewHeaderFooterView *)self footerView];
  }

  v6 = footerView;

  [v6 bounds];
  if ([(RUITableViewHeaderFooterView *)self _useLegacyLayout])
  {
    contentView = [(RUITableViewHeaderFooterView *)self contentView];
    [contentView frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [(RUITableViewHeaderFooterView *)self insetsForHeaderFooter];
    v17 = v9 + v16;
    v19 = v11 + v18;
    v21 = v13 - (v16 + v20);
    v23 = v15 - (v18 + v22);
    contentView2 = [(RUITableViewHeaderFooterView *)self contentView];
    [contentView2 setFrame:{v17, v19, v21, v23}];

    contentView3 = [(RUITableViewHeaderFooterView *)self contentView];
    [contentView3 bounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
  }

  else
  {
    v34 = *MEMORY[0x277D768C8];
    v35 = *(MEMORY[0x277D768C8] + 16);
    contentView4 = [(RUITableViewHeaderFooterView *)self contentView];
    [contentView4 layoutMargins];
    v38 = v37;

    contentView5 = [(RUITableViewHeaderFooterView *)self contentView];
    [contentView5 layoutMargins];
    v41 = v40;

    contentView3 = [(RUITableViewHeaderFooterView *)self contentView];
    [contentView3 bounds];
    v27 = v38 + v42;
    v29 = v34 + v43;
    v31 = v44 - (v38 + v41);
    v33 = v45 - (v34 + v35);
  }

  [v6 setFrame:{v27, v29, v31, v33}];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  headerView = [(RUITableViewHeaderFooterView *)self headerView];
  if (headerView)
  {

    goto LABEL_4;
  }

  footerView = [(RUITableViewHeaderFooterView *)self footerView];

  if (footerView)
  {
LABEL_4:
    if ([(RUITableViewHeaderFooterView *)self _useLegacyLayout])
    {
      [(RUITableViewHeaderFooterView *)self insetsForHeaderFooter];
      v10 = v9;
      v12 = v11;
      v14 = v13;
    }

    else
    {
      v10 = *MEMORY[0x277D768C8];
      v15 = *(MEMORY[0x277D768C8] + 8);
      v14 = *(MEMORY[0x277D768C8] + 16);
      v16 = *(MEMORY[0x277D768C8] + 24);
      [(RUITableViewHeaderFooterView *)self layoutMargins];
      v12 = v15 + v17;
      [(RUITableViewHeaderFooterView *)self layoutMargins];
      v8 = v16 + v18;
    }

    v19 = width - (v8 + v12);
    headerView2 = [(RUITableViewHeaderFooterView *)self headerView];

    if (headerView2)
    {
      headerView3 = [(RUITableViewHeaderFooterView *)self headerView];
      if (objc_opt_respondsToSelector())
      {
        tableView = [(RUITableViewHeaderFooterView *)self tableView];
        [headerView3 headerHeightForWidth:tableView inView:v19];
LABEL_18:
        height = v23;

        goto LABEL_19;
      }

      if (objc_opt_respondsToSelector())
      {
        tableView = [(RUITableViewHeaderFooterView *)self tableView];
        [headerView3 headerHeightForWidth:tableView inTableView:v19];
        goto LABEL_18;
      }
    }

    else
    {
      footerView2 = [(RUITableViewHeaderFooterView *)self footerView];

      if (!footerView2)
      {
LABEL_20:
        v25 = v14 + v10 + height;
        goto LABEL_21;
      }

      headerView3 = [(RUITableViewHeaderFooterView *)self footerView];
      if (objc_opt_respondsToSelector())
      {
        tableView = [(RUITableViewHeaderFooterView *)self tableView];
        [headerView3 footerHeightForWidth:tableView inView:v19];
        goto LABEL_18;
      }

      if (objc_opt_respondsToSelector())
      {
        tableView = [(RUITableViewHeaderFooterView *)self tableView];
        [headerView3 footerHeightForWidth:tableView inTableView:v19];
        goto LABEL_18;
      }
    }

LABEL_19:

    goto LABEL_20;
  }

  v28.receiver = self;
  v28.super_class = RUITableViewHeaderFooterView;
  [(RUITableViewHeaderFooterView *)&v28 sizeThatFits:width, height];
  width = v26;
LABEL_21:
  v27 = width;
  result.height = v25;
  result.width = v27;
  return result;
}

- (void)removeEmbeddedView
{
  headerView = [(RUITableViewHeaderFooterView *)self headerView];
  [headerView removeFromSuperview];

  footerView = [(RUITableViewHeaderFooterView *)self footerView];
  [footerView removeFromSuperview];

  [(RUITableViewHeaderFooterView *)self setHeaderView:0];

  [(RUITableViewHeaderFooterView *)self setFooterView:0];
}

- (void)embedHeaderView:(id)view
{
  viewCopy = view;
  [(RUITableViewHeaderFooterView *)self removeEmbeddedView];
  [(RUITableViewHeaderFooterView *)self setHeaderView:viewCopy];
  [(RUITableViewHeaderFooterView *)self _embedContentView:viewCopy];
}

- (void)embedFooterView:(id)view
{
  viewCopy = view;
  [(RUITableViewHeaderFooterView *)self removeEmbeddedView];
  [(RUITableViewHeaderFooterView *)self setFooterView:viewCopy];
  [(RUITableViewHeaderFooterView *)self _embedContentView:viewCopy];
}

- (void)_embedContentView:(id)view
{
  viewCopy = view;
  contentView = [(RUITableViewHeaderFooterView *)self contentView];
  [contentView addSubview:viewCopy];

  [(RUITableViewHeaderFooterView *)self setNeedsLayout];
}

- (UIEdgeInsets)insetsForHeaderFooter
{
  tableView = [(RUITableViewHeaderFooterView *)self tableView];
  [tableView separatorInset];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  tableView2 = [(RUITableViewHeaderFooterView *)self tableView];
  style = [tableView2 style];

  if (style == 2)
  {
    if (insetsForHeaderFooter_onceToken != -1)
    {
      [RUITableViewHeaderFooterView insetsForHeaderFooter];
    }

    v5 = insetsForHeaderFooter__insets_0;
    v14 = *&insetsForHeaderFooter__insets_1;
    v9 = insetsForHeaderFooter__insets_2;
    v15 = *&insetsForHeaderFooter__insets_3;
  }

  else
  {
    v15 = v7 + v11;
    v14 = v7 + v11;
  }

  v16 = *&v5;
  v17 = *&v9;
  result.right = v15;
  result.bottom = v17;
  result.left = v14;
  result.top = v16;
  return result;
}

void __53__RUITableViewHeaderFooterView_insetsForHeaderFooter__block_invoke()
{
  v4 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:0];
  [v4 separatorInset];
  insetsForHeaderFooter__insets_0 = v0;
  insetsForHeaderFooter__insets_1 = v1;
  insetsForHeaderFooter__insets_2 = v2;
  insetsForHeaderFooter__insets_3 = v3;
}

@end
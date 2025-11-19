@interface RUITableViewHeaderFooterView
- (BOOL)_useLegacyLayout;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIEdgeInsets)insetsForHeaderFooter;
- (void)_embedContentView:(id)a3;
- (void)embedFooterView:(id)a3;
- (void)embedHeaderView:(id)a3;
- (void)layoutSubviews;
- (void)removeEmbeddedView;
@end

@implementation RUITableViewHeaderFooterView

- (BOOL)_useLegacyLayout
{
  v2 = [(RUITableViewHeaderFooterView *)self tableView];
  v3 = [v2 style] != 2;

  return v3;
}

- (void)layoutSubviews
{
  v46.receiver = self;
  v46.super_class = RUITableViewHeaderFooterView;
  [(RUITableViewHeaderFooterView *)&v46 layoutSubviews];
  v3 = [(RUITableViewHeaderFooterView *)self headerView];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(RUITableViewHeaderFooterView *)self footerView];
  }

  v6 = v5;

  [v6 bounds];
  if ([(RUITableViewHeaderFooterView *)self _useLegacyLayout])
  {
    v7 = [(RUITableViewHeaderFooterView *)self contentView];
    [v7 frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [(RUITableViewHeaderFooterView *)self insetsForHeaderFooter];
    v17 = v9 + v16;
    v19 = v11 + v18;
    v21 = v13 - (v16 + v20);
    v23 = v15 - (v18 + v22);
    v24 = [(RUITableViewHeaderFooterView *)self contentView];
    [v24 setFrame:{v17, v19, v21, v23}];

    v25 = [(RUITableViewHeaderFooterView *)self contentView];
    [v25 bounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
  }

  else
  {
    v34 = *MEMORY[0x277D768C8];
    v35 = *(MEMORY[0x277D768C8] + 16);
    v36 = [(RUITableViewHeaderFooterView *)self contentView];
    [v36 layoutMargins];
    v38 = v37;

    v39 = [(RUITableViewHeaderFooterView *)self contentView];
    [v39 layoutMargins];
    v41 = v40;

    v25 = [(RUITableViewHeaderFooterView *)self contentView];
    [v25 bounds];
    v27 = v38 + v42;
    v29 = v34 + v43;
    v31 = v44 - (v38 + v41);
    v33 = v45 - (v34 + v35);
  }

  [v6 setFrame:{v27, v29, v31, v33}];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(RUITableViewHeaderFooterView *)self headerView];
  if (v6)
  {

    goto LABEL_4;
  }

  v7 = [(RUITableViewHeaderFooterView *)self footerView];

  if (v7)
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
    v20 = [(RUITableViewHeaderFooterView *)self headerView];

    if (v20)
    {
      v21 = [(RUITableViewHeaderFooterView *)self headerView];
      if (objc_opt_respondsToSelector())
      {
        v22 = [(RUITableViewHeaderFooterView *)self tableView];
        [v21 headerHeightForWidth:v22 inView:v19];
LABEL_18:
        height = v23;

        goto LABEL_19;
      }

      if (objc_opt_respondsToSelector())
      {
        v22 = [(RUITableViewHeaderFooterView *)self tableView];
        [v21 headerHeightForWidth:v22 inTableView:v19];
        goto LABEL_18;
      }
    }

    else
    {
      v24 = [(RUITableViewHeaderFooterView *)self footerView];

      if (!v24)
      {
LABEL_20:
        v25 = v14 + v10 + height;
        goto LABEL_21;
      }

      v21 = [(RUITableViewHeaderFooterView *)self footerView];
      if (objc_opt_respondsToSelector())
      {
        v22 = [(RUITableViewHeaderFooterView *)self tableView];
        [v21 footerHeightForWidth:v22 inView:v19];
        goto LABEL_18;
      }

      if (objc_opt_respondsToSelector())
      {
        v22 = [(RUITableViewHeaderFooterView *)self tableView];
        [v21 footerHeightForWidth:v22 inTableView:v19];
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
  v3 = [(RUITableViewHeaderFooterView *)self headerView];
  [v3 removeFromSuperview];

  v4 = [(RUITableViewHeaderFooterView *)self footerView];
  [v4 removeFromSuperview];

  [(RUITableViewHeaderFooterView *)self setHeaderView:0];

  [(RUITableViewHeaderFooterView *)self setFooterView:0];
}

- (void)embedHeaderView:(id)a3
{
  v4 = a3;
  [(RUITableViewHeaderFooterView *)self removeEmbeddedView];
  [(RUITableViewHeaderFooterView *)self setHeaderView:v4];
  [(RUITableViewHeaderFooterView *)self _embedContentView:v4];
}

- (void)embedFooterView:(id)a3
{
  v4 = a3;
  [(RUITableViewHeaderFooterView *)self removeEmbeddedView];
  [(RUITableViewHeaderFooterView *)self setFooterView:v4];
  [(RUITableViewHeaderFooterView *)self _embedContentView:v4];
}

- (void)_embedContentView:(id)a3
{
  v4 = a3;
  v5 = [(RUITableViewHeaderFooterView *)self contentView];
  [v5 addSubview:v4];

  [(RUITableViewHeaderFooterView *)self setNeedsLayout];
}

- (UIEdgeInsets)insetsForHeaderFooter
{
  v3 = [(RUITableViewHeaderFooterView *)self tableView];
  [v3 separatorInset];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(RUITableViewHeaderFooterView *)self tableView];
  v13 = [v12 style];

  if (v13 == 2)
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
@interface _TVInfoHeaderView
+ (id)infoHeaderViewWithElement:(id)a3 existingView:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (id)impressionableElementsContainedInDocument:(id)a3;
- (void)layoutSubviews;
- (void)setHeaderView:(id)a3;
@end

@implementation _TVInfoHeaderView

+ (id)infoHeaderViewWithElement:(id)a3 existingView:(id)a4
{
  v5 = a4;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
  }

  else
  {
    v8 = [_TVInfoHeaderView alloc];
    v7 = [(_TVInfoHeaderView *)v8 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  }

  v9 = v7;
  v10 = +[TVInterfaceFactory sharedInterfaceFactory];
  v11 = [v6 children];

  v12 = [v11 firstObject];
  v13 = [(_TVInfoHeaderView *)v9 headerView];
  v14 = [v10 _viewFromElement:v12 existingView:v13];

  [(_TVInfoHeaderView *)v9 setHeaderView:v14];

  return v9;
}

- (void)setHeaderView:(id)a3
{
  v5 = a3;
  headerView = self->_headerView;
  v7 = v5;
  if (headerView != v5)
  {
    [(UIView *)headerView removeFromSuperview];
    objc_storeStrong(&self->_headerView, a3);
    if (self->_headerView)
    {
      [(_TVInfoHeaderView *)self addSubview:?];
    }
  }

  [(_TVInfoHeaderView *)self setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(UIView *)self tv_padding:a3.width];
  v8 = v7;
  v10 = v9;
  headerView = self->_headerView;
  if (headerView)
  {
    [(UIView *)headerView sizeThatFits:width - v5 - v6, 0.0];
  }

  else
  {
    [(UIView *)self tv_itemHeight];
    v12 = v13;
  }

  v14 = v10 + v8 + v12;
  v15 = width;
  result.height = v14;
  result.width = v15;
  return result;
}

- (void)layoutSubviews
{
  [(_TVInfoHeaderView *)self bounds];
  Width = CGRectGetWidth(v13);
  [(UIView *)self tv_padding];
  v5 = v4;
  v7 = v6;
  v9 = Width - v6 - v8;
  [(UIView *)self->_headerView sizeThatFits:v9, 0.0];
  headerView = self->_headerView;

  [(UIView *)headerView setFrame:v7, v5, v9, v10];
}

- (id)impressionableElementsContainedInDocument:(id)a3
{
  v4 = a3;
  v5 = [self tv_associatedIKViewElement];
  v6 = [v5 appDocument];
  v7 = [v6 isEqual:v4];

  if (v7)
  {
    v8 = [(_TVInfoHeaderView *)self headerView];
    v9 = [v8 tv_impressionableElementsForDocument:v4];

    if ([v9 count])
    {
      v10 = [MEMORY[0x277CBEA60] arrayWithArray:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end
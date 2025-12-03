@interface _TVInfoHeaderView
+ (id)infoHeaderViewWithElement:(id)element existingView:(id)view;
- (CGSize)sizeThatFits:(CGSize)fits;
- (id)impressionableElementsContainedInDocument:(id)document;
- (void)layoutSubviews;
- (void)setHeaderView:(id)view;
@end

@implementation _TVInfoHeaderView

+ (id)infoHeaderViewWithElement:(id)element existingView:(id)view
{
  viewCopy = view;
  elementCopy = element;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = viewCopy;
  }

  else
  {
    v8 = [_TVInfoHeaderView alloc];
    v7 = [(_TVInfoHeaderView *)v8 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  }

  v9 = v7;
  v10 = +[TVInterfaceFactory sharedInterfaceFactory];
  children = [elementCopy children];

  firstObject = [children firstObject];
  headerView = [(_TVInfoHeaderView *)v9 headerView];
  v14 = [v10 _viewFromElement:firstObject existingView:headerView];

  [(_TVInfoHeaderView *)v9 setHeaderView:v14];

  return v9;
}

- (void)setHeaderView:(id)view
{
  viewCopy = view;
  headerView = self->_headerView;
  v7 = viewCopy;
  if (headerView != viewCopy)
  {
    [(UIView *)headerView removeFromSuperview];
    objc_storeStrong(&self->_headerView, view);
    if (self->_headerView)
    {
      [(_TVInfoHeaderView *)self addSubview:?];
    }
  }

  [(_TVInfoHeaderView *)self setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(UIView *)self tv_padding:fits.width];
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

- (id)impressionableElementsContainedInDocument:(id)document
{
  documentCopy = document;
  tv_associatedIKViewElement = [self tv_associatedIKViewElement];
  appDocument = [tv_associatedIKViewElement appDocument];
  v7 = [appDocument isEqual:documentCopy];

  if (v7)
  {
    headerView = [(_TVInfoHeaderView *)self headerView];
    v9 = [headerView tv_impressionableElementsForDocument:documentCopy];

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
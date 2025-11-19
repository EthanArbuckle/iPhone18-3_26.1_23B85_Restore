@interface SUSearchBar
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)_setupCancelButtonWithAppearance:(id)a3;
- (void)removeFromSuperview;
@end

@implementation SUSearchBar

- (void)removeFromSuperview
{
  v3 = [(SUSearchBar *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = self;
    [v3 searchBarWillRemoveFromSuperview:self];
  }

  v5.receiver = self;
  v5.super_class = SUSearchBar;
  [(SUSearchBar *)&v5 removeFromSuperview];
}

- (void)_setupCancelButtonWithAppearance:(id)a3
{
  v3.receiver = self;
  v3.super_class = SUSearchBar;
  [(SUSearchBar *)&v3 _setupCancelButtonWithAppearance:0];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v6.receiver = self;
  v6.super_class = SUSearchBar;
  [(SUSearchBar *)&v6 sizeThatFits:a3.width, a3.height];
  if (v4 >= width)
  {
    v4 = width;
  }

  result.height = v5;
  result.width = v4;
  return result;
}

@end
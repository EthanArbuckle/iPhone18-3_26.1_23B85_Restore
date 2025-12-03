@interface SUSearchBar
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)_setupCancelButtonWithAppearance:(id)appearance;
- (void)removeFromSuperview;
@end

@implementation SUSearchBar

- (void)removeFromSuperview
{
  delegate = [(SUSearchBar *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    selfCopy = self;
    [delegate searchBarWillRemoveFromSuperview:self];
  }

  v5.receiver = self;
  v5.super_class = SUSearchBar;
  [(SUSearchBar *)&v5 removeFromSuperview];
}

- (void)_setupCancelButtonWithAppearance:(id)appearance
{
  v3.receiver = self;
  v3.super_class = SUSearchBar;
  [(SUSearchBar *)&v3 _setupCancelButtonWithAppearance:0];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v6.receiver = self;
  v6.super_class = SUSearchBar;
  [(SUSearchBar *)&v6 sizeThatFits:fits.width, fits.height];
  if (v4 >= width)
  {
    v4 = width;
  }

  result.height = v5;
  result.width = v4;
  return result;
}

@end
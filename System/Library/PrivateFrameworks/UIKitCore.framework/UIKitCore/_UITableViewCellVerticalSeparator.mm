@interface _UITableViewCellVerticalSeparator
- (BOOL)_shouldReplaceWithFixedPadding;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_UITableViewCellVerticalSeparator)initWithFrame:(CGRect)frame;
- (void)_traitsUserInterfaceIdiomDidChange;
@end

@implementation _UITableViewCellVerticalSeparator

- (_UITableViewCellVerticalSeparator)initWithFrame:(CGRect)frame
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = _UITableViewCellVerticalSeparator;
  v3 = [(UIView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor tableSeparatorLightColor];
    [(UIView *)v3 setBackgroundColor:v4];

    layer = [(UIView *)v3 layer];
    [layer setAllowsEdgeAntialiasing:1];

    [(UIView *)v3 setHidden:[(_UITableViewCellVerticalSeparator *)v3 _shouldReplaceWithFixedPadding]];
    v10[0] = objc_opt_class();
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v7 = [(UIView *)v3 registerForTraitChanges:v6 withAction:sel__traitsUserInterfaceIdiomDidChange];
  }

  return v3;
}

- (BOOL)_shouldReplaceWithFixedPadding
{
  traitCollection = [(UIView *)self traitCollection];
  v3 = [traitCollection userInterfaceIdiom] == 6;

  return v3;
}

- (void)_traitsUserInterfaceIdiomDidChange
{
  [(UIView *)self setHidden:[(_UITableViewCellVerticalSeparator *)self _shouldReplaceWithFixedPadding]];

  [(UIView *)self layoutIfNeeded];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  traitCollection = [(UIView *)self traitCollection];
  v6 = _UISeparatorThicknessForTraitCollection(traitCollection);

  if ([(_UITableViewCellVerticalSeparator *)self _shouldReplaceWithFixedPadding])
  {
    traitCollection2 = [(UIView *)self traitCollection];
    v8 = _UITableConstantsForTraitCollection(traitCollection2);

    [v8 defaultVerticalAccessorySeparatorReplacementPaddingWidth];
    v6 = v9;
  }

  v10 = v6;
  v11 = height;
  result.height = v11;
  result.width = v10;
  return result;
}

@end
@interface _UITableViewCellVerticalSeparator
- (BOOL)_shouldReplaceWithFixedPadding;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_UITableViewCellVerticalSeparator)initWithFrame:(CGRect)a3;
- (void)_traitsUserInterfaceIdiomDidChange;
@end

@implementation _UITableViewCellVerticalSeparator

- (_UITableViewCellVerticalSeparator)initWithFrame:(CGRect)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = _UITableViewCellVerticalSeparator;
  v3 = [(UIView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIColor tableSeparatorLightColor];
    [(UIView *)v3 setBackgroundColor:v4];

    v5 = [(UIView *)v3 layer];
    [v5 setAllowsEdgeAntialiasing:1];

    [(UIView *)v3 setHidden:[(_UITableViewCellVerticalSeparator *)v3 _shouldReplaceWithFixedPadding]];
    v10[0] = objc_opt_class();
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v7 = [(UIView *)v3 registerForTraitChanges:v6 withAction:sel__traitsUserInterfaceIdiomDidChange];
  }

  return v3;
}

- (BOOL)_shouldReplaceWithFixedPadding
{
  v2 = [(UIView *)self traitCollection];
  v3 = [v2 userInterfaceIdiom] == 6;

  return v3;
}

- (void)_traitsUserInterfaceIdiomDidChange
{
  [(UIView *)self setHidden:[(_UITableViewCellVerticalSeparator *)self _shouldReplaceWithFixedPadding]];

  [(UIView *)self layoutIfNeeded];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  v5 = [(UIView *)self traitCollection];
  v6 = _UISeparatorThicknessForTraitCollection(v5);

  if ([(_UITableViewCellVerticalSeparator *)self _shouldReplaceWithFixedPadding])
  {
    v7 = [(UIView *)self traitCollection];
    v8 = _UITableConstantsForTraitCollection(v7);

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
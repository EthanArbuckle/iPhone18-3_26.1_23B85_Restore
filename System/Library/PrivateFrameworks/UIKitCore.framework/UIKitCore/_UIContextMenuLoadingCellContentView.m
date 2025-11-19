@interface _UIContextMenuLoadingCellContentView
- (_UIContextMenuLoadingCellContentView)initWithFrame:(CGRect)a3;
- (id)_contentsCompositingFilter;
- (id)_contentsTintColor;
- (id)iconView;
- (void)_updateContentAppearance;
@end

@implementation _UIContextMenuLoadingCellContentView

- (_UIContextMenuLoadingCellContentView)initWithFrame:(CGRect)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = _UIContextMenuLoadingCellContentView;
  v3 = [(_UIContextMenuCellContentView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = _UINSLocalizedStringWithDefaultValue(@"CONTEXT_MENU_LOADING", @"Loading…");
    [(_UIContextMenuCellContentView *)v3 setTitle:v4];

    [(_UIContextMenuLoadingCellContentView *)v3 _updateContentAppearance];
    v9[0] = objc_opt_class();
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    v6 = [(UIView *)v3 registerForTraitChanges:v5 withAction:sel__updateContentAppearance];
  }

  return v3;
}

- (id)iconView
{
  v3 = [(_UIContextMenuLoadingCellContentView *)self activityIndicatorView];

  if (!v3)
  {
    v4 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    [(_UIContextMenuLoadingCellContentView *)self setActivityIndicatorView:v4];

    v5 = [(_UIContextMenuLoadingCellContentView *)self activityIndicatorView];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

    v6 = [(_UIContextMenuLoadingCellContentView *)self activityIndicatorView];
    [v6 startAnimating];
  }

  return [(_UIContextMenuLoadingCellContentView *)self activityIndicatorView];
}

- (void)_updateContentAppearance
{
  v3 = [(_UIContextMenuLoadingCellContentView *)self _contentsTintColor];
  v4 = [(_UIContextMenuCellContentView *)self titleLabel];
  [v4 setTextColor:v3];

  v5 = [(_UIContextMenuLoadingCellContentView *)self _contentsCompositingFilter];
  v6 = [(_UIContextMenuCellContentView *)self titleLabel];
  v7 = [v6 layer];
  [v7 setCompositingFilter:v5];

  v8 = [(_UIContextMenuLoadingCellContentView *)self _contentsTintColor];
  v9 = [(_UIContextMenuLoadingCellContentView *)self activityIndicatorView];
  [v9 setColor:v8];

  v12 = [(_UIContextMenuLoadingCellContentView *)self _contentsCompositingFilter];
  v10 = [(_UIContextMenuLoadingCellContentView *)self activityIndicatorView];
  v11 = [v10 layer];
  [v11 setCompositingFilter:v12];
}

- (id)_contentsTintColor
{
  objc_initWeak(&location, self);
  v2 = [UIColor colorWithDynamicProvider:&__block_literal_global_595];
  objc_destroyWeak(&location);

  return v2;
}

- (id)_contentsCompositingFilter
{
  v2 = [(UIView *)self traitCollection];
  v3 = [v2 userInterfaceStyle];

  v4 = MEMORY[0x1E6979CF8];
  if (v3 != 2)
  {
    v4 = MEMORY[0x1E6979CE8];
  }

  v5 = *v4;

  return v5;
}

@end
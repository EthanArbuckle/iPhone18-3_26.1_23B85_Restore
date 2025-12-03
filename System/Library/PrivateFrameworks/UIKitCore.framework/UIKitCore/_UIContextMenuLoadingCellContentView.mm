@interface _UIContextMenuLoadingCellContentView
- (_UIContextMenuLoadingCellContentView)initWithFrame:(CGRect)frame;
- (id)_contentsCompositingFilter;
- (id)_contentsTintColor;
- (id)iconView;
- (void)_updateContentAppearance;
@end

@implementation _UIContextMenuLoadingCellContentView

- (_UIContextMenuLoadingCellContentView)initWithFrame:(CGRect)frame
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = _UIContextMenuLoadingCellContentView;
  v3 = [(_UIContextMenuCellContentView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  activityIndicatorView = [(_UIContextMenuLoadingCellContentView *)self activityIndicatorView];

  if (!activityIndicatorView)
  {
    v4 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    [(_UIContextMenuLoadingCellContentView *)self setActivityIndicatorView:v4];

    activityIndicatorView2 = [(_UIContextMenuLoadingCellContentView *)self activityIndicatorView];
    [activityIndicatorView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    activityIndicatorView3 = [(_UIContextMenuLoadingCellContentView *)self activityIndicatorView];
    [activityIndicatorView3 startAnimating];
  }

  return [(_UIContextMenuLoadingCellContentView *)self activityIndicatorView];
}

- (void)_updateContentAppearance
{
  _contentsTintColor = [(_UIContextMenuLoadingCellContentView *)self _contentsTintColor];
  titleLabel = [(_UIContextMenuCellContentView *)self titleLabel];
  [titleLabel setTextColor:_contentsTintColor];

  _contentsCompositingFilter = [(_UIContextMenuLoadingCellContentView *)self _contentsCompositingFilter];
  titleLabel2 = [(_UIContextMenuCellContentView *)self titleLabel];
  layer = [titleLabel2 layer];
  [layer setCompositingFilter:_contentsCompositingFilter];

  _contentsTintColor2 = [(_UIContextMenuLoadingCellContentView *)self _contentsTintColor];
  activityIndicatorView = [(_UIContextMenuLoadingCellContentView *)self activityIndicatorView];
  [activityIndicatorView setColor:_contentsTintColor2];

  _contentsCompositingFilter2 = [(_UIContextMenuLoadingCellContentView *)self _contentsCompositingFilter];
  activityIndicatorView2 = [(_UIContextMenuLoadingCellContentView *)self activityIndicatorView];
  layer2 = [activityIndicatorView2 layer];
  [layer2 setCompositingFilter:_contentsCompositingFilter2];
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
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  v4 = MEMORY[0x1E6979CF8];
  if (userInterfaceStyle != 2)
  {
    v4 = MEMORY[0x1E6979CE8];
  }

  v5 = *v4;

  return v5;
}

@end
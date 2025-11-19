@interface _UIContextMenuCell
- (BOOL)_allowsHorizontalFocusMovement;
- (_UIContextMenuCell)initWithFrame:(CGRect)a3;
- (int64_t)focusItemDeferralMode;
- (void)_configureBackgroundView:(id)a3 withContentShape:(id)a4;
- (void)_configureFocusedFloatingContentView:(id)a3;
- (void)_setTypeSelectState:(int64_t)a3;
- (void)_updateStateWithAnimationCoordinator:(id)a3 animated:(BOOL)a4;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setDirectionalLayoutMargins:(NSDirectionalEdgeInsets)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3 forHover:(BOOL)a4;
- (void)setSelected:(BOOL)a3;
@end

@implementation _UIContextMenuCell

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = _UIContextMenuCell;
  [(UICollectionViewCell *)&v9 layoutSubviews];
  v3 = [(_UIContextMenuCell *)self _backgroundShape];
  if (v3)
  {
    v4 = +[UIShape rectShape];
    v5 = v3;
    v6 = v5;
    if (v4 == v5)
    {

LABEL_12:
      goto LABEL_13;
    }

    if (v4)
    {
      v7 = [v4 isEqual:v5];

      if (v7)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    if ([(UICollectionViewCell *)self isHighlighted])
    {
      v8 = [(UICollectionViewCell *)self backgroundView];
      [(_UIContextMenuCell *)self _configureBackgroundView:v8 withContentShape:v6];
    }

    if ([(UICollectionViewCell *)self isSelected])
    {
      v4 = [(UICollectionViewCell *)self selectedBackgroundView];
      [(_UIContextMenuCell *)self _configureBackgroundView:v4 withContentShape:v6];
      goto LABEL_12;
    }
  }

LABEL_13:
}

- (_UIContextMenuCell)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = _UIContextMenuCell;
  v3 = [(UICollectionViewCell *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setFocusEffect:0];
    v5 = [(UIView *)v4 traitCollection];
    v6 = _UIContextMenuGetPlatformMetrics([v5 userInterfaceIdiom]);

    -[UICollectionViewCell _setFocusStyle:](v4, "_setFocusStyle:", [v6 enableFloatingFocusStyle]);
  }

  return v4;
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v14.receiver = self;
  v14.super_class = _UIContextMenuCell;
  [(UICollectionViewCell *)&v14 setSelected:?];
  [(_UIContextMenuCell *)self _updateStateWithAnimationCoordinator:0 animated:+[UIView _isInAnimationBlock]];
  if (v3)
  {
    v5 = [(UICollectionViewCell *)self selectedBackgroundView];
    if (!v5)
    {
      v5 = objc_alloc_init(UIVisualEffectView);
      [(UICollectionViewCell *)self setSelectedBackgroundView:v5];
    }

    v6 = [(_UIContextMenuCell *)self actionView];
    v7 = [v6 contentShape];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = +[UIShape rectShape];
    }

    v10 = v9;

    v11 = [(_UIContextMenuCell *)self _backgroundShape];
    v12 = [v11 isEqual:v10] ^ 1;

    if ([(_UIContextMenuCell *)self _selectedBackgroundViewNeedsUpdate]|| v12)
    {
      [(_UIContextMenuCell *)self set_backgroundShape:v10];
      [(_UIContextMenuCell *)self _configureBackgroundView:v5 withContentShape:v10];
      [(_UIContextMenuCell *)self set_highlightBackgroundViewNeedsUpdate:v12];
      [(_UIContextMenuCell *)self set_selectedBackgroundViewNeedsUpdate:0];
    }
  }

  v13 = [(UICollectionViewCell *)self selectedBackgroundView];
  [v13 setHidden:!v3];
}

- (void)setHighlighted:(BOOL)a3 forHover:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(_UIContextMenuCell *)self actionView];
  v8 = [v7 shouldHighlightOnHover];

  [(_UIContextMenuCell *)self setHighlighted:(v8 | ~v4) & v5];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v14.receiver = self;
  v14.super_class = _UIContextMenuCell;
  [(UICollectionViewCell *)&v14 setHighlighted:?];
  [(_UIContextMenuCell *)self _updateStateWithAnimationCoordinator:0 animated:+[UIView _isInAnimationBlock]];
  if (v3)
  {
    v5 = [(UICollectionViewCell *)self backgroundView];
    if (!v5)
    {
      v5 = objc_alloc_init(UIVisualEffectView);
      [(UICollectionViewCell *)self setBackgroundView:v5];
    }

    v6 = [(_UIContextMenuCell *)self actionView];
    v7 = [v6 contentShape];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = +[UIShape rectShape];
    }

    v10 = v9;

    v11 = [(_UIContextMenuCell *)self _backgroundShape];
    v12 = [v11 isEqual:v10] ^ 1;

    if ([(_UIContextMenuCell *)self _highlightBackgroundViewNeedsUpdate]|| v12)
    {
      [(_UIContextMenuCell *)self set_backgroundShape:v10];
      [(_UIContextMenuCell *)self _configureBackgroundView:v5 withContentShape:v10];
      [(_UIContextMenuCell *)self set_highlightBackgroundViewNeedsUpdate:0];
      [(_UIContextMenuCell *)self set_selectedBackgroundViewNeedsUpdate:v12];
    }
  }

  v13 = [(UICollectionViewCell *)self backgroundView];
  [v13 setHidden:!v3];
}

- (void)_setTypeSelectState:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = _UIContextMenuCell;
  [(UICollectionViewCell *)&v6 _setTypeSelectState:?];
  v5 = [(_UIContextMenuCell *)self actionView];
  [v5 setTypeSelectState:a3];
}

- (void)_configureBackgroundView:(id)a3 withContentShape:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UIView *)self traitCollection];
  v9 = [v8 userInterfaceIdiom];
  v18 = v6;
  v10 = _UIContextMenuGetPlatformMetrics(v9);
  v11 = [v10 menuHighlightBackgroundDescriptorProvider];
  v12 = (v11)[2](v11, v18);

  [(UIView *)self bounds];
  [v7 setFrame:?];
  v13 = [v12 effect];
  [v7 setEffect:v13];

  v14 = [v12 backgroundColor];
  [v7 setBackgroundColor:v14];

  v15 = [v12 contentBackgroundColor];
  v16 = [v7 contentView];
  [v16 setBackgroundColor:v15];

  v17 = [v12 backgroundShape];
  [v7 _applyShape:v17];
}

- (void)setDirectionalLayoutMargins:(NSDirectionalEdgeInsets)a3
{
  trailing = a3.trailing;
  bottom = a3.bottom;
  leading = a3.leading;
  top = a3.top;
  v9.receiver = self;
  v9.super_class = _UIContextMenuCell;
  [(UIView *)&v9 setDirectionalLayoutMargins:?];
  v8 = [(UICollectionViewCell *)self contentView];
  [v8 setDirectionalLayoutMargins:{top, leading, bottom, trailing}];
}

- (void)prepareForReuse
{
  v3 = [(_UIContextMenuCell *)self actionView];
  [v3 prepareForReuse];

  v4.receiver = self;
  v4.super_class = _UIContextMenuCell;
  [(UICollectionViewCell *)&v4 prepareForReuse];
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v7.receiver = self;
  v7.super_class = _UIContextMenuCell;
  v6 = a4;
  [(UIView *)&v7 didUpdateFocusInContext:a3 withAnimationCoordinator:v6];
  [(_UIContextMenuCell *)self _updateStateWithAnimationCoordinator:v6 animated:1, v7.receiver, v7.super_class];
}

- (int64_t)focusItemDeferralMode
{
  if ([(UICollectionViewCell *)self isHighlighted])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (BOOL)_allowsHorizontalFocusMovement
{
  v2 = [(_UIContextMenuCell *)self actionView];
  v3 = ([v2 options] >> 7) & 1;

  return v3;
}

- (void)_updateStateWithAnimationCoordinator:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v17 = a3;
  if ([(UICollectionViewCell *)self isFocused])
  {
    v6 = 8;
  }

  else
  {
    v6 = 0;
  }

  if ([(UICollectionViewCell *)self isSelected])
  {
    v7 = v6 | 4;
  }

  else
  {
    v7 = v6;
  }

  v8 = [(UICollectionViewCell *)self isHighlighted];
  v9 = [(_UIContextMenuCell *)self actionView];
  [v9 setControlState:v7 | v8 withAnimationCoordinator:v17];

  v10 = [(UICollectionViewCell *)self _focusedFloatingContentView];
  if (v10)
  {
    v11 = [UIControl _primaryStateForState:v7 | v8];
    v12 = [(UIView *)self traitCollection];
    v13 = _UIContextMenuGetPlatformMetrics([v12 userInterfaceIdiom]);
    v14 = [v13 wantsFloatingContentViewAsBackground];

    if (v14)
    {
      v15 = [(_UIContextMenuCell *)self actionView];
      v16 = [v15 _primaryBackgroundColorForCurrentState];
      [v10 setBackgroundColor:v16 forState:v11];
    }

    if (v17)
    {
      [v10 setControlState:v11 withAnimationCoordinator:v17];
    }

    else
    {
      [v10 setControlState:v11 animated:v4];
    }
  }
}

- (void)_configureFocusedFloatingContentView:(id)a3
{
  v8 = a3;
  v4 = [(UIView *)self traitCollection];
  v5 = _UIContextMenuGetPlatformMetrics([v4 userInterfaceIdiom]);

  v6 = [v5 floatingContentViewConfigurationProvider];
  v7 = v6;
  if (v6)
  {
    (*(v6 + 16))(v6, v8);
  }
}

@end
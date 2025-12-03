@interface _UIContextMenuCell
- (BOOL)_allowsHorizontalFocusMovement;
- (_UIContextMenuCell)initWithFrame:(CGRect)frame;
- (int64_t)focusItemDeferralMode;
- (void)_configureBackgroundView:(id)view withContentShape:(id)shape;
- (void)_configureFocusedFloatingContentView:(id)view;
- (void)_setTypeSelectState:(int64_t)state;
- (void)_updateStateWithAnimationCoordinator:(id)coordinator animated:(BOOL)animated;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setDirectionalLayoutMargins:(NSDirectionalEdgeInsets)margins;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setHighlighted:(BOOL)highlighted forHover:(BOOL)hover;
- (void)setSelected:(BOOL)selected;
@end

@implementation _UIContextMenuCell

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = _UIContextMenuCell;
  [(UICollectionViewCell *)&v9 layoutSubviews];
  _backgroundShape = [(_UIContextMenuCell *)self _backgroundShape];
  if (_backgroundShape)
  {
    selectedBackgroundView = +[UIShape rectShape];
    v5 = _backgroundShape;
    v6 = v5;
    if (selectedBackgroundView == v5)
    {

LABEL_12:
      goto LABEL_13;
    }

    if (selectedBackgroundView)
    {
      v7 = [selectedBackgroundView isEqual:v5];

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
      backgroundView = [(UICollectionViewCell *)self backgroundView];
      [(_UIContextMenuCell *)self _configureBackgroundView:backgroundView withContentShape:v6];
    }

    if ([(UICollectionViewCell *)self isSelected])
    {
      selectedBackgroundView = [(UICollectionViewCell *)self selectedBackgroundView];
      [(_UIContextMenuCell *)self _configureBackgroundView:selectedBackgroundView withContentShape:v6];
      goto LABEL_12;
    }
  }

LABEL_13:
}

- (_UIContextMenuCell)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = _UIContextMenuCell;
  v3 = [(UICollectionViewCell *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setFocusEffect:0];
    traitCollection = [(UIView *)v4 traitCollection];
    v6 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);

    -[UICollectionViewCell _setFocusStyle:](v4, "_setFocusStyle:", [v6 enableFloatingFocusStyle]);
  }

  return v4;
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v14.receiver = self;
  v14.super_class = _UIContextMenuCell;
  [(UICollectionViewCell *)&v14 setSelected:?];
  [(_UIContextMenuCell *)self _updateStateWithAnimationCoordinator:0 animated:+[UIView _isInAnimationBlock]];
  if (selectedCopy)
  {
    selectedBackgroundView = [(UICollectionViewCell *)self selectedBackgroundView];
    if (!selectedBackgroundView)
    {
      selectedBackgroundView = objc_alloc_init(UIVisualEffectView);
      [(UICollectionViewCell *)self setSelectedBackgroundView:selectedBackgroundView];
    }

    actionView = [(_UIContextMenuCell *)self actionView];
    contentShape = [actionView contentShape];
    v8 = contentShape;
    if (contentShape)
    {
      v9 = contentShape;
    }

    else
    {
      v9 = +[UIShape rectShape];
    }

    v10 = v9;

    _backgroundShape = [(_UIContextMenuCell *)self _backgroundShape];
    v12 = [_backgroundShape isEqual:v10] ^ 1;

    if ([(_UIContextMenuCell *)self _selectedBackgroundViewNeedsUpdate]|| v12)
    {
      [(_UIContextMenuCell *)self set_backgroundShape:v10];
      [(_UIContextMenuCell *)self _configureBackgroundView:selectedBackgroundView withContentShape:v10];
      [(_UIContextMenuCell *)self set_highlightBackgroundViewNeedsUpdate:v12];
      [(_UIContextMenuCell *)self set_selectedBackgroundViewNeedsUpdate:0];
    }
  }

  selectedBackgroundView2 = [(UICollectionViewCell *)self selectedBackgroundView];
  [selectedBackgroundView2 setHidden:!selectedCopy];
}

- (void)setHighlighted:(BOOL)highlighted forHover:(BOOL)hover
{
  hoverCopy = hover;
  highlightedCopy = highlighted;
  actionView = [(_UIContextMenuCell *)self actionView];
  shouldHighlightOnHover = [actionView shouldHighlightOnHover];

  [(_UIContextMenuCell *)self setHighlighted:(shouldHighlightOnHover | ~hoverCopy) & highlightedCopy];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v14.receiver = self;
  v14.super_class = _UIContextMenuCell;
  [(UICollectionViewCell *)&v14 setHighlighted:?];
  [(_UIContextMenuCell *)self _updateStateWithAnimationCoordinator:0 animated:+[UIView _isInAnimationBlock]];
  if (highlightedCopy)
  {
    backgroundView = [(UICollectionViewCell *)self backgroundView];
    if (!backgroundView)
    {
      backgroundView = objc_alloc_init(UIVisualEffectView);
      [(UICollectionViewCell *)self setBackgroundView:backgroundView];
    }

    actionView = [(_UIContextMenuCell *)self actionView];
    contentShape = [actionView contentShape];
    v8 = contentShape;
    if (contentShape)
    {
      v9 = contentShape;
    }

    else
    {
      v9 = +[UIShape rectShape];
    }

    v10 = v9;

    _backgroundShape = [(_UIContextMenuCell *)self _backgroundShape];
    v12 = [_backgroundShape isEqual:v10] ^ 1;

    if ([(_UIContextMenuCell *)self _highlightBackgroundViewNeedsUpdate]|| v12)
    {
      [(_UIContextMenuCell *)self set_backgroundShape:v10];
      [(_UIContextMenuCell *)self _configureBackgroundView:backgroundView withContentShape:v10];
      [(_UIContextMenuCell *)self set_highlightBackgroundViewNeedsUpdate:0];
      [(_UIContextMenuCell *)self set_selectedBackgroundViewNeedsUpdate:v12];
    }
  }

  backgroundView2 = [(UICollectionViewCell *)self backgroundView];
  [backgroundView2 setHidden:!highlightedCopy];
}

- (void)_setTypeSelectState:(int64_t)state
{
  v6.receiver = self;
  v6.super_class = _UIContextMenuCell;
  [(UICollectionViewCell *)&v6 _setTypeSelectState:?];
  actionView = [(_UIContextMenuCell *)self actionView];
  [actionView setTypeSelectState:state];
}

- (void)_configureBackgroundView:(id)view withContentShape:(id)shape
{
  shapeCopy = shape;
  viewCopy = view;
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];
  v18 = shapeCopy;
  v10 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
  menuHighlightBackgroundDescriptorProvider = [v10 menuHighlightBackgroundDescriptorProvider];
  v12 = (menuHighlightBackgroundDescriptorProvider)[2](menuHighlightBackgroundDescriptorProvider, v18);

  [(UIView *)self bounds];
  [viewCopy setFrame:?];
  effect = [v12 effect];
  [viewCopy setEffect:effect];

  backgroundColor = [v12 backgroundColor];
  [viewCopy setBackgroundColor:backgroundColor];

  contentBackgroundColor = [v12 contentBackgroundColor];
  contentView = [viewCopy contentView];
  [contentView setBackgroundColor:contentBackgroundColor];

  backgroundShape = [v12 backgroundShape];
  [viewCopy _applyShape:backgroundShape];
}

- (void)setDirectionalLayoutMargins:(NSDirectionalEdgeInsets)margins
{
  trailing = margins.trailing;
  bottom = margins.bottom;
  leading = margins.leading;
  top = margins.top;
  v9.receiver = self;
  v9.super_class = _UIContextMenuCell;
  [(UIView *)&v9 setDirectionalLayoutMargins:?];
  contentView = [(UICollectionViewCell *)self contentView];
  [contentView setDirectionalLayoutMargins:{top, leading, bottom, trailing}];
}

- (void)prepareForReuse
{
  actionView = [(_UIContextMenuCell *)self actionView];
  [actionView prepareForReuse];

  v4.receiver = self;
  v4.super_class = _UIContextMenuCell;
  [(UICollectionViewCell *)&v4 prepareForReuse];
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v7.receiver = self;
  v7.super_class = _UIContextMenuCell;
  coordinatorCopy = coordinator;
  [(UIView *)&v7 didUpdateFocusInContext:context withAnimationCoordinator:coordinatorCopy];
  [(_UIContextMenuCell *)self _updateStateWithAnimationCoordinator:coordinatorCopy animated:1, v7.receiver, v7.super_class];
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
  actionView = [(_UIContextMenuCell *)self actionView];
  v3 = ([actionView options] >> 7) & 1;

  return v3;
}

- (void)_updateStateWithAnimationCoordinator:(id)coordinator animated:(BOOL)animated
{
  animatedCopy = animated;
  coordinatorCopy = coordinator;
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

  isHighlighted = [(UICollectionViewCell *)self isHighlighted];
  actionView = [(_UIContextMenuCell *)self actionView];
  [actionView setControlState:v7 | isHighlighted withAnimationCoordinator:coordinatorCopy];

  _focusedFloatingContentView = [(UICollectionViewCell *)self _focusedFloatingContentView];
  if (_focusedFloatingContentView)
  {
    v11 = [UIControl _primaryStateForState:v7 | isHighlighted];
    traitCollection = [(UIView *)self traitCollection];
    v13 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);
    wantsFloatingContentViewAsBackground = [v13 wantsFloatingContentViewAsBackground];

    if (wantsFloatingContentViewAsBackground)
    {
      actionView2 = [(_UIContextMenuCell *)self actionView];
      _primaryBackgroundColorForCurrentState = [actionView2 _primaryBackgroundColorForCurrentState];
      [_focusedFloatingContentView setBackgroundColor:_primaryBackgroundColorForCurrentState forState:v11];
    }

    if (coordinatorCopy)
    {
      [_focusedFloatingContentView setControlState:v11 withAnimationCoordinator:coordinatorCopy];
    }

    else
    {
      [_focusedFloatingContentView setControlState:v11 animated:animatedCopy];
    }
  }
}

- (void)_configureFocusedFloatingContentView:(id)view
{
  viewCopy = view;
  traitCollection = [(UIView *)self traitCollection];
  v5 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);

  floatingContentViewConfigurationProvider = [v5 floatingContentViewConfigurationProvider];
  v7 = floatingContentViewConfigurationProvider;
  if (floatingContentViewConfigurationProvider)
  {
    (*(floatingContentViewConfigurationProvider + 16))(floatingContentViewConfigurationProvider, viewCopy);
  }
}

@end
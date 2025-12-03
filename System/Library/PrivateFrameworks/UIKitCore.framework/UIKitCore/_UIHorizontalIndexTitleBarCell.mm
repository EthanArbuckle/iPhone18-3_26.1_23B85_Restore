@interface _UIHorizontalIndexTitleBarCell
+ (id)cellFont;
- (BOOL)_isAnotherIndexTitleCellFocused;
- (_UIHorizontalIndexTitleBarCell)initWithFrame:(CGRect)frame;
- (double)_maxCellWidth;
- (id)_backgroundEffectsView;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)_updateColors;
- (void)_updateLegacyColors;
- (void)_updateModernColors;
- (void)_updateTransforms;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setSelected:(BOOL)selected;
- (void)traitCollectionDidChange:(id)change;
- (void)updateForEntry:(id)entry;
@end

@implementation _UIHorizontalIndexTitleBarCell

+ (id)cellFont
{
  if (qword_1ED49A6C8 != -1)
  {
    dispatch_once(&qword_1ED49A6C8, &__block_literal_global_236);
  }

  v3 = _MergedGlobals_5_11;

  return v3;
}

- (_UIHorizontalIndexTitleBarCell)initWithFrame:(CGRect)frame
{
  v58[6] = *MEMORY[0x1E69E9840];
  v57.receiver = self;
  v57.super_class = _UIHorizontalIndexTitleBarCell;
  v3 = [(UICollectionViewCell *)&v57 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    contentView = [(UICollectionViewCell *)v3 contentView];
    v6 = _UISolariumEnabled();
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = off_1E70EADE0;
    if (!v6)
    {
      v8 = off_1E70EAD78;
    }

    v9 = objc_alloc(*v8);
    [(UIView *)v4 bounds];
    v10 = [v9 initWithFrame:?];
    v11 = OBJC_IVAR____UIHorizontalIndexTitleBarCell__roundedCornersVisualEffectView[v7];
    v12 = *(&v4->super.super.super.super.super.isa + v11);
    *(&v4->super.super.super.super.super.isa + v11) = v10;

    _backgroundEffectsView = [(_UIHorizontalIndexTitleBarCell *)v4 _backgroundEffectsView];
    if (_UISolariumEnabled())
    {
      v14 = 33.0;
    }

    else
    {
      v14 = 10.0;
    }

    layer = [_backgroundEffectsView layer];
    [layer setCornerRadius:v14];

    layer2 = [_backgroundEffectsView layer];
    [layer2 setMasksToBounds:1];

    v56 = _backgroundEffectsView;
    [_backgroundEffectsView setAutoresizingMask:18];
    [contentView addSubview:_backgroundEffectsView];
    v17 = [UILabel alloc];
    [(UIView *)v4 bounds];
    v18 = [(UILabel *)v17 initWithFrame:?];
    sizingLabel = v4->_sizingLabel;
    v4->_sizingLabel = v18;

    v20 = +[UIColor clearColor];
    [(UILabel *)v4->_sizingLabel setTextColor:v20];

    [(UILabel *)v4->_sizingLabel setTextAlignment:1];
    v21 = +[_UIHorizontalIndexTitleBarCell cellFont];
    [(UILabel *)v4->_sizingLabel setFont:v21];

    [contentView addSubview:v4->_sizingLabel];
    [(UIView *)v4->_sizingLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = [UILabel alloc];
    [(UIView *)v4 bounds];
    v23 = [(UILabel *)v22 initWithFrame:?];
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v23;

    [(UILabel *)v4->_titleLabel setTextAlignment:1];
    v25 = +[_UIHorizontalIndexTitleBarCell cellFont];
    [(UILabel *)v4->_titleLabel setFont:v25];

    v26 = contentView;
    [contentView addSubview:v4->_titleLabel];
    [(UIView *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v49 = MEMORY[0x1E69977A0];
    leftAnchor = [(UIView *)v4->_sizingLabel leftAnchor];
    v55 = leftAnchor;
    leftAnchor2 = [contentView leftAnchor];
    v54 = leftAnchor2;
    v29 = _UISolariumEnabled();
    v30 = 14.0;
    if (v29)
    {
      v30 = 30.0;
    }

    v53 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:v30];
    v58[0] = v53;
    topAnchor = [(UIView *)v4->_sizingLabel topAnchor];
    topAnchor2 = [contentView topAnchor];
    v50 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v58[1] = v50;
    rightAnchor = [(UIView *)v4->_sizingLabel rightAnchor];
    v48 = rightAnchor;
    rightAnchor2 = [contentView rightAnchor];
    v47 = rightAnchor2;
    v33 = _UISolariumEnabled();
    v34 = -14.0;
    if (v33)
    {
      v34 = -30.0;
    }

    v46 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:v34];
    v58[2] = v46;
    bottomAnchor = [(UIView *)v4->_sizingLabel bottomAnchor];
    bottomAnchor2 = [contentView bottomAnchor];
    v35 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v58[3] = v35;
    centerXAnchor = [(UIView *)v4->_titleLabel centerXAnchor];
    centerXAnchor2 = [v26 centerXAnchor];
    v38 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v58[4] = v38;
    centerYAnchor = [(UIView *)v4->_titleLabel centerYAnchor];
    centerYAnchor2 = [v26 centerYAnchor];
    v41 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v58[5] = v41;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:6];
    [v49 activateConstraints:v42];

    [(_UIHorizontalIndexTitleBarCell *)v4 _updateColors];
  }

  return v4;
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  [(_UIHorizontalIndexTitleBarCell *)self _maxCellWidth];
  v6 = v5;
  v11.receiver = self;
  v11.super_class = _UIHorizontalIndexTitleBarCell;
  v7 = [(UICollectionReusableView *)&v11 preferredLayoutAttributesFittingAttributes:attributesCopy];

  v8 = [v7 copy];
  [v8 size];
  if (v6 >= v9)
  {
    v6 = v9;
  }

  [v8 size];
  [v8 setSize:v6];

  return v8;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = _UIHorizontalIndexTitleBarCell;
  [(UICollectionViewCell *)&v5 layoutSubviews];
  contentView = [(UICollectionViewCell *)self contentView];
  _backgroundEffectsView = [(_UIHorizontalIndexTitleBarCell *)self _backgroundEffectsView];
  [contentView bounds];
  [_backgroundEffectsView setBounds:?];
  [contentView center];
  [_backgroundEffectsView setCenter:?];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = _UIHorizontalIndexTitleBarCell;
  [(UICollectionViewCell *)&v5 prepareForReuse];
  [(_UIHorizontalIndexTitleBarCell *)self setEntry:0];
  titleLabel = [(_UIHorizontalIndexTitleBarCell *)self titleLabel];
  [titleLabel setText:0];

  sizingLabel = [(_UIHorizontalIndexTitleBarCell *)self sizingLabel];
  [sizingLabel setText:0];

  [(_UIHorizontalIndexTitleBarCell *)self _updateColors];
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = _UIHorizontalIndexTitleBarCell;
  changeCopy = change;
  [(UICollectionViewCell *)&v6 traitCollectionDidChange:changeCopy];
  v5 = [(UIView *)self traitCollection:v6.receiver];
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v8.receiver = self;
  v8.super_class = _UIHorizontalIndexTitleBarCell;
  [(UIView *)&v8 didUpdateFocusInContext:context withAnimationCoordinator:coordinatorCopy];
  if (_UISolariumEnabled())
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __83___UIHorizontalIndexTitleBarCell_didUpdateFocusInContext_withAnimationCoordinator___block_invoke;
    v7[3] = &unk_1E70F3590;
    v7[4] = self;
    [coordinatorCopy addCoordinatedAnimations:v7 completion:0];
  }

  else
  {
    [(_UIHorizontalIndexTitleBarCell *)self _updateColors];
  }
}

- (void)setSelected:(BOOL)selected
{
  v4.receiver = self;
  v4.super_class = _UIHorizontalIndexTitleBarCell;
  [(UICollectionViewCell *)&v4 setSelected:selected];
  [(_UIHorizontalIndexTitleBarCell *)self _updateColors];
}

- (void)updateForEntry:(id)entry
{
  entryCopy = entry;
  [(_UIHorizontalIndexTitleBarCell *)self setEntry:entryCopy];
  title = [entryCopy title];
  titleLabel = [(_UIHorizontalIndexTitleBarCell *)self titleLabel];
  [titleLabel setText:title];

  title2 = [entryCopy title];

  sizingLabel = [(_UIHorizontalIndexTitleBarCell *)self sizingLabel];
  [sizingLabel setText:title2];
}

- (id)_backgroundEffectsView
{
  if (_UISolariumEnabled())
  {
    [(_UIHorizontalIndexTitleBarCell *)self roundedCornersVisualEffectView];
  }

  else
  {
    [(_UIHorizontalIndexTitleBarCell *)self roundedCornersBackground];
  }
  v3 = ;

  return v3;
}

- (double)_maxCellWidth
{
  _collectionView = [(UICollectionReusableView *)self _collectionView];
  v4 = 760.0;
  if (_collectionView)
  {
    v5 = _collectionView;
    _collectionView2 = [(UICollectionReusableView *)self _collectionView];
    [_collectionView2 frame];
    v8 = v7;

    if (v8 != 0.0)
    {
      _collectionView3 = [(UICollectionReusableView *)self _collectionView];
      [_collectionView3 frame];
      v11 = v10;

      v4 = v11 * 0.5 + -200.0;
    }
  }

  result = 200.0;
  if (v4 >= 200.0)
  {
    return v4;
  }

  return result;
}

- (BOOL)_isAnotherIndexTitleCellFocused
{
  _focusSystem = [(UIView *)self _focusSystem];
  focusedItem = [_focusSystem focusedItem];
  v5 = _UIFocusEnvironmentContainingView(focusedItem);

  if (v5)
  {
    objc_opt_class();
    v6 = 0;
    if ((objc_opt_isKindOfClass() & 1) != 0 && v5 != self)
    {
      _collectionView = [(UICollectionReusableView *)v5 _collectionView];
      _collectionView2 = [(UICollectionReusableView *)self _collectionView];
      v6 = _collectionView == _collectionView2;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_updateTransforms
{
  if (_UISolariumEnabled())
  {
    _backgroundEffectsView = [(_UIHorizontalIndexTitleBarCell *)self _backgroundEffectsView];
    if ([(UICollectionViewCell *)self isFocused])
    {
      [_backgroundEffectsView bounds];
      v5 = v4;
      v7 = v6;
      v8 = _UISolariumEnabled();
      v9 = 0.0;
      if (v8)
      {
        v9 = 8.0;
      }

      v10 = 1.0;
      v11 = 1.0;
      if (v5 > 0.0)
      {
        v11 = (v5 + v9) / v5;
      }

      if (v7 > 0.0)
      {
        v10 = (v7 + v9) / v7;
      }

      CGAffineTransformMakeScale(&v20, v11, v10);
      v19 = v20;
      [_backgroundEffectsView setTransform:&v19];
      CGAffineTransformMakeScale(&v18, v11, v11);
      titleLabel = [(_UIHorizontalIndexTitleBarCell *)self titleLabel];
      v13 = titleLabel;
      *&v19.a = *&v18.a;
      *&v19.c = *&v18.c;
      v14 = *&v18.tx;
    }

    else
    {
      v16 = *(MEMORY[0x1E695EFD0] + 16);
      *&v19.a = *MEMORY[0x1E695EFD0];
      v17 = *&v19.a;
      *&v19.c = v16;
      *&v19.tx = *(MEMORY[0x1E695EFD0] + 32);
      v15 = *&v19.tx;
      [_backgroundEffectsView setTransform:&v19];
      titleLabel = [(_UIHorizontalIndexTitleBarCell *)self titleLabel];
      v13 = titleLabel;
      *&v19.a = v17;
      *&v19.c = v16;
      v14 = v15;
    }

    *&v19.tx = v14;
    [titleLabel setTransform:&v19];
  }
}

- (void)_updateColors
{
  if (_UISolariumEnabled())
  {

    [(_UIHorizontalIndexTitleBarCell *)self _updateModernColors];
  }

  else
  {

    [(_UIHorizontalIndexTitleBarCell *)self _updateLegacyColors];
  }
}

- (void)_updateModernColors
{
  isFocused = [(UICollectionViewCell *)self isFocused];
  if ([(UICollectionViewCell *)self isSelected])
  {
    v4 = ![(_UIHorizontalIndexTitleBarCell *)self _isAnotherIndexTitleCellFocused];
  }

  else
  {
    v4 = 0;
  }

  traitCollection = [(UIView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (isFocused)
  {
    v7 = +[UIColor blackColor];
    titleLabel = [(_UIHorizontalIndexTitleBarCell *)self titleLabel];
    [titleLabel setTextColor:v7];

    v9 = 4019;
LABEL_11:
    v13 = [UIBlurEffect effectWithStyle:v9];
    roundedCornersVisualEffectView = [(_UIHorizontalIndexTitleBarCell *)self roundedCornersVisualEffectView];
    [roundedCornersVisualEffectView setEffect:v13];
    v15 = 1.0;
    goto LABEL_13;
  }

  if (v4)
  {
    if (userInterfaceStyle == 2)
    {
      v10 = 12;
    }

    else
    {
      v10 = 17;
    }

    v11 = +[UIColor labelColor];
    titleLabel2 = [(_UIHorizontalIndexTitleBarCell *)self titleLabel];
    [titleLabel2 setTextColor:v11];

    v9 = v10;
    goto LABEL_11;
  }

  v13 = +[UIColor secondaryLabelColor];
  roundedCornersVisualEffectView = [(_UIHorizontalIndexTitleBarCell *)self titleLabel];
  [roundedCornersVisualEffectView setTextColor:v13];
  v15 = 0.0;
LABEL_13:

  roundedCornersVisualEffectView2 = [(_UIHorizontalIndexTitleBarCell *)self roundedCornersVisualEffectView];
  [roundedCornersVisualEffectView2 setAlpha:v15];
}

- (void)_updateLegacyColors
{
  isFocused = [(UICollectionViewCell *)self isFocused];
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    v6 = 1.0;
    v7 = [UIColor colorWithWhite:1.0 alpha:0.3];
    v8 = 0.4;
    v9 = 1.0;
  }

  else
  {
    v6 = 0.0;
    v7 = [UIColor colorWithWhite:0.0 alpha:0.4];
    v8 = 0.6;
    v9 = 0.0;
  }

  v10 = [UIColor colorWithWhite:v9 alpha:v8];
  v18 = [UIColor colorWithWhite:v6 alpha:1.0];
  roundedCornersBackground = [(_UIHorizontalIndexTitleBarCell *)self roundedCornersBackground];
  [roundedCornersBackground setBackgroundColor:v7];

  v12 = !isFocused;
  roundedCornersBackground2 = [(_UIHorizontalIndexTitleBarCell *)self roundedCornersBackground];
  [roundedCornersBackground2 setHidden:v12];

  if (v12)
  {
    if ([(UICollectionViewCell *)self isSelected]&& ![(_UIHorizontalIndexTitleBarCell *)self _isAnotherIndexTitleCellFocused])
    {
      titleLabel = [(_UIHorizontalIndexTitleBarCell *)self titleLabel];
      v14 = titleLabel;
      v17 = v18;
    }

    else
    {
      titleLabel = [(_UIHorizontalIndexTitleBarCell *)self titleLabel];
      v14 = titleLabel;
      v17 = v10;
    }

    [titleLabel setTextColor:v17];
  }

  else
  {
    v14 = +[UIColor whiteColor];
    titleLabel2 = [(_UIHorizontalIndexTitleBarCell *)self titleLabel];
    [titleLabel2 setTextColor:v14];
  }
}

@end
@interface _UIKeyShortcutHUDCell
- (BOOL)isBackgroundVisible;
- (_UIKeyShortcutHUDCell)initWithFrame:(CGRect)a3;
- (id)configurationState;
- (id)defaultContentConfiguration;
- (int64_t)_backgroundStyleForState:(id)a3;
- (void)prepareForReuse;
- (void)setCategoryVisible:(BOOL)a3;
- (void)setDrawsBackground:(BOOL)a3;
- (void)setFlashing:(BOOL)a3;
- (void)updateConfigurationUsingState:(id)a3;
@end

@implementation _UIKeyShortcutHUDCell

- (_UIKeyShortcutHUDCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _UIKeyShortcutHUDCell;
  v3 = [(UICollectionViewListCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UICollectionViewCell *)v3 setAutomaticallyUpdatesContentConfiguration:0];
    [(UICollectionViewCell *)v4 setAutomaticallyUpdatesBackgroundConfiguration:0];
  }

  return v4;
}

- (id)configurationState
{
  v3 = [_UIKeyShortcutHUDCellConfigurationState alloc];
  v7.receiver = self;
  v7.super_class = _UIKeyShortcutHUDCell;
  v4 = [(UICollectionViewCell *)&v7 configurationState];
  v5 = [(_UIKeyShortcutHUDCellConfigurationState *)v3 initWithCellConfigurationState:v4];

  [(_UIKeyShortcutHUDCellConfigurationState *)v5 setFlashing:[(_UIKeyShortcutHUDCell *)self isFlashing]];
  [(_UIKeyShortcutHUDCellConfigurationState *)v5 setCategoryVisible:[(_UIKeyShortcutHUDCell *)self isCategoryVisible]];
  [(_UIKeyShortcutHUDCellConfigurationState *)v5 setDrawsBackground:[(_UIKeyShortcutHUDCell *)self drawsBackground]];

  return v5;
}

- (void)setFlashing:(BOOL)a3
{
  if (self->_flashing != a3)
  {
    self->_flashing = a3;
    [(UICollectionViewCell *)self setNeedsUpdateConfiguration];
  }
}

- (void)setCategoryVisible:(BOOL)a3
{
  if (self->_categoryVisible != a3)
  {
    self->_categoryVisible = a3;
    [(UICollectionViewCell *)self setNeedsUpdateConfiguration];
  }
}

- (void)setDrawsBackground:(BOOL)a3
{
  if (self->_drawsBackground != a3)
  {
    self->_drawsBackground = a3;
    [(UICollectionViewCell *)self setNeedsUpdateConfiguration];
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = _UIKeyShortcutHUDCell;
  [(UICollectionViewListCell *)&v3 prepareForReuse];
  self->_flashing = 0;
  self->_categoryVisible = 0;
  self->_drawsBackground = 0;
}

- (BOOL)isBackgroundVisible
{
  v2 = self;
  v3 = [(_UIKeyShortcutHUDCell *)self configurationState];
  LOBYTE(v2) = [(_UIKeyShortcutHUDCell *)v2 _backgroundStyleForState:v3]!= 3;

  return v2;
}

- (int64_t)_backgroundStyleForState:(id)a3
{
  v3 = a3;
  if (([v3 isFlashing] & 1) != 0 || (objc_msgSend(v3, "isHighlighted") & 1) != 0 || objc_msgSend(v3, "isSelected"))
  {
    if ([v3 isFlashing] & 1) == 0 && objc_msgSend(v3, "isHighlighted") && (objc_msgSend(v3, "isSelected"))
    {
      v4 = 2;
    }

    else
    {
      v4 = ![v3 isFlashing] || (objc_msgSend(v3, "isHighlighted") & 1) == 0 && (objc_msgSend(v3, "isSelected") & 1) == 0;
    }
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

- (id)defaultContentConfiguration
{
  v3 = +[UIKeyShortcutHUDMetrics currentMetrics];
  v13.receiver = self;
  v13.super_class = _UIKeyShortcutHUDCell;
  v4 = [(UICollectionViewListCell *)&v13 defaultContentConfiguration];
  v5 = [v4 textProperties];
  v6 = [v3 standardHUDFont];
  [v5 setFont:v6];

  [v5 setAllowsDefaultTighteningForTruncation:1];
  [v5 setAdjustsFontSizeToFitWidth:1];
  [v5 setMinimumScaleFactor:0.5];
  v7 = [v3 standardHUDTextColor];
  [v5 setColor:v7];

  [v5 setNumberOfLines:1];
  [v3 shortcutTitleToSubtitleVerticalPadding];
  [v4 setTextToSecondaryTextVerticalPadding:?];
  v8 = [v4 secondaryTextProperties];
  v9 = [v3 shortcutSubtitleFont];
  [v8 setFont:v9];

  [v8 setAllowsDefaultTighteningForTruncation:1];
  [v8 setAdjustsFontSizeToFitWidth:1];
  [v8 setMinimumScaleFactor:0.5];
  v10 = [v3 shortcutSubtitleTextColor];
  [v8 setColor:v10];

  [v8 setNumberOfLines:1];
  [v3 menuCellHorizontalContentMargin];
  [v4 setDirectionalLayoutMargins:{0.0, v11, 0.0, v11}];

  return v4;
}

- (void)updateConfigurationUsingState:(id)a3
{
  v12 = a3;
  [v12 setFocused:0];
  v4 = +[UIBackgroundConfiguration clearConfiguration];
  v5 = [v4 updatedConfigurationForState:v12];

  if ([v12 drawsBackground])
  {
    v6 = +[UIColor blackColor];
LABEL_3:
    v7 = +[UIColor clearColor];
LABEL_4:
    v8 = v7;
    [v5 setBackgroundColor:v7];
LABEL_5:

    goto LABEL_6;
  }

  v9 = [(_UIKeyShortcutHUDCell *)self _backgroundStyleForState:v12];
  v6 = +[UIColor blackColor];
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v8 = +[UIColor tertiarySystemFillColor];
      [v8 alphaComponent];
      v11 = [v8 colorWithAlphaComponent:v10 * 0.7];
      [v5 setBackgroundColor:v11];

      goto LABEL_5;
    }

    if (v9 == 3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (!v9)
    {
      v7 = +[UIColor systemFillColor];
      goto LABEL_4;
    }

    if (v9 == 1)
    {
      v7 = +[UIColor tertiarySystemFillColor];
      goto LABEL_4;
    }
  }

LABEL_6:
  [(UICollectionViewCell *)self setBackgroundConfiguration:v5];
}

@end
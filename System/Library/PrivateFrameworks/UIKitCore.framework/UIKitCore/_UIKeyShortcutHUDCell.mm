@interface _UIKeyShortcutHUDCell
- (BOOL)isBackgroundVisible;
- (_UIKeyShortcutHUDCell)initWithFrame:(CGRect)frame;
- (id)configurationState;
- (id)defaultContentConfiguration;
- (int64_t)_backgroundStyleForState:(id)state;
- (void)prepareForReuse;
- (void)setCategoryVisible:(BOOL)visible;
- (void)setDrawsBackground:(BOOL)background;
- (void)setFlashing:(BOOL)flashing;
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation _UIKeyShortcutHUDCell

- (_UIKeyShortcutHUDCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _UIKeyShortcutHUDCell;
  v3 = [(UICollectionViewListCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  configurationState = [(UICollectionViewCell *)&v7 configurationState];
  v5 = [(_UIKeyShortcutHUDCellConfigurationState *)v3 initWithCellConfigurationState:configurationState];

  [(_UIKeyShortcutHUDCellConfigurationState *)v5 setFlashing:[(_UIKeyShortcutHUDCell *)self isFlashing]];
  [(_UIKeyShortcutHUDCellConfigurationState *)v5 setCategoryVisible:[(_UIKeyShortcutHUDCell *)self isCategoryVisible]];
  [(_UIKeyShortcutHUDCellConfigurationState *)v5 setDrawsBackground:[(_UIKeyShortcutHUDCell *)self drawsBackground]];

  return v5;
}

- (void)setFlashing:(BOOL)flashing
{
  if (self->_flashing != flashing)
  {
    self->_flashing = flashing;
    [(UICollectionViewCell *)self setNeedsUpdateConfiguration];
  }
}

- (void)setCategoryVisible:(BOOL)visible
{
  if (self->_categoryVisible != visible)
  {
    self->_categoryVisible = visible;
    [(UICollectionViewCell *)self setNeedsUpdateConfiguration];
  }
}

- (void)setDrawsBackground:(BOOL)background
{
  if (self->_drawsBackground != background)
  {
    self->_drawsBackground = background;
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
  selfCopy = self;
  configurationState = [(_UIKeyShortcutHUDCell *)self configurationState];
  LOBYTE(selfCopy) = [(_UIKeyShortcutHUDCell *)selfCopy _backgroundStyleForState:configurationState]!= 3;

  return selfCopy;
}

- (int64_t)_backgroundStyleForState:(id)state
{
  stateCopy = state;
  if (([stateCopy isFlashing] & 1) != 0 || (objc_msgSend(stateCopy, "isHighlighted") & 1) != 0 || objc_msgSend(stateCopy, "isSelected"))
  {
    if ([stateCopy isFlashing] & 1) == 0 && objc_msgSend(stateCopy, "isHighlighted") && (objc_msgSend(stateCopy, "isSelected"))
    {
      v4 = 2;
    }

    else
    {
      v4 = ![stateCopy isFlashing] || (objc_msgSend(stateCopy, "isHighlighted") & 1) == 0 && (objc_msgSend(stateCopy, "isSelected") & 1) == 0;
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
  defaultContentConfiguration = [(UICollectionViewListCell *)&v13 defaultContentConfiguration];
  textProperties = [defaultContentConfiguration textProperties];
  standardHUDFont = [v3 standardHUDFont];
  [textProperties setFont:standardHUDFont];

  [textProperties setAllowsDefaultTighteningForTruncation:1];
  [textProperties setAdjustsFontSizeToFitWidth:1];
  [textProperties setMinimumScaleFactor:0.5];
  standardHUDTextColor = [v3 standardHUDTextColor];
  [textProperties setColor:standardHUDTextColor];

  [textProperties setNumberOfLines:1];
  [v3 shortcutTitleToSubtitleVerticalPadding];
  [defaultContentConfiguration setTextToSecondaryTextVerticalPadding:?];
  secondaryTextProperties = [defaultContentConfiguration secondaryTextProperties];
  shortcutSubtitleFont = [v3 shortcutSubtitleFont];
  [secondaryTextProperties setFont:shortcutSubtitleFont];

  [secondaryTextProperties setAllowsDefaultTighteningForTruncation:1];
  [secondaryTextProperties setAdjustsFontSizeToFitWidth:1];
  [secondaryTextProperties setMinimumScaleFactor:0.5];
  shortcutSubtitleTextColor = [v3 shortcutSubtitleTextColor];
  [secondaryTextProperties setColor:shortcutSubtitleTextColor];

  [secondaryTextProperties setNumberOfLines:1];
  [v3 menuCellHorizontalContentMargin];
  [defaultContentConfiguration setDirectionalLayoutMargins:{0.0, v11, 0.0, v11}];

  return defaultContentConfiguration;
}

- (void)updateConfigurationUsingState:(id)state
{
  stateCopy = state;
  [stateCopy setFocused:0];
  v4 = +[UIBackgroundConfiguration clearConfiguration];
  v5 = [v4 updatedConfigurationForState:stateCopy];

  if ([stateCopy drawsBackground])
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

  v9 = [(_UIKeyShortcutHUDCell *)self _backgroundStyleForState:stateCopy];
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
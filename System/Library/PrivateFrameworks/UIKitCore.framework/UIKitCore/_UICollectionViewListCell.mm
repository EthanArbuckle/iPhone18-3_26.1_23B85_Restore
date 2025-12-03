@interface _UICollectionViewListCell
- (id)_configurationForListAccessoryType:(int64_t)type;
- (id)_customViewForAccessoryConfiguration:(id)configuration;
- (id)accessoryViewForAxis:(int64_t)axis;
- (int64_t)accessoryTypeForAxis:(int64_t)axis;
- (unint64_t)_maskedCornersForSystemBackgroundView;
- (void)_setAccessoryConfigurations:(id)configurations forAxis:(int64_t)axis;
- (void)_setBackgroundViewConfigurationGrouping:(int64_t)grouping;
- (void)setAccessoryType:(int64_t)type forAxis:(int64_t)axis;
- (void)setAccessoryView:(id)view forAxis:(int64_t)axis;
@end

@implementation _UICollectionViewListCell

- (unint64_t)_maskedCornersForSystemBackgroundView
{
  v4 = self->__backgroundViewConfigurationGrouping - 1;
  if (v4 < 4)
  {
    return qword_18A678F08[v4];
  }

  v7 = v2;
  v8 = v3;
  v6.receiver = self;
  v6.super_class = _UICollectionViewListCell;
  return [(UICollectionViewCell *)&v6 _maskedCornersForSystemBackgroundView];
}

- (void)_setBackgroundViewConfigurationGrouping:(int64_t)grouping
{
  if (self->__backgroundViewConfigurationGrouping != grouping)
  {
    self->__backgroundViewConfigurationGrouping = grouping;
    backgroundConfiguration = [(UICollectionViewCell *)self backgroundConfiguration];
    v6 = backgroundConfiguration;
    if (backgroundConfiguration)
    {
      _backgroundViewConfiguration = backgroundConfiguration;
    }

    else
    {
      _backgroundViewConfiguration = [(UICollectionViewCell *)self _backgroundViewConfiguration];
    }

    v9 = _backgroundViewConfiguration;

    [(UICollectionViewCell *)self _applyBackgroundViewConfiguration:v9 withState:0];
    if ([(UICollectionViewCell *)self isHighlighted]|| [(UICollectionViewCell *)self isSelected])
    {
      _collectionView = [(UICollectionReusableView *)self _collectionView];
      [_collectionView _cellBackgroundChangedForSelectionOrHighlight:self];
    }
  }
}

- (int64_t)accessoryTypeForAxis:(int64_t)axis
{
  firstObject = 0;
  if (axis > 1)
  {
    if (axis == 2)
    {
      leadingEditingAccessoryConfigurations = [(UICollectionViewListCell *)self leadingEditingAccessoryConfigurations];
    }

    else
    {
      v4 = 0;
      if (axis != 3)
      {
        goto LABEL_14;
      }

      leadingEditingAccessoryConfigurations = [(UICollectionViewListCell *)self trailingEditingAccessoryConfigurations];
    }
  }

  else if (axis)
  {
    v4 = 0;
    if (axis != 1)
    {
      goto LABEL_14;
    }

    leadingEditingAccessoryConfigurations = [(UICollectionViewListCell *)self trailingAccessoryConfigurations];
  }

  else
  {
    leadingEditingAccessoryConfigurations = [(UICollectionViewListCell *)self leadingAccessoryConfigurations];
  }

  v6 = leadingEditingAccessoryConfigurations;
  firstObject = [leadingEditingAccessoryConfigurations firstObject];

  if (firstObject && [firstObject _isSystemType])
  {
    v4 = [firstObject _systemType] + 1;
  }

  else
  {
    v4 = 0;
  }

LABEL_14:

  return v4;
}

- (void)setAccessoryType:(int64_t)type forAxis:(int64_t)axis
{
  v11[1] = *MEMORY[0x1E69E9840];
  v7 = [(_UICollectionViewListCell *)self accessoryTypeForAxis:axis];
  if (type)
  {
    v8 = [(_UICollectionViewListCell *)self _configurationForListAccessoryType:type];
    v11[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [(_UICollectionViewListCell *)self _setAccessoryConfigurations:v9 forAxis:axis];
  }

  else if (v7)
  {
    v10 = MEMORY[0x1E695E0F0];

    [(_UICollectionViewListCell *)self _setAccessoryConfigurations:v10 forAxis:axis];
  }
}

- (id)accessoryViewForAxis:(int64_t)axis
{
  v4 = 0;
  if (axis > 1)
  {
    if (axis == 2)
    {
      leadingEditingAccessoryConfigurations = [(UICollectionViewListCell *)self leadingEditingAccessoryConfigurations];
    }

    else
    {
      if (axis != 3)
      {
        goto LABEL_11;
      }

      leadingEditingAccessoryConfigurations = [(UICollectionViewListCell *)self trailingEditingAccessoryConfigurations];
    }
  }

  else if (axis)
  {
    if (axis != 1)
    {
      goto LABEL_11;
    }

    leadingEditingAccessoryConfigurations = [(UICollectionViewListCell *)self trailingAccessoryConfigurations];
  }

  else
  {
    leadingEditingAccessoryConfigurations = [(UICollectionViewListCell *)self leadingAccessoryConfigurations];
  }

  v6 = leadingEditingAccessoryConfigurations;
  firstObject = [leadingEditingAccessoryConfigurations firstObject];
  v4 = [(_UICollectionViewListCell *)self _customViewForAccessoryConfiguration:firstObject];

LABEL_11:

  return v4;
}

- (void)setAccessoryView:(id)view forAxis:(int64_t)axis
{
  v10[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v7 = [(_UICollectionViewListCell *)self accessoryViewForAxis:axis];

  if (viewCopy)
  {
    v8 = [[_UICellAccessoryConfigurationCustomView alloc] initWithCustomView:viewCopy];
    [(_UICellAccessoryConfigurationCustomView *)v8 setMaintainsFixedSize:1];
    v10[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [(_UICollectionViewListCell *)self _setAccessoryConfigurations:v9 forAxis:axis];
  }

  else if (v7)
  {
    [(_UICollectionViewListCell *)self _setAccessoryConfigurations:MEMORY[0x1E695E0F0] forAxis:axis];
  }
}

- (id)_customViewForAccessoryConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = configurationCopy;
  if (configurationCopy && ([configurationCopy _isSystemType] & 1) == 0)
  {
    v6 = objc_opt_class();
    _accessoryConfigurationAsClass(v4, v6);
    customView = [objc_claimAutoreleasedReturnValue() customView];
  }

  else
  {
    customView = 0;
  }

  return customView;
}

- (id)_configurationForListAccessoryType:(int64_t)type
{
  if (type > 3)
  {
    switch(type)
    {
      case 4:
        v6 = _UICellAccessoryConfigurationInsert;
        goto LABEL_15;
      case 5:
        v6 = _UICellAccessoryConfigurationReorder;
        goto LABEL_15;
      case 6:
        v6 = _UICellAccessoryConfigurationMultiselect;
        goto LABEL_15;
    }

LABEL_12:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UICollectionViewListCell.m" lineNumber:2790 description:{@"Invalid _UICollectionViewListCellAccessoryType value: %ld", type}];

    v8 = 0;
    goto LABEL_16;
  }

  if (type == 1)
  {
    v6 = _UICellAccessoryConfigurationDisclosureIndicator;
    goto LABEL_15;
  }

  if (type == 2)
  {
    v6 = _UICellAccessoryConfigurationCheckmark;
    goto LABEL_15;
  }

  if (type != 3)
  {
    goto LABEL_12;
  }

  v6 = _UICellAccessoryConfigurationDelete;
LABEL_15:
  v8 = objc_alloc_init(v6);
LABEL_16:

  return v8;
}

- (void)_setAccessoryConfigurations:(id)configurations forAxis:(int64_t)axis
{
  configurationsCopy = configurations;
  if (axis > 1)
  {
    if (axis == 2)
    {
      v7 = configurationsCopy;
      [(UICollectionViewListCell *)self setLeadingEditingAccessoryConfigurations:configurationsCopy];
    }

    else
    {
      if (axis != 3)
      {
        goto LABEL_11;
      }

      v7 = configurationsCopy;
      [(UICollectionViewListCell *)self setTrailingEditingAccessoryConfigurations:configurationsCopy];
    }
  }

  else if (axis)
  {
    if (axis != 1)
    {
      goto LABEL_11;
    }

    v7 = configurationsCopy;
    [(UICollectionViewListCell *)self setTrailingAccessoryConfigurations:configurationsCopy];
  }

  else
  {
    v7 = configurationsCopy;
    [(UICollectionViewListCell *)self setLeadingAccessoryConfigurations:configurationsCopy];
  }

  configurationsCopy = v7;
LABEL_11:
}

@end
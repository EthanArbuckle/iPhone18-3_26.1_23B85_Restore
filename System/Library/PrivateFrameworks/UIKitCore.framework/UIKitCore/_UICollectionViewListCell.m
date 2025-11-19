@interface _UICollectionViewListCell
- (id)_configurationForListAccessoryType:(int64_t)a3;
- (id)_customViewForAccessoryConfiguration:(id)a3;
- (id)accessoryViewForAxis:(int64_t)a3;
- (int64_t)accessoryTypeForAxis:(int64_t)a3;
- (unint64_t)_maskedCornersForSystemBackgroundView;
- (void)_setAccessoryConfigurations:(id)a3 forAxis:(int64_t)a4;
- (void)_setBackgroundViewConfigurationGrouping:(int64_t)a3;
- (void)setAccessoryType:(int64_t)a3 forAxis:(int64_t)a4;
- (void)setAccessoryView:(id)a3 forAxis:(int64_t)a4;
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

- (void)_setBackgroundViewConfigurationGrouping:(int64_t)a3
{
  if (self->__backgroundViewConfigurationGrouping != a3)
  {
    self->__backgroundViewConfigurationGrouping = a3;
    v5 = [(UICollectionViewCell *)self backgroundConfiguration];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [(UICollectionViewCell *)self _backgroundViewConfiguration];
    }

    v9 = v7;

    [(UICollectionViewCell *)self _applyBackgroundViewConfiguration:v9 withState:0];
    if ([(UICollectionViewCell *)self isHighlighted]|| [(UICollectionViewCell *)self isSelected])
    {
      v8 = [(UICollectionReusableView *)self _collectionView];
      [v8 _cellBackgroundChangedForSelectionOrHighlight:self];
    }
  }
}

- (int64_t)accessoryTypeForAxis:(int64_t)a3
{
  v3 = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v5 = [(UICollectionViewListCell *)self leadingEditingAccessoryConfigurations];
    }

    else
    {
      v4 = 0;
      if (a3 != 3)
      {
        goto LABEL_14;
      }

      v5 = [(UICollectionViewListCell *)self trailingEditingAccessoryConfigurations];
    }
  }

  else if (a3)
  {
    v4 = 0;
    if (a3 != 1)
    {
      goto LABEL_14;
    }

    v5 = [(UICollectionViewListCell *)self trailingAccessoryConfigurations];
  }

  else
  {
    v5 = [(UICollectionViewListCell *)self leadingAccessoryConfigurations];
  }

  v6 = v5;
  v3 = [v5 firstObject];

  if (v3 && [v3 _isSystemType])
  {
    v4 = [v3 _systemType] + 1;
  }

  else
  {
    v4 = 0;
  }

LABEL_14:

  return v4;
}

- (void)setAccessoryType:(int64_t)a3 forAxis:(int64_t)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v7 = [(_UICollectionViewListCell *)self accessoryTypeForAxis:a4];
  if (a3)
  {
    v8 = [(_UICollectionViewListCell *)self _configurationForListAccessoryType:a3];
    v11[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [(_UICollectionViewListCell *)self _setAccessoryConfigurations:v9 forAxis:a4];
  }

  else if (v7)
  {
    v10 = MEMORY[0x1E695E0F0];

    [(_UICollectionViewListCell *)self _setAccessoryConfigurations:v10 forAxis:a4];
  }
}

- (id)accessoryViewForAxis:(int64_t)a3
{
  v4 = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v5 = [(UICollectionViewListCell *)self leadingEditingAccessoryConfigurations];
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_11;
      }

      v5 = [(UICollectionViewListCell *)self trailingEditingAccessoryConfigurations];
    }
  }

  else if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_11;
    }

    v5 = [(UICollectionViewListCell *)self trailingAccessoryConfigurations];
  }

  else
  {
    v5 = [(UICollectionViewListCell *)self leadingAccessoryConfigurations];
  }

  v6 = v5;
  v7 = [v5 firstObject];
  v4 = [(_UICollectionViewListCell *)self _customViewForAccessoryConfiguration:v7];

LABEL_11:

  return v4;
}

- (void)setAccessoryView:(id)a3 forAxis:(int64_t)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(_UICollectionViewListCell *)self accessoryViewForAxis:a4];

  if (v6)
  {
    v8 = [[_UICellAccessoryConfigurationCustomView alloc] initWithCustomView:v6];
    [(_UICellAccessoryConfigurationCustomView *)v8 setMaintainsFixedSize:1];
    v10[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [(_UICollectionViewListCell *)self _setAccessoryConfigurations:v9 forAxis:a4];
  }

  else if (v7)
  {
    [(_UICollectionViewListCell *)self _setAccessoryConfigurations:MEMORY[0x1E695E0F0] forAxis:a4];
  }
}

- (id)_customViewForAccessoryConfiguration:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ([v3 _isSystemType] & 1) == 0)
  {
    v6 = objc_opt_class();
    _accessoryConfigurationAsClass(v4, v6);
    v5 = [objc_claimAutoreleasedReturnValue() customView];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_configurationForListAccessoryType:(int64_t)a3
{
  if (a3 > 3)
  {
    switch(a3)
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
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UICollectionViewListCell.m" lineNumber:2790 description:{@"Invalid _UICollectionViewListCellAccessoryType value: %ld", a3}];

    v8 = 0;
    goto LABEL_16;
  }

  if (a3 == 1)
  {
    v6 = _UICellAccessoryConfigurationDisclosureIndicator;
    goto LABEL_15;
  }

  if (a3 == 2)
  {
    v6 = _UICellAccessoryConfigurationCheckmark;
    goto LABEL_15;
  }

  if (a3 != 3)
  {
    goto LABEL_12;
  }

  v6 = _UICellAccessoryConfigurationDelete;
LABEL_15:
  v8 = objc_alloc_init(v6);
LABEL_16:

  return v8;
}

- (void)_setAccessoryConfigurations:(id)a3 forAxis:(int64_t)a4
{
  v6 = a3;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v7 = v6;
      [(UICollectionViewListCell *)self setLeadingEditingAccessoryConfigurations:v6];
    }

    else
    {
      if (a4 != 3)
      {
        goto LABEL_11;
      }

      v7 = v6;
      [(UICollectionViewListCell *)self setTrailingEditingAccessoryConfigurations:v6];
    }
  }

  else if (a4)
  {
    if (a4 != 1)
    {
      goto LABEL_11;
    }

    v7 = v6;
    [(UICollectionViewListCell *)self setTrailingAccessoryConfigurations:v6];
  }

  else
  {
    v7 = v6;
    [(UICollectionViewListCell *)self setLeadingAccessoryConfigurations:v6];
  }

  v6 = v7;
LABEL_11:
}

@end
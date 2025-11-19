@interface _UITabSidebarCell
- (_UITabSidebarCell)initWithFrame:(CGRect)a3;
- (id)updatedSidebarItemForCurrentConfigurationState;
- (void)_updateBackgroundConfiguration;
- (void)_updateDisabledStateIfNeeded;
- (void)prepareForReuse;
- (void)setEditing:(BOOL)a3;
- (void)setOriginalBackgroundConfiguration:(id)a3;
- (void)setSidebarItem:(uint64_t)a1;
@end

@implementation _UITabSidebarCell

- (_UITabSidebarCell)initWithFrame:(CGRect)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = _UITabSidebarCell;
  v3 = [(UICollectionViewListCell *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setFocusEffect:0];
    v9[0] = objc_opt_class();
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    v6 = [(UIView *)v4 registerForTraitChanges:v5 withTarget:v4 action:sel__updateBackgroundConfiguration];
  }

  return v4;
}

- (id)updatedSidebarItemForCurrentConfigurationState
{
  v1 = a1;
  if (a1)
  {
    v2 = a1[110];
    if (v2)
    {
      v3 = v2;
      v4 = [v1 contentConfiguration];
      [v3 setContentConfiguration:v4];

      v5 = [v1 originalBackgroundConfiguration];
      if (v5)
      {
        [v3 setBackgroundConfiguration:v5];
      }

      else
      {
        v6 = [v1 backgroundConfiguration];
        [v3 setBackgroundConfiguration:v6];
      }

      v7 = [v1 configurationState];
      v1 = [v3 _updatedItemUsingState:v7];
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

- (void)setSidebarItem:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v15 = v3;
    if (*(a1 + 876))
    {
      v4 = *(a1 + 880);
      v5 = v3;
      v6 = v4;
      v7 = v6;
      if (v6 == v5)
      {
        goto LABEL_13;
      }

      if (v5 && v6)
      {
        v8 = [v5 isEqual:v6];

        v3 = v15;
        if (v8)
        {
          goto LABEL_16;
        }
      }

      else
      {
      }
    }

    v9 = [v15 copy];
    v10 = *(a1 + 880);
    *(a1 + 880) = v9;

    if (v15)
    {
      *(a1 + 876) |= 1u;
    }

    v11 = [v15 contentConfiguration];
    [a1 setContentConfiguration:v11];

    v12 = [v15 backgroundConfiguration];
    [a1 setOriginalBackgroundConfiguration:v12];

    v13 = [v15 _resolvedAccessories];
    [a1 setAccessories:v13];

    [(_UITabSidebarCell *)a1 _updateDisabledStateIfNeeded];
    v14 = [v15 action];

    if (!v14)
    {
      [a1 setAccessibilityIdentifier:0];
      goto LABEL_15;
    }

    v5 = [v15 action];
    v7 = [v5 accessibilityIdentifier];
    [a1 setAccessibilityIdentifier:v7];
LABEL_13:

LABEL_15:
    v3 = v15;
  }

LABEL_16:
}

- (void)_updateDisabledStateIfNeeded
{
  if (!a1)
  {
    return;
  }

  v2 = *(a1 + 880);
  v8 = v2;
  if (!v2 || (*(a1 + 876) & 1) == 0)
  {
    goto LABEL_4;
  }

  v4 = [v2 action];
  if (v4)
  {

LABEL_11:
    if ([a1 isEditing])
    {
      v3 = 0;
      goto LABEL_5;
    }

    v7 = [v8 action];
    v3 = ([v7 attributes] & 1) == 0;
LABEL_14:

    goto LABEL_5;
  }

  v5 = [v8 tab];
  v6 = [v5 _isAction];

  if (v6)
  {
    goto LABEL_11;
  }

  if (([a1 isEditing] & 1) == 0)
  {
    v7 = [v8 tab];
    v3 = [v7 isEnabled];
    goto LABEL_14;
  }

LABEL_4:
  v3 = 1;
LABEL_5:
  [a1 setUserInteractionEnabled:v3];
}

- (void)setEditing:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _UITabSidebarCell;
  [(UICollectionViewListCell *)&v4 setEditing:a3];
  [(_UITabSidebarCell *)self _updateDisabledStateIfNeeded];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = _UITabSidebarCell;
  [(UICollectionViewListCell *)&v3 prepareForReuse];
  if (self)
  {
    *(&self->_sidebarCellFlags + 4) &= ~1u;
  }
}

- (void)setOriginalBackgroundConfiguration:(id)a3
{
  objc_storeStrong(&self->_originalBackgroundConfiguration, a3);

  [(_UITabSidebarCell *)self _updateBackgroundConfiguration];
}

- (void)_updateBackgroundConfiguration
{
  if (self && (-[UIView traitCollection](self, "traitCollection"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 valueForNSIntegerTrait:objc_opt_class()], v3, v4))
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __51___UITabSidebarCell__updateBackgroundConfiguration__block_invoke;
    v6[3] = &unk_1E70F3590;
    v6[4] = self;
    [UIView performWithoutAnimation:v6];
  }

  else
  {
    v5 = [(_UITabSidebarCell *)self originalBackgroundConfiguration];
    [(UICollectionViewCell *)self setBackgroundConfiguration:v5];
  }
}

@end
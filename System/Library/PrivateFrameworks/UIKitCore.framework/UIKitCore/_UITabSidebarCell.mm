@interface _UITabSidebarCell
- (_UITabSidebarCell)initWithFrame:(CGRect)frame;
- (id)updatedSidebarItemForCurrentConfigurationState;
- (void)_updateBackgroundConfiguration;
- (void)_updateDisabledStateIfNeeded;
- (void)prepareForReuse;
- (void)setEditing:(BOOL)editing;
- (void)setOriginalBackgroundConfiguration:(id)configuration;
- (void)setSidebarItem:(uint64_t)item;
@end

@implementation _UITabSidebarCell

- (_UITabSidebarCell)initWithFrame:(CGRect)frame
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = _UITabSidebarCell;
  v3 = [(UICollectionViewListCell *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  selfCopy = self;
  if (self)
  {
    v2 = self[110];
    if (v2)
    {
      v3 = v2;
      contentConfiguration = [selfCopy contentConfiguration];
      [v3 setContentConfiguration:contentConfiguration];

      originalBackgroundConfiguration = [selfCopy originalBackgroundConfiguration];
      if (originalBackgroundConfiguration)
      {
        [v3 setBackgroundConfiguration:originalBackgroundConfiguration];
      }

      else
      {
        backgroundConfiguration = [selfCopy backgroundConfiguration];
        [v3 setBackgroundConfiguration:backgroundConfiguration];
      }

      configurationState = [selfCopy configurationState];
      selfCopy = [v3 _updatedItemUsingState:configurationState];
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (void)setSidebarItem:(uint64_t)item
{
  v3 = a2;
  if (item)
  {
    v15 = v3;
    if (*(item + 876))
    {
      v4 = *(item + 880);
      action2 = v3;
      v6 = v4;
      accessibilityIdentifier = v6;
      if (v6 == action2)
      {
        goto LABEL_13;
      }

      if (action2 && v6)
      {
        v8 = [action2 isEqual:v6];

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
    v10 = *(item + 880);
    *(item + 880) = v9;

    if (v15)
    {
      *(item + 876) |= 1u;
    }

    contentConfiguration = [v15 contentConfiguration];
    [item setContentConfiguration:contentConfiguration];

    backgroundConfiguration = [v15 backgroundConfiguration];
    [item setOriginalBackgroundConfiguration:backgroundConfiguration];

    _resolvedAccessories = [v15 _resolvedAccessories];
    [item setAccessories:_resolvedAccessories];

    [(_UITabSidebarCell *)item _updateDisabledStateIfNeeded];
    action = [v15 action];

    if (!action)
    {
      [item setAccessibilityIdentifier:0];
      goto LABEL_15;
    }

    action2 = [v15 action];
    accessibilityIdentifier = [action2 accessibilityIdentifier];
    [item setAccessibilityIdentifier:accessibilityIdentifier];
LABEL_13:

LABEL_15:
    v3 = v15;
  }

LABEL_16:
}

- (void)_updateDisabledStateIfNeeded
{
  if (!self)
  {
    return;
  }

  v2 = *(self + 880);
  v8 = v2;
  if (!v2 || (*(self + 876) & 1) == 0)
  {
    goto LABEL_4;
  }

  action = [v2 action];
  if (action)
  {

LABEL_11:
    if ([self isEditing])
    {
      isEnabled = 0;
      goto LABEL_5;
    }

    action2 = [v8 action];
    isEnabled = ([action2 attributes] & 1) == 0;
LABEL_14:

    goto LABEL_5;
  }

  v5 = [v8 tab];
  _isAction = [v5 _isAction];

  if (_isAction)
  {
    goto LABEL_11;
  }

  if (([self isEditing] & 1) == 0)
  {
    action2 = [v8 tab];
    isEnabled = [action2 isEnabled];
    goto LABEL_14;
  }

LABEL_4:
  isEnabled = 1;
LABEL_5:
  [self setUserInteractionEnabled:isEnabled];
}

- (void)setEditing:(BOOL)editing
{
  v4.receiver = self;
  v4.super_class = _UITabSidebarCell;
  [(UICollectionViewListCell *)&v4 setEditing:editing];
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

- (void)setOriginalBackgroundConfiguration:(id)configuration
{
  objc_storeStrong(&self->_originalBackgroundConfiguration, configuration);

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
    originalBackgroundConfiguration = [(_UITabSidebarCell *)self originalBackgroundConfiguration];
    [(UICollectionViewCell *)self setBackgroundConfiguration:originalBackgroundConfiguration];
  }
}

@end
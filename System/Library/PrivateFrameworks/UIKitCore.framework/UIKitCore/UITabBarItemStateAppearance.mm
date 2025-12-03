@interface UITabBarItemStateAppearance
- (UIOffset)badgePositionAdjustment;
- (UIOffset)badgeTitlePositionAdjustment;
- (UIOffset)titlePositionAdjustment;
- (UITabBarItemStateAppearance)init;
- (id)_initWithOwner:(id)owner data:(id)data state:(int64_t)state;
- (void)_writeToStorage:(id)storage;
- (void)setBadgeBackgroundColor:(UIColor *)badgeBackgroundColor;
- (void)setBadgePositionAdjustment:(UIOffset)badgePositionAdjustment;
- (void)setBadgeTextAttributes:(NSDictionary *)badgeTextAttributes;
- (void)setBadgeTitlePositionAdjustment:(UIOffset)badgeTitlePositionAdjustment;
- (void)setIconColor:(UIColor *)iconColor;
- (void)setTitlePositionAdjustment:(UIOffset)titlePositionAdjustment;
- (void)setTitleTextAttributes:(NSDictionary *)titleTextAttributes;
@end

@implementation UITabBarItemStateAppearance

- (UITabBarItemStateAppearance)init
{
  [(UITabBarItemStateAppearance *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)_initWithOwner:(id)owner data:(id)data state:(int64_t)state
{
  ownerCopy = owner;
  dataCopy = data;
  v13.receiver = self;
  v13.super_class = UITabBarItemStateAppearance;
  v10 = [(UITabBarItemStateAppearance *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_owner = ownerCopy;
    objc_storeStrong(&v10->_data, data);
    v11->_state = state;
  }

  return v11;
}

- (void)_writeToStorage:(id)storage
{
  owner = self->_owner;
  if (owner)
  {
    [(UITabBarItemAppearance *)owner _writeToStorage:storage];
  }

  else
  {
    data = self->_data;
    storageCopy = storage;
    writableInstance = [(_UIBarAppearanceData *)data writableInstance];
    v8 = self->_data;
    self->_data = writableInstance;

    storageCopy[2](storageCopy);
  }
}

- (void)setTitleTextAttributes:(NSDictionary *)titleTextAttributes
{
  v4 = titleTextAttributes;
  if (![(NSDictionary *)v4 count])
  {

    v4 = 0;
  }

  v5 = [(_UITabBarItemData *)self->_data titleTextAttributesForState:self->_state];
  v6 = v4;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (v6 && v7)
    {
      v9 = [(NSDictionary *)v6 isEqual:v7];

      if (v9)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __54__UITabBarItemStateAppearance_setTitleTextAttributes___block_invoke;
    v10[3] = &unk_1E70F35B8;
    v10[4] = self;
    v11 = v6;
    [(UITabBarItemStateAppearance *)self _writeToStorage:v10];
  }

LABEL_11:
}

- (UIOffset)titlePositionAdjustment
{
  [(_UITabBarItemData *)self->_data titlePositionAdjustmentForState:self->_state];
  result.vertical = v3;
  result.horizontal = v2;
  return result;
}

- (void)setTitlePositionAdjustment:(UIOffset)titlePositionAdjustment
{
  vertical = titlePositionAdjustment.vertical;
  horizontal = titlePositionAdjustment.horizontal;
  [(_UITabBarItemData *)self->_data titlePositionAdjustmentForState:self->_state];
  if (horizontal != v7 || vertical != v6)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__UITabBarItemStateAppearance_setTitlePositionAdjustment___block_invoke;
    v9[3] = &unk_1E70F6848;
    v9[4] = self;
    *&v9[5] = horizontal;
    *&v9[6] = vertical;
    [(UITabBarItemStateAppearance *)self _writeToStorage:v9];
  }
}

- (void)setIconColor:(UIColor *)iconColor
{
  v4 = iconColor;
  v5 = [(_UITabBarItemData *)self->_data iconColorForState:self->_state];
  v6 = v4;
  v7 = v5;
  v8 = v7;
  if (v7 == v6)
  {
  }

  else
  {
    if (v6 && v7)
    {
      v9 = [(UIColor *)v6 isEqual:v7];

      if (v9)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __44__UITabBarItemStateAppearance_setIconColor___block_invoke;
    v10[3] = &unk_1E70F35B8;
    v10[4] = self;
    v11 = v6;
    [(UITabBarItemStateAppearance *)self _writeToStorage:v10];
  }

LABEL_9:
}

- (void)setBadgeTextAttributes:(NSDictionary *)badgeTextAttributes
{
  v4 = badgeTextAttributes;
  if (![(NSDictionary *)v4 count])
  {

    v4 = 0;
  }

  v5 = [(_UITabBarItemData *)self->_data badgeTextAttributesForState:self->_state];
  v6 = v4;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (v6 && v7)
    {
      v9 = [(NSDictionary *)v6 isEqual:v7];

      if (v9)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __54__UITabBarItemStateAppearance_setBadgeTextAttributes___block_invoke;
    v10[3] = &unk_1E70F35B8;
    v10[4] = self;
    v11 = v6;
    [(UITabBarItemStateAppearance *)self _writeToStorage:v10];
  }

LABEL_11:
}

- (UIOffset)badgeTitlePositionAdjustment
{
  [(_UITabBarItemData *)self->_data badgeTitlePositionAdjustmentForState:self->_state];
  result.vertical = v3;
  result.horizontal = v2;
  return result;
}

- (void)setBadgeTitlePositionAdjustment:(UIOffset)badgeTitlePositionAdjustment
{
  vertical = badgeTitlePositionAdjustment.vertical;
  horizontal = badgeTitlePositionAdjustment.horizontal;
  [(_UITabBarItemData *)self->_data badgeTitlePositionAdjustmentForState:self->_state];
  if (horizontal != v7 || vertical != v6)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __63__UITabBarItemStateAppearance_setBadgeTitlePositionAdjustment___block_invoke;
    v9[3] = &unk_1E70F6848;
    v9[4] = self;
    *&v9[5] = horizontal;
    *&v9[6] = vertical;
    [(UITabBarItemStateAppearance *)self _writeToStorage:v9];
  }
}

- (void)setBadgeBackgroundColor:(UIColor *)badgeBackgroundColor
{
  v4 = badgeBackgroundColor;
  v5 = [(_UITabBarItemData *)self->_data badgeBackgroundColorForState:self->_state];
  v6 = v4;
  v7 = v5;
  v8 = v7;
  if (v7 == v6)
  {
  }

  else
  {
    if (v6 && v7)
    {
      v9 = [(UIColor *)v6 isEqual:v7];

      if (v9)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __55__UITabBarItemStateAppearance_setBadgeBackgroundColor___block_invoke;
    v10[3] = &unk_1E70F35B8;
    v10[4] = self;
    v11 = v6;
    [(UITabBarItemStateAppearance *)self _writeToStorage:v10];
  }

LABEL_9:
}

- (UIOffset)badgePositionAdjustment
{
  [(_UITabBarItemData *)self->_data badgePositionAdjustmentForState:self->_state];
  result.vertical = v3;
  result.horizontal = v2;
  return result;
}

- (void)setBadgePositionAdjustment:(UIOffset)badgePositionAdjustment
{
  vertical = badgePositionAdjustment.vertical;
  horizontal = badgePositionAdjustment.horizontal;
  [(_UITabBarItemData *)self->_data badgePositionAdjustmentForState:self->_state];
  if (horizontal != v7 || vertical != v6)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__UITabBarItemStateAppearance_setBadgePositionAdjustment___block_invoke;
    v9[3] = &unk_1E70F6848;
    v9[4] = self;
    *&v9[5] = horizontal;
    *&v9[6] = vertical;
    [(UITabBarItemStateAppearance *)self _writeToStorage:v9];
  }
}

@end
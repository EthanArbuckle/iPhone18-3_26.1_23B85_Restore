@interface _UITab
- (_UITabElementGroup)_parent;
- (id)_parentGroup;
- (int64_t)_tabBarPlacement;
- (void)_setAttributes:(int64_t)attributes;
- (void)_setTabBarPlacement:(int64_t)placement;
@end

@implementation _UITab

- (id)_parentGroup
{
  WeakRetained = objc_loadWeakRetained(&self->__parent);

  return WeakRetained;
}

- (int64_t)_tabBarPlacement
{
  preferredPlacement = [(UITab *)self preferredPlacement];
  if ((preferredPlacement - 1) > 5)
  {
    return -1;
  }

  else
  {
    return qword_18A678FD8[preferredPlacement - 1];
  }
}

- (void)_setTabBarPlacement:(int64_t)placement
{
  if (placement > 5)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_18A679008[placement];
  }

  [(UITab *)self setPreferredPlacement:v3];
}

- (void)_setAttributes:(int64_t)attributes
{
  if (self->__attributes != attributes)
  {
    attributesCopy = attributes;
    self->__attributes = attributes;
    if ((attributes & 2) != 0)
    {
      [(_UITab *)self _setTabBarPlacement:4];
    }

    if ((attributesCopy & 4) != 0)
    {
      [(UITab *)self setSpringLoaded:1];
    }

    [(UITab *)self _contentDidChange];
  }
}

- (_UITabElementGroup)_parent
{
  WeakRetained = objc_loadWeakRetained(&self->__parent);

  return WeakRetained;
}

@end
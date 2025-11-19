@interface _UITab
- (_UITabElementGroup)_parent;
- (id)_parentGroup;
- (int64_t)_tabBarPlacement;
- (void)_setAttributes:(int64_t)a3;
- (void)_setTabBarPlacement:(int64_t)a3;
@end

@implementation _UITab

- (id)_parentGroup
{
  WeakRetained = objc_loadWeakRetained(&self->__parent);

  return WeakRetained;
}

- (int64_t)_tabBarPlacement
{
  v2 = [(UITab *)self preferredPlacement];
  if ((v2 - 1) > 5)
  {
    return -1;
  }

  else
  {
    return qword_18A678FD8[v2 - 1];
  }
}

- (void)_setTabBarPlacement:(int64_t)a3
{
  if (a3 > 5)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_18A679008[a3];
  }

  [(UITab *)self setPreferredPlacement:v3];
}

- (void)_setAttributes:(int64_t)a3
{
  if (self->__attributes != a3)
  {
    v4 = a3;
    self->__attributes = a3;
    if ((a3 & 2) != 0)
    {
      [(_UITab *)self _setTabBarPlacement:4];
    }

    if ((v4 & 4) != 0)
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
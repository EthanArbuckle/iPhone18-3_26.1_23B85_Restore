@interface UITabBarItemAppearance
- (BOOL)isEqual:(id)a3;
- (UITabBarAppearance)_owningAppearance;
- (UITabBarItemAppearance)copy;
- (UITabBarItemAppearance)initWithCoder:(NSCoder *)coder;
- (UITabBarItemAppearance)initWithStyle:(UITabBarItemAppearanceStyle)style;
- (id)_initWithTabBarItemData:(id)a3;
- (id)_proxyForState:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)_updateDataTo:(id)a3;
- (void)_writeToStorage:(id)a3;
- (void)configureWithDefaultForStyle:(UITabBarItemAppearanceStyle)style;
- (void)dealloc;
@end

@implementation UITabBarItemAppearance

- (void)dealloc
{
  for (i = 8; i != 48; i += 8)
  {
    [*(&self->super.isa + i) _clearOwner];
  }

  v4.receiver = self;
  v4.super_class = UITabBarItemAppearance;
  [(UITabBarItemAppearance *)&v4 dealloc];
}

- (UITabBarItemAppearance)initWithStyle:(UITabBarItemAppearanceStyle)style
{
  v8.receiver = self;
  v8.super_class = UITabBarItemAppearance;
  v4 = [(UITabBarItemAppearance *)&v8 init];
  if (v4)
  {
    v5 = [_UITabBarItemData standardItemDataForStyle:style];
    data = v4->_data;
    v4->_data = v5;
  }

  return v4;
}

- (id)_initWithTabBarItemData:(id)a3
{
  v4 = a3;
  v5 = [(UITabBarItemAppearance *)self init];
  if (v5)
  {
    v6 = [v4 copy];
    data = v5->_data;
    v5->_data = v6;
  }

  return v5;
}

- (UITabBarItemAppearance)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  v9.receiver = self;
  v9.super_class = UITabBarItemAppearance;
  v5 = [(UITabBarItemAppearance *)&v9 init];
  if (v5)
  {
    v6 = [_UITabBarItemData decodeFromCoder:v4 prefix:0];
    data = v5->_data;
    v5->_data = v6;
  }

  return v5;
}

- (UITabBarItemAppearance)copy
{
  v3.receiver = self;
  v3.super_class = UITabBarItemAppearance;
  return [(UITabBarItemAppearance *)&v3 copy];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithTabBarItemAppearance:self];
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = UITabBarItemAppearance;
  v3 = [(UITabBarItemAppearance *)&v6 description];
  v4 = [v3 mutableCopy];

  [(UITabBarItemAppearance *)self _describeInto:v4];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  p_isa = &v4->super.isa;
  if (self == v4)
  {
    v6 = 1;
  }

  else if (v4 && [(UITabBarItemAppearance *)v4 isMemberOfClass:objc_opt_class()])
  {
    v6 = [p_isa[6] isEqual:self->_data];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_updateDataTo:(id)a3
{
  v5 = a3;
  data = self->_data;
  if (data != v5)
  {
    v9 = v5;
    v7 = data;
    objc_storeStrong(&self->_data, a3);
    for (i = 8; i != 48; i += 8)
    {
      [*(&self->super.isa + i) _setData:self->_data];
    }

    v5 = v9;
  }
}

- (void)_writeToStorage:(id)a3
{
  data = self->_data;
  v5 = a3;
  v6 = [(_UIBarAppearanceData *)data writableInstance];
  [(UITabBarItemAppearance *)self _updateDataTo:v6];

  v5[2](v5);
  WeakRetained = objc_loadWeakRetained(&self->_owningAppearance);
  [WeakRetained _tabBarItemDataChanged:self];
}

- (id)_proxyForState:(int64_t)a3
{
  states = self->_states;
  v5 = self->_states[a3];
  if (!v5)
  {
    v7 = [[UITabBarItemStateAppearance alloc] _initWithOwner:self data:self->_data state:a3];
    v8 = states[a3];
    states[a3] = v7;

    v5 = states[a3];
  }

  return v5;
}

- (void)configureWithDefaultForStyle:(UITabBarItemAppearanceStyle)style
{
  v4 = [_UITabBarItemData standardItemDataForStyle:style];
  [(UITabBarItemAppearance *)self _updateDataTo:v4];

  WeakRetained = objc_loadWeakRetained(&self->_owningAppearance);
  [WeakRetained _tabBarItemDataChanged:self];
}

- (UITabBarAppearance)_owningAppearance
{
  WeakRetained = objc_loadWeakRetained(&self->_owningAppearance);

  return WeakRetained;
}

@end
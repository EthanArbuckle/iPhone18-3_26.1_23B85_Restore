@interface UITabBarItemAppearance
- (BOOL)isEqual:(id)equal;
- (UITabBarAppearance)_owningAppearance;
- (UITabBarItemAppearance)copy;
- (UITabBarItemAppearance)initWithCoder:(NSCoder *)coder;
- (UITabBarItemAppearance)initWithStyle:(UITabBarItemAppearanceStyle)style;
- (id)_initWithTabBarItemData:(id)data;
- (id)_proxyForState:(int64_t)state;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_updateDataTo:(id)to;
- (void)_writeToStorage:(id)storage;
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

- (id)_initWithTabBarItemData:(id)data
{
  dataCopy = data;
  v5 = [(UITabBarItemAppearance *)self init];
  if (v5)
  {
    v6 = [dataCopy copy];
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

- (id)copyWithZone:(_NSZone *)zone
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  p_isa = &equalCopy->super.isa;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else if (equalCopy && [(UITabBarItemAppearance *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v6 = [p_isa[6] isEqual:self->_data];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_updateDataTo:(id)to
{
  toCopy = to;
  data = self->_data;
  if (data != toCopy)
  {
    v9 = toCopy;
    v7 = data;
    objc_storeStrong(&self->_data, to);
    for (i = 8; i != 48; i += 8)
    {
      [*(&self->super.isa + i) _setData:self->_data];
    }

    toCopy = v9;
  }
}

- (void)_writeToStorage:(id)storage
{
  data = self->_data;
  storageCopy = storage;
  writableInstance = [(_UIBarAppearanceData *)data writableInstance];
  [(UITabBarItemAppearance *)self _updateDataTo:writableInstance];

  storageCopy[2](storageCopy);
  WeakRetained = objc_loadWeakRetained(&self->_owningAppearance);
  [WeakRetained _tabBarItemDataChanged:self];
}

- (id)_proxyForState:(int64_t)state
{
  states = self->_states;
  v5 = self->_states[state];
  if (!v5)
  {
    v7 = [[UITabBarItemStateAppearance alloc] _initWithOwner:self data:self->_data state:state];
    v8 = states[state];
    states[state] = v7;

    v5 = states[state];
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
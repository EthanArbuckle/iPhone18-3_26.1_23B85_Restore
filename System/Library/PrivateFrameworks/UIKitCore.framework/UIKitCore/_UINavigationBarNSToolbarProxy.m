@interface _UINavigationBarNSToolbarProxy
- (NSString)subtitle;
- (NSString)title;
- (NSURL)representedURL;
- (UITitlebar)owningTitlebar;
- (_UINavigationBarNSToolbarProxy)initWithTitlebar:(id)a3;
- (_UINavigationBarNSToolbarProxyTabBarItemProviding)tabBarProvider;
- (id)description;
- (id)representedDragItemsProvider;
- (void)dealloc;
- (void)updateBridgedToolbar;
@end

@implementation _UINavigationBarNSToolbarProxy

- (_UINavigationBarNSToolbarProxy)initWithTitlebar:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UINavigationBarNSToolbarProxy;
  v5 = [(_UINavigationBarNSToolbarProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_owningTitlebar, v4);
  }

  return v6;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _UINavigationBarNSToolbarProxy;
  [(_UINavigationBarNSToolbarProxy *)&v2 dealloc];
}

- (NSString)title
{
  [(_UINavigationBarNSToolbarProxy *)self _updateIfNecessary];
  title = self->_title;

  return title;
}

- (NSString)subtitle
{
  [(_UINavigationBarNSToolbarProxy *)self _updateIfNecessary];
  subtitle = self->_subtitle;

  return subtitle;
}

- (NSURL)representedURL
{
  [(_UINavigationBarNSToolbarProxy *)self _updateIfNecessary];
  representedURL = self->_representedURL;

  return representedURL;
}

- (id)representedDragItemsProvider
{
  [(_UINavigationBarNSToolbarProxy *)self _updateIfNecessary];
  v3 = _Block_copy(self->_representedDragItemsProvider);

  return v3;
}

- (void)updateBridgedToolbar
{
  if ((*&self->_flags & 1) == 0)
  {
    *&self->_flags |= 1u;
  }
}

- (id)description
{
  v19 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = _UINavigationBarNSToolbarProxy;
  v3 = [(_UINavigationBarNSToolbarProxy *)&v17 description];
  v4 = [v3 mutableCopy];

  if (*&self->_flags)
  {
    [v4 appendString:@" updatePending. call -_updateIfNecessary to force."];
  }

  if (self->_title)
  {
    [v4 appendFormat:@" title='%@'", self->_title];
  }

  if (self->_representedURL)
  {
    [v4 appendFormat:@" representedURL='%@'", self->_representedURL];
  }

  [v4 appendString:@" participants = {"];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_registeredParticipants;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 layoutForNSToolbar:self forceUpdate:0];
        [v4 appendFormat:@"\n\t%p : %@\n", v10, v11, v13];
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v7);
  }

  [v4 appendString:@"}\n"];

  return v4;
}

- (UITitlebar)owningTitlebar
{
  WeakRetained = objc_loadWeakRetained(&self->_owningTitlebar);

  return WeakRetained;
}

- (_UINavigationBarNSToolbarProxyTabBarItemProviding)tabBarProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_tabBarProvider);

  return WeakRetained;
}

@end
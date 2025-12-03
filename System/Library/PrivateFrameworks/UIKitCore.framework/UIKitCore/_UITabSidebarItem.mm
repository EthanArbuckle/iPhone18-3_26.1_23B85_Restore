@interface _UITabSidebarItem
- (id)_defaultBackgroundConfiguration;
- (id)_defaultContentConfiguration;
@end

@implementation _UITabSidebarItem

- (id)_defaultContentConfiguration
{
  v4.receiver = self;
  v4.super_class = _UITabSidebarItem;
  _defaultContentConfiguration = [(UITabSidebarItem *)&v4 _defaultContentConfiguration];

  return _defaultContentConfiguration;
}

- (id)_defaultBackgroundConfiguration
{
  v4.receiver = self;
  v4.super_class = _UITabSidebarItem;
  _defaultBackgroundConfiguration = [(UITabSidebarItem *)&v4 _defaultBackgroundConfiguration];

  return _defaultBackgroundConfiguration;
}

@end
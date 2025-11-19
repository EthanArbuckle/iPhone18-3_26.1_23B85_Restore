@interface _UITabSidebarItem
- (id)_defaultBackgroundConfiguration;
- (id)_defaultContentConfiguration;
@end

@implementation _UITabSidebarItem

- (id)_defaultContentConfiguration
{
  v4.receiver = self;
  v4.super_class = _UITabSidebarItem;
  v2 = [(UITabSidebarItem *)&v4 _defaultContentConfiguration];

  return v2;
}

- (id)_defaultBackgroundConfiguration
{
  v4.receiver = self;
  v4.super_class = _UITabSidebarItem;
  v2 = [(UITabSidebarItem *)&v4 _defaultBackgroundConfiguration];

  return v2;
}

@end
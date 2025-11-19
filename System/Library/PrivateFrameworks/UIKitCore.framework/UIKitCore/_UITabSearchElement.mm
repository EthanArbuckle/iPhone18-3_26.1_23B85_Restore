@interface _UITabSearchElement
- (_UITabSearchElement)init;
- (id)_overrideTabBarItem;
@end

@implementation _UITabSearchElement

- (_UITabSearchElement)init
{
  v3 = _UINSLocalizedStringWithDefaultValue(@"Search", @"Search");
  v4 = [UIImage systemImageNamed:@"magnifyingglass"];
  v7.receiver = self;
  v7.super_class = _UITabSearchElement;
  v5 = [(_UITabElement *)&v7 initWithIdentifier:@"com.apple.UIKit.Search" title:v3 image:v4];

  if (v5)
  {
    [(_UITab *)v5 _setTabBarPlacement:1];
  }

  return v5;
}

- (id)_overrideTabBarItem
{
  v2 = [[UITabBarItem alloc] initWithTabBarSystemItem:8 tag:0];

  return v2;
}

@end
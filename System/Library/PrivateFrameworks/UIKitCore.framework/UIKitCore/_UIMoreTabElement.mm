@interface _UIMoreTabElement
- (_UIMoreTabElement)init;
@end

@implementation _UIMoreTabElement

- (_UIMoreTabElement)init
{
  v3 = [[UITabBarItem alloc] initWithTabBarSystemItem:0 tag:0];
  title = [(UITabBarItem *)v3 title];
  image = [(UITabBarItem *)v3 image];
  v8.receiver = self;
  v8.super_class = _UIMoreTabElement;
  v6 = [(_UITabElement *)&v8 initWithIdentifier:@"More" title:title image:image];

  return v6;
}

@end
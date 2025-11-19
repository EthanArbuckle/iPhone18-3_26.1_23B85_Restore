@interface _UIMoreTabElement
- (_UIMoreTabElement)init;
@end

@implementation _UIMoreTabElement

- (_UIMoreTabElement)init
{
  v3 = [[UITabBarItem alloc] initWithTabBarSystemItem:0 tag:0];
  v4 = [(UITabBarItem *)v3 title];
  v5 = [(UITabBarItem *)v3 image];
  v8.receiver = self;
  v8.super_class = _UIMoreTabElement;
  v6 = [(_UITabElement *)&v8 initWithIdentifier:@"More" title:v4 image:v5];

  return v6;
}

@end
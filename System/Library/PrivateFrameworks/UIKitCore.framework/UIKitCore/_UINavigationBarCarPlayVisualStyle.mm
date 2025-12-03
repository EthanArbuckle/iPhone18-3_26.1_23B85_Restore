@interface _UINavigationBarCarPlayVisualStyle
- (double)imageButtonMarginInNavigationBar:(id)bar;
- (double)textButtonMarginInNavigationBar:(id)bar;
@end

@implementation _UINavigationBarCarPlayVisualStyle

- (double)textButtonMarginInNavigationBar:(id)bar
{
  v5.receiver = self;
  v5.super_class = _UINavigationBarCarPlayVisualStyle;
  [(_UINavigationBarVisualStyle *)&v5 textButtonMarginInNavigationBar:bar];
  return v3 * 0.5;
}

- (double)imageButtonMarginInNavigationBar:(id)bar
{
  v5.receiver = self;
  v5.super_class = _UINavigationBarCarPlayVisualStyle;
  [(_UINavigationBarVisualStyle *)&v5 imageButtonMarginInNavigationBar:bar];
  return v3 * 0.5;
}

@end
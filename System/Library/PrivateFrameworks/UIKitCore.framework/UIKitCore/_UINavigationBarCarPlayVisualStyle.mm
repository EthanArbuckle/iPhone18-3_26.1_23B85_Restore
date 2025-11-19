@interface _UINavigationBarCarPlayVisualStyle
- (double)imageButtonMarginInNavigationBar:(id)a3;
- (double)textButtonMarginInNavigationBar:(id)a3;
@end

@implementation _UINavigationBarCarPlayVisualStyle

- (double)textButtonMarginInNavigationBar:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UINavigationBarCarPlayVisualStyle;
  [(_UINavigationBarVisualStyle *)&v5 textButtonMarginInNavigationBar:a3];
  return v3 * 0.5;
}

- (double)imageButtonMarginInNavigationBar:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UINavigationBarCarPlayVisualStyle;
  [(_UINavigationBarVisualStyle *)&v5 imageButtonMarginInNavigationBar:a3];
  return v3 * 0.5;
}

@end
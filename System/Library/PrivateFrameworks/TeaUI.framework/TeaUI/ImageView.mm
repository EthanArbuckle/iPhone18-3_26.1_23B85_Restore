@interface ImageView
+ (Class)layerClass;
- (BOOL)accessibilityElementsHidden;
- (BOOL)accessibilityIgnoresInvertColors;
- (BOOL)clipsToBounds;
- (UIColor)backgroundColor;
- (int64_t)contentMode;
- (void)layoutSubviews;
- (void)setAccessibilityElementsHidden:(BOOL)hidden;
- (void)setAccessibilityIgnoresInvertColors:(BOOL)colors;
- (void)setBackgroundColor:(id)color;
- (void)setClipsToBounds:(BOOL)bounds;
- (void)setContentMode:(int64_t)mode;
@end

@implementation ImageView

+ (Class)layerClass
{
  static ImageView.layerClass.getter();

  return swift_getObjCClassFromMetadata();
}

- (void)setContentMode:(int64_t)mode
{
  selfCopy = self;
  ImageView.contentMode.setter(mode);
}

- (int64_t)contentMode
{
  selfCopy = self;
  v3 = ImageView.contentMode.getter();

  return v3;
}

- (BOOL)accessibilityIgnoresInvertColors
{
  selfCopy = self;
  v3 = ImageView.accessibilityIgnoresInvertColors.getter();

  return v3 & 1;
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_1D7E73C1C(color);
}

- (UIColor)backgroundColor
{
  selfCopy = self;
  v3 = sub_1D7E73E84();

  return v3;
}

- (void)layoutSubviews
{
  selfCopy = self;
  ImageView.layoutSubviews()();
}

- (void)setAccessibilityIgnoresInvertColors:(BOOL)colors
{
  selfCopy = self;
  ImageView.accessibilityIgnoresInvertColors.setter(colors);
}

- (BOOL)clipsToBounds
{
  selfCopy = self;
  v3 = ImageView.clipsToBounds.getter();

  return v3 & 1;
}

- (void)setClipsToBounds:(BOOL)bounds
{
  selfCopy = self;
  ImageView.clipsToBounds.setter(bounds);
}

- (BOOL)accessibilityElementsHidden
{
  selfCopy = self;
  v3 = ImageView.accessibilityElementsHidden.getter();

  return v3 & 1;
}

- (void)setAccessibilityElementsHidden:(BOOL)hidden
{
  selfCopy = self;
  ImageView.accessibilityElementsHidden.setter(hidden);
}

@end
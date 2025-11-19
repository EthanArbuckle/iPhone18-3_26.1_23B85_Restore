@interface ImageView
+ (Class)layerClass;
- (BOOL)accessibilityElementsHidden;
- (BOOL)accessibilityIgnoresInvertColors;
- (BOOL)clipsToBounds;
- (UIColor)backgroundColor;
- (int64_t)contentMode;
- (void)layoutSubviews;
- (void)setAccessibilityElementsHidden:(BOOL)a3;
- (void)setAccessibilityIgnoresInvertColors:(BOOL)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setClipsToBounds:(BOOL)a3;
- (void)setContentMode:(int64_t)a3;
@end

@implementation ImageView

+ (Class)layerClass
{
  static ImageView.layerClass.getter();

  return swift_getObjCClassFromMetadata();
}

- (void)setContentMode:(int64_t)a3
{
  v4 = self;
  ImageView.contentMode.setter(a3);
}

- (int64_t)contentMode
{
  v2 = self;
  v3 = ImageView.contentMode.getter();

  return v3;
}

- (BOOL)accessibilityIgnoresInvertColors
{
  v2 = self;
  v3 = ImageView.accessibilityIgnoresInvertColors.getter();

  return v3 & 1;
}

- (void)setBackgroundColor:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1D7E73C1C(a3);
}

- (UIColor)backgroundColor
{
  v2 = self;
  v3 = sub_1D7E73E84();

  return v3;
}

- (void)layoutSubviews
{
  v2 = self;
  ImageView.layoutSubviews()();
}

- (void)setAccessibilityIgnoresInvertColors:(BOOL)a3
{
  v4 = self;
  ImageView.accessibilityIgnoresInvertColors.setter(a3);
}

- (BOOL)clipsToBounds
{
  v2 = self;
  v3 = ImageView.clipsToBounds.getter();

  return v3 & 1;
}

- (void)setClipsToBounds:(BOOL)a3
{
  v4 = self;
  ImageView.clipsToBounds.setter(a3);
}

- (BOOL)accessibilityElementsHidden
{
  v2 = self;
  v3 = ImageView.accessibilityElementsHidden.getter();

  return v3 & 1;
}

- (void)setAccessibilityElementsHidden:(BOOL)a3
{
  v4 = self;
  ImageView.accessibilityElementsHidden.setter(a3);
}

@end
@interface BKDisplayAnnotationStyle
+ (id)canceledStyle;
+ (id)crosshatchedBackgroundStyle;
+ (id)ellipseStyle;
+ (id)emphasizedStyle;
+ (id)minimalStyle;
+ (id)pointerStyle;
+ (id)rectangleStyle;
+ (id)textBackgroundStyle;
+ (id)textStyle;
@end

@implementation BKDisplayAnnotationStyle

+ (id)canceledStyle
{
  v2 = objc_alloc_init(BKDisplayAnnotationCanceledStyle);

  return v2;
}

+ (id)crosshatchedBackgroundStyle
{
  v2 = objc_alloc_init(BKDisplayAnnotationCrosshatchedBackgroundStyle);

  return v2;
}

+ (id)emphasizedStyle
{
  v2 = objc_alloc_init(BKDisplayAnnotationEmphasizedStyle);

  return v2;
}

+ (id)textBackgroundStyle
{
  v2 = objc_alloc_init(BKDisplayAnnotationTextBackgroundStyle);

  return v2;
}

+ (id)textStyle
{
  v2 = objc_alloc_init(BKDisplayAnnotationTextStyle);

  return v2;
}

+ (id)pointerStyle
{
  v2 = objc_alloc_init(BKDisplayAnnotationPointerStyle);

  return v2;
}

+ (id)rectangleStyle
{
  v2 = objc_alloc_init(BKDisplayAnnotationRectangleStyle);

  return v2;
}

+ (id)ellipseStyle
{
  v2 = objc_alloc_init(BKDisplayAnnotationEllipseStyle);

  return v2;
}

+ (id)minimalStyle
{
  v2 = objc_alloc_init(BKDisplayAnnotationMinimalStyle);

  return v2;
}

@end
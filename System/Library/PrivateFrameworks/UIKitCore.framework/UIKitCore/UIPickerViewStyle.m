@interface UIPickerViewStyle
@end

@implementation UIPickerViewStyle

UIColor *__52___UIPickerViewStyle_tvOS_createCenterHighlightView__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 userInterfaceStyle];
  v3 = v2 == 1000 || v2 == 2;
  v4 = 1.0;
  if (v3)
  {
    v4 = 0.2;
  }

  return [UIColor colorWithWhite:1.0 alpha:v4];
}

@end
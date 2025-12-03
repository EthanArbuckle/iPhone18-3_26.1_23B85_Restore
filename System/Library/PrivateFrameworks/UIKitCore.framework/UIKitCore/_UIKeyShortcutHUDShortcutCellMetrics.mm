@interface _UIKeyShortcutHUDShortcutCellMetrics
+ (id)metricsWithCellWidth:(double)width modifiersWidth:(double)modifiersWidth inputWidth:(double)inputWidth;
@end

@implementation _UIKeyShortcutHUDShortcutCellMetrics

+ (id)metricsWithCellWidth:(double)width modifiersWidth:(double)modifiersWidth inputWidth:(double)inputWidth
{
  v8 = objc_opt_new();
  v8[1] = width;
  v8[2] = modifiersWidth;
  v8[3] = inputWidth;

  return v8;
}

@end
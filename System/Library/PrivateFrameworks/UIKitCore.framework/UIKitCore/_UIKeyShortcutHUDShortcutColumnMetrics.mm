@interface _UIKeyShortcutHUDShortcutColumnMetrics
+ (_UIKeyShortcutHUDShortcutColumnMetrics)metricsWithColumnWidth:(double)a3 modifiersWidth:(double)a4 inputWidth:(double)a5;
@end

@implementation _UIKeyShortcutHUDShortcutColumnMetrics

+ (_UIKeyShortcutHUDShortcutColumnMetrics)metricsWithColumnWidth:(double)a3 modifiersWidth:(double)a4 inputWidth:(double)a5
{
  v8 = objc_opt_new();
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a5;

  return v8;
}

@end
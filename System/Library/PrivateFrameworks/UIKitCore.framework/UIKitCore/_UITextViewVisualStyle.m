@interface _UITextViewVisualStyle
+ (id)inferredVisualStyle;
- (id)backgroundColor;
@end

@implementation _UITextViewVisualStyle

+ (id)inferredVisualStyle
{
  v2 = objc_alloc_init(_UITextViewVisualStyle_iOS);

  return v2;
}

- (id)backgroundColor
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:@"_UITextViewVisualStyle.m" lineNumber:41 description:{@"%@ should provide an implementation for %@", v6, v7}];

  return 0;
}

@end
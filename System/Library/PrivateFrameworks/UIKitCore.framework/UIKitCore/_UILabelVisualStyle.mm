@interface _UILabelVisualStyle
+ (id)inferredVisualStyle;
- (BOOL)shouldDelayStartMarquee;
- (BOOL)shouldDisableUpdateTextColorOnTraitCollectionChangeForAttributedString:(id)string attributes:(id)attributes;
- (BOOL)updatesTextColorOnUserInterfaceStyleChanges;
- (id)defaultFont;
- (void)actionsForDeallocationOfLabel:(id)label;
- (void)actionsForInitializationOfLabel:(id)label;
@end

@implementation _UILabelVisualStyle

+ (id)inferredVisualStyle
{
  if (_MergedGlobals_1384 != -1)
  {
    dispatch_once(&_MergedGlobals_1384, &__block_literal_global_694);
  }

  v3 = qword_1ED4A2B08;

  return v3;
}

- (id)defaultFont
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UILabelVisualStyle.m" lineNumber:47 description:{@"%@ should provide an implementation for %@", v6, v7}];

  return 0;
}

- (void)actionsForInitializationOfLabel:(id)label
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UILabelVisualStyle.m" lineNumber:53 description:{@"%@ should provide an implementation for %@", v6, v7}];
}

- (void)actionsForDeallocationOfLabel:(id)label
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UILabelVisualStyle.m" lineNumber:58 description:{@"%@ should provide an implementation for %@", v6, v7}];
}

- (BOOL)updatesTextColorOnUserInterfaceStyleChanges
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UILabelVisualStyle.m" lineNumber:63 description:{@"%@ should provide an implementation for %@", v6, v7}];

  return 0;
}

- (BOOL)shouldDelayStartMarquee
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UILabelVisualStyle.m" lineNumber:69 description:{@"%@ should provide an implementation for %@", v6, v7}];

  return 0;
}

- (BOOL)shouldDisableUpdateTextColorOnTraitCollectionChangeForAttributedString:(id)string attributes:(id)attributes
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UILabelVisualStyle.m" lineNumber:75 description:{@"%@ should provide an implementation for %@", v8, v9}];

  return 0;
}

@end
@interface _UILabelVisualStyle
+ (id)inferredVisualStyle;
- (BOOL)shouldDelayStartMarquee;
- (BOOL)shouldDisableUpdateTextColorOnTraitCollectionChangeForAttributedString:(id)a3 attributes:(id)a4;
- (BOOL)updatesTextColorOnUserInterfaceStyleChanges;
- (id)defaultFont;
- (void)actionsForDeallocationOfLabel:(id)a3;
- (void)actionsForInitializationOfLabel:(id)a3;
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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:@"_UILabelVisualStyle.m" lineNumber:47 description:{@"%@ should provide an implementation for %@", v6, v7}];

  return 0;
}

- (void)actionsForInitializationOfLabel:(id)a3
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [v8 handleFailureInMethod:a2 object:self file:@"_UILabelVisualStyle.m" lineNumber:53 description:{@"%@ should provide an implementation for %@", v6, v7}];
}

- (void)actionsForDeallocationOfLabel:(id)a3
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [v8 handleFailureInMethod:a2 object:self file:@"_UILabelVisualStyle.m" lineNumber:58 description:{@"%@ should provide an implementation for %@", v6, v7}];
}

- (BOOL)updatesTextColorOnUserInterfaceStyleChanges
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:@"_UILabelVisualStyle.m" lineNumber:63 description:{@"%@ should provide an implementation for %@", v6, v7}];

  return 0;
}

- (BOOL)shouldDelayStartMarquee
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:@"_UILabelVisualStyle.m" lineNumber:69 description:{@"%@ should provide an implementation for %@", v6, v7}];

  return 0;
}

- (BOOL)shouldDisableUpdateTextColorOnTraitCollectionChangeForAttributedString:(id)a3 attributes:(id)a4
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = NSStringFromSelector(a2);
  [v6 handleFailureInMethod:a2 object:self file:@"_UILabelVisualStyle.m" lineNumber:75 description:{@"%@ should provide an implementation for %@", v8, v9}];

  return 0;
}

@end
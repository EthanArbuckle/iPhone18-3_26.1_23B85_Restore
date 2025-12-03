@interface _UIColorWellVisualStyle
- (CGSize)intrinsicSizeWithinSize:(CGSize)size;
- (_UIColorWellControl)colorWell;
- (_UIColorWellVisualStyle)initWithColorWell:(id)well;
- (void)setSelectedColor:(id)color notifyingPicker:(BOOL)picker;
@end

@implementation _UIColorWellVisualStyle

- (_UIColorWellVisualStyle)initWithColorWell:(id)well
{
  wellCopy = well;
  v8.receiver = self;
  v8.super_class = _UIColorWellVisualStyle;
  v5 = [(UIView *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    [(_UIColorWellVisualStyle *)v5 setColorWell:wellCopy];
  }

  return v6;
}

- (void)setSelectedColor:(id)color notifyingPicker:(BOOL)picker
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIColorWellVisualStyle.m" lineNumber:21 description:{@"%@ should provide an implementation for %@", v7, v8}];
}

- (CGSize)intrinsicSizeWithinSize:(CGSize)size
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIColorWellVisualStyle.m" lineNumber:25 description:{@"%@ should provide an implementation for %@", v7, v8}];

  v9 = *MEMORY[0x1E695F060];
  v10 = *(MEMORY[0x1E695F060] + 8);
  result.height = v10;
  result.width = v9;
  return result;
}

- (_UIColorWellControl)colorWell
{
  WeakRetained = objc_loadWeakRetained(&self->_colorWell);

  return WeakRetained;
}

@end
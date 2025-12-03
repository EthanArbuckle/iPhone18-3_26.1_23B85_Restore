@interface SBWidgetIconResizeBackdropView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (SBWidgetIconResizeBackdropView)initWithBlurRadius:(double)radius;
- (void)setBlurRadius:(double)radius;
@end

@implementation SBWidgetIconResizeBackdropView

- (SBWidgetIconResizeBackdropView)initWithBlurRadius:(double)radius
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = SBWidgetIconResizeBackdropView;
  v4 = [(SBWidgetIconResizeBackdropView *)&v14 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_blurRadius = radius;
    v6 = objc_alloc(MEMORY[0x1E6979378]);
    v7 = [v6 initWithType:*MEMORY[0x1E6979928]];
    v8 = MEMORY[0x1E695E118];
    [v7 setValue:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E6979B48]];
    [v7 setValue:v8 forKey:*MEMORY[0x1E6979B78]];
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:radius];
    [v7 setValue:v9 forKey:*MEMORY[0x1E6979BA8]];

    [v7 setValue:@"medium" forKey:*MEMORY[0x1E6979BA0]];
    layer = [(SBWidgetIconResizeBackdropView *)v5 layer];
    v15[0] = v7;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    [layer setFilters:v11];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [layer setBackgroundColor:{objc_msgSend(clearColor, "CGColor")}];

    [layer setScale:100.0];
    [layer setAllowsEdgeAntialiasing:1];
  }

  return v5;
}

- (void)setBlurRadius:(double)radius
{
  if (self->_blurRadius != radius)
  {
    self->_blurRadius = radius;
    layer = [(SBWidgetIconResizeBackdropView *)self layer];
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:radius];
    [layer setValue:v4 forKeyPath:@"filters.gaussianBlur.inputRadius"];
  }
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"filters.gaussianBlur.inputRadius"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBWidgetIconResizeBackdropView;
    v5 = [(SBWidgetIconResizeBackdropView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

@end
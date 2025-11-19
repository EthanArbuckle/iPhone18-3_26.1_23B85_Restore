@interface SBWidgetIconResizeBackdropView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (SBWidgetIconResizeBackdropView)initWithBlurRadius:(double)a3;
- (void)setBlurRadius:(double)a3;
@end

@implementation SBWidgetIconResizeBackdropView

- (SBWidgetIconResizeBackdropView)initWithBlurRadius:(double)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = SBWidgetIconResizeBackdropView;
  v4 = [(SBWidgetIconResizeBackdropView *)&v14 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_blurRadius = a3;
    v6 = objc_alloc(MEMORY[0x1E6979378]);
    v7 = [v6 initWithType:*MEMORY[0x1E6979928]];
    v8 = MEMORY[0x1E695E118];
    [v7 setValue:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E6979B48]];
    [v7 setValue:v8 forKey:*MEMORY[0x1E6979B78]];
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    [v7 setValue:v9 forKey:*MEMORY[0x1E6979BA8]];

    [v7 setValue:@"medium" forKey:*MEMORY[0x1E6979BA0]];
    v10 = [(SBWidgetIconResizeBackdropView *)v5 layer];
    v15[0] = v7;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    [v10 setFilters:v11];

    v12 = [MEMORY[0x1E69DC888] clearColor];
    [v10 setBackgroundColor:{objc_msgSend(v12, "CGColor")}];

    [v10 setScale:100.0];
    [v10 setAllowsEdgeAntialiasing:1];
  }

  return v5;
}

- (void)setBlurRadius:(double)a3
{
  if (self->_blurRadius != a3)
  {
    self->_blurRadius = a3;
    v5 = [(SBWidgetIconResizeBackdropView *)self layer];
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    [v5 setValue:v4 forKeyPath:@"filters.gaussianBlur.inputRadius"];
  }
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"filters.gaussianBlur.inputRadius"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBWidgetIconResizeBackdropView;
    v5 = [(SBWidgetIconResizeBackdropView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

@end
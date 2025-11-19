@interface PKBlurView
- (BOOL)_shouldAnimatePropertyAdditivelyWithKey:(id)a3;
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (PKBlurView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)setBlurRadius:(double)a3;
@end

@implementation PKBlurView

- (PKBlurView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PKBlurView;
  v3 = [(PKBlurView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKBlurView *)v3 setOpaque:0];
    v4->_hitTestEnabled = 1;
  }

  return v4;
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
    v7.super_class = PKBlurView;
    v5 = [(PKBlurView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

- (BOOL)_shouldAnimatePropertyAdditivelyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"filters.gaussianBlur.inputRadius"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PKBlurView;
    v5 = [(PKBlurView *)&v7 _shouldAnimatePropertyAdditivelyWithKey:v4];
  }

  return v5;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  if (self->_hitTestEnabled)
  {
    v9 = v4;
    v10 = v5;
    v8.receiver = self;
    v8.super_class = PKBlurView;
    v6 = [(PKBlurView *)&v8 hitTest:a4 withEvent:a3.x, a3.y];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setBlurRadius:(double)a3
{
  if (self->_blurRadius != a3)
  {
    if (a3 != 0.0 && self->_filter == 0)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __28__PKBlurView_setBlurRadius___block_invoke;
      v8[3] = &unk_1E8010970;
      v8[4] = self;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v8];
    }

    self->_blurRadius = a3;
    if (self->_filter)
    {
      v6 = [(PKBlurView *)self layer];
      v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_blurRadius];
      [v6 setValue:v7 forKeyPath:@"filters.gaussianBlur.inputRadius"];
    }
  }
}

void __28__PKBlurView_setBlurRadius___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E6979378]);
  v3 = [v2 initWithType:*MEMORY[0x1E6979928]];
  v4 = *(a1 + 32);
  v5 = *(v4 + 408);
  *(v4 + 408) = v3;

  [*(*(a1 + 32) + 408) setValue:&unk_1F3CC7EC8 forKeyPath:@"inputRadius"];
  [*(*(a1 + 32) + 408) setName:@"gaussianBlur"];
  v6 = [*(a1 + 32) layer];
  v8[0] = *(*(a1 + 32) + 408);
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [v6 setFilters:v7];
}

@end
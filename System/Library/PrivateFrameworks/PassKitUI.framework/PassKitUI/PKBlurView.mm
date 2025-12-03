@interface PKBlurView
- (BOOL)_shouldAnimatePropertyAdditivelyWithKey:(id)key;
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (PKBlurView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)setBlurRadius:(double)radius;
@end

@implementation PKBlurView

- (PKBlurView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PKBlurView;
  v3 = [(PKBlurView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKBlurView *)v3 setOpaque:0];
    v4->_hitTestEnabled = 1;
  }

  return v4;
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
    v7.super_class = PKBlurView;
    v5 = [(PKBlurView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

- (BOOL)_shouldAnimatePropertyAdditivelyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"filters.gaussianBlur.inputRadius"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PKBlurView;
    v5 = [(PKBlurView *)&v7 _shouldAnimatePropertyAdditivelyWithKey:keyCopy];
  }

  return v5;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  if (self->_hitTestEnabled)
  {
    v9 = v4;
    v10 = v5;
    v8.receiver = self;
    v8.super_class = PKBlurView;
    v6 = [(PKBlurView *)&v8 hitTest:event withEvent:test.x, test.y];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setBlurRadius:(double)radius
{
  if (self->_blurRadius != radius)
  {
    if (radius != 0.0 && self->_filter == 0)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __28__PKBlurView_setBlurRadius___block_invoke;
      v8[3] = &unk_1E8010970;
      v8[4] = self;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v8];
    }

    self->_blurRadius = radius;
    if (self->_filter)
    {
      layer = [(PKBlurView *)self layer];
      v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_blurRadius];
      [layer setValue:v7 forKeyPath:@"filters.gaussianBlur.inputRadius"];
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
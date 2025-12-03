@interface SSBlurView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (SSBlurView)initWithFrame:(CGRect)frame;
- (double)blurRadius;
- (double)scale;
- (void)setBlurRadius:(double)radius;
- (void)setScale:(double)scale;
@end

@implementation SSBlurView

- (SSBlurView)initWithFrame:(CGRect)frame
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = SSBlurView;
  v3 = [(SSBlurView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = objc_alloc(MEMORY[0x1E6979378]);
  v5 = [v4 initWithType:*MEMORY[0x1E6979928]];
  v6 = MEMORY[0x1E695E118];
  [v5 setValue:MEMORY[0x1E695E118] forKey:@"inputHardEdges"];
  [v5 setValue:v6 forKey:@"inputNormalizeEdges"];
  [v5 setValue:&unk_1F555C1D0 forKey:@"inputRadius"];
  [v5 setValue:@"low" forKey:@"inputQuality"];
  [v5 setValue:@"low" forKey:@"inputIntermediateBitDepth"];
  [v5 setName:@"gaussianBlur"];
  layer = [(SSBlurView *)v3 layer];
  v11[0] = v5;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [layer setFilters:v8];

  [(SSBlurView *)v3 setScale:1.0];
  return v3;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  v7.receiver = self;
  v7.super_class = SSBlurView;
  if (-[SSBlurView _shouldAnimatePropertyWithKey:](&v7, sel__shouldAnimatePropertyWithKey_, keyCopy) || ([keyCopy isEqualToString:@"filters.gaussianBlur.inputRadius"] & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = [keyCopy isEqualToString:@"scale"];
  }

  return v5;
}

- (void)setScale:(double)scale
{
  _backdropLayer = [(SSBlurView *)self _backdropLayer];
  [_backdropLayer setScale:scale];
}

- (double)scale
{
  _backdropLayer = [(SSBlurView *)self _backdropLayer];
  [_backdropLayer scale];
  v4 = v3;

  return v4;
}

- (void)setBlurRadius:(double)radius
{
  layer = [(SSBlurView *)self layer];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:radius];
  [layer setValue:v4 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

- (double)blurRadius
{
  layer = [(SSBlurView *)self layer];
  v3 = [layer valueForKeyPath:@"filters.gaussianBlur.inputRadius"];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

@end
@interface SSBlurView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (SSBlurView)initWithFrame:(CGRect)a3;
- (double)blurRadius;
- (double)scale;
- (void)setBlurRadius:(double)a3;
- (void)setScale:(double)a3;
@end

@implementation SSBlurView

- (SSBlurView)initWithFrame:(CGRect)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = SSBlurView;
  v3 = [(SSBlurView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = objc_alloc(MEMORY[0x1E6979378]);
  v5 = [v4 initWithType:*MEMORY[0x1E6979928]];
  v6 = MEMORY[0x1E695E118];
  [v5 setValue:MEMORY[0x1E695E118] forKey:@"inputHardEdges"];
  [v5 setValue:v6 forKey:@"inputNormalizeEdges"];
  [v5 setValue:&unk_1F555C1D0 forKey:@"inputRadius"];
  [v5 setValue:@"low" forKey:@"inputQuality"];
  [v5 setValue:@"low" forKey:@"inputIntermediateBitDepth"];
  [v5 setName:@"gaussianBlur"];
  v7 = [(SSBlurView *)v3 layer];
  v11[0] = v5;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [v7 setFilters:v8];

  [(SSBlurView *)v3 setScale:1.0];
  return v3;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SSBlurView;
  if (-[SSBlurView _shouldAnimatePropertyWithKey:](&v7, sel__shouldAnimatePropertyWithKey_, v4) || ([v4 isEqualToString:@"filters.gaussianBlur.inputRadius"] & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqualToString:@"scale"];
  }

  return v5;
}

- (void)setScale:(double)a3
{
  v4 = [(SSBlurView *)self _backdropLayer];
  [v4 setScale:a3];
}

- (double)scale
{
  v2 = [(SSBlurView *)self _backdropLayer];
  [v2 scale];
  v4 = v3;

  return v4;
}

- (void)setBlurRadius:(double)a3
{
  v5 = [(SSBlurView *)self layer];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v5 setValue:v4 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

- (double)blurRadius
{
  v2 = [(SSBlurView *)self layer];
  v3 = [v2 valueForKeyPath:@"filters.gaussianBlur.inputRadius"];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

@end
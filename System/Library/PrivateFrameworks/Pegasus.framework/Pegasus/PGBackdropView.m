@interface PGBackdropView
- (NSString)groupName;
- (PGBackdropView)initWithFrame:(CGRect)a3;
- (double)backdropScale;
- (double)gaussianBlurRadius;
- (void)_updateFilters;
- (void)dealloc;
- (void)setBackdropScale:(double)a3;
- (void)setGaussianBlurRadius:(double)a3;
- (void)setGroupName:(id)a3;
@end

@implementation PGBackdropView

- (PGBackdropView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = PGLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureApplication initWithProcessIdentifier:?];
  }

  v17.receiver = self;
  v17.super_class = PGBackdropView;
  v9 = [(PGBackdropView *)&v17 initWithFrame:x, y, width, height];
  v10 = v9;
  if (v9)
  {
    [(__PGView *)v9 setAnimatedLayerProperties:&unk_1F3959198];
    v11 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
    [v11 setName:@"gaussianBlur"];
    [v11 setValue:&unk_1F3959170 forKey:@"inputRadius"];
    v12 = MEMORY[0x1E695E118];
    [v11 setValue:MEMORY[0x1E695E118] forKey:@"inputNormalizeEdges"];
    [v11 setValue:v12 forKey:@"inputHardEdges"];
    gaussianBlurFilter = v10->_gaussianBlurFilter;
    v10->_gaussianBlurFilter = v11;
    v14 = v11;

    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 addObserver:v10 selector:sel__updateFilters name:*MEMORY[0x1E69DD920] object:0];

    [(PGBackdropView *)v10 _updateFilters];
  }

  return v10;
}

- (void)dealloc
{
  v3 = PGLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureApplication initWithProcessIdentifier:?];
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = PGBackdropView;
  [(PGBackdropView *)&v5 dealloc];
}

- (void)_updateFilters
{
  v10 = [MEMORY[0x1E695DF70] arrayWithObject:self->_gaussianBlurFilter];
  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    averageColorFilter = self->_averageColorFilter;
    if (!averageColorFilter)
    {
      v4 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979810]];
      v5 = self->_averageColorFilter;
      self->_averageColorFilter = v4;

      averageColorFilter = self->_averageColorFilter;
    }

    [v10 addObject:averageColorFilter];
  }

  gaussianBlurFilter = self->_gaussianBlurFilter;
  v7 = MEMORY[0x1E696AD98];
  [(PGBackdropView *)self gaussianBlurRadius];
  v8 = [v7 numberWithDouble:?];
  [(CAFilter *)gaussianBlurFilter setValue:v8 forKey:@"inputRadius"];

  v9 = [(PGBackdropView *)self layer];
  [v9 setFilters:v10];
}

- (NSString)groupName
{
  v2 = [(PGBackdropView *)self layer];
  v3 = [v2 groupName];

  return v3;
}

- (void)setGroupName:(id)a3
{
  v4 = a3;
  v5 = [(PGBackdropView *)self layer];
  [v5 setGroupName:v4];
}

- (double)gaussianBlurRadius
{
  v2 = [(PGBackdropView *)self layer];
  v3 = [v2 valueForKeyPath:@"filters.gaussianBlur.inputRadius"];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setGaussianBlurRadius:(double)a3
{
  v5 = [(PGBackdropView *)self layer];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v5 setValue:v4 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

- (double)backdropScale
{
  v2 = [(PGBackdropView *)self layer];
  [v2 scale];
  v4 = v3;

  return v4;
}

- (void)setBackdropScale:(double)a3
{
  v4 = [(PGBackdropView *)self layer];
  [v4 setScale:a3];
}

@end
@interface PGBackdropView
- (NSString)groupName;
- (PGBackdropView)initWithFrame:(CGRect)frame;
- (double)backdropScale;
- (double)gaussianBlurRadius;
- (void)_updateFilters;
- (void)dealloc;
- (void)setBackdropScale:(double)scale;
- (void)setGaussianBlurRadius:(double)radius;
- (void)setGroupName:(id)name;
@end

@implementation PGBackdropView

- (PGBackdropView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = PGLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureApplication initWithProcessIdentifier:?];
  }

  v17.receiver = self;
  v17.super_class = PGBackdropView;
  height = [(PGBackdropView *)&v17 initWithFrame:x, y, width, height];
  v10 = height;
  if (height)
  {
    [(__PGView *)height setAnimatedLayerProperties:&unk_1F3959198];
    v11 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
    [v11 setName:@"gaussianBlur"];
    [v11 setValue:&unk_1F3959170 forKey:@"inputRadius"];
    v12 = MEMORY[0x1E695E118];
    [v11 setValue:MEMORY[0x1E695E118] forKey:@"inputNormalizeEdges"];
    [v11 setValue:v12 forKey:@"inputHardEdges"];
    gaussianBlurFilter = v10->_gaussianBlurFilter;
    v10->_gaussianBlurFilter = v11;
    v14 = v11;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel__updateFilters name:*MEMORY[0x1E69DD920] object:0];

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

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

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

  layer = [(PGBackdropView *)self layer];
  [layer setFilters:v10];
}

- (NSString)groupName
{
  layer = [(PGBackdropView *)self layer];
  groupName = [layer groupName];

  return groupName;
}

- (void)setGroupName:(id)name
{
  nameCopy = name;
  layer = [(PGBackdropView *)self layer];
  [layer setGroupName:nameCopy];
}

- (double)gaussianBlurRadius
{
  layer = [(PGBackdropView *)self layer];
  v3 = [layer valueForKeyPath:@"filters.gaussianBlur.inputRadius"];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setGaussianBlurRadius:(double)radius
{
  layer = [(PGBackdropView *)self layer];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:radius];
  [layer setValue:v4 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

- (double)backdropScale
{
  layer = [(PGBackdropView *)self layer];
  [layer scale];
  v4 = v3;

  return v4;
}

- (void)setBackdropScale:(double)scale
{
  layer = [(PGBackdropView *)self layer];
  [layer setScale:scale];
}

@end
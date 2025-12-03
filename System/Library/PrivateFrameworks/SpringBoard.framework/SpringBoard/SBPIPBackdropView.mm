@interface SBPIPBackdropView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (NSString)groupName;
- (SBPIPBackdropView)initWithFrame:(CGRect)frame;
- (double)backdropScale;
- (double)gaussianBlurRadius;
- (void)_updateFilters;
- (void)dealloc;
- (void)setBackdropScale:(double)scale;
- (void)setGaussianBlurRadius:(double)radius;
- (void)setGroupName:(id)name;
@end

@implementation SBPIPBackdropView

- (SBPIPBackdropView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = SBLogPIP();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SBPIPBackdropView initWithFrame:];
  }

  v18.receiver = self;
  v18.super_class = SBPIPBackdropView;
  height = [(SBPIPBackdropView *)&v18 initWithFrame:x, y, width, height];
  v10 = height;
  if (height)
  {
    animatedLayerProperties = height->_animatedLayerProperties;
    height->_animatedLayerProperties = &unk_28336DEA8;

    v12 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
    [v12 setName:@"gaussianBlur"];
    [v12 setValue:&unk_28336F200 forKey:@"inputRadius"];
    v13 = MEMORY[0x277CBEC38];
    [v12 setValue:MEMORY[0x277CBEC38] forKey:@"inputNormalizeEdges"];
    [v12 setValue:v13 forKey:@"inputHardEdges"];
    gaussianBlurFilter = v10->_gaussianBlurFilter;
    v10->_gaussianBlurFilter = v12;
    v15 = v12;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel__updateFilters name:*MEMORY[0x277D764C8] object:0];

    [(SBPIPBackdropView *)v10 _updateFilters];
  }

  return v10;
}

- (void)dealloc
{
  v3 = SBLogPIP();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [SBPIPBackdropView initWithFrame:];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = SBPIPBackdropView;
  [(SBPIPBackdropView *)&v5 dealloc];
}

- (void)_updateFilters
{
  v10 = [MEMORY[0x277CBEB18] arrayWithObject:self->_gaussianBlurFilter];
  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    averageColorFilter = self->_averageColorFilter;
    if (!averageColorFilter)
    {
      v4 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA268]];
      v5 = self->_averageColorFilter;
      self->_averageColorFilter = v4;

      averageColorFilter = self->_averageColorFilter;
    }

    [v10 addObject:averageColorFilter];
  }

  gaussianBlurFilter = self->_gaussianBlurFilter;
  v7 = MEMORY[0x277CCABB0];
  [(SBPIPBackdropView *)self gaussianBlurRadius];
  v8 = [v7 numberWithDouble:?];
  [(CAFilter *)gaussianBlurFilter setValue:v8 forKey:@"inputRadius"];

  layer = [(SBPIPBackdropView *)self layer];
  [layer setFilters:v10];
}

- (NSString)groupName
{
  layer = [(SBPIPBackdropView *)self layer];
  groupName = [layer groupName];

  return groupName;
}

- (void)setGroupName:(id)name
{
  nameCopy = name;
  layer = [(SBPIPBackdropView *)self layer];
  [layer setGroupName:nameCopy];
}

- (double)gaussianBlurRadius
{
  layer = [(SBPIPBackdropView *)self layer];
  v3 = [layer valueForKeyPath:@"filters.gaussianBlur.inputRadius"];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setGaussianBlurRadius:(double)radius
{
  layer = [(SBPIPBackdropView *)self layer];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:radius];
  [layer setValue:v4 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

- (double)backdropScale
{
  layer = [(SBPIPBackdropView *)self layer];
  [layer scale];
  v4 = v3;

  return v4;
}

- (void)setBackdropScale:(double)scale
{
  layer = [(SBPIPBackdropView *)self layer];
  [layer setScale:scale];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([(NSArray *)self->_animatedLayerProperties containsObject:keyCopy])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBPIPBackdropView;
    v5 = [(SBPIPBackdropView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

- (void)initWithFrame:.cold.1()
{
  v0 = _SBFLoggingMethodProem();
  OUTLINED_FUNCTION_0_13(&dword_21ED4E000, v1, v2, "%@", v3, v4, v5, v6, 2u);
}

@end
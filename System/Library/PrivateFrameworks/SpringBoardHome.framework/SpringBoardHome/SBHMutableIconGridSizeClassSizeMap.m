@interface SBHMutableIconGridSizeClassSizeMap
- (SBHMutableIconGridSizeClassSizeMap)initWithGridSizeClassSizes:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setGridSize:(SBHIconGridSize)a3 forGridSizeClass:(id)a4;
@end

@implementation SBHMutableIconGridSizeClassSizeMap

- (SBHMutableIconGridSizeClassSizeMap)initWithGridSizeClassSizes:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBHMutableIconGridSizeClassSizeMap;
  v5 = [(SBHIconGridSizeClassSizeMap *)&v9 initWithGridSizeClassSizes:v4];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    sizes = v5->_sizes;
    v5->_sizes = v6;
  }

  return v5;
}

- (void)setGridSize:(SBHIconGridSize)a3 forGridSizeClass:(id)a4
{
  v9 = a3;
  v5 = a4;
  if (!self->_sizes)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    sizes = self->_sizes;
    self->_sizes = v6;
  }

  v8 = [MEMORY[0x1E696B098] valueWithBytes:&v9 objCType:"{SBHIconGridSize=SS}"];
  [(NSMutableDictionary *)self->_sizes setObject:v8 forKey:v5];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(SBHIconGridSizeClassSizeMap *)SBHImmutableIconGridSizeClassSizeMap allocWithZone:a3];

  return [(SBHIconGridSizeClassSizeMap *)v4 initWithIconGridSizeClassSizeMap:self];
}

@end
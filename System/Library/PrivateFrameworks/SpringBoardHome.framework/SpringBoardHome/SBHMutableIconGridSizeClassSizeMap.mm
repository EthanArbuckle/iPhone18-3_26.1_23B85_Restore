@interface SBHMutableIconGridSizeClassSizeMap
- (SBHMutableIconGridSizeClassSizeMap)initWithGridSizeClassSizes:(id)sizes;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setGridSize:(SBHIconGridSize)size forGridSizeClass:(id)class;
@end

@implementation SBHMutableIconGridSizeClassSizeMap

- (SBHMutableIconGridSizeClassSizeMap)initWithGridSizeClassSizes:(id)sizes
{
  sizesCopy = sizes;
  v9.receiver = self;
  v9.super_class = SBHMutableIconGridSizeClassSizeMap;
  v5 = [(SBHIconGridSizeClassSizeMap *)&v9 initWithGridSizeClassSizes:sizesCopy];
  if (v5)
  {
    v6 = [sizesCopy mutableCopy];
    sizes = v5->_sizes;
    v5->_sizes = v6;
  }

  return v5;
}

- (void)setGridSize:(SBHIconGridSize)size forGridSizeClass:(id)class
{
  sizeCopy = size;
  classCopy = class;
  if (!self->_sizes)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    sizes = self->_sizes;
    self->_sizes = v6;
  }

  v8 = [MEMORY[0x1E696B098] valueWithBytes:&sizeCopy objCType:"{SBHIconGridSize=SS}"];
  [(NSMutableDictionary *)self->_sizes setObject:v8 forKey:classCopy];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [(SBHIconGridSizeClassSizeMap *)SBHImmutableIconGridSizeClassSizeMap allocWithZone:zone];

  return [(SBHIconGridSizeClassSizeMap *)v4 initWithIconGridSizeClassSizeMap:self];
}

@end
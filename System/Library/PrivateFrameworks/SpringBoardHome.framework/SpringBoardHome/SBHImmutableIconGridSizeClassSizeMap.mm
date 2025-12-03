@interface SBHImmutableIconGridSizeClassSizeMap
- (SBHImmutableIconGridSizeClassSizeMap)initWithGridSizeClassSizes:(id)sizes;
@end

@implementation SBHImmutableIconGridSizeClassSizeMap

- (SBHImmutableIconGridSizeClassSizeMap)initWithGridSizeClassSizes:(id)sizes
{
  sizesCopy = sizes;
  v9.receiver = self;
  v9.super_class = SBHImmutableIconGridSizeClassSizeMap;
  v5 = [(SBHIconGridSizeClassSizeMap *)&v9 initWithGridSizeClassSizes:sizesCopy];
  if (v5)
  {
    v6 = [sizesCopy copy];
    sizes = v5->_sizes;
    v5->_sizes = v6;
  }

  return v5;
}

@end
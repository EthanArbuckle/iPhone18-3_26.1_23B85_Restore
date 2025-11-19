@interface SBHImmutableIconGridSizeClassSizeMap
- (SBHImmutableIconGridSizeClassSizeMap)initWithGridSizeClassSizes:(id)a3;
@end

@implementation SBHImmutableIconGridSizeClassSizeMap

- (SBHImmutableIconGridSizeClassSizeMap)initWithGridSizeClassSizes:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBHImmutableIconGridSizeClassSizeMap;
  v5 = [(SBHIconGridSizeClassSizeMap *)&v9 initWithGridSizeClassSizes:v4];
  if (v5)
  {
    v6 = [v4 copy];
    sizes = v5->_sizes;
    v5->_sizes = v6;
  }

  return v5;
}

@end
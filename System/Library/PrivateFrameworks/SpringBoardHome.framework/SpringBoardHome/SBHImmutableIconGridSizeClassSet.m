@interface SBHImmutableIconGridSizeClassSet
- (SBHImmutableIconGridSizeClassSet)initWithGridSizeClasses:(id)a3;
- (SBHImmutableIconGridSizeClassSet)initWithIconGridSizeClassSet:(id)a3;
@end

@implementation SBHImmutableIconGridSizeClassSet

- (SBHImmutableIconGridSizeClassSet)initWithGridSizeClasses:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBHImmutableIconGridSizeClassSet;
  v5 = [(SBHIconGridSizeClassSet *)&v9 initWithGridSizeClasses:v4];
  if (v5)
  {
    v6 = [v4 copy];
    gridSizeClasses = v5->_gridSizeClasses;
    v5->_gridSizeClasses = v6;
  }

  return v5;
}

- (SBHImmutableIconGridSizeClassSet)initWithIconGridSizeClassSet:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SBHImmutableIconGridSizeClassSet;
  v5 = [(SBHIconGridSizeClassSet *)&v10 initWithIconGridSizeClassSet:v4];
  if (v5)
  {
    v6 = [v4 _removedGridSizeClasses];
    v7 = [v6 copy];
    removedGridSizeClasses = v5->_removedGridSizeClasses;
    v5->_removedGridSizeClasses = v7;
  }

  return v5;
}

@end
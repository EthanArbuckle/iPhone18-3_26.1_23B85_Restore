@interface SBHImmutableIconGridSizeClassSet
- (SBHImmutableIconGridSizeClassSet)initWithGridSizeClasses:(id)classes;
- (SBHImmutableIconGridSizeClassSet)initWithIconGridSizeClassSet:(id)set;
@end

@implementation SBHImmutableIconGridSizeClassSet

- (SBHImmutableIconGridSizeClassSet)initWithGridSizeClasses:(id)classes
{
  classesCopy = classes;
  v9.receiver = self;
  v9.super_class = SBHImmutableIconGridSizeClassSet;
  v5 = [(SBHIconGridSizeClassSet *)&v9 initWithGridSizeClasses:classesCopy];
  if (v5)
  {
    v6 = [classesCopy copy];
    gridSizeClasses = v5->_gridSizeClasses;
    v5->_gridSizeClasses = v6;
  }

  return v5;
}

- (SBHImmutableIconGridSizeClassSet)initWithIconGridSizeClassSet:(id)set
{
  setCopy = set;
  v10.receiver = self;
  v10.super_class = SBHImmutableIconGridSizeClassSet;
  v5 = [(SBHIconGridSizeClassSet *)&v10 initWithIconGridSizeClassSet:setCopy];
  if (v5)
  {
    _removedGridSizeClasses = [setCopy _removedGridSizeClasses];
    v7 = [_removedGridSizeClasses copy];
    removedGridSizeClasses = v5->_removedGridSizeClasses;
    v5->_removedGridSizeClasses = v7;
  }

  return v5;
}

@end
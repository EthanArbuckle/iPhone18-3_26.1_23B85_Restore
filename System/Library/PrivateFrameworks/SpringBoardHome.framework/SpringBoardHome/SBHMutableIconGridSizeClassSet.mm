@interface SBHMutableIconGridSizeClassSet
- (BOOL)containsGridSizeClass:(id)a3;
- (NSSet)gridSizeClasses;
- (SBHMutableIconGridSizeClassSet)initWithGridSizeClasses:(id)a3;
- (SBHMutableIconGridSizeClassSet)initWithIconGridSizeClassSet:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_replaceAllGridSizeClassesWithGridSizeClasses:(id)a3;
- (void)intersectGridSizeClassSet:(id)a3;
- (void)removeGridSizeClass:(id)a3;
- (void)setGridSizeClasses:(id)a3;
- (void)unionGridSizeClassSet:(id)a3;
@end

@implementation SBHMutableIconGridSizeClassSet

- (NSSet)gridSizeClasses
{
  v2 = [(NSMutableSet *)self->_gridSizeClasses copy];

  return v2;
}

- (SBHMutableIconGridSizeClassSet)initWithGridSizeClasses:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBHMutableIconGridSizeClassSet;
  v5 = [(SBHIconGridSizeClassSet *)&v9 initWithGridSizeClasses:v4];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    gridSizeClasses = v5->_gridSizeClasses;
    v5->_gridSizeClasses = v6;
  }

  return v5;
}

- (SBHMutableIconGridSizeClassSet)initWithIconGridSizeClassSet:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SBHMutableIconGridSizeClassSet;
  v5 = [(SBHIconGridSizeClassSet *)&v10 initWithIconGridSizeClassSet:v4];
  if (v5)
  {
    v6 = [v4 _removedGridSizeClasses];
    v7 = [v6 mutableCopy];
    removedGridSizeClasses = v5->_removedGridSizeClasses;
    v5->_removedGridSizeClasses = v7;
  }

  return v5;
}

- (void)setGridSizeClasses:(id)a3
{
  v6 = a3;
  if ((BSEqualSets() & 1) == 0)
  {
    v4 = [v6 mutableCopy];
    gridSizeClasses = self->_gridSizeClasses;
    self->_gridSizeClasses = v4;
  }
}

- (void)removeGridSizeClass:(id)a3
{
  v7 = a3;
  [(NSMutableSet *)self->_gridSizeClasses removeObject:?];
  removedGridSizeClasses = self->_removedGridSizeClasses;
  if (!removedGridSizeClasses)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v6 = self->_removedGridSizeClasses;
    self->_removedGridSizeClasses = v5;

    removedGridSizeClasses = self->_removedGridSizeClasses;
  }

  [(NSMutableSet *)removedGridSizeClasses addObject:v7];
}

- (BOOL)containsGridSizeClass:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SBHMutableIconGridSizeClassSet;
  if ([(SBHIconGridSizeClassSet *)&v7 containsGridSizeClass:v4]|| self->_containsAllGridSizeClasses)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    LOBYTE(v5) = 0;
    if (v4 && self->_containsAllNonDefaultGridSizeClasses)
    {
      v5 = [v4 isEqualToString:@"SBHIconGridSizeClassDefault"] ^ 1;
    }
  }

  return v5;
}

- (void)unionGridSizeClassSet:(id)a3
{
  v8 = a3;
  if ([v8 isAllGridSizeClassSet])
  {
    v4 = 24;
LABEL_5:
    *(&self->super.super.isa + v4) = 1;
    goto LABEL_7;
  }

  if ([v8 isAllNonDefaultGridSizeClassSet])
  {
    v4 = 25;
    goto LABEL_5;
  }

  v5 = [(SBHIconGridSizeClassSet *)self allGridSizeClasses];
  v6 = [v8 allGridSizeClasses];
  v7 = [v5 mutableCopy];
  [v7 unionSet:v6];
  [(SBHMutableIconGridSizeClassSet *)self _replaceAllGridSizeClassesWithGridSizeClasses:v7];

LABEL_7:
}

- (void)intersectGridSizeClassSet:(id)a3
{
  v7 = a3;
  if (([v7 isAllGridSizeClassSet] & 1) == 0)
  {
    self->_containsAllGridSizeClasses = 0;
    self->_containsAllNonDefaultGridSizeClasses = 0;
    v4 = [(SBHIconGridSizeClassSet *)self allGridSizeClasses];
    v5 = [v7 allGridSizeClasses];
    v6 = [v4 mutableCopy];
    if ([v7 isAllNonDefaultGridSizeClassSet])
    {
      [v6 removeObject:@"SBHIconGridSizeClassDefault"];
    }

    else
    {
      [v6 intersectSet:v5];
    }

    [(SBHMutableIconGridSizeClassSet *)self _replaceAllGridSizeClassesWithGridSizeClasses:v6];
  }
}

- (void)_replaceAllGridSizeClassesWithGridSizeClasses:(id)a3
{
  removedGridSizeClasses = self->_removedGridSizeClasses;
  v5 = a3;
  [(NSMutableSet *)removedGridSizeClasses removeAllObjects];
  [(NSMutableSet *)self->_gridSizeClasses setSet:v5];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(SBHIconGridSizeClassSet *)SBHImmutableIconGridSizeClassSet allocWithZone:a3];

  return [(SBHImmutableIconGridSizeClassSet *)v4 initWithIconGridSizeClassSet:self];
}

@end
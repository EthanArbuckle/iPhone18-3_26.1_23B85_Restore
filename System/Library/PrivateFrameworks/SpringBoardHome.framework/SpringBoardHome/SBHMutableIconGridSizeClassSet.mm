@interface SBHMutableIconGridSizeClassSet
- (BOOL)containsGridSizeClass:(id)class;
- (NSSet)gridSizeClasses;
- (SBHMutableIconGridSizeClassSet)initWithGridSizeClasses:(id)classes;
- (SBHMutableIconGridSizeClassSet)initWithIconGridSizeClassSet:(id)set;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_replaceAllGridSizeClassesWithGridSizeClasses:(id)classes;
- (void)intersectGridSizeClassSet:(id)set;
- (void)removeGridSizeClass:(id)class;
- (void)setGridSizeClasses:(id)classes;
- (void)unionGridSizeClassSet:(id)set;
@end

@implementation SBHMutableIconGridSizeClassSet

- (NSSet)gridSizeClasses
{
  v2 = [(NSMutableSet *)self->_gridSizeClasses copy];

  return v2;
}

- (SBHMutableIconGridSizeClassSet)initWithGridSizeClasses:(id)classes
{
  classesCopy = classes;
  v9.receiver = self;
  v9.super_class = SBHMutableIconGridSizeClassSet;
  v5 = [(SBHIconGridSizeClassSet *)&v9 initWithGridSizeClasses:classesCopy];
  if (v5)
  {
    v6 = [classesCopy mutableCopy];
    gridSizeClasses = v5->_gridSizeClasses;
    v5->_gridSizeClasses = v6;
  }

  return v5;
}

- (SBHMutableIconGridSizeClassSet)initWithIconGridSizeClassSet:(id)set
{
  setCopy = set;
  v10.receiver = self;
  v10.super_class = SBHMutableIconGridSizeClassSet;
  v5 = [(SBHIconGridSizeClassSet *)&v10 initWithIconGridSizeClassSet:setCopy];
  if (v5)
  {
    _removedGridSizeClasses = [setCopy _removedGridSizeClasses];
    v7 = [_removedGridSizeClasses mutableCopy];
    removedGridSizeClasses = v5->_removedGridSizeClasses;
    v5->_removedGridSizeClasses = v7;
  }

  return v5;
}

- (void)setGridSizeClasses:(id)classes
{
  classesCopy = classes;
  if ((BSEqualSets() & 1) == 0)
  {
    v4 = [classesCopy mutableCopy];
    gridSizeClasses = self->_gridSizeClasses;
    self->_gridSizeClasses = v4;
  }
}

- (void)removeGridSizeClass:(id)class
{
  classCopy = class;
  [(NSMutableSet *)self->_gridSizeClasses removeObject:?];
  removedGridSizeClasses = self->_removedGridSizeClasses;
  if (!removedGridSizeClasses)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v6 = self->_removedGridSizeClasses;
    self->_removedGridSizeClasses = v5;

    removedGridSizeClasses = self->_removedGridSizeClasses;
  }

  [(NSMutableSet *)removedGridSizeClasses addObject:classCopy];
}

- (BOOL)containsGridSizeClass:(id)class
{
  classCopy = class;
  v7.receiver = self;
  v7.super_class = SBHMutableIconGridSizeClassSet;
  if ([(SBHIconGridSizeClassSet *)&v7 containsGridSizeClass:classCopy]|| self->_containsAllGridSizeClasses)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    LOBYTE(v5) = 0;
    if (classCopy && self->_containsAllNonDefaultGridSizeClasses)
    {
      v5 = [classCopy isEqualToString:@"SBHIconGridSizeClassDefault"] ^ 1;
    }
  }

  return v5;
}

- (void)unionGridSizeClassSet:(id)set
{
  setCopy = set;
  if ([setCopy isAllGridSizeClassSet])
  {
    v4 = 24;
LABEL_5:
    *(&self->super.super.isa + v4) = 1;
    goto LABEL_7;
  }

  if ([setCopy isAllNonDefaultGridSizeClassSet])
  {
    v4 = 25;
    goto LABEL_5;
  }

  allGridSizeClasses = [(SBHIconGridSizeClassSet *)self allGridSizeClasses];
  allGridSizeClasses2 = [setCopy allGridSizeClasses];
  v7 = [allGridSizeClasses mutableCopy];
  [v7 unionSet:allGridSizeClasses2];
  [(SBHMutableIconGridSizeClassSet *)self _replaceAllGridSizeClassesWithGridSizeClasses:v7];

LABEL_7:
}

- (void)intersectGridSizeClassSet:(id)set
{
  setCopy = set;
  if (([setCopy isAllGridSizeClassSet] & 1) == 0)
  {
    self->_containsAllGridSizeClasses = 0;
    self->_containsAllNonDefaultGridSizeClasses = 0;
    allGridSizeClasses = [(SBHIconGridSizeClassSet *)self allGridSizeClasses];
    allGridSizeClasses2 = [setCopy allGridSizeClasses];
    v6 = [allGridSizeClasses mutableCopy];
    if ([setCopy isAllNonDefaultGridSizeClassSet])
    {
      [v6 removeObject:@"SBHIconGridSizeClassDefault"];
    }

    else
    {
      [v6 intersectSet:allGridSizeClasses2];
    }

    [(SBHMutableIconGridSizeClassSet *)self _replaceAllGridSizeClassesWithGridSizeClasses:v6];
  }
}

- (void)_replaceAllGridSizeClassesWithGridSizeClasses:(id)classes
{
  removedGridSizeClasses = self->_removedGridSizeClasses;
  classesCopy = classes;
  [(NSMutableSet *)removedGridSizeClasses removeAllObjects];
  [(NSMutableSet *)self->_gridSizeClasses setSet:classesCopy];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [(SBHIconGridSizeClassSet *)SBHImmutableIconGridSizeClassSet allocWithZone:zone];

  return [(SBHImmutableIconGridSizeClassSet *)v4 initWithIconGridSizeClassSet:self];
}

@end
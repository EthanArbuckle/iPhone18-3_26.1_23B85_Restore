@interface SBHMutableAllNonDefaultIconGridSizeClassSet
- (BOOL)containsGridSizeClass:(id)class;
- (void)addGridSizeClass:(id)class;
- (void)intersectGridSizeClassSet:(id)set;
- (void)removeGridSizeClass:(id)class;
- (void)unionGridSizeClassSet:(id)set;
@end

@implementation SBHMutableAllNonDefaultIconGridSizeClassSet

- (void)addGridSizeClass:(id)class
{
  classCopy = class;
  v5 = classCopy;
  if (!*(&self->super._containsAllNonDefaultGridSizeClasses + 1) && (!classCopy || [classCopy isEqualToString:@"SBHIconGridSizeClassDefault"]))
  {
    *(&self->super._containsAllNonDefaultGridSizeClasses + 1) = 1;
  }

  v6.receiver = self;
  v6.super_class = SBHMutableAllNonDefaultIconGridSizeClassSet;
  [(SBHMutableIconGridSizeClassSet *)&v6 addGridSizeClass:v5];
}

- (void)removeGridSizeClass:(id)class
{
  classCopy = class;
  v5 = classCopy;
  if (*(&self->super._containsAllNonDefaultGridSizeClasses + 1) && (!classCopy || [classCopy isEqualToString:@"SBHIconGridSizeClassDefault"]))
  {
    *(&self->super._containsAllNonDefaultGridSizeClasses + 1) = 0;
  }

  v6.receiver = self;
  v6.super_class = SBHMutableAllNonDefaultIconGridSizeClassSet;
  [(SBHMutableIconGridSizeClassSet *)&v6 removeGridSizeClass:v5];
}

- (BOOL)containsGridSizeClass:(id)class
{
  classCopy = class;
  _removedGridSizeClasses = [(SBHMutableIconGridSizeClassSet *)self _removedGridSizeClasses];
  v6 = [_removedGridSizeClasses containsObject:classCopy];

  v7 = (v6 & 1) == 0 && (classCopy && ![classCopy isEqualToString:@"SBHIconGridSizeClassDefault"] || *(&self->super._containsAllNonDefaultGridSizeClasses + 1));
  return v7;
}

- (void)intersectGridSizeClassSet:(id)set
{
  if ([set containsGridSizeClass:@"SBHIconGridSizeClassDefault"])
  {
    *(&self->super._containsAllNonDefaultGridSizeClasses + 1) = 0;
  }
}

- (void)unionGridSizeClassSet:(id)set
{
  if ([set containsGridSizeClass:@"SBHIconGridSizeClassDefault"])
  {
    *(&self->super._containsAllNonDefaultGridSizeClasses + 1) = 1;
  }
}

@end
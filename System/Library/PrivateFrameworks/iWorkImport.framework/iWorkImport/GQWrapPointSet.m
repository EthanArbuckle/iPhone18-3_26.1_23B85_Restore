@interface GQWrapPointSet
- (GQWrapPointSet)init;
- (void)dealloc;
@end

@implementation GQWrapPointSet

- (GQWrapPointSet)init
{
  v3.receiver = self;
  v3.super_class = GQWrapPointSet;
  if ([(GQWrapPointSet *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  mWrapPointSet = self->mWrapPointSet;
  if (mWrapPointSet)
  {
    sub_97AC(self->mWrapPointSet, mWrapPointSet[1]);
    operator delete();
  }

  v3.receiver = self;
  v3.super_class = GQWrapPointSet;
  [(GQWrapPointSet *)&v3 dealloc];
}

@end
@interface GQDGroup
- (void)dealloc;
@end

@implementation GQDGroup

- (void)dealloc
{
  mDrawables = self->mDrawables;
  if (mDrawables)
  {
    CFRelease(mDrawables);
  }

  v4.receiver = self;
  v4.super_class = GQDGroup;
  [(GQDDrawable *)&v4 dealloc];
}

@end
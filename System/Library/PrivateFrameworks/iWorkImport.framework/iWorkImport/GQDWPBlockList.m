@interface GQDWPBlockList
- (BOOL)isBlank;
- (void)dealloc;
@end

@implementation GQDWPBlockList

- (void)dealloc
{
  mChildren = self->mChildren;
  if (mChildren)
  {
    CFRelease(mChildren);
  }

  v4.receiver = self;
  v4.super_class = GQDWPBlockList;
  [(GQDWPBlockList *)&v4 dealloc];
}

- (BOOL)isBlank
{
  Count = CFArrayGetCount(self->mChildren);
  v4 = Count;
  if (Count)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(self->mChildren, 0);
    objc_opt_class();
    v6 = 0;
    if (objc_opt_isKindOfClass())
    {
      v7 = 1;
      do
      {
        if (([ValueAtIndex isBlank] & 1) == 0)
        {
          break;
        }

        v6 = v7 >= v4;
        if (v4 == v7)
        {
          break;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(self->mChildren, v7);
        objc_opt_class();
        ++v7;
      }

      while ((objc_opt_isKindOfClass() & 1) != 0);
    }
  }

  else
  {
    return 1;
  }

  return v6;
}

@end
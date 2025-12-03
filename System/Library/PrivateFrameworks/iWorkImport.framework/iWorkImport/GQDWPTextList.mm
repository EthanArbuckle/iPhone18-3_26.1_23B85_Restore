@interface GQDWPTextList
- (BOOL)isBlank;
- (void)dealloc;
- (void)setChildren:(__CFArray *)children;
@end

@implementation GQDWPTextList

- (void)dealloc
{
  mChildren = self->mChildren;
  if (mChildren)
  {
    CFRelease(mChildren);
  }

  v4.receiver = self;
  v4.super_class = GQDWPTextList;
  [(GQDWPTextList *)&v4 dealloc];
}

- (void)setChildren:(__CFArray *)children
{
  if (children)
  {
    CFRetain(children);
  }

  mChildren = self->mChildren;
  if (mChildren)
  {
    CFRelease(mChildren);
  }

  self->mChildren = children;
}

- (BOOL)isBlank
{
  Count = CFArrayGetCount(self->mChildren);
  if (Count < 1)
  {
    return 1;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = Count & 0x7FFFFFFF;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(self->mChildren, v4);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ![ValueAtIndex isBlank])
      {
        break;
      }

      v5 = ++v4 >= v6;
    }

    while (v6 != v4);
  }

  return v5;
}

@end
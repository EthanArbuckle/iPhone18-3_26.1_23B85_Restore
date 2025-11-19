@interface GQDWPTocContent
- (void)dealloc;
@end

@implementation GQDWPTocContent

- (void)dealloc
{
  mChildren = self->mChildren;
  if (mChildren)
  {
    CFRelease(mChildren);
  }

  v4.receiver = self;
  v4.super_class = GQDWPTocContent;
  [(GQDWPTocContent *)&v4 dealloc];
}

@end
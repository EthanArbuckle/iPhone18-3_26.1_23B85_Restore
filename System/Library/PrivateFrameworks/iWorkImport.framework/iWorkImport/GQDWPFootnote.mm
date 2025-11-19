@interface GQDWPFootnote
- (void)dealloc;
@end

@implementation GQDWPFootnote

- (void)dealloc
{
  mValue = self->mValue;
  if (mValue)
  {
    CFRelease(mValue);
  }

  v4.receiver = self;
  v4.super_class = GQDWPFootnote;
  [(GQDWPFootnote *)&v4 dealloc];
}

@end
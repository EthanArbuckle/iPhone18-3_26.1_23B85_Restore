@interface GQDWPAutoNumber
- (void)dealloc;
@end

@implementation GQDWPAutoNumber

- (void)dealloc
{
  mValue = self->mValue;
  if (mValue)
  {
    CFRelease(mValue);
  }

  v4.receiver = self;
  v4.super_class = GQDWPAutoNumber;
  [(GQDWPAutoNumber *)&v4 dealloc];
}

@end
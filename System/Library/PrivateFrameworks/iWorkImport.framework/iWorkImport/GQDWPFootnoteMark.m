@interface GQDWPFootnoteMark
- (void)dealloc;
@end

@implementation GQDWPFootnoteMark

- (void)dealloc
{
  mValue = self->mValue;
  if (mValue)
  {
    CFRelease(mValue);
  }

  v4.receiver = self;
  v4.super_class = GQDWPFootnoteMark;
  [(GQDWPFootnoteMark *)&v4 dealloc];
}

@end
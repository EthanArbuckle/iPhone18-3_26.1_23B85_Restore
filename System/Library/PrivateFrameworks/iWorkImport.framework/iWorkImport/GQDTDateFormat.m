@interface GQDTDateFormat
- (GQDTDateFormat)initWithFormatString:(__CFString *)a3;
- (void)dealloc;
@end

@implementation GQDTDateFormat

- (GQDTDateFormat)initWithFormatString:(__CFString *)a3
{
  v7.receiver = self;
  v7.super_class = GQDTDateFormat;
  v4 = [(GQDTDateFormat *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->mFormatString = a3;
    if (a3)
    {
      CFRetain(a3);
    }
  }

  return v5;
}

- (void)dealloc
{
  mFormatString = self->mFormatString;
  if (mFormatString)
  {
    CFRelease(mFormatString);
  }

  v4.receiver = self;
  v4.super_class = GQDTDateFormat;
  [(GQDTDateFormat *)&v4 dealloc];
}

@end
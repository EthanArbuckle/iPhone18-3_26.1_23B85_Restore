@interface GQDTDurationFormat
- (GQDTDurationFormat)initWithFormatString:(__CFString *)string;
- (void)dealloc;
@end

@implementation GQDTDurationFormat

- (GQDTDurationFormat)initWithFormatString:(__CFString *)string
{
  v7.receiver = self;
  v7.super_class = GQDTDurationFormat;
  v4 = [(GQDTDurationFormat *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->mFormatString = string;
    if (string)
    {
      CFRetain(string);
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
  v4.super_class = GQDTDurationFormat;
  [(GQDTDurationFormat *)&v4 dealloc];
}

@end
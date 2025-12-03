@interface GQDRGradientStop
- (int)readAttributesFromReader:(_xmlTextReader *)reader;
- (void)dealloc;
@end

@implementation GQDRGradientStop

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GQDRGradientStop;
  [(GQDRGradientStop *)&v3 dealloc];
}

- (int)readAttributesFromReader:(_xmlTextReader *)reader
{
  sub_42888(reader, qword_A35E8, "fraction", &self->mFraction);
  if (v3)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

@end
@interface GQDRGradientStop
- (int)readAttributesFromReader:(_xmlTextReader *)a3;
- (void)dealloc;
@end

@implementation GQDRGradientStop

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GQDRGradientStop;
  [(GQDRGradientStop *)&v3 dealloc];
}

- (int)readAttributesFromReader:(_xmlTextReader *)a3
{
  sub_42888(a3, qword_A35E8, "fraction", &self->mFraction);
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
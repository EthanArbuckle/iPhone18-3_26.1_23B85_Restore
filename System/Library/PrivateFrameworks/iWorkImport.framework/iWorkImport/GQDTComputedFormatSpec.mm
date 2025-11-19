@interface GQDTComputedFormatSpec
- (BOOL)isDateFormat;
- (BOOL)isDurationFormat;
- (BOOL)isNumberFormat;
- (void)dealloc;
@end

@implementation GQDTComputedFormatSpec

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GQDTComputedFormatSpec;
  [(GQDTComputedFormatSpec *)&v3 dealloc];
}

- (BOOL)isDateFormat
{
  mFormat = self->mFormat;
  objc_opt_class();
  return objc_opt_isKindOfClass() & 1;
}

- (BOOL)isDurationFormat
{
  mFormat = self->mFormat;
  objc_opt_class();
  return objc_opt_isKindOfClass() & 1;
}

- (BOOL)isNumberFormat
{
  mFormat = self->mFormat;
  objc_opt_class();
  return objc_opt_isKindOfClass() & 1;
}

@end
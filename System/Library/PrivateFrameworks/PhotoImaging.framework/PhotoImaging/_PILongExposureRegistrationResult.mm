@interface _PILongExposureRegistrationResult
- ($721907E0E1CDE8B6CD3FA271A8B25860)extent;
- (void)setExtent:(id *)a3;
@end

@implementation _PILongExposureRegistrationResult

- (void)setExtent:(id *)a3
{
  var1 = a3->var1;
  self->_extent.origin = a3->var0;
  self->_extent.size = var1;
}

- ($721907E0E1CDE8B6CD3FA271A8B25860)extent
{
  v3 = *&self[1].var0.var1;
  retstr->var0 = *&self->var1.var1;
  retstr->var1 = v3;
  return self;
}

@end
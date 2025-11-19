@interface PILongExposureRegistrationRequest
- ($721907E0E1CDE8B6CD3FA271A8B25860)cleanAperture;
- (id)copyWithZone:(_NSZone *)a3;
- (id)newRenderJob;
- (void)setCleanAperture:(id *)a3;
@end

@implementation PILongExposureRegistrationRequest

- (void)setCleanAperture:(id *)a3
{
  var1 = a3->var1;
  self->_cleanAperture.origin = a3->var0;
  self->_cleanAperture.size = var1;
}

- ($721907E0E1CDE8B6CD3FA271A8B25860)cleanAperture
{
  v3 = *&self[5].var1.var1;
  retstr->var0 = *&self[5].var0.var1;
  retstr->var1 = v3;
  return self;
}

- (id)newRenderJob
{
  v3 = [PILongExposureRegistrationJob alloc];

  return [(NURenderJob *)v3 initWithRequest:self];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = PILongExposureRegistrationRequest;
  v4 = [(NURenderRequest *)&v7 copyWithZone:a3];
  objc_storeStrong(v4 + 20, self->_recipe);
  size = self->_cleanAperture.size;
  *(v4 + 168) = self->_cleanAperture.origin;
  *(v4 + 184) = size;
  return v4;
}

@end
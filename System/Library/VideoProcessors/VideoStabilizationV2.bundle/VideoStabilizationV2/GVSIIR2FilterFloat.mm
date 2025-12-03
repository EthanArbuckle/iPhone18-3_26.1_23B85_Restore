@interface GVSIIR2FilterFloat
- (GVSIIR2FilterFloat)init;
- (float)updateValue:(float)result withPole:(float)pole;
- (void)reset;
@end

@implementation GVSIIR2FilterFloat

- (GVSIIR2FilterFloat)init
{
  v5.receiver = self;
  v5.super_class = GVSIIR2FilterFloat;
  v2 = [(GVSIIR2FilterFloat *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(GVSIIR2FilterFloat *)v2 reset];
  }

  return v3;
}

- (void)reset
{
  self->_filteredValue = 0.0;
  *&self->_lowPassBuffer1 = 0;
  self->_isFilterInitialized = 0;
}

- (float)updateValue:(float)result withPole:(float)pole
{
  if (pole > 1.0 || pole < 0.0)
  {
    return self->_filteredValue;
  }

  if (self->_isFilterInitialized)
  {
    v4 = result + (pole * (self->_lowPassBuffer1 - result));
    result = v4 + (pole * (self->_lowPassBuffer2 - v4));
    self->_lowPassBuffer1 = v4;
    self->_lowPassBuffer2 = result;
  }

  else
  {
    self->_lowPassBuffer1 = result;
    self->_lowPassBuffer2 = result;
    self->_isFilterInitialized = 1;
  }

  self->_filteredValue = result;
  return result;
}

@end
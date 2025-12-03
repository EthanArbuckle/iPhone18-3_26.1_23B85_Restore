@interface PNPersonParameter
- (BOOL)isValid;
- (PNPersonParameter)init;
- (id)description;
@end

@implementation PNPersonParameter

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  name = [(PNPersonParameter *)self name];
  [(PNPersonParameter *)self startValue];
  v6 = v5;
  [(PNPersonParameter *)self endValue];
  v8 = v7;
  [(PNPersonParameter *)self incrementValue];
  v10 = [v3 stringWithFormat:@"Parameter name: '%@', start: %lf, end: %lf, increment: %lf", name, v6, v8, v9];

  return v10;
}

- (BOOL)isValid
{
  name = [(PNPersonParameter *)self name];
  if (!name || ([(PNPersonParameter *)self startValue], v4 == 1.79769313e308) || ([(PNPersonParameter *)self endValue], v5 == 1.79769313e308))
  {
    v7 = 0;
  }

  else
  {
    [(PNPersonParameter *)self incrementValue];
    v7 = v6 != 1.79769313e308;
  }

  return v7;
}

- (PNPersonParameter)init
{
  v6.receiver = self;
  v6.super_class = PNPersonParameter;
  v2 = [(PNPersonParameter *)&v6 init];
  v3 = v2;
  if (v2)
  {
    name = v2->_name;
    v2->_name = 0;

    *&v3->_startValue = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v3->_incrementValue = 1.79769313e308;
  }

  return v3;
}

@end
@interface SRTrialParameter
- (SRTrialParameter)initWithParameter:(id)a3;
- (id)description;
@end

@implementation SRTrialParameter

- (SRTrialParameter)initWithParameter:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SRTrialParameter;
  v5 = [(SRTrialParameter *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    parameter = v5->_parameter;
    v5->_parameter = v6;

    v5->_hasValueFromTrial = 0;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(SRParameter *)self->_parameter description];
  v5 = v4;
  if (self->_hasValueFromTrial)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [v3 stringWithFormat:@"parameter = (%@), hasValueFromTrial = %@", v4, v6];

  return v7;
}

@end
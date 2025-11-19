@interface SBPressTuple
- (BOOL)isEqual:(id)a3;
- (SBPressTuple)initWithDurationDown:(double)a3 durationUp:(double)a4;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation SBPressTuple

- (SBPressTuple)initWithDurationDown:(double)a3 durationUp:(double)a4
{
  v7.receiver = self;
  v7.super_class = SBPressTuple;
  result = [(SBPressTuple *)&v7 init];
  if (result)
  {
    result->_durationDown = a3;
    result->_durationUp = a4;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8 && (-[SBPressTuple durationDown](self, "durationDown"), [v8 durationDown], BSFloatEqualToFloat()))
  {
    [(SBPressTuple *)self durationUp];
    [v8 durationUp];
    v9 = BSFloatEqualToFloat();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)succinctDescription
{
  v2 = [(SBPressTuple *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendFloat:@"durationDown" withName:self->_durationDown];
  v5 = [v3 appendFloat:@"durationUp" withName:self->_durationUp];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBPressTuple *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

@end
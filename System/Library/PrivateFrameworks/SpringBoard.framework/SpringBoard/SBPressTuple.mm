@interface SBPressTuple
- (BOOL)isEqual:(id)equal;
- (SBPressTuple)initWithDurationDown:(double)down durationUp:(double)up;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation SBPressTuple

- (SBPressTuple)initWithDurationDown:(double)down durationUp:(double)up
{
  v7.receiver = self;
  v7.super_class = SBPressTuple;
  result = [(SBPressTuple *)&v7 init];
  if (result)
  {
    result->_durationDown = down;
    result->_durationUp = up;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = equalCopy;
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
  succinctDescriptionBuilder = [(SBPressTuple *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendFloat:@"durationDown" withName:self->_durationDown];
  v5 = [v3 appendFloat:@"durationUp" withName:self->_durationUp];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBPressTuple *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end
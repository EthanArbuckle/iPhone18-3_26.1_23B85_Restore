@interface SASPreheatOptions
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (SASPreheatOptions)initWithBuilder:(id)builder;
- (SASPreheatOptions)initWithCoder:(id)coder;
- (SASPreheatOptions)initWithPreheatRequest:(id)request lockState:(unint64_t)state;
- (id)description;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SASPreheatOptions

- (SASPreheatOptions)initWithBuilder:(id)builder
{
  v4 = [SASPreheatOptions newWithBuilder:builder];

  return v4;
}

- (SASPreheatOptions)initWithPreheatRequest:(id)request lockState:(unint64_t)state
{
  requestCopy = request;
  v11.receiver = self;
  v11.super_class = SASPreheatOptions;
  v7 = [(SASPreheatOptions *)&v11 init];
  if (v7)
  {
    v8 = [requestCopy copy];
    preheatRequest = v7->_preheatRequest;
    v7->_preheatRequest = v8;

    v7->_lockState = state;
  }

  return v7;
}

- (id)description
{
  v17[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v16.receiver = self;
  v16.super_class = SASPreheatOptions;
  v4 = [(SASPreheatOptions *)&v16 description];
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  v6 = [(SASPreheatRequest *)self->_preheatRequest description];
  v7 = [v5 initWithFormat:@"preheatRequest = %@", v6];
  v17[0] = v7;
  v8 = objc_alloc(MEMORY[0x1E696AEC0]);
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_lockState];
  v10 = [v8 initWithFormat:@"lockState = %@", v9];
  v17[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v12 = [v11 componentsJoinedByString:{@", "}];
  v13 = [v3 initWithFormat:@"%@ {%@}", v4, v12];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (unint64_t)hash
{
  v3 = [(SASPreheatRequest *)self->_preheatRequest hash];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_lockState];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      lockState = self->_lockState;
      if (lockState == [(SASPreheatOptions *)v5 lockState])
      {
        preheatRequest = [(SASPreheatOptions *)v5 preheatRequest];
        preheatRequest = self->_preheatRequest;
        v9 = preheatRequest == preheatRequest || [(SASPreheatRequest *)preheatRequest isEqual:preheatRequest];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (SASPreheatOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SASPreheatOptions::preheatRequest"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SASPreheatOptions::lockState"];

  unsignedIntegerValue = [v6 unsignedIntegerValue];
  v8 = [(SASPreheatOptions *)self initWithPreheatRequest:v5 lockState:unsignedIntegerValue];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  preheatRequest = self->_preheatRequest;
  coderCopy = coder;
  [coderCopy encodeObject:preheatRequest forKey:@"SASPreheatOptions::preheatRequest"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_lockState];
  [coderCopy encodeObject:v6 forKey:@"SASPreheatOptions::lockState"];
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = objc_alloc_init(_SASPreheatOptionsMutation);
  if (builderCopy)
  {
    builderCopy[2](builderCopy, v4);
  }

  generate = [(_SASPreheatOptionsMutation *)v4 generate];

  return generate;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_SASPreheatOptionsMutation alloc] initWithBaseModel:self];
    mutatorCopy[2](mutatorCopy, v5);
    generate = [(_SASPreheatOptionsMutation *)v5 generate];
  }

  else
  {
    generate = [(SASPreheatOptions *)self copy];
  }

  return generate;
}

@end
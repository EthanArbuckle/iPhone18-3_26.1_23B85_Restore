@interface SASPreheatOptions
+ (id)newWithBuilder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SASPreheatOptions)initWithBuilder:(id)a3;
- (SASPreheatOptions)initWithCoder:(id)a3;
- (SASPreheatOptions)initWithPreheatRequest:(id)a3 lockState:(unint64_t)a4;
- (id)description;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SASPreheatOptions

- (SASPreheatOptions)initWithBuilder:(id)a3
{
  v4 = [SASPreheatOptions newWithBuilder:a3];

  return v4;
}

- (SASPreheatOptions)initWithPreheatRequest:(id)a3 lockState:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = SASPreheatOptions;
  v7 = [(SASPreheatOptions *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    preheatRequest = v7->_preheatRequest;
    v7->_preheatRequest = v8;

    v7->_lockState = a4;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      lockState = self->_lockState;
      if (lockState == [(SASPreheatOptions *)v5 lockState])
      {
        v7 = [(SASPreheatOptions *)v5 preheatRequest];
        preheatRequest = self->_preheatRequest;
        v9 = preheatRequest == v7 || [(SASPreheatRequest *)preheatRequest isEqual:v7];
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

- (SASPreheatOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SASPreheatOptions::preheatRequest"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SASPreheatOptions::lockState"];

  v7 = [v6 unsignedIntegerValue];
  v8 = [(SASPreheatOptions *)self initWithPreheatRequest:v5 lockState:v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  preheatRequest = self->_preheatRequest;
  v5 = a3;
  [v5 encodeObject:preheatRequest forKey:@"SASPreheatOptions::preheatRequest"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_lockState];
  [v5 encodeObject:v6 forKey:@"SASPreheatOptions::lockState"];
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_SASPreheatOptionsMutation);
  if (v3)
  {
    v3[2](v3, v4);
  }

  v5 = [(_SASPreheatOptionsMutation *)v4 generate];

  return v5;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_SASPreheatOptionsMutation alloc] initWithBaseModel:self];
    v4[2](v4, v5);
    v6 = [(_SASPreheatOptionsMutation *)v5 generate];
  }

  else
  {
    v6 = [(SASPreheatOptions *)self copy];
  }

  return v6;
}

@end
@interface SASPreheatRequest
+ (id)newWithBuilder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SASPreheatRequest)initWithBuilder:(id)a3;
- (SASPreheatRequest)initWithCoder:(id)a3;
- (SASPreheatRequest)initWithRequestSource:(int64_t)a3 configuration:(int64_t)a4 activationReferenceIdentifier:(id)a5;
- (id)description;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SASPreheatRequest

- (SASPreheatRequest)initWithBuilder:(id)a3
{
  v4 = [SASPreheatRequest newWithBuilder:a3];

  return v4;
}

- (SASPreheatRequest)initWithRequestSource:(int64_t)a3 configuration:(int64_t)a4 activationReferenceIdentifier:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = SASPreheatRequest;
  v9 = [(SASPreheatRequest *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_requestSource = a3;
    v9->_configuration = a4;
    v11 = [v8 copy];
    activationReferenceIdentifier = v10->_activationReferenceIdentifier;
    v10->_activationReferenceIdentifier = v11;
  }

  return v10;
}

- (id)description
{
  v21[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v20.receiver = self;
  v20.super_class = SASPreheatRequest;
  v4 = [(SASPreheatRequest *)&v20 description];
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_requestSource];
  v7 = [v5 initWithFormat:@"requestSource = %@", v6];
  v21[0] = v7;
  v8 = objc_alloc(MEMORY[0x1E696AEC0]);
  configuration = self->_configuration;
  v10 = SASPreheatConfigurationGetName(configuration);
  v11 = [v8 initWithFormat:@"configuration = %ld (%@)", configuration, v10];
  v21[1] = v11;
  v12 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13 = [(NSUUID *)self->_activationReferenceIdentifier description];
  v14 = [v12 initWithFormat:@"activationReferenceIdentifier = %@", v13];
  v21[2] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];
  v16 = [v15 componentsJoinedByString:{@", "}];
  v17 = [v3 initWithFormat:@"%@ {%@}", v4, v16];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_requestSource];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_configuration];
  v6 = [v5 hash] ^ v4;
  v7 = [(NSUUID *)self->_activationReferenceIdentifier hash];

  return v6 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      requestSource = self->_requestSource;
      if (requestSource == [(SASPreheatRequest *)v5 requestSource]&& (configuration = self->_configuration, configuration == [(SASPreheatRequest *)v5 configuration]))
      {
        v8 = [(SASPreheatRequest *)v5 activationReferenceIdentifier];
        activationReferenceIdentifier = self->_activationReferenceIdentifier;
        v10 = activationReferenceIdentifier == v8 || [(NSUUID *)activationReferenceIdentifier isEqual:v8];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (SASPreheatRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SASPreheatRequest::requestSource"];
  v6 = [v5 integerValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SASPreheatRequest::configuration"];
  v8 = [v7 integerValue];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SASPreheatRequest::activationReferenceIdentifier"];

  v10 = [(SASPreheatRequest *)self initWithRequestSource:v6 configuration:v8 activationReferenceIdentifier:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  requestSource = self->_requestSource;
  v8 = a3;
  v6 = [v4 numberWithInteger:requestSource];
  [v8 encodeObject:v6 forKey:@"SASPreheatRequest::requestSource"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_configuration];
  [v8 encodeObject:v7 forKey:@"SASPreheatRequest::configuration"];

  [v8 encodeObject:self->_activationReferenceIdentifier forKey:@"SASPreheatRequest::activationReferenceIdentifier"];
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_SASPreheatRequestMutation);
  if (v3)
  {
    v3[2](v3, v4);
  }

  v5 = [(_SASPreheatRequestMutation *)v4 generate];

  return v5;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_SASPreheatRequestMutation alloc] initWithBaseModel:self];
    v4[2](v4, v5);
    v6 = [(_SASPreheatRequestMutation *)v5 generate];
  }

  else
  {
    v6 = [(SASPreheatRequest *)self copy];
  }

  return v6;
}

@end
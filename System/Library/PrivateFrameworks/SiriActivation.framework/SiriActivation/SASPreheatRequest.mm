@interface SASPreheatRequest
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (SASPreheatRequest)initWithBuilder:(id)builder;
- (SASPreheatRequest)initWithCoder:(id)coder;
- (SASPreheatRequest)initWithRequestSource:(int64_t)source configuration:(int64_t)configuration activationReferenceIdentifier:(id)identifier;
- (id)description;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SASPreheatRequest

- (SASPreheatRequest)initWithBuilder:(id)builder
{
  v4 = [SASPreheatRequest newWithBuilder:builder];

  return v4;
}

- (SASPreheatRequest)initWithRequestSource:(int64_t)source configuration:(int64_t)configuration activationReferenceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = SASPreheatRequest;
  v9 = [(SASPreheatRequest *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_requestSource = source;
    v9->_configuration = configuration;
    v11 = [identifierCopy copy];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      requestSource = self->_requestSource;
      if (requestSource == [(SASPreheatRequest *)v5 requestSource]&& (configuration = self->_configuration, configuration == [(SASPreheatRequest *)v5 configuration]))
      {
        activationReferenceIdentifier = [(SASPreheatRequest *)v5 activationReferenceIdentifier];
        activationReferenceIdentifier = self->_activationReferenceIdentifier;
        v10 = activationReferenceIdentifier == activationReferenceIdentifier || [(NSUUID *)activationReferenceIdentifier isEqual:activationReferenceIdentifier];
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

- (SASPreheatRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SASPreheatRequest::requestSource"];
  integerValue = [v5 integerValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SASPreheatRequest::configuration"];
  integerValue2 = [v7 integerValue];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SASPreheatRequest::activationReferenceIdentifier"];

  v10 = [(SASPreheatRequest *)self initWithRequestSource:integerValue configuration:integerValue2 activationReferenceIdentifier:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  requestSource = self->_requestSource;
  coderCopy = coder;
  v6 = [v4 numberWithInteger:requestSource];
  [coderCopy encodeObject:v6 forKey:@"SASPreheatRequest::requestSource"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_configuration];
  [coderCopy encodeObject:v7 forKey:@"SASPreheatRequest::configuration"];

  [coderCopy encodeObject:self->_activationReferenceIdentifier forKey:@"SASPreheatRequest::activationReferenceIdentifier"];
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = objc_alloc_init(_SASPreheatRequestMutation);
  if (builderCopy)
  {
    builderCopy[2](builderCopy, v4);
  }

  generate = [(_SASPreheatRequestMutation *)v4 generate];

  return generate;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_SASPreheatRequestMutation alloc] initWithBaseModel:self];
    mutatorCopy[2](mutatorCopy, v5);
    generate = [(_SASPreheatRequestMutation *)v5 generate];
  }

  else
  {
    generate = [(SASPreheatRequest *)self copy];
  }

  return generate;
}

@end
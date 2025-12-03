@interface SASPresentationState
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (SASPresentationState)initWithBuilder:(id)builder;
- (SASPresentationState)initWithCoder:(id)coder;
- (SASPresentationState)initWithPresentationIdentifier:(id)identifier;
- (id)description;
- (id)mutatedCopyWithMutator:(id)mutator;
@end

@implementation SASPresentationState

- (SASPresentationState)initWithBuilder:(id)builder
{
  v4 = [SASPresentationState newWithBuilder:builder];

  return v4;
}

- (SASPresentationState)initWithPresentationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = SASPresentationState;
  v5 = [(SASPresentationState *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    presentationIdentifier = v5->_presentationIdentifier;
    v5->_presentationIdentifier = v6;
  }

  return v5;
}

- (id)description
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13.receiver = self;
  v13.super_class = SASPresentationState;
  v4 = [(SASPresentationState *)&v13 description];
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  v6 = [(NSString *)self->_presentationIdentifier description];
  v7 = [v5 initWithFormat:@"presentationIdentifier = %@", v6];
  v14[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v9 = [v8 componentsJoinedByString:{@", "}];
  v10 = [v3 initWithFormat:@"%@ {%@}", v4, v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      presentationIdentifier = [(SASPresentationState *)equalCopy presentationIdentifier];
      presentationIdentifier = self->_presentationIdentifier;
      v7 = presentationIdentifier == presentationIdentifier || [(NSString *)presentationIdentifier isEqual:presentationIdentifier];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (SASPresentationState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SASPresentationState::presentationIdentifier"];

  v6 = [(SASPresentationState *)self initWithPresentationIdentifier:v5];
  return v6;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = objc_alloc_init(_SASPresentationStateMutation);
  if (builderCopy)
  {
    builderCopy[2](builderCopy, v4);
  }

  generate = [(_SASPresentationStateMutation *)v4 generate];

  return generate;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_SASPresentationStateMutation alloc] initWithBaseModel:self];
    mutatorCopy[2](mutatorCopy, v5);
    generate = [(_SASPresentationStateMutation *)v5 generate];
  }

  else
  {
    generate = [(SASPresentationState *)self copy];
  }

  return generate;
}

@end
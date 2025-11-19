@interface SASPresentationState
+ (id)newWithBuilder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SASPresentationState)initWithBuilder:(id)a3;
- (SASPresentationState)initWithCoder:(id)a3;
- (SASPresentationState)initWithPresentationIdentifier:(id)a3;
- (id)description;
- (id)mutatedCopyWithMutator:(id)a3;
@end

@implementation SASPresentationState

- (SASPresentationState)initWithBuilder:(id)a3
{
  v4 = [SASPresentationState newWithBuilder:a3];

  return v4;
}

- (SASPresentationState)initWithPresentationIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SASPresentationState;
  v5 = [(SASPresentationState *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(SASPresentationState *)v4 presentationIdentifier];
      presentationIdentifier = self->_presentationIdentifier;
      v7 = presentationIdentifier == v5 || [(NSString *)presentationIdentifier isEqual:v5];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (SASPresentationState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SASPresentationState::presentationIdentifier"];

  v6 = [(SASPresentationState *)self initWithPresentationIdentifier:v5];
  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_SASPresentationStateMutation);
  if (v3)
  {
    v3[2](v3, v4);
  }

  v5 = [(_SASPresentationStateMutation *)v4 generate];

  return v5;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_SASPresentationStateMutation alloc] initWithBaseModel:self];
    v4[2](v4, v5);
    v6 = [(_SASPresentationStateMutation *)v5 generate];
  }

  else
  {
    v6 = [(SASPresentationState *)self copy];
  }

  return v6;
}

@end
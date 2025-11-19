@interface SASPresentationAggregateState
+ (id)newWithBuilder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SASPresentationAggregateState)initWithBuilder:(id)a3;
- (SASPresentationAggregateState)initWithCanAcceptNewActivations:(BOOL)a3 didNewActivationAcceptanceChange:(BOOL)a4 requestState:(int64_t)a5;
- (SASPresentationAggregateState)initWithCoder:(id)a3;
- (id)description;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SASPresentationAggregateState

- (id)description
{
  v20[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v19.receiver = self;
  v19.super_class = SASPresentationAggregateState;
  v4 = [(SASPresentationAggregateState *)&v19 description];
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (self->_canAcceptNewActivations)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [v5 initWithFormat:@"canAcceptNewActivations = %@", v6];
  v20[0] = v7;
  v8 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (self->_didNewActivationAcceptanceChange)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = [v8 initWithFormat:@"didNewActivationAcceptanceChange = %@", v9];
  v20[1] = v10;
  v11 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:self->_requestState];
  v13 = [v11 initWithFormat:@"requestState = %@", v12];
  v20[2] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
  v15 = [v14 componentsJoinedByString:{@", "}];
  v16 = [v3 initWithFormat:@"%@ {%@}", v4, v15];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (SASPresentationAggregateState)initWithBuilder:(id)a3
{
  v4 = [SASPresentationAggregateState newWithBuilder:a3];

  return v4;
}

- (SASPresentationAggregateState)initWithCanAcceptNewActivations:(BOOL)a3 didNewActivationAcceptanceChange:(BOOL)a4 requestState:(int64_t)a5
{
  v9.receiver = self;
  v9.super_class = SASPresentationAggregateState;
  result = [(SASPresentationAggregateState *)&v9 init];
  if (result)
  {
    result->_canAcceptNewActivations = a3;
    result->_didNewActivationAcceptanceChange = a4;
    result->_requestState = a5;
  }

  return result;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:self->_canAcceptNewActivations];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_didNewActivationAcceptanceChange];
  v6 = [v5 hash] ^ v4;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_requestState];
  v8 = [v7 hash];

  return v6 ^ v8;
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
      canAcceptNewActivations = self->_canAcceptNewActivations;
      if (canAcceptNewActivations == [(SASPresentationAggregateState *)v5 canAcceptNewActivations]&& (didNewActivationAcceptanceChange = self->_didNewActivationAcceptanceChange, didNewActivationAcceptanceChange == [(SASPresentationAggregateState *)v5 didNewActivationAcceptanceChange]))
      {
        requestState = self->_requestState;
        v9 = requestState == [(SASPresentationAggregateState *)v5 requestState];
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

- (SASPresentationAggregateState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SASPresentationAggregateState::canAcceptNewActivations"];
  v6 = [v5 BOOLValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SASPresentationAggregateState::didNewActivationAcceptanceChange"];
  v8 = [v7 BOOLValue];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SASPresentationAggregateState::requestState"];

  v10 = [v9 integerValue];

  return [(SASPresentationAggregateState *)self initWithCanAcceptNewActivations:v6 didNewActivationAcceptanceChange:v8 requestState:v10];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  canAcceptNewActivations = self->_canAcceptNewActivations;
  v6 = a3;
  v7 = [v4 numberWithBool:canAcceptNewActivations];
  [v6 encodeObject:v7 forKey:@"SASPresentationAggregateState::canAcceptNewActivations"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_didNewActivationAcceptanceChange];
  [v6 encodeObject:v8 forKey:@"SASPresentationAggregateState::didNewActivationAcceptanceChange"];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_requestState];
  [v6 encodeObject:v9 forKey:@"SASPresentationAggregateState::requestState"];
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_SASPresentationAggregateStateMutation);
  if (v3)
  {
    v3[2](v3, v4);
  }

  v5 = [(_SASPresentationAggregateStateMutation *)v4 generate];

  return v5;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_SASPresentationAggregateStateMutation alloc] initWithBaseModel:self];
    v4[2](v4, v5);
    v6 = [(_SASPresentationAggregateStateMutation *)v5 generate];
  }

  else
  {
    v6 = [(SASPresentationAggregateState *)self copy];
  }

  return v6;
}

@end
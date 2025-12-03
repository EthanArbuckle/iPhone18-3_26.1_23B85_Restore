@interface SASPresentationAggregateState
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (SASPresentationAggregateState)initWithBuilder:(id)builder;
- (SASPresentationAggregateState)initWithCanAcceptNewActivations:(BOOL)activations didNewActivationAcceptanceChange:(BOOL)change requestState:(int64_t)state;
- (SASPresentationAggregateState)initWithCoder:(id)coder;
- (id)description;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (SASPresentationAggregateState)initWithBuilder:(id)builder
{
  v4 = [SASPresentationAggregateState newWithBuilder:builder];

  return v4;
}

- (SASPresentationAggregateState)initWithCanAcceptNewActivations:(BOOL)activations didNewActivationAcceptanceChange:(BOOL)change requestState:(int64_t)state
{
  v9.receiver = self;
  v9.super_class = SASPresentationAggregateState;
  result = [(SASPresentationAggregateState *)&v9 init];
  if (result)
  {
    result->_canAcceptNewActivations = activations;
    result->_didNewActivationAcceptanceChange = change;
    result->_requestState = state;
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

- (SASPresentationAggregateState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SASPresentationAggregateState::canAcceptNewActivations"];
  bOOLValue = [v5 BOOLValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SASPresentationAggregateState::didNewActivationAcceptanceChange"];
  bOOLValue2 = [v7 BOOLValue];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SASPresentationAggregateState::requestState"];

  integerValue = [v9 integerValue];

  return [(SASPresentationAggregateState *)self initWithCanAcceptNewActivations:bOOLValue didNewActivationAcceptanceChange:bOOLValue2 requestState:integerValue];
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  canAcceptNewActivations = self->_canAcceptNewActivations;
  coderCopy = coder;
  v7 = [v4 numberWithBool:canAcceptNewActivations];
  [coderCopy encodeObject:v7 forKey:@"SASPresentationAggregateState::canAcceptNewActivations"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_didNewActivationAcceptanceChange];
  [coderCopy encodeObject:v8 forKey:@"SASPresentationAggregateState::didNewActivationAcceptanceChange"];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_requestState];
  [coderCopy encodeObject:v9 forKey:@"SASPresentationAggregateState::requestState"];
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = objc_alloc_init(_SASPresentationAggregateStateMutation);
  if (builderCopy)
  {
    builderCopy[2](builderCopy, v4);
  }

  generate = [(_SASPresentationAggregateStateMutation *)v4 generate];

  return generate;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_SASPresentationAggregateStateMutation alloc] initWithBaseModel:self];
    mutatorCopy[2](mutatorCopy, v5);
    generate = [(_SASPresentationAggregateStateMutation *)v5 generate];
  }

  else
  {
    generate = [(SASPresentationAggregateState *)self copy];
  }

  return generate;
}

@end
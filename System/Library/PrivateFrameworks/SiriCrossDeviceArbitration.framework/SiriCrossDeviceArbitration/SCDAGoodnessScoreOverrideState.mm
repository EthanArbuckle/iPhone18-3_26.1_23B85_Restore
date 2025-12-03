@interface SCDAGoodnessScoreOverrideState
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (SCDAGoodnessScoreOverrideState)initWithBuilder:(id)builder;
- (SCDAGoodnessScoreOverrideState)initWithCoder:(id)coder;
- (SCDAGoodnessScoreOverrideState)initWithOverrideOption:(int64_t)option reason:(id)reason;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SCDAGoodnessScoreOverrideState

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  overrideOption = self->_overrideOption;
  coderCopy = coder;
  v6 = [v4 numberWithInteger:overrideOption];
  [coderCopy encodeObject:v6 forKey:@"SCDAGoodnessScoreOverrideState::overrideOption"];

  [coderCopy encodeObject:self->_reason forKey:@"SCDAGoodnessScoreOverrideState::reason"];
}

- (SCDAGoodnessScoreOverrideState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SCDAGoodnessScoreOverrideState::overrideOption"];
  integerValue = [v5 integerValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SCDAGoodnessScoreOverrideState::reason"];

  v8 = [(SCDAGoodnessScoreOverrideState *)self initWithOverrideOption:integerValue reason:v7];
  return v8;
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
      overrideOption = self->_overrideOption;
      if (overrideOption == [(SCDAGoodnessScoreOverrideState *)v5 overrideOption])
      {
        reason = [(SCDAGoodnessScoreOverrideState *)v5 reason];
        reason = self->_reason;
        v9 = reason == reason || [(NSString *)reason isEqual:reason];
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

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_overrideOption];
  v4 = [v3 hash];
  v5 = [(NSString *)self->_reason hash];

  return v5 ^ v4;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v11.receiver = self;
  v11.super_class = SCDAGoodnessScoreOverrideState;
  v5 = [(SCDAGoodnessScoreOverrideState *)&v11 description];
  overrideOption = self->_overrideOption;
  if (overrideOption > 2)
  {
    v7 = @"(unknown)";
  }

  else
  {
    v7 = off_1E85D30E0[overrideOption];
  }

  v8 = v7;
  v9 = [v4 initWithFormat:@"%@ {overrideOption = %@, reason = %@}", v5, v8, self->_reason];

  return v9;
}

- (SCDAGoodnessScoreOverrideState)initWithOverrideOption:(int64_t)option reason:(id)reason
{
  reasonCopy = reason;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__SCDAGoodnessScoreOverrideState_initWithOverrideOption_reason___block_invoke;
  v10[3] = &unk_1E85D3240;
  v11 = reasonCopy;
  optionCopy = option;
  v7 = reasonCopy;
  v8 = [(SCDAGoodnessScoreOverrideState *)self initWithBuilder:v10];

  return v8;
}

void __64__SCDAGoodnessScoreOverrideState_initWithOverrideOption_reason___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setOverrideOption:v3];
  [v4 setReason:*(a1 + 32)];
}

- (SCDAGoodnessScoreOverrideState)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v12.receiver = self;
  v12.super_class = SCDAGoodnessScoreOverrideState;
  v5 = [(SCDAGoodnessScoreOverrideState *)&v12 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_SCDAGoodnessScoreOverrideStateMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_SCDAGoodnessScoreOverrideStateMutation *)v7 isDirty])
    {
      v6->_overrideOption = [(_SCDAGoodnessScoreOverrideStateMutation *)v7 getOverrideOption];
      getReason = [(_SCDAGoodnessScoreOverrideStateMutation *)v7 getReason];
      v9 = [getReason copy];
      reason = v6->_reason;
      v6->_reason = v9;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:builderCopy];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_SCDAGoodnessScoreOverrideStateMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_SCDAGoodnessScoreOverrideStateMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(SCDAGoodnessScoreOverrideState);
      v6->_overrideOption = [(_SCDAGoodnessScoreOverrideStateMutation *)v5 getOverrideOption];
      getReason = [(_SCDAGoodnessScoreOverrideStateMutation *)v5 getReason];
      v8 = [getReason copy];
      reason = v6->_reason;
      v6->_reason = v8;
    }

    else
    {
      v6 = [(SCDAGoodnessScoreOverrideState *)self copy];
    }
  }

  else
  {
    v6 = [(SCDAGoodnessScoreOverrideState *)self copy];
  }

  return v6;
}

@end
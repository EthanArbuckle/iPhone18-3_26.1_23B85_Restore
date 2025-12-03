@interface _SCDAContextMutation
- (_SCDAContextMutation)initWithBase:(id)base;
- (id)getOverrideState;
- (id)getPerceptualAudioHash;
- (int64_t)getActivationSource;
- (unint64_t)getActivationExpirationTime;
- (unint64_t)getTimestamp;
@end

@implementation _SCDAContextMutation

- (unint64_t)getActivationExpirationTime
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    return self->_activationExpirationTime;
  }

  else
  {
    return [(SCDAContext *)self->_base activationExpirationTime];
  }
}

- (int64_t)getActivationSource
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    return self->_activationSource;
  }

  else
  {
    return [(SCDAContext *)self->_base activationSource];
  }
}

- (id)getOverrideState
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    overrideState = self->_overrideState;
  }

  else
  {
    overrideState = [(SCDAContext *)self->_base overrideState];
  }

  return overrideState;
}

- (id)getPerceptualAudioHash
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    perceptualAudioHash = self->_perceptualAudioHash;
  }

  else
  {
    perceptualAudioHash = [(SCDAContext *)self->_base perceptualAudioHash];
  }

  return perceptualAudioHash;
}

- (unint64_t)getTimestamp
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    return self->_timestamp;
  }

  else
  {
    return [(SCDAContext *)self->_base timestamp];
  }
}

- (_SCDAContextMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _SCDAContextMutation;
  v6 = [(_SCDAContextMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end
@interface _SMTSiriIntendedInfoMutation
- (BOOL)getGazeSignal;
- (_SMTSiriIntendedInfoMutation)initWithBase:(id)a3;
- (float)getAftmScore;
- (float)getCheckerScore;
- (float)getConversationalOdldScore;
- (float)getLrnnOffset;
- (float)getLrnnScale;
- (float)getLrnnScore;
- (float)getLrnnThreshold;
- (float)getNeuralCombinerScore;
- (float)getNeuralCombinerThreshold;
- (float)getOdldScore;
- (float)getSpkrIdScore;
- (float)getSpkrIdThreshold;
- (id)getInvocationType;
@end

@implementation _SMTSiriIntendedInfoMutation

- (float)getNeuralCombinerThreshold
{
  if ((*&self->_mutationFlags & 0x4000) != 0)
  {
    return self->_neuralCombinerThreshold;
  }

  [(SMTSiriIntendedInfo *)self->_base neuralCombinerThreshold];
  return result;
}

- (float)getNeuralCombinerScore
{
  if ((*&self->_mutationFlags & 0x2000) != 0)
  {
    return self->_neuralCombinerScore;
  }

  [(SMTSiriIntendedInfo *)self->_base neuralCombinerScore];
  return result;
}

- (float)getSpkrIdThreshold
{
  if ((*&self->_mutationFlags & 0x1000) != 0)
  {
    return self->_spkrIdThreshold;
  }

  [(SMTSiriIntendedInfo *)self->_base spkrIdThreshold];
  return result;
}

- (float)getConversationalOdldScore
{
  if ((*&self->_mutationFlags & 0x800) != 0)
  {
    return self->_conversationalOdldScore;
  }

  [(SMTSiriIntendedInfo *)self->_base conversationalOdldScore];
  return result;
}

- (BOOL)getGazeSignal
{
  if ((*&self->_mutationFlags & 0x400) != 0)
  {
    return self->_isGazeSignalPresent;
  }

  else
  {
    return [(SMTSiriIntendedInfo *)self->_base isGazeSignalPresent];
  }
}

- (float)getLrnnOffset
{
  if ((*&self->_mutationFlags & 0x200) != 0)
  {
    return self->_lrnnOffset;
  }

  [(SMTSiriIntendedInfo *)self->_base lrnnOffset];
  return result;
}

- (float)getLrnnScale
{
  if ((*&self->_mutationFlags & 0x100) != 0)
  {
    return self->_lrnnScale;
  }

  [(SMTSiriIntendedInfo *)self->_base lrnnScale];
  return result;
}

- (float)getLrnnThreshold
{
  if ((*&self->_mutationFlags & 0x80) != 0)
  {
    return self->_lrnnThreshold;
  }

  [(SMTSiriIntendedInfo *)self->_base lrnnThreshold];
  return result;
}

- (id)getInvocationType
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    v2 = self->_invocationType;
  }

  else
  {
    v2 = [(SMTSiriIntendedInfo *)self->_base invocationType];
  }

  return v2;
}

- (float)getCheckerScore
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    return self->_checkerScore;
  }

  [(SMTSiriIntendedInfo *)self->_base checkerScore];
  return result;
}

- (float)getLrnnScore
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    return self->_lrnnScore;
  }

  [(SMTSiriIntendedInfo *)self->_base lrnnScore];
  return result;
}

- (float)getSpkrIdScore
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    return self->_spkrIdScore;
  }

  [(SMTSiriIntendedInfo *)self->_base spkrIdScore];
  return result;
}

- (float)getAftmScore
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    return self->_aftmScore;
  }

  [(SMTSiriIntendedInfo *)self->_base aftmScore];
  return result;
}

- (float)getOdldScore
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    return self->_odldScore;
  }

  [(SMTSiriIntendedInfo *)self->_base odldScore];
  return result;
}

- (_SMTSiriIntendedInfoMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _SMTSiriIntendedInfoMutation;
  v6 = [(_SMTSiriIntendedInfoMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end
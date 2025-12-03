@interface _SCDASessionMutation
- (_SCDASessionMutation)initWithBase:(id)base;
- (id)getCurrentElectionAdvertisementData;
- (id)getCurrentElectionAdvertisementId;
- (id)getElectionAdvertisementDataByIds;
- (id)getSessionId;
- (unint64_t)getGeneration;
@end

@implementation _SCDASessionMutation

- (unint64_t)getGeneration
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    return self->_generation;
  }

  else
  {
    return [(SCDASession *)self->_base generation];
  }
}

- (id)getSessionId
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    sessionId = self->_sessionId;
  }

  else
  {
    sessionId = [(SCDASession *)self->_base sessionId];
  }

  return sessionId;
}

- (id)getCurrentElectionAdvertisementId
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    currentElectionAdvertisementId = self->_currentElectionAdvertisementId;
  }

  else
  {
    currentElectionAdvertisementId = [(SCDASession *)self->_base currentElectionAdvertisementId];
  }

  return currentElectionAdvertisementId;
}

- (id)getCurrentElectionAdvertisementData
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    currentElectionAdvertisementData = self->_currentElectionAdvertisementData;
  }

  else
  {
    currentElectionAdvertisementData = [(SCDASession *)self->_base currentElectionAdvertisementData];
  }

  return currentElectionAdvertisementData;
}

- (id)getElectionAdvertisementDataByIds
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    electionAdvertisementDataByIds = self->_electionAdvertisementDataByIds;
  }

  else
  {
    electionAdvertisementDataByIds = [(SCDASession *)self->_base electionAdvertisementDataByIds];
  }

  return electionAdvertisementDataByIds;
}

- (_SCDASessionMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _SCDASessionMutation;
  v6 = [(_SCDASessionMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end
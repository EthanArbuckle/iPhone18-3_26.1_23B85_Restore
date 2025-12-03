@interface _SOTimerMutation
- (BOOL)getIsFiring;
- (_SOTimerMutation)initWithBase:(id)base;
- (double)getDuration;
- (double)getFireTimeInterval;
- (id)getDismissedDate;
- (id)getFireDate;
- (id)getFiredDate;
- (id)getLastModifiedDate;
- (id)getTimerID;
- (id)getTimerURL;
- (id)getTitle;
- (int64_t)getState;
- (int64_t)getType;
@end

@implementation _SOTimerMutation

- (id)getLastModifiedDate
{
  if ((*&self->_mutationFlags & 0x1000) != 0)
  {
    lastModifiedDate = self->_lastModifiedDate;
  }

  else
  {
    lastModifiedDate = [(SOTimer *)self->_base lastModifiedDate];
  }

  return lastModifiedDate;
}

- (id)getDismissedDate
{
  if ((*&self->_mutationFlags & 0x800) != 0)
  {
    dismissedDate = self->_dismissedDate;
  }

  else
  {
    dismissedDate = [(SOTimer *)self->_base dismissedDate];
  }

  return dismissedDate;
}

- (id)getFiredDate
{
  if ((*&self->_mutationFlags & 0x400) != 0)
  {
    firedDate = self->_firedDate;
  }

  else
  {
    firedDate = [(SOTimer *)self->_base firedDate];
  }

  return firedDate;
}

- (id)getFireDate
{
  if ((*&self->_mutationFlags & 0x200) != 0)
  {
    fireDate = self->_fireDate;
  }

  else
  {
    fireDate = [(SOTimer *)self->_base fireDate];
  }

  return fireDate;
}

- (double)getFireTimeInterval
{
  if ((*&self->_mutationFlags & 0x100) != 0)
  {
    return self->_fireTimeInterval;
  }

  [(SOTimer *)self->_base fireTimeInterval];
  return result;
}

- (int64_t)getType
{
  if ((*&self->_mutationFlags & 0x80) != 0)
  {
    return self->_type;
  }

  else
  {
    return [(SOTimer *)self->_base type];
  }
}

- (double)getDuration
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    return self->_duration;
  }

  [(SOTimer *)self->_base duration];
  return result;
}

- (int64_t)getState
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    return self->_state;
  }

  else
  {
    return [(SOTimer *)self->_base state];
  }
}

- (id)getTitle
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    title = self->_title;
  }

  else
  {
    title = [(SOTimer *)self->_base title];
  }

  return title;
}

- (BOOL)getIsFiring
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    return self->_isFiring;
  }

  else
  {
    return [(SOTimer *)self->_base isFiring];
  }
}

- (id)getTimerURL
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    timerURL = self->_timerURL;
  }

  else
  {
    timerURL = [(SOTimer *)self->_base timerURL];
  }

  return timerURL;
}

- (id)getTimerID
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    timerID = self->_timerID;
  }

  else
  {
    timerID = [(SOTimer *)self->_base timerID];
  }

  return timerID;
}

- (_SOTimerMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _SOTimerMutation;
  v6 = [(_SOTimerMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end
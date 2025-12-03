@interface _SOTimersSnapshotMutation
- (_SOTimersSnapshotMutation)initWithBase:(id)base;
- (id)getDate;
- (id)getTimersByID;
@end

@implementation _SOTimersSnapshotMutation

- (id)getTimersByID
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    timersByID = self->_timersByID;
  }

  else
  {
    timersByID = [(SOTimersSnapshot *)self->_base timersByID];
  }

  return timersByID;
}

- (id)getDate
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    date = self->_date;
  }

  else
  {
    date = [(SOTimersSnapshot *)self->_base date];
  }

  return date;
}

- (_SOTimersSnapshotMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _SOTimersSnapshotMutation;
  v6 = [(_SOTimersSnapshotMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end
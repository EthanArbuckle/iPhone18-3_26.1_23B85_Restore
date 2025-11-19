@interface _SOTimersSnapshotMutation
- (_SOTimersSnapshotMutation)initWithBase:(id)a3;
- (id)getDate;
- (id)getTimersByID;
@end

@implementation _SOTimersSnapshotMutation

- (id)getTimersByID
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    v2 = self->_timersByID;
  }

  else
  {
    v2 = [(SOTimersSnapshot *)self->_base timersByID];
  }

  return v2;
}

- (id)getDate
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_date;
  }

  else
  {
    v2 = [(SOTimersSnapshot *)self->_base date];
  }

  return v2;
}

- (_SOTimersSnapshotMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _SOTimersSnapshotMutation;
  v6 = [(_SOTimersSnapshotMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end
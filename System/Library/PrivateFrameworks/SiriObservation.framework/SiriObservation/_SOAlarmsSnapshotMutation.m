@interface _SOAlarmsSnapshotMutation
- (_SOAlarmsSnapshotMutation)initWithBase:(id)a3;
- (id)getAlarmsByID;
- (id)getDate;
- (id)getDismissedAlarmIDs;
- (id)getFiringAlarmIDs;
@end

@implementation _SOAlarmsSnapshotMutation

- (id)getDismissedAlarmIDs
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    v2 = self->_dismissedAlarmIDs;
  }

  else
  {
    v2 = [(SOAlarmsSnapshot *)self->_base dismissedAlarmIDs];
  }

  return v2;
}

- (id)getFiringAlarmIDs
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    v2 = self->_firingAlarmIDs;
  }

  else
  {
    v2 = [(SOAlarmsSnapshot *)self->_base firingAlarmIDs];
  }

  return v2;
}

- (id)getAlarmsByID
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    v2 = self->_alarmsByID;
  }

  else
  {
    v2 = [(SOAlarmsSnapshot *)self->_base alarmsByID];
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
    v2 = [(SOAlarmsSnapshot *)self->_base date];
  }

  return v2;
}

- (_SOAlarmsSnapshotMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _SOAlarmsSnapshotMutation;
  v6 = [(_SOAlarmsSnapshotMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end
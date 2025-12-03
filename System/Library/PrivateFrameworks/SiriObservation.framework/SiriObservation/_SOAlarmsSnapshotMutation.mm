@interface _SOAlarmsSnapshotMutation
- (_SOAlarmsSnapshotMutation)initWithBase:(id)base;
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
    dismissedAlarmIDs = self->_dismissedAlarmIDs;
  }

  else
  {
    dismissedAlarmIDs = [(SOAlarmsSnapshot *)self->_base dismissedAlarmIDs];
  }

  return dismissedAlarmIDs;
}

- (id)getFiringAlarmIDs
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    firingAlarmIDs = self->_firingAlarmIDs;
  }

  else
  {
    firingAlarmIDs = [(SOAlarmsSnapshot *)self->_base firingAlarmIDs];
  }

  return firingAlarmIDs;
}

- (id)getAlarmsByID
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    alarmsByID = self->_alarmsByID;
  }

  else
  {
    alarmsByID = [(SOAlarmsSnapshot *)self->_base alarmsByID];
  }

  return alarmsByID;
}

- (id)getDate
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    date = self->_date;
  }

  else
  {
    date = [(SOAlarmsSnapshot *)self->_base date];
  }

  return date;
}

- (_SOAlarmsSnapshotMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _SOAlarmsSnapshotMutation;
  v6 = [(_SOAlarmsSnapshotMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end
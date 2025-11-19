@interface SOAlarmsSnapshot
+ (id)newWithBuilder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SOAlarmsSnapshot)initWithBuilder:(id)a3;
- (SOAlarmsSnapshot)initWithCoder:(id)a3;
- (SOAlarmsSnapshot)initWithDate:(id)a3 alarmsByID:(id)a4 firingAlarmIDs:(id)a5 dismissedAlarmIDs:(id)a6;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SOAlarmsSnapshot

- (void)encodeWithCoder:(id)a3
{
  date = self->_date;
  v5 = a3;
  [v5 encodeObject:date forKey:@"SOAlarmsSnapshot::date"];
  [v5 encodeObject:self->_alarmsByID forKey:@"SOAlarmsSnapshot::alarmsByID"];
  [v5 encodeObject:self->_firingAlarmIDs forKey:@"SOAlarmsSnapshot::firingAlarmIDs"];
  [v5 encodeObject:self->_dismissedAlarmIDs forKey:@"SOAlarmsSnapshot::dismissedAlarmIDs"];
}

- (SOAlarmsSnapshot)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SOAlarmsSnapshot::date"];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"SOAlarmsSnapshot::alarmsByID"];

  v11 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [v4 decodeObjectOfClasses:v13 forKey:@"SOAlarmsSnapshot::firingAlarmIDs"];

  v15 = MEMORY[0x277CBEB98];
  v16 = objc_opt_class();
  v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
  v18 = [v4 decodeObjectOfClasses:v17 forKey:@"SOAlarmsSnapshot::dismissedAlarmIDs"];

  v19 = [(SOAlarmsSnapshot *)self initWithDate:v5 alarmsByID:v10 firingAlarmIDs:v14 dismissedAlarmIDs:v18];
  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SOAlarmsSnapshot *)v5 date];
      date = self->_date;
      if (date == v6 || [(NSDate *)date isEqual:v6])
      {
        v8 = [(SOAlarmsSnapshot *)v5 alarmsByID];
        alarmsByID = self->_alarmsByID;
        if (alarmsByID == v8 || [(NSDictionary *)alarmsByID isEqual:v8])
        {
          v10 = [(SOAlarmsSnapshot *)v5 firingAlarmIDs];
          firingAlarmIDs = self->_firingAlarmIDs;
          if (firingAlarmIDs == v10 || [(NSOrderedSet *)firingAlarmIDs isEqual:v10])
          {
            v12 = [(SOAlarmsSnapshot *)v5 dismissedAlarmIDs];
            dismissedAlarmIDs = self->_dismissedAlarmIDs;
            v14 = dismissedAlarmIDs == v12 || [(NSOrderedSet *)dismissedAlarmIDs isEqual:v12];
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (unint64_t)hash
{
  v3 = [(NSDate *)self->_date hash];
  v4 = [(NSDictionary *)self->_alarmsByID hash]^ v3;
  v5 = [(NSOrderedSet *)self->_firingAlarmIDs hash];
  return v4 ^ v5 ^ [(NSOrderedSet *)self->_dismissedAlarmIDs hash];
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v8.receiver = self;
  v8.super_class = SOAlarmsSnapshot;
  v5 = [(SOAlarmsSnapshot *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {date = %@, alarmsByID = %@, firingAlarmIDs = %@, dismissedAlarmIDs = %@}", v5, self->_date, self->_alarmsByID, self->_firingAlarmIDs, self->_dismissedAlarmIDs];

  return v6;
}

- (SOAlarmsSnapshot)initWithDate:(id)a3 alarmsByID:(id)a4 firingAlarmIDs:(id)a5 dismissedAlarmIDs:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __77__SOAlarmsSnapshot_initWithDate_alarmsByID_firingAlarmIDs_dismissedAlarmIDs___block_invoke;
  v20[3] = &unk_279C3D230;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v14 = v13;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  v18 = [(SOAlarmsSnapshot *)self initWithBuilder:v20];

  return v18;
}

void __77__SOAlarmsSnapshot_initWithDate_alarmsByID_firingAlarmIDs_dismissedAlarmIDs___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setDate:v3];
  [v4 setAlarmsByID:a1[5]];
  [v4 setFiringAlarmIDs:a1[6]];
  [v4 setDismissedAlarmIDs:a1[7]];
}

- (SOAlarmsSnapshot)initWithBuilder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = SOAlarmsSnapshot;
  v5 = [(SOAlarmsSnapshot *)&v21 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_SOAlarmsSnapshotMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_SOAlarmsSnapshotMutation *)v7 isDirty])
    {
      v8 = [(_SOAlarmsSnapshotMutation *)v7 getDate];
      v9 = [v8 copy];
      date = v6->_date;
      v6->_date = v9;

      v11 = [(_SOAlarmsSnapshotMutation *)v7 getAlarmsByID];
      v12 = [v11 copy];
      alarmsByID = v6->_alarmsByID;
      v6->_alarmsByID = v12;

      v14 = [(_SOAlarmsSnapshotMutation *)v7 getFiringAlarmIDs];
      v15 = [v14 copy];
      firingAlarmIDs = v6->_firingAlarmIDs;
      v6->_firingAlarmIDs = v15;

      v17 = [(_SOAlarmsSnapshotMutation *)v7 getDismissedAlarmIDs];
      v18 = [v17 copy];
      dismissedAlarmIDs = v6->_dismissedAlarmIDs;
      v6->_dismissedAlarmIDs = v18;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:v3];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_SOAlarmsSnapshotMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_SOAlarmsSnapshotMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(SOAlarmsSnapshot);
      v7 = [(_SOAlarmsSnapshotMutation *)v5 getDate];
      v8 = [v7 copy];
      date = v6->_date;
      v6->_date = v8;

      v10 = [(_SOAlarmsSnapshotMutation *)v5 getAlarmsByID];
      v11 = [v10 copy];
      alarmsByID = v6->_alarmsByID;
      v6->_alarmsByID = v11;

      v13 = [(_SOAlarmsSnapshotMutation *)v5 getFiringAlarmIDs];
      v14 = [v13 copy];
      firingAlarmIDs = v6->_firingAlarmIDs;
      v6->_firingAlarmIDs = v14;

      v16 = [(_SOAlarmsSnapshotMutation *)v5 getDismissedAlarmIDs];
      v17 = [v16 copy];
      dismissedAlarmIDs = v6->_dismissedAlarmIDs;
      v6->_dismissedAlarmIDs = v17;
    }

    else
    {
      v6 = [(SOAlarmsSnapshot *)self copy];
    }
  }

  else
  {
    v6 = [(SOAlarmsSnapshot *)self copy];
  }

  return v6;
}

@end
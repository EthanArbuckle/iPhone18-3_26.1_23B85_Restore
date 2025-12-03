@interface SOAlarmsSnapshot
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (SOAlarmsSnapshot)initWithBuilder:(id)builder;
- (SOAlarmsSnapshot)initWithCoder:(id)coder;
- (SOAlarmsSnapshot)initWithDate:(id)date alarmsByID:(id)d firingAlarmIDs:(id)ds dismissedAlarmIDs:(id)iDs;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SOAlarmsSnapshot

- (void)encodeWithCoder:(id)coder
{
  date = self->_date;
  coderCopy = coder;
  [coderCopy encodeObject:date forKey:@"SOAlarmsSnapshot::date"];
  [coderCopy encodeObject:self->_alarmsByID forKey:@"SOAlarmsSnapshot::alarmsByID"];
  [coderCopy encodeObject:self->_firingAlarmIDs forKey:@"SOAlarmsSnapshot::firingAlarmIDs"];
  [coderCopy encodeObject:self->_dismissedAlarmIDs forKey:@"SOAlarmsSnapshot::dismissedAlarmIDs"];
}

- (SOAlarmsSnapshot)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SOAlarmsSnapshot::date"];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"SOAlarmsSnapshot::alarmsByID"];

  v11 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"SOAlarmsSnapshot::firingAlarmIDs"];

  v15 = MEMORY[0x277CBEB98];
  v16 = objc_opt_class();
  v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
  v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"SOAlarmsSnapshot::dismissedAlarmIDs"];

  v19 = [(SOAlarmsSnapshot *)self initWithDate:v5 alarmsByID:v10 firingAlarmIDs:v14 dismissedAlarmIDs:v18];
  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      date = [(SOAlarmsSnapshot *)v5 date];
      date = self->_date;
      if (date == date || [(NSDate *)date isEqual:date])
      {
        alarmsByID = [(SOAlarmsSnapshot *)v5 alarmsByID];
        alarmsByID = self->_alarmsByID;
        if (alarmsByID == alarmsByID || [(NSDictionary *)alarmsByID isEqual:alarmsByID])
        {
          firingAlarmIDs = [(SOAlarmsSnapshot *)v5 firingAlarmIDs];
          firingAlarmIDs = self->_firingAlarmIDs;
          if (firingAlarmIDs == firingAlarmIDs || [(NSOrderedSet *)firingAlarmIDs isEqual:firingAlarmIDs])
          {
            dismissedAlarmIDs = [(SOAlarmsSnapshot *)v5 dismissedAlarmIDs];
            dismissedAlarmIDs = self->_dismissedAlarmIDs;
            v14 = dismissedAlarmIDs == dismissedAlarmIDs || [(NSOrderedSet *)dismissedAlarmIDs isEqual:dismissedAlarmIDs];
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

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v8.receiver = self;
  v8.super_class = SOAlarmsSnapshot;
  v5 = [(SOAlarmsSnapshot *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {date = %@, alarmsByID = %@, firingAlarmIDs = %@, dismissedAlarmIDs = %@}", v5, self->_date, self->_alarmsByID, self->_firingAlarmIDs, self->_dismissedAlarmIDs];

  return v6;
}

- (SOAlarmsSnapshot)initWithDate:(id)date alarmsByID:(id)d firingAlarmIDs:(id)ds dismissedAlarmIDs:(id)iDs
{
  dateCopy = date;
  dCopy = d;
  dsCopy = ds;
  iDsCopy = iDs;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __77__SOAlarmsSnapshot_initWithDate_alarmsByID_firingAlarmIDs_dismissedAlarmIDs___block_invoke;
  v20[3] = &unk_279C3D230;
  v21 = dateCopy;
  v22 = dCopy;
  v23 = dsCopy;
  v24 = iDsCopy;
  v14 = iDsCopy;
  v15 = dsCopy;
  v16 = dCopy;
  v17 = dateCopy;
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

- (SOAlarmsSnapshot)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v21.receiver = self;
  v21.super_class = SOAlarmsSnapshot;
  v5 = [(SOAlarmsSnapshot *)&v21 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_SOAlarmsSnapshotMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_SOAlarmsSnapshotMutation *)v7 isDirty])
    {
      getDate = [(_SOAlarmsSnapshotMutation *)v7 getDate];
      v9 = [getDate copy];
      date = v6->_date;
      v6->_date = v9;

      getAlarmsByID = [(_SOAlarmsSnapshotMutation *)v7 getAlarmsByID];
      v12 = [getAlarmsByID copy];
      alarmsByID = v6->_alarmsByID;
      v6->_alarmsByID = v12;

      getFiringAlarmIDs = [(_SOAlarmsSnapshotMutation *)v7 getFiringAlarmIDs];
      v15 = [getFiringAlarmIDs copy];
      firingAlarmIDs = v6->_firingAlarmIDs;
      v6->_firingAlarmIDs = v15;

      getDismissedAlarmIDs = [(_SOAlarmsSnapshotMutation *)v7 getDismissedAlarmIDs];
      v18 = [getDismissedAlarmIDs copy];
      dismissedAlarmIDs = v6->_dismissedAlarmIDs;
      v6->_dismissedAlarmIDs = v18;
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
    v5 = [[_SOAlarmsSnapshotMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_SOAlarmsSnapshotMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(SOAlarmsSnapshot);
      getDate = [(_SOAlarmsSnapshotMutation *)v5 getDate];
      v8 = [getDate copy];
      date = v6->_date;
      v6->_date = v8;

      getAlarmsByID = [(_SOAlarmsSnapshotMutation *)v5 getAlarmsByID];
      v11 = [getAlarmsByID copy];
      alarmsByID = v6->_alarmsByID;
      v6->_alarmsByID = v11;

      getFiringAlarmIDs = [(_SOAlarmsSnapshotMutation *)v5 getFiringAlarmIDs];
      v14 = [getFiringAlarmIDs copy];
      firingAlarmIDs = v6->_firingAlarmIDs;
      v6->_firingAlarmIDs = v14;

      getDismissedAlarmIDs = [(_SOAlarmsSnapshotMutation *)v5 getDismissedAlarmIDs];
      v17 = [getDismissedAlarmIDs copy];
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
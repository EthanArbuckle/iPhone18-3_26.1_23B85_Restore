@interface SOTimersSnapshot
+ (id)newWithBuilder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SOTimersSnapshot)initWithBuilder:(id)a3;
- (SOTimersSnapshot)initWithCoder:(id)a3;
- (SOTimersSnapshot)initWithDate:(id)a3 timersByID:(id)a4;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SOTimersSnapshot

- (void)encodeWithCoder:(id)a3
{
  date = self->_date;
  v5 = a3;
  [v5 encodeObject:date forKey:@"SOTimersSnapshot::date"];
  [v5 encodeObject:self->_timersByID forKey:@"SOTimersSnapshot::timersByID"];
}

- (SOTimersSnapshot)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SOTimersSnapshot::date"];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"SOTimersSnapshot::timersByID"];

  v11 = [(SOTimersSnapshot *)self initWithDate:v5 timersByID:v10];
  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SOTimersSnapshot *)v5 date];
      date = self->_date;
      if (date == v6 || [(NSDate *)date isEqual:v6])
      {
        v8 = [(SOTimersSnapshot *)v5 timersByID];
        timersByID = self->_timersByID;
        v10 = timersByID == v8 || [(NSDictionary *)timersByID isEqual:v8];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v8.receiver = self;
  v8.super_class = SOTimersSnapshot;
  v5 = [(SOTimersSnapshot *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {date = %@, timersByID = %@}", v5, self->_date, self->_timersByID];

  return v6;
}

- (SOTimersSnapshot)initWithDate:(id)a3 timersByID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44__SOTimersSnapshot_initWithDate_timersByID___block_invoke;
  v12[3] = &unk_279C3D7C0;
  v13 = v6;
  v14 = v7;
  v8 = v7;
  v9 = v6;
  v10 = [(SOTimersSnapshot *)self initWithBuilder:v12];

  return v10;
}

void __44__SOTimersSnapshot_initWithDate_timersByID___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setDate:v3];
  [v4 setTimersByID:*(a1 + 40)];
}

- (SOTimersSnapshot)initWithBuilder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SOTimersSnapshot;
  v5 = [(SOTimersSnapshot *)&v15 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_SOTimersSnapshotMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_SOTimersSnapshotMutation *)v7 isDirty])
    {
      v8 = [(_SOTimersSnapshotMutation *)v7 getDate];
      v9 = [v8 copy];
      date = v6->_date;
      v6->_date = v9;

      v11 = [(_SOTimersSnapshotMutation *)v7 getTimersByID];
      v12 = [v11 copy];
      timersByID = v6->_timersByID;
      v6->_timersByID = v12;
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
    v5 = [[_SOTimersSnapshotMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_SOTimersSnapshotMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(SOTimersSnapshot);
      v7 = [(_SOTimersSnapshotMutation *)v5 getDate];
      v8 = [v7 copy];
      date = v6->_date;
      v6->_date = v8;

      v10 = [(_SOTimersSnapshotMutation *)v5 getTimersByID];
      v11 = [v10 copy];
      timersByID = v6->_timersByID;
      v6->_timersByID = v11;
    }

    else
    {
      v6 = [(SOTimersSnapshot *)self copy];
    }
  }

  else
  {
    v6 = [(SOTimersSnapshot *)self copy];
  }

  return v6;
}

@end
@interface SOTimersSnapshot
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (SOTimersSnapshot)initWithBuilder:(id)builder;
- (SOTimersSnapshot)initWithCoder:(id)coder;
- (SOTimersSnapshot)initWithDate:(id)date timersByID:(id)d;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SOTimersSnapshot

- (void)encodeWithCoder:(id)coder
{
  date = self->_date;
  coderCopy = coder;
  [coderCopy encodeObject:date forKey:@"SOTimersSnapshot::date"];
  [coderCopy encodeObject:self->_timersByID forKey:@"SOTimersSnapshot::timersByID"];
}

- (SOTimersSnapshot)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SOTimersSnapshot::date"];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"SOTimersSnapshot::timersByID"];

  v11 = [(SOTimersSnapshot *)self initWithDate:v5 timersByID:v10];
  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      date = [(SOTimersSnapshot *)v5 date];
      date = self->_date;
      if (date == date || [(NSDate *)date isEqual:date])
      {
        timersByID = [(SOTimersSnapshot *)v5 timersByID];
        timersByID = self->_timersByID;
        v10 = timersByID == timersByID || [(NSDictionary *)timersByID isEqual:timersByID];
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

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v8.receiver = self;
  v8.super_class = SOTimersSnapshot;
  v5 = [(SOTimersSnapshot *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {date = %@, timersByID = %@}", v5, self->_date, self->_timersByID];

  return v6;
}

- (SOTimersSnapshot)initWithDate:(id)date timersByID:(id)d
{
  dateCopy = date;
  dCopy = d;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44__SOTimersSnapshot_initWithDate_timersByID___block_invoke;
  v12[3] = &unk_279C3D7C0;
  v13 = dateCopy;
  v14 = dCopy;
  v8 = dCopy;
  v9 = dateCopy;
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

- (SOTimersSnapshot)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v15.receiver = self;
  v15.super_class = SOTimersSnapshot;
  v5 = [(SOTimersSnapshot *)&v15 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_SOTimersSnapshotMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_SOTimersSnapshotMutation *)v7 isDirty])
    {
      getDate = [(_SOTimersSnapshotMutation *)v7 getDate];
      v9 = [getDate copy];
      date = v6->_date;
      v6->_date = v9;

      getTimersByID = [(_SOTimersSnapshotMutation *)v7 getTimersByID];
      v12 = [getTimersByID copy];
      timersByID = v6->_timersByID;
      v6->_timersByID = v12;
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
    v5 = [[_SOTimersSnapshotMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_SOTimersSnapshotMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(SOTimersSnapshot);
      getDate = [(_SOTimersSnapshotMutation *)v5 getDate];
      v8 = [getDate copy];
      date = v6->_date;
      v6->_date = v8;

      getTimersByID = [(_SOTimersSnapshotMutation *)v5 getTimersByID];
      v11 = [getTimersByID copy];
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
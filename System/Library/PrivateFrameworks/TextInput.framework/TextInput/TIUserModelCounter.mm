@interface TIUserModelCounter
- (TIUserModelCounter)initWithName:(id)name;
- (TIUserModelCounter)initWithName:(id)name initialCount:(id)count creationDate:(id)date lastUpdateDate:(id)updateDate;
- (void)doPersist:(id)persist forDate:(id)date;
- (void)reset;
@end

@implementation TIUserModelCounter

- (void)reset
{
  self->_persisted = 0;
  self->_current = 0;
  self->_wasReset = 1;
}

- (void)doPersist:(id)persist forDate:(id)date
{
  persistCopy = persist;
  dateCopy = date;
  if (self->_wasReset)
  {
    v7 = [kUserModelDatabasePrefix stringByAppendingString:self->_name];
    v8 = [MEMORY[0x1E696AD98] numberWithInt:LODWORD(self->_current)];
    [persistCopy setDurableValue:v8 forKey:v7 forDate:dateCopy];

    self->_persisted = self->_current;
    self->_current = 0;
    self->_wasReset = 0;
  }

  else
  {
    if (!self->_current)
    {
      goto LABEL_6;
    }

    v7 = [kUserModelDatabasePrefix stringByAppendingString:self->_name];
    v9 = [MEMORY[0x1E696AD98] numberWithInt:LODWORD(self->_current)];
    [persistCopy updateDurableValue:v9 forKey:v7 forDate:dateCopy];

    self->_persisted += self->_current;
    self->_current = 0;
  }

LABEL_6:
}

- (TIUserModelCounter)initWithName:(id)name initialCount:(id)count creationDate:(id)date lastUpdateDate:(id)updateDate
{
  nameCopy = name;
  countCopy = count;
  dateCopy = date;
  updateDateCopy = updateDate;
  v18.receiver = self;
  v18.super_class = TIUserModelCounter;
  v15 = [(TIUserModelCounter *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_name, name);
    v16->_persisted = [countCopy unsignedIntegerValue];
    objc_storeStrong(&v16->_creationDate, date);
    objc_storeStrong(&v16->_lastUpdateDate, updateDate);
    v16->_wasReset = 0;
  }

  return v16;
}

- (TIUserModelCounter)initWithName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = TIUserModelCounter;
  v6 = [(TIUserModelCounter *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
    v7->_persisted = 0;
    creationDate = v7->_creationDate;
    v7->_creationDate = 0;

    lastUpdateDate = v7->_lastUpdateDate;
    v7->_lastUpdateDate = 0;

    v7->_wasReset = 0;
  }

  return v7;
}

@end
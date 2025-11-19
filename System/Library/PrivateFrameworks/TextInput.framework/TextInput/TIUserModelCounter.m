@interface TIUserModelCounter
- (TIUserModelCounter)initWithName:(id)a3;
- (TIUserModelCounter)initWithName:(id)a3 initialCount:(id)a4 creationDate:(id)a5 lastUpdateDate:(id)a6;
- (void)doPersist:(id)a3 forDate:(id)a4;
- (void)reset;
@end

@implementation TIUserModelCounter

- (void)reset
{
  self->_persisted = 0;
  self->_current = 0;
  self->_wasReset = 1;
}

- (void)doPersist:(id)a3 forDate:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (self->_wasReset)
  {
    v7 = [kUserModelDatabasePrefix stringByAppendingString:self->_name];
    v8 = [MEMORY[0x1E696AD98] numberWithInt:LODWORD(self->_current)];
    [v10 setDurableValue:v8 forKey:v7 forDate:v6];

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
    [v10 updateDurableValue:v9 forKey:v7 forDate:v6];

    self->_persisted += self->_current;
    self->_current = 0;
  }

LABEL_6:
}

- (TIUserModelCounter)initWithName:(id)a3 initialCount:(id)a4 creationDate:(id)a5 lastUpdateDate:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = TIUserModelCounter;
  v15 = [(TIUserModelCounter *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_name, a3);
    v16->_persisted = [v12 unsignedIntegerValue];
    objc_storeStrong(&v16->_creationDate, a5);
    objc_storeStrong(&v16->_lastUpdateDate, a6);
    v16->_wasReset = 0;
  }

  return v16;
}

- (TIUserModelCounter)initWithName:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = TIUserModelCounter;
  v6 = [(TIUserModelCounter *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, a3);
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
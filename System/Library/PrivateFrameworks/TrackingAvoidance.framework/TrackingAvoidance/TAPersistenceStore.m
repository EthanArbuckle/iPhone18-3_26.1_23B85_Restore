@interface TAPersistenceStore
- (BOOL)isEqual:(id)a3;
- (TAPersistenceStore)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TAPersistenceStore

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(TAPersistenceStore *)self deviceRecord];
      v8 = [(TAPersistenceStore *)v6 deviceRecord];
      if (v7 != v8)
      {
        v9 = [(TAPersistenceStore *)self deviceRecord];
        v3 = [(TAPersistenceStore *)v6 deviceRecord];
        if (![v9 isEqual:v3])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = v9;
      }

      v11 = [(TAPersistenceStore *)self visitState];
      v12 = [(TAPersistenceStore *)v6 visitState];
      if (v11 == v12)
      {
        v10 = 1;
      }

      else
      {
        v13 = [(TAPersistenceStore *)self visitState];
        v14 = [(TAPersistenceStore *)v6 visitState];
        v10 = [v13 isEqual:v14];
      }

      v9 = v16;
      if (v7 == v8)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v10 = 0;
  }

LABEL_15:

  return v10;
}

- (TAPersistenceStore)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TAPersistenceStore;
  v5 = [(TAPersistenceStore *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DeviceRecord"];
    deviceRecord = v5->_deviceRecord;
    v5->_deviceRecord = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"VisitState"];
    visitState = v5->_visitState;
    v5->_visitState = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  deviceRecord = self->_deviceRecord;
  v5 = a3;
  [v5 encodeObject:deviceRecord forKey:@"DeviceRecord"];
  [v5 encodeObject:self->_visitState forKey:@"VisitState"];
}

@end
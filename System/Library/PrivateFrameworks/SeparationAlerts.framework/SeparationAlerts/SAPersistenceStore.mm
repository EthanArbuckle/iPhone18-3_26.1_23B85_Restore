@interface SAPersistenceStore
- (BOOL)isEqual:(id)a3;
- (SAPersistenceStore)initWithCoder:(id)a3;
@end

@implementation SAPersistenceStore

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
      v6 = [(SAPersistenceStore *)self monitoringSessionRecord];
      v7 = [(SAPersistenceStore *)v5 monitoringSessionRecord];
      if (v6 == v7)
      {
        v10 = 1;
      }

      else
      {
        v8 = [(SAPersistenceStore *)self monitoringSessionRecord];
        v9 = [(SAPersistenceStore *)v5 monitoringSessionRecord];
        v10 = [v8 isEqual:v9];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (SAPersistenceStore)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SAPersistenceStore;
  v5 = [(SAPersistenceStore *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"MonitoringSessionRecord"];
    monitoringSessionRecord = v5->_monitoringSessionRecord;
    v5->_monitoringSessionRecord = v11;
  }

  return v5;
}

@end
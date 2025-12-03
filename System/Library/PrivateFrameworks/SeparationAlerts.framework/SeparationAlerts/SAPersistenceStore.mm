@interface SAPersistenceStore
- (BOOL)isEqual:(id)equal;
- (SAPersistenceStore)initWithCoder:(id)coder;
@end

@implementation SAPersistenceStore

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
      monitoringSessionRecord = [(SAPersistenceStore *)self monitoringSessionRecord];
      monitoringSessionRecord2 = [(SAPersistenceStore *)v5 monitoringSessionRecord];
      if (monitoringSessionRecord == monitoringSessionRecord2)
      {
        v10 = 1;
      }

      else
      {
        monitoringSessionRecord3 = [(SAPersistenceStore *)self monitoringSessionRecord];
        monitoringSessionRecord4 = [(SAPersistenceStore *)v5 monitoringSessionRecord];
        v10 = [monitoringSessionRecord3 isEqual:monitoringSessionRecord4];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (SAPersistenceStore)initWithCoder:(id)coder
{
  coderCopy = coder;
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
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"MonitoringSessionRecord"];
    monitoringSessionRecord = v5->_monitoringSessionRecord;
    v5->_monitoringSessionRecord = v11;
  }

  return v5;
}

@end
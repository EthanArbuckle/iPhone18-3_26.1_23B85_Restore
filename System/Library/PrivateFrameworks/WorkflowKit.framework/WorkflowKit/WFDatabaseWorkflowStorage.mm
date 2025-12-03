@interface WFDatabaseWorkflowStorage
- (BOOL)reloadRecord:(id)record withReference:(id)reference error:(id *)error;
- (BOOL)saveRecord:(id)record withReference:(id)reference error:(id *)error;
- (WFDatabaseWorkflowStorage)initWithDatabase:(id)database;
@end

@implementation WFDatabaseWorkflowStorage

- (BOOL)reloadRecord:(id)record withReference:(id)reference error:(id *)error
{
  referenceCopy = reference;
  recordCopy = record;
  database = [(WFDatabaseWorkflowStorage *)self database];
  LOBYTE(error) = [database reloadRecord:recordCopy withDescriptor:referenceCopy error:error];

  return error;
}

- (BOOL)saveRecord:(id)record withReference:(id)reference error:(id *)error
{
  referenceCopy = reference;
  recordCopy = record;
  database = [(WFDatabaseWorkflowStorage *)self database];
  LOBYTE(error) = [database saveRecord:recordCopy withDescriptor:referenceCopy error:error];

  return error;
}

- (WFDatabaseWorkflowStorage)initWithDatabase:(id)database
{
  databaseCopy = database;
  v10.receiver = self;
  v10.super_class = WFDatabaseWorkflowStorage;
  v6 = [(WFDatabaseWorkflowStorage *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_database, database);
    v8 = v7;
  }

  return v7;
}

@end
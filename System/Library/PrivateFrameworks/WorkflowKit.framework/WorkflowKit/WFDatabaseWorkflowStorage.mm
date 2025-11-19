@interface WFDatabaseWorkflowStorage
- (BOOL)reloadRecord:(id)a3 withReference:(id)a4 error:(id *)a5;
- (BOOL)saveRecord:(id)a3 withReference:(id)a4 error:(id *)a5;
- (WFDatabaseWorkflowStorage)initWithDatabase:(id)a3;
@end

@implementation WFDatabaseWorkflowStorage

- (BOOL)reloadRecord:(id)a3 withReference:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(WFDatabaseWorkflowStorage *)self database];
  LOBYTE(a5) = [v10 reloadRecord:v9 withDescriptor:v8 error:a5];

  return a5;
}

- (BOOL)saveRecord:(id)a3 withReference:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(WFDatabaseWorkflowStorage *)self database];
  LOBYTE(a5) = [v10 saveRecord:v9 withDescriptor:v8 error:a5];

  return a5;
}

- (WFDatabaseWorkflowStorage)initWithDatabase:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WFDatabaseWorkflowStorage;
  v6 = [(WFDatabaseWorkflowStorage *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_database, a3);
    v8 = v7;
  }

  return v7;
}

@end
@interface WFDatabaseAccessResourceState
- (WFDatabaseAccessResourceState)initWithPersistentIdentifier:(id)a3 perWorkflowStateData:(id)a4;
@end

@implementation WFDatabaseAccessResourceState

- (WFDatabaseAccessResourceState)initWithPersistentIdentifier:(id)a3 perWorkflowStateData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = WFDatabaseAccessResourceState;
  v8 = [(WFDatabaseAccessResourceState *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    persistentIdentifier = v8->_persistentIdentifier;
    v8->_persistentIdentifier = v9;

    v11 = [v7 copy];
    perWorkflowStateData = v8->_perWorkflowStateData;
    v8->_perWorkflowStateData = v11;

    v13 = v8;
  }

  return v8;
}

@end
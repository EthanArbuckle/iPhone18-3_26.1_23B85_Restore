@interface WFDatabaseAccessResourceState
- (WFDatabaseAccessResourceState)initWithPersistentIdentifier:(id)identifier perWorkflowStateData:(id)data;
@end

@implementation WFDatabaseAccessResourceState

- (WFDatabaseAccessResourceState)initWithPersistentIdentifier:(id)identifier perWorkflowStateData:(id)data
{
  identifierCopy = identifier;
  dataCopy = data;
  v15.receiver = self;
  v15.super_class = WFDatabaseAccessResourceState;
  v8 = [(WFDatabaseAccessResourceState *)&v15 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    persistentIdentifier = v8->_persistentIdentifier;
    v8->_persistentIdentifier = v9;

    v11 = [dataCopy copy];
    perWorkflowStateData = v8->_perWorkflowStateData;
    v8->_perWorkflowStateData = v11;

    v13 = v8;
  }

  return v8;
}

@end
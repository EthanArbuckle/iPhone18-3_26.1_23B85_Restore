@interface USDeviceActivityBudgetMetadata
- (USDeviceActivityBudgetMetadata)initWithActivity:(id)activity budgetID:(id)d clientIdentifier:(id)identifier extensionIdentifier:(id)extensionIdentifier intervalDidStart:(BOOL)start;
@end

@implementation USDeviceActivityBudgetMetadata

- (USDeviceActivityBudgetMetadata)initWithActivity:(id)activity budgetID:(id)d clientIdentifier:(id)identifier extensionIdentifier:(id)extensionIdentifier intervalDidStart:(BOOL)start
{
  v25.receiver = self;
  v25.super_class = USDeviceActivityBudgetMetadata;
  extensionIdentifierCopy = extensionIdentifier;
  identifierCopy = identifier;
  dCopy = d;
  activityCopy = activity;
  v15 = [(USDeviceActivityBudgetMetadata *)&v25 init];
  v16 = [activityCopy copy];

  activity = v15->_activity;
  v15->_activity = v16;

  v18 = [dCopy copy];
  budgetID = v15->_budgetID;
  v15->_budgetID = v18;

  v20 = [identifierCopy copy];
  clientIdentifier = v15->_clientIdentifier;
  v15->_clientIdentifier = v20;

  v22 = [extensionIdentifierCopy copy];
  extensionIdentifier = v15->_extensionIdentifier;
  v15->_extensionIdentifier = v22;

  v15->_intervalDidStart = start;
  return v15;
}

@end
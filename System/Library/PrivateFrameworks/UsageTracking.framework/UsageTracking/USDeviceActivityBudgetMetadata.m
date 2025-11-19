@interface USDeviceActivityBudgetMetadata
- (USDeviceActivityBudgetMetadata)initWithActivity:(id)a3 budgetID:(id)a4 clientIdentifier:(id)a5 extensionIdentifier:(id)a6 intervalDidStart:(BOOL)a7;
@end

@implementation USDeviceActivityBudgetMetadata

- (USDeviceActivityBudgetMetadata)initWithActivity:(id)a3 budgetID:(id)a4 clientIdentifier:(id)a5 extensionIdentifier:(id)a6 intervalDidStart:(BOOL)a7
{
  v25.receiver = self;
  v25.super_class = USDeviceActivityBudgetMetadata;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [(USDeviceActivityBudgetMetadata *)&v25 init];
  v16 = [v14 copy];

  activity = v15->_activity;
  v15->_activity = v16;

  v18 = [v13 copy];
  budgetID = v15->_budgetID;
  v15->_budgetID = v18;

  v20 = [v12 copy];
  clientIdentifier = v15->_clientIdentifier;
  v15->_clientIdentifier = v20;

  v22 = [v11 copy];
  extensionIdentifier = v15->_extensionIdentifier;
  v15->_extensionIdentifier = v22;

  v15->_intervalDidStart = a7;
  return v15;
}

@end
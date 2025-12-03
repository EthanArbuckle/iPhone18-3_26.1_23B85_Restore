@interface REMAccountTemplatesContextChangeItem
- (REMAccountTemplatesContextChangeItem)initWithAccountChangeItem:(id)item;
- (REMManualOrdering)unsavedManualOrdering;
- (id)addTemplateWithName:(id)name configuration:(id)configuration;
- (void)updateManualOrdering:(id)ordering;
@end

@implementation REMAccountTemplatesContextChangeItem

- (REMAccountTemplatesContextChangeItem)initWithAccountChangeItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = REMAccountTemplatesContextChangeItem;
  v6 = [(REMAccountTemplatesContextChangeItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountChangeItem, item);
  }

  return v7;
}

- (id)addTemplateWithName:(id)name configuration:(id)configuration
{
  configurationCopy = configuration;
  nameCopy = name;
  accountChangeItem = [(REMAccountTemplatesContextChangeItem *)self accountChangeItem];
  saveRequest = [accountChangeItem saveRequest];

  accountChangeItem2 = [(REMAccountTemplatesContextChangeItem *)self accountChangeItem];
  v11 = [saveRequest addTemplateWithName:nameCopy configuration:configurationCopy toAccountChangeItem:accountChangeItem2];

  return v11;
}

- (REMManualOrdering)unsavedManualOrdering
{
  accountChangeItem = [(REMAccountTemplatesContextChangeItem *)self accountChangeItem];
  templatesManualOrdering = [accountChangeItem templatesManualOrdering];

  return templatesManualOrdering;
}

- (void)updateManualOrdering:(id)ordering
{
  orderingCopy = ordering;
  accountChangeItem = [(REMAccountTemplatesContextChangeItem *)self accountChangeItem];
  [accountChangeItem setTemplatesManualOrdering:orderingCopy];
}

@end
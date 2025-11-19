@interface REMAccountTemplatesContextChangeItem
- (REMAccountTemplatesContextChangeItem)initWithAccountChangeItem:(id)a3;
- (REMManualOrdering)unsavedManualOrdering;
- (id)addTemplateWithName:(id)a3 configuration:(id)a4;
- (void)updateManualOrdering:(id)a3;
@end

@implementation REMAccountTemplatesContextChangeItem

- (REMAccountTemplatesContextChangeItem)initWithAccountChangeItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMAccountTemplatesContextChangeItem;
  v6 = [(REMAccountTemplatesContextChangeItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountChangeItem, a3);
  }

  return v7;
}

- (id)addTemplateWithName:(id)a3 configuration:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(REMAccountTemplatesContextChangeItem *)self accountChangeItem];
  v9 = [v8 saveRequest];

  v10 = [(REMAccountTemplatesContextChangeItem *)self accountChangeItem];
  v11 = [v9 addTemplateWithName:v7 configuration:v6 toAccountChangeItem:v10];

  return v11;
}

- (REMManualOrdering)unsavedManualOrdering
{
  v2 = [(REMAccountTemplatesContextChangeItem *)self accountChangeItem];
  v3 = [v2 templatesManualOrdering];

  return v3;
}

- (void)updateManualOrdering:(id)a3
{
  v4 = a3;
  v5 = [(REMAccountTemplatesContextChangeItem *)self accountChangeItem];
  [v5 setTemplatesManualOrdering:v4];
}

@end
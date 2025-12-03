@interface SiriCoreSQLiteTableDescription
- (SiriCoreSQLiteTableDescription)initWithName:(id)name columns:(id)columns constraints:(id)constraints;
- (SiriCoreSQLiteTableDescription)initWithName:(id)name columnsProvider:(id)provider constraintsProvider:(id)constraintsProvider;
@end

@implementation SiriCoreSQLiteTableDescription

- (SiriCoreSQLiteTableDescription)initWithName:(id)name columnsProvider:(id)provider constraintsProvider:(id)constraintsProvider
{
  nameCopy = name;
  providerCopy = provider;
  constraintsProviderCopy = constraintsProvider;
  v11 = constraintsProviderCopy;
  if (!providerCopy)
  {
    v12 = 0;
    if (constraintsProviderCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v12 = providerCopy[2](providerCopy);
  if (!v11)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = v11[2](v11);
LABEL_6:
  v14 = [(SiriCoreSQLiteTableDescription *)self initWithName:nameCopy columns:v12 constraints:v13];

  return v14;
}

- (SiriCoreSQLiteTableDescription)initWithName:(id)name columns:(id)columns constraints:(id)constraints
{
  nameCopy = name;
  columnsCopy = columns;
  constraintsCopy = constraints;
  v19.receiver = self;
  v19.super_class = SiriCoreSQLiteTableDescription;
  v11 = [(SiriCoreSQLiteTableDescription *)&v19 init];
  if (v11)
  {
    v12 = [nameCopy copy];
    name = v11->_name;
    v11->_name = v12;

    v14 = [columnsCopy copy];
    columns = v11->_columns;
    v11->_columns = v14;

    v16 = [constraintsCopy copy];
    constraints = v11->_constraints;
    v11->_constraints = v16;
  }

  return v11;
}

@end
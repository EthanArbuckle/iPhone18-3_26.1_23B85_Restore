@interface SiriCoreSQLiteTableDescription
- (SiriCoreSQLiteTableDescription)initWithName:(id)a3 columns:(id)a4 constraints:(id)a5;
- (SiriCoreSQLiteTableDescription)initWithName:(id)a3 columnsProvider:(id)a4 constraintsProvider:(id)a5;
@end

@implementation SiriCoreSQLiteTableDescription

- (SiriCoreSQLiteTableDescription)initWithName:(id)a3 columnsProvider:(id)a4 constraintsProvider:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v9)
  {
    v12 = 0;
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v12 = v9[2](v9);
  if (!v11)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = v11[2](v11);
LABEL_6:
  v14 = [(SiriCoreSQLiteTableDescription *)self initWithName:v8 columns:v12 constraints:v13];

  return v14;
}

- (SiriCoreSQLiteTableDescription)initWithName:(id)a3 columns:(id)a4 constraints:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = SiriCoreSQLiteTableDescription;
  v11 = [(SiriCoreSQLiteTableDescription *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    name = v11->_name;
    v11->_name = v12;

    v14 = [v9 copy];
    columns = v11->_columns;
    v11->_columns = v14;

    v16 = [v10 copy];
    constraints = v11->_constraints;
    v11->_constraints = v16;
  }

  return v11;
}

@end
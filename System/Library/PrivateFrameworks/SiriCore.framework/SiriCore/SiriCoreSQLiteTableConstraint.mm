@interface SiriCoreSQLiteTableConstraint
+ (id)primaryKeyTableConstraintWithName:(id)a3 columnNames:(id)a4;
+ (id)uniqueTableConstraintWithName:(id)a3 columnNames:(id)a4;
- (SiriCoreSQLiteTableConstraint)initWithName:(id)a3 type:(int64_t)a4 columnNames:(id)a5;
@end

@implementation SiriCoreSQLiteTableConstraint

- (SiriCoreSQLiteTableConstraint)initWithName:(id)a3 type:(int64_t)a4 columnNames:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = SiriCoreSQLiteTableConstraint;
  v10 = [(SiriCoreSQLiteTableConstraint *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    name = v10->_name;
    v10->_name = v11;

    v10->_type = a4;
    v13 = [v9 copy];
    columnNames = v10->_columnNames;
    v10->_columnNames = v13;
  }

  return v10;
}

+ (id)uniqueTableConstraintWithName:(id)a3 columnNames:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[SiriCoreSQLiteTableConstraint alloc] initWithName:v6 type:2 columnNames:v5];

  return v7;
}

+ (id)primaryKeyTableConstraintWithName:(id)a3 columnNames:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[SiriCoreSQLiteTableConstraint alloc] initWithName:v6 type:1 columnNames:v5];

  return v7;
}

@end
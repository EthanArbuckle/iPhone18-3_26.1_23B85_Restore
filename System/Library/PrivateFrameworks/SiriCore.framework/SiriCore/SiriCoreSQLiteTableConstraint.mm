@interface SiriCoreSQLiteTableConstraint
+ (id)primaryKeyTableConstraintWithName:(id)name columnNames:(id)names;
+ (id)uniqueTableConstraintWithName:(id)name columnNames:(id)names;
- (SiriCoreSQLiteTableConstraint)initWithName:(id)name type:(int64_t)type columnNames:(id)names;
@end

@implementation SiriCoreSQLiteTableConstraint

- (SiriCoreSQLiteTableConstraint)initWithName:(id)name type:(int64_t)type columnNames:(id)names
{
  nameCopy = name;
  namesCopy = names;
  v16.receiver = self;
  v16.super_class = SiriCoreSQLiteTableConstraint;
  v10 = [(SiriCoreSQLiteTableConstraint *)&v16 init];
  if (v10)
  {
    v11 = [nameCopy copy];
    name = v10->_name;
    v10->_name = v11;

    v10->_type = type;
    v13 = [namesCopy copy];
    columnNames = v10->_columnNames;
    v10->_columnNames = v13;
  }

  return v10;
}

+ (id)uniqueTableConstraintWithName:(id)name columnNames:(id)names
{
  namesCopy = names;
  nameCopy = name;
  v7 = [[SiriCoreSQLiteTableConstraint alloc] initWithName:nameCopy type:2 columnNames:namesCopy];

  return v7;
}

+ (id)primaryKeyTableConstraintWithName:(id)name columnNames:(id)names
{
  namesCopy = names;
  nameCopy = name;
  v7 = [[SiriCoreSQLiteTableConstraint alloc] initWithName:nameCopy type:1 columnNames:namesCopy];

  return v7;
}

@end
@interface SiriCoreSQLiteIndexDescription
- (SiriCoreSQLiteIndexDescription)initWithName:(id)name tableName:(id)tableName columnNames:(id)names options:(unint64_t)options;
@end

@implementation SiriCoreSQLiteIndexDescription

- (SiriCoreSQLiteIndexDescription)initWithName:(id)name tableName:(id)tableName columnNames:(id)names options:(unint64_t)options
{
  nameCopy = name;
  tableNameCopy = tableName;
  namesCopy = names;
  v21.receiver = self;
  v21.super_class = SiriCoreSQLiteIndexDescription;
  v13 = [(SiriCoreSQLiteIndexDescription *)&v21 init];
  if (v13)
  {
    v14 = [nameCopy copy];
    name = v13->_name;
    v13->_name = v14;

    v16 = [tableNameCopy copy];
    tableName = v13->_tableName;
    v13->_tableName = v16;

    v18 = [namesCopy copy];
    columnNames = v13->_columnNames;
    v13->_columnNames = v18;

    v13->_options = options;
  }

  return v13;
}

@end
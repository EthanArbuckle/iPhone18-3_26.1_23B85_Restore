@interface SiriCoreSQLiteIndexDescription
- (SiriCoreSQLiteIndexDescription)initWithName:(id)a3 tableName:(id)a4 columnNames:(id)a5 options:(unint64_t)a6;
@end

@implementation SiriCoreSQLiteIndexDescription

- (SiriCoreSQLiteIndexDescription)initWithName:(id)a3 tableName:(id)a4 columnNames:(id)a5 options:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v21.receiver = self;
  v21.super_class = SiriCoreSQLiteIndexDescription;
  v13 = [(SiriCoreSQLiteIndexDescription *)&v21 init];
  if (v13)
  {
    v14 = [v10 copy];
    name = v13->_name;
    v13->_name = v14;

    v16 = [v11 copy];
    tableName = v13->_tableName;
    v13->_tableName = v16;

    v18 = [v12 copy];
    columnNames = v13->_columnNames;
    v13->_columnNames = v18;

    v13->_options = a6;
  }

  return v13;
}

@end
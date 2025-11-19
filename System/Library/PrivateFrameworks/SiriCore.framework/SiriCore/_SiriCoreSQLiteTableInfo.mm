@interface _SiriCoreSQLiteTableInfo
- (_SiriCoreSQLiteTableInfo)initWithName:(id)a3 columns:(id)a4;
@end

@implementation _SiriCoreSQLiteTableInfo

- (_SiriCoreSQLiteTableInfo)initWithName:(id)a3 columns:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = _SiriCoreSQLiteTableInfo;
  v8 = [(_SiriCoreSQLiteTableInfo *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [v7 copy];
    columns = v8->_columns;
    v8->_columns = v11;
  }

  return v8;
}

@end
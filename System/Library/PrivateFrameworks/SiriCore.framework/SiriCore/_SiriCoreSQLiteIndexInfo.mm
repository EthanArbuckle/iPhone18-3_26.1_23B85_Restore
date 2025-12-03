@interface _SiriCoreSQLiteIndexInfo
- (_SiriCoreSQLiteIndexInfo)initWithName:(id)name columns:(id)columns;
@end

@implementation _SiriCoreSQLiteIndexInfo

- (_SiriCoreSQLiteIndexInfo)initWithName:(id)name columns:(id)columns
{
  nameCopy = name;
  columnsCopy = columns;
  v14.receiver = self;
  v14.super_class = _SiriCoreSQLiteIndexInfo;
  v8 = [(_SiriCoreSQLiteIndexInfo *)&v14 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [columnsCopy copy];
    columns = v8->_columns;
    v8->_columns = v11;
  }

  return v8;
}

@end
@interface _SiriCoreSQLiteColumnInfo
- (_SiriCoreSQLiteColumnInfo)initWithIdentifier:(int64_t)a3 name:(id)a4 type:(id)a5 isPrimaryKey:(BOOL)a6 isNotNull:(BOOL)a7 defaultValue:(id)a8;
@end

@implementation _SiriCoreSQLiteColumnInfo

- (_SiriCoreSQLiteColumnInfo)initWithIdentifier:(int64_t)a3 name:(id)a4 type:(id)a5 isPrimaryKey:(BOOL)a6 isNotNull:(BOOL)a7 defaultValue:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a8;
  v26.receiver = self;
  v26.super_class = _SiriCoreSQLiteColumnInfo;
  v17 = [(_SiriCoreSQLiteColumnInfo *)&v26 init];
  v18 = v17;
  if (v17)
  {
    v17->_identifier = a3;
    v19 = [v14 copy];
    name = v18->_name;
    v18->_name = v19;

    v21 = [v15 copy];
    type = v18->_type;
    v18->_type = v21;

    v18->_isPrimaryKey = a6;
    v18->_isNotNull = a7;
    v23 = [v16 copy];
    defaultValue = v18->_defaultValue;
    v18->_defaultValue = v23;
  }

  return v18;
}

@end
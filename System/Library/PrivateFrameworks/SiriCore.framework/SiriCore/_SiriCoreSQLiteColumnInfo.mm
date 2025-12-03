@interface _SiriCoreSQLiteColumnInfo
- (_SiriCoreSQLiteColumnInfo)initWithIdentifier:(int64_t)identifier name:(id)name type:(id)type isPrimaryKey:(BOOL)key isNotNull:(BOOL)null defaultValue:(id)value;
@end

@implementation _SiriCoreSQLiteColumnInfo

- (_SiriCoreSQLiteColumnInfo)initWithIdentifier:(int64_t)identifier name:(id)name type:(id)type isPrimaryKey:(BOOL)key isNotNull:(BOOL)null defaultValue:(id)value
{
  nameCopy = name;
  typeCopy = type;
  valueCopy = value;
  v26.receiver = self;
  v26.super_class = _SiriCoreSQLiteColumnInfo;
  v17 = [(_SiriCoreSQLiteColumnInfo *)&v26 init];
  v18 = v17;
  if (v17)
  {
    v17->_identifier = identifier;
    v19 = [nameCopy copy];
    name = v18->_name;
    v18->_name = v19;

    v21 = [typeCopy copy];
    type = v18->_type;
    v18->_type = v21;

    v18->_isPrimaryKey = key;
    v18->_isNotNull = null;
    v23 = [valueCopy copy];
    defaultValue = v18->_defaultValue;
    v18->_defaultValue = v23;
  }

  return v18;
}

@end
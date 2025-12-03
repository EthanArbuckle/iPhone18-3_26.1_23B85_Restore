@interface REScriptToken
- (BOOL)isEqual:(id)equal;
- (REScriptToken)initWithValue:(id)value type:(unint64_t)type line:(int64_t)line column:(int64_t)column;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation REScriptToken

- (REScriptToken)initWithValue:(id)value type:(unint64_t)type line:(int64_t)line column:(int64_t)column
{
  valueCopy = value;
  v15.receiver = self;
  v15.super_class = REScriptToken;
  v11 = [(REScriptToken *)&v15 init];
  if (v11)
  {
    v12 = [valueCopy copy];
    value = v11->_value;
    v11->_value = v12;

    v11->_type = type;
    v11->_line = line;
    v11->_column = column;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = v5;
      if (self->_type == v5->_type && self->_line == v5->_line && self->_column == v5->_column)
      {
        value = self->_value;
        v8 = v5->_value;
        v9 = value;
        v10 = v9;
        if (v9 == v8)
        {
          v11 = 1;
        }

        else
        {
          v11 = [(NSString *)v9 isEqual:v8];
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  value = self->_value;
  type = self->_type;
  line = self->_line;
  column = self->_column;

  return [v4 initWithValue:value type:type line:line column:column];
}

@end
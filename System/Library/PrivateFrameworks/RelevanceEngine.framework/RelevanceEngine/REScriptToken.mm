@interface REScriptToken
- (BOOL)isEqual:(id)a3;
- (REScriptToken)initWithValue:(id)a3 type:(unint64_t)a4 line:(int64_t)a5 column:(int64_t)a6;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation REScriptToken

- (REScriptToken)initWithValue:(id)a3 type:(unint64_t)a4 line:(int64_t)a5 column:(int64_t)a6
{
  v10 = a3;
  v15.receiver = self;
  v15.super_class = REScriptToken;
  v11 = [(REScriptToken *)&v15 init];
  if (v11)
  {
    v12 = [v10 copy];
    value = v11->_value;
    v11->_value = v12;

    v11->_type = a4;
    v11->_line = a5;
    v11->_column = a6;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  value = self->_value;
  type = self->_type;
  line = self->_line;
  column = self->_column;

  return [v4 initWithValue:value type:type line:line column:column];
}

@end
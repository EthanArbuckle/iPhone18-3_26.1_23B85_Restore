@interface PLCoreDataSqlLogBinder
+ (id)bindSelectString:(id)string bindValueStrings:(id)strings;
+ (id)stringFromBindVariable:(id)variable withTypePrefix:(BOOL)prefix;
- (NSString)boundSql;
- (PLCoreDataSqlLogBinder)init;
- (void)addLogLine:(id)line;
- (void)setSelectString:(id)string bindValueStrings:(id)strings;
@end

@implementation PLCoreDataSqlLogBinder

- (NSString)boundSql
{
  v3 = objc_autoreleasePoolPush();
  if (self)
  {
    v4 = [(NSMutableArray *)self->_bindValues count];
    selectString = self->_selectString;
    if (v4)
    {
      v6 = [(NSString *)selectString componentsSeparatedByString:@"?"];
      v7 = [v6 mutableCopy];

      if ([v7 count] == v4 + 1)
      {
        string = [MEMORY[0x1E696AD60] string];
        for (i = 0; i != v4; ++i)
        {
          v10 = [v7 objectAtIndexedSubscript:i];
          [string appendString:v10];

          v11 = [(NSMutableArray *)self->_bindValues objectAtIndexedSubscript:i];
          [string appendString:v11];
        }

        v12 = [v7 objectAtIndexedSubscript:v4];
        [string appendString:v12];

        self = [string copy];
      }

      else
      {
        v14 = self->_selectString;
        if (!v14)
        {
          v14 = &stru_1F0F06D80;
        }

        self = v14;
      }
    }

    else
    {
      v13 = &stru_1F0F06D80;
      if (selectString)
      {
        v13 = self->_selectString;
      }

      self = v13;
    }
  }

  objc_autoreleasePoolPop(v3);

  return self;
}

- (void)setSelectString:(id)string bindValueStrings:(id)strings
{
  stringsCopy = strings;
  v7 = [string copy];
  selectString = self->_selectString;
  self->_selectString = v7;

  v9 = [stringsCopy copy];
  bindValues = self->_bindValues;
  self->_bindValues = v9;
}

- (void)addLogLine:(id)line
{
  lineCopy = line;
  v4 = -[NSRegularExpression firstMatchInString:options:range:](self->_selectRegex, "firstMatchInString:options:range:", lineCopy, 0, 0, [lineCopy length]);
  if (v4)
  {
    v5 = v4;
    v6 = [v4 rangeAtIndex:1];
    v8 = [lineCopy substringWithRange:{v6, v7}];
    v9 = [v8 copy];
    selectString = self->_selectString;
    self->_selectString = v9;

    goto LABEL_3;
  }

  v11 = -[NSRegularExpression firstMatchInString:options:range:](self->_bindRegex, "firstMatchInString:options:range:", lineCopy, 0, 0, [lineCopy length]);
  if (v11)
  {
    v5 = v11;
    [v11 rangeAtIndex:3];
    if (!v12)
    {
      goto LABEL_4;
    }

    v13 = [v5 rangeAtIndex:3];
    v15 = [lineCopy substringWithRange:{v13, v14}];
    if (!v15)
    {
      goto LABEL_4;
    }

    v8 = v15;
    [(NSMutableArray *)self->_bindValues addObject:v15];
LABEL_3:

LABEL_4:
  }
}

- (PLCoreDataSqlLogBinder)init
{
  v11.receiver = self;
  v11.super_class = PLCoreDataSqlLogBinder;
  v2 = [(PLCoreDataSqlLogBinder *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    bindValues = v2->_bindValues;
    v2->_bindValues = v3;

    v5 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"sql: (SELECT.*)$" options:0 error:0];
    selectRegex = v2->_selectRegex;
    v2->_selectRegex = v5;

    v7 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"(?:details: SQLite |sql:)?bind\\[(\\d+)\\] = (\\([^\\)]+\\)?(.*)$" options:? error:?], 0, 0);
    bindRegex = v2->_bindRegex;
    v2->_bindRegex = v7;

    v9 = v2;
  }

  return v2;
}

+ (id)bindSelectString:(id)string bindValueStrings:(id)strings
{
  stringCopy = string;
  stringsCopy = strings;
  v7 = objc_autoreleasePoolPush();
  v8 = objc_alloc_init(PLCoreDataSqlLogBinder);
  [(PLCoreDataSqlLogBinder *)v8 setSelectString:stringCopy bindValueStrings:stringsCopy];
  boundSql = [(PLCoreDataSqlLogBinder *)v8 boundSql];

  objc_autoreleasePoolPop(v7);

  return boundSql;
}

+ (id)stringFromBindVariable:(id)variable withTypePrefix:(BOOL)prefix
{
  prefixCopy = prefix;
  variableCopy = variable;
  if (![variableCopy hasObjectValue])
  {
    int64 = [variableCopy int64];

    if (int64)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%qd", int64];
      v13 = @"(int64)";
      if (!prefixCopy)
      {
        goto LABEL_17;
      }

LABEL_14:
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v13, v12];
      goto LABEL_18;
    }

LABEL_9:
    v13 = &stru_1F0F06D80;
    v12 = @"nil";
    if (!prefixCopy)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  value = [variableCopy value];

  if (!value)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = MEMORY[0x1E696AEC0];
  if (isKindOfClass)
  {
    v19 = [value length];
    v9 = @"<NSData len=%tu>";
LABEL_5:
    v10 = v8;
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    v15 = objc_opt_isKindOfClass();
    v8 = MEMORY[0x1E696AEC0];
    if (v15)
    {
      [value timeIntervalSinceReferenceDate];
      v12 = [v8 stringWithFormat:@"%f", v16];

      v13 = @"(timestamp)";
      if (prefixCopy)
      {
        goto LABEL_14;
      }

      goto LABEL_17;
    }

    v19 = value;
    v9 = @"%@";
    goto LABEL_5;
  }

  v10 = MEMORY[0x1E696AEC0];
  v19 = value;
  v9 = @"%@";
LABEL_13:
  v12 = [v10 stringWithFormat:v9, v19];

  v13 = &stru_1F0F06D80;
  if (prefixCopy)
  {
    goto LABEL_14;
  }

LABEL_17:
  v14 = v12;
LABEL_18:
  v17 = v14;

  return v17;
}

@end
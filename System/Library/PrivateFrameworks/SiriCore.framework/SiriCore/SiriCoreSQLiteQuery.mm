@interface SiriCoreSQLiteQuery
- (SiriCoreSQLiteQuery)initWithString:(id)string statement:(id)statement parameters:(id)parameters recordBuilder:(id)builder options:(unint64_t)options;
- (id)description;
@end

@implementation SiriCoreSQLiteQuery

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v15.receiver = self;
  v15.super_class = SiriCoreSQLiteQuery;
  v4 = [(SiriCoreSQLiteQuery *)&v15 description];
  string = self->_string;
  parameters = self->_parameters;
  options = self->_options;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = v8;
  if ((options & 2) != 0)
  {
    [v8 addObject:@"includesColumnNameTuple"];
    if ((options & 4) == 0)
    {
LABEL_3:
      if ((options & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((options & 4) == 0)
  {
    goto LABEL_3;
  }

  [v9 addObject:@"includesColumnValueTuples"];
  if ((options & 8) == 0)
  {
LABEL_4:
    if ((options & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  [v9 addObject:@"includesColumnValuesMap"];
  if ((options & 0x10) == 0)
  {
LABEL_5:
    if ((options & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  [v9 addObject:@"includesRowValueTuples"];
  if ((options & 0x20) == 0)
  {
LABEL_6:
    if ((options & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_14:
  [v9 addObject:@"includesRowValueMaps"];
  if ((options & 0x40) != 0)
  {
LABEL_7:
    [v9 addObject:@"includesRecords"];
  }

LABEL_8:
  if ([v9 count])
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [v9 componentsJoinedByString:@"|"];
    v12 = [v10 stringWithFormat:@"(%@)", v11];
  }

  else
  {
    v12 = @"0";
  }

  v13 = [v3 stringWithFormat:@"%@ {string = %@, parameters = %@, options = %@}", v4, string, parameters, v12];

  return v13;
}

- (SiriCoreSQLiteQuery)initWithString:(id)string statement:(id)statement parameters:(id)parameters recordBuilder:(id)builder options:(unint64_t)options
{
  stringCopy = string;
  statementCopy = statement;
  parametersCopy = parameters;
  builderCopy = builder;
  v22.receiver = self;
  v22.super_class = SiriCoreSQLiteQuery;
  v16 = [(SiriCoreSQLiteQuery *)&v22 init];
  if (v16)
  {
    v17 = [stringCopy copy];
    string = v16->_string;
    v16->_string = v17;

    objc_storeStrong(&v16->_statement, statement);
    v19 = [parametersCopy copy];
    parameters = v16->_parameters;
    v16->_parameters = v19;

    objc_storeStrong(&v16->_recordBuilder, builder);
    v16->_options = options;
  }

  return v16;
}

@end
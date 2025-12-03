@interface WBSSQLiteRowEnumerator
- (WBSSQLiteRowEnumerator)initWithResultsOfStatement:(id)statement;
- (id)nextObject;
@end

@implementation WBSSQLiteRowEnumerator

- (id)nextObject
{
  v3 = sqlite3_step([(WBSSQLiteStatement *)self->_statement handle]);
  v4 = 0;
  self->_lastResultCode = v3;
  if (v3 && v3 != 101)
  {
    if (v3 == 100)
    {
      row = self->_row;
      if (!row)
      {
        v6 = [[WBSSQLiteRow alloc] initWithCurrentRowOfEnumerator:self];
        v7 = self->_row;
        self->_row = v6;

        row = self->_row;
      }

      v4 = row;
    }

    else
    {
      database = [(WBSSQLiteStatement *)self->_statement database];
      [database reportErrorWithCode:self->_lastResultCode statement:-[WBSSQLiteStatement handle](self->_statement error:{"handle"), 0}];

      v4 = 0;
    }
  }

  return v4;
}

- (WBSSQLiteRowEnumerator)initWithResultsOfStatement:(id)statement
{
  statementCopy = statement;
  v10.receiver = self;
  v10.super_class = WBSSQLiteRowEnumerator;
  v6 = [(WBSSQLiteRowEnumerator *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_statement, statement);
    v8 = v7;
  }

  return v7;
}

@end
@interface _bmFMStatement
- (id)description;
- (void)close;
- (void)dealloc;
- (void)reset;
@end

@implementation _bmFMStatement

- (void)reset
{
  statement = self->_statement;
  if (statement)
  {
    sqlite3_reset(statement);
  }

  self->_inUse = 0;
}

- (void)dealloc
{
  [(_bmFMStatement *)self close];
  v3.receiver = self;
  v3.super_class = _bmFMStatement;
  [(_bmFMStatement *)&v3 dealloc];
}

- (void)close
{
  statement = self->_statement;
  if (statement)
  {
    sqlite3_finalize(statement);
    self->_statement = 0;
  }

  self->_inUse = 0;
}

- (id)description
{
  v3 = [NSString alloc];
  v7.receiver = self;
  v7.super_class = _bmFMStatement;
  v4 = [(_bmFMStatement *)&v7 description];
  v5 = [v3 initWithFormat:@"%@ %ld hit(s) for query %@", v4, self->_useCount, self->_query];

  return v5;
}

@end
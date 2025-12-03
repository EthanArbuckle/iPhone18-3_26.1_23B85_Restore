@interface SiriCoreSQLiteStatement
- (SiriCoreSQLiteStatement)initWithImpl:(sqlite3_stmt *)impl finalizeWhenDone:(BOOL)done;
- (void)clearBindings;
- (void)dealloc;
- (void)reset;
@end

@implementation SiriCoreSQLiteStatement

- (SiriCoreSQLiteStatement)initWithImpl:(sqlite3_stmt *)impl finalizeWhenDone:(BOOL)done
{
  v7.receiver = self;
  v7.super_class = SiriCoreSQLiteStatement;
  result = [(SiriCoreSQLiteStatement *)&v7 init];
  if (result)
  {
    result->_impl = impl;
    result->_finalizeWhenDone = done;
  }

  return result;
}

- (void)clearBindings
{
  impl = self->_impl;
  if (impl)
  {
    sqlite3_clear_bindings(impl);
  }
}

- (void)reset
{
  impl = self->_impl;
  if (impl)
  {
    sqlite3_reset(impl);
  }
}

- (void)dealloc
{
  impl = self->_impl;
  if (impl && self->_finalizeWhenDone)
  {
    sqlite3_finalize(impl);
    self->_impl = 0;
  }

  v4.receiver = self;
  v4.super_class = SiriCoreSQLiteStatement;
  [(SiriCoreSQLiteStatement *)&v4 dealloc];
}

@end
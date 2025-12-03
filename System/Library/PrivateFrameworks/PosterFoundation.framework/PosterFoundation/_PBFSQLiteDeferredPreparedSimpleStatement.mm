@interface _PBFSQLiteDeferredPreparedSimpleStatement
- (BOOL)executeWithBindings:(id)bindings resultRowHandler:(id)handler error:(id *)error;
- (id)initWithDatabaseConnection:(void *)connection deferredSql:;
@end

@implementation _PBFSQLiteDeferredPreparedSimpleStatement

- (BOOL)executeWithBindings:(id)bindings resultRowHandler:(id)handler error:(id *)error
{
  bindingsCopy = bindings;
  handlerCopy = handler;
  if (self->_deferredSql)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    WeakRetained = objc_loadWeakRetained(&self->super.super._dbConnection);
    v11 = WeakRetained;
    if (!WeakRetained)
    {
      v12 = 21;
      *(v18 + 6) = 21;
      if (!error)
      {
LABEL_8:

        _Block_object_dispose(&v17, 8);
LABEL_12:
        v13 = 0;
        goto LABEL_13;
      }

LABEL_7:
      *error = [(_PBFSQLitePreparedSimpleStatement *)self _sqliteError:v12 SQLQuery:self->_deferredSql];
      goto LABEL_8;
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __88___PBFSQLiteDeferredPreparedSimpleStatement_executeWithBindings_resultRowHandler_error___block_invoke;
    v16[3] = &unk_1E818A140;
    v16[4] = self;
    v16[5] = &v17;
    [(PFSQLiteDatabaseConnection *)WeakRetained performSyncWithDatabase:v16];
    v12 = *(v18 + 6);
    if (v12)
    {
      if (!error)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    _Block_object_dispose(&v17, 8);
  }

  if (!self->super._statement)
  {
    goto LABEL_12;
  }

  v15.receiver = self;
  v15.super_class = _PBFSQLiteDeferredPreparedSimpleStatement;
  v13 = [(_PBFSQLitePreparedSimpleStatement *)&v15 executeWithBindings:bindingsCopy resultRowHandler:handlerCopy error:error];
LABEL_13:

  return v13;
}

- (id)initWithDatabaseConnection:(void *)connection deferredSql:
{
  connectionCopy = connection;
  if (self)
  {
    v6 = [(_PBFSQLitePreparedSimpleStatement *)self _initWithDatabaseConnection:a2 statement:0];
    if (v6)
    {
      v7 = [connectionCopy copy];
      v8 = v6[4];
      v6[4] = v7;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
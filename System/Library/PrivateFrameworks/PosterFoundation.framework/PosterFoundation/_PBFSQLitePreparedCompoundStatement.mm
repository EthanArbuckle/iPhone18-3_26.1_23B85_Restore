@interface _PBFSQLitePreparedCompoundStatement
- (BOOL)executeWithBindings:(id)a3 resultRowHandler:(id)a4 error:(id *)a5;
- (void)initWithDatabaseConnection:(void *)a3 statements:;
@end

@implementation _PBFSQLitePreparedCompoundStatement

- (BOOL)executeWithBindings:(id)a3 resultRowHandler:(id)a4 error:(id *)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = self->_statements;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        if (![*(*(&v18 + 1) + 8 * i) executeWithBindings:v8 resultRowHandler:v9 error:{a5, v18}])
        {
          v15 = 0;
          goto LABEL_11;
        }
      }

      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v15 = 1;
LABEL_11:

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)initWithDatabaseConnection:(void *)a3 statements:
{
  v5 = a3;
  if (a1)
  {
    v6 = [(PFSQLitePreparedStatement *)a1 _initWithDatabaseConnection:a2];
    if (v6)
    {
      v7 = [v5 copy];
      v8 = v6[3];
      v6[3] = v7;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
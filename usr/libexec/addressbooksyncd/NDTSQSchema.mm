@interface NDTSQSchema
- (int64_t)changes;
- (unint64_t)lastInsertedRowId;
- (void)begin;
- (void)commit;
- (void)executeSql:(id)sql;
- (void)parseSql:(id)sql andRun:(id)run;
- (void)rollback;
@end

@implementation NDTSQSchema

- (void)executeSql:(id)sql
{
  sqlCopy = sql;
  v5 = [(NDTSQSchema *)self db];
  [v5 executeSql:sqlCopy];
}

- (void)parseSql:(id)sql andRun:(id)run
{
  runCopy = run;
  sqlCopy = sql;
  v8 = [(NDTSQSchema *)self db];
  [v8 parseSql:sqlCopy andRun:runCopy];
}

- (void)begin
{
  v2 = [(NDTSQSchema *)self db];
  [v2 begin];
}

- (void)commit
{
  v2 = [(NDTSQSchema *)self db];
  [v2 commit];
}

- (void)rollback
{
  v2 = [(NDTSQSchema *)self db];
  [v2 rollback];
}

- (int64_t)changes
{
  v2 = [(NDTSQSchema *)self db];
  v3 = sqlite3_changes([v2 db]);

  return v3;
}

- (unint64_t)lastInsertedRowId
{
  v2 = [(NDTSQSchema *)self db];
  insert_rowid = sqlite3_last_insert_rowid([v2 db]);

  return insert_rowid;
}

@end
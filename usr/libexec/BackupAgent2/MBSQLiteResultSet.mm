@interface MBSQLiteResultSet
- (BOOL)enumerateWithError:(id *)error block:(id)block;
- (id)_initWithDatabase:(id)database creationError:(id)error resultSet:(id)set;
@end

@implementation MBSQLiteResultSet

- (id)_initWithDatabase:(id)database creationError:(id)error resultSet:(id)set
{
  databaseCopy = database;
  errorCopy = error;
  setCopy = set;
  v15.receiver = self;
  v15.super_class = MBSQLiteResultSet;
  v12 = [(MBSQLiteResultSet *)&v15 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_database, database);
    objc_storeStrong(p_isa + 2, set);
    objc_storeStrong(p_isa + 3, error);
  }

  return p_isa;
}

- (BOOL)enumerateWithError:(id *)error block:(id)block
{
  blockCopy = block;
  creationError = self->_creationError;
  if (!creationError)
  {
    resultSet = self->_resultSet;
    if (resultSet)
    {
      v11 = resultSet;
      v12 = self->_resultSet;
      self->_resultSet = 0;

      database = self->_database;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000524D8;
      v16[3] = &unk_1000FDFC8;
      v17 = v11;
      v18 = blockCopy;
      v14 = v11;
      v9 = [(MBSQLiteDB *)database performWithConnection:error accessor:v16];

      goto LABEL_10;
    }

    if (error)
    {
      _invalidatedError = [(MBSQLiteDB *)self->_database _invalidatedError];
      goto LABEL_4;
    }

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  if (!error)
  {
    goto LABEL_9;
  }

  _invalidatedError = creationError;
LABEL_4:
  v9 = 0;
  *error = _invalidatedError;
LABEL_10:

  return v9;
}

@end
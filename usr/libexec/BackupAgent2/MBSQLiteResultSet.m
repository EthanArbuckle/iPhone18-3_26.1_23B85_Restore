@interface MBSQLiteResultSet
- (BOOL)enumerateWithError:(id *)a3 block:(id)a4;
- (id)_initWithDatabase:(id)a3 creationError:(id)a4 resultSet:(id)a5;
@end

@implementation MBSQLiteResultSet

- (id)_initWithDatabase:(id)a3 creationError:(id)a4 resultSet:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MBSQLiteResultSet;
  v12 = [(MBSQLiteResultSet *)&v15 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_database, a3);
    objc_storeStrong(p_isa + 2, a5);
    objc_storeStrong(p_isa + 3, a4);
  }

  return p_isa;
}

- (BOOL)enumerateWithError:(id *)a3 block:(id)a4
{
  v6 = a4;
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
      v18 = v6;
      v14 = v11;
      v9 = [(MBSQLiteDB *)database performWithConnection:a3 accessor:v16];

      goto LABEL_10;
    }

    if (a3)
    {
      v8 = [(MBSQLiteDB *)self->_database _invalidatedError];
      goto LABEL_4;
    }

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  if (!a3)
  {
    goto LABEL_9;
  }

  v8 = creationError;
LABEL_4:
  v9 = 0;
  *a3 = v8;
LABEL_10:

  return v9;
}

@end
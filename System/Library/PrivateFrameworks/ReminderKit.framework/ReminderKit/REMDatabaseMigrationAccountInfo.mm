@interface REMDatabaseMigrationAccountInfo
- (REMDatabaseMigrationAccountInfo)initWithAccountType:(int64_t)a3 identifier:(id)a4 name:(id)a5;
@end

@implementation REMDatabaseMigrationAccountInfo

- (REMDatabaseMigrationAccountInfo)initWithAccountType:(int64_t)a3 identifier:(id)a4 name:(id)a5
{
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = REMDatabaseMigrationAccountInfo;
  v11 = [(REMDatabaseMigrationAccountInfo *)&v15 init];
  if (!v11)
  {
LABEL_7:
    v12 = v11;
    goto LABEL_11;
  }

  if (a3 && v9)
  {
    if (!v10)
    {
      v10 = NSStringFromREMAccountType(a3);
    }

    objc_storeStrong(&v11->_identifier, a4);
    objc_storeStrong(&v11->_name, v10);
    v11->_type = a3;
    goto LABEL_7;
  }

  v13 = +[REMLogStore write];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [REMDatabaseMigrationAccountInfo initWithAccountType:v13 identifier:? name:?];
  }

  v12 = 0;
LABEL_11:

  return v12;
}

@end
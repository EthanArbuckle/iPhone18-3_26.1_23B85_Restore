@interface REMDatabaseMigrationAccountInfo
- (REMDatabaseMigrationAccountInfo)initWithAccountType:(int64_t)type identifier:(id)identifier name:(id)name;
@end

@implementation REMDatabaseMigrationAccountInfo

- (REMDatabaseMigrationAccountInfo)initWithAccountType:(int64_t)type identifier:(id)identifier name:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = REMDatabaseMigrationAccountInfo;
  v11 = [(REMDatabaseMigrationAccountInfo *)&v15 init];
  if (!v11)
  {
LABEL_7:
    v12 = v11;
    goto LABEL_11;
  }

  if (type && identifierCopy)
  {
    if (!nameCopy)
    {
      nameCopy = NSStringFromREMAccountType(type);
    }

    objc_storeStrong(&v11->_identifier, identifier);
    objc_storeStrong(&v11->_name, nameCopy);
    v11->_type = type;
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
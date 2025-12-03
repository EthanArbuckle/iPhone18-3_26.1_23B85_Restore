@interface ICSQLiteConnectionOptions
- (ICSQLiteConnectionOptions)initWithCoder:(id)coder;
- (ICSQLiteConnectionOptions)initWithDatabasePath:(id)path;
- (id)copyWithZone:(_NSZone *)zone;
- (int)applyToDatabase:(sqlite3 *)database;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICSQLiteConnectionOptions

- (void)encodeWithCoder:(id)coder
{
  cacheSize = self->_cacheSize;
  coderCopy = coder;
  [coderCopy encodeInteger:cacheSize forKey:@"c"];
  [coderCopy encodeObject:self->_databasePath forKey:@"p"];
  [coderCopy encodeBool:self->_readOnly forKey:@"ro"];
}

- (ICSQLiteConnectionOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ICSQLiteConnectionOptions;
  v5 = [(ICSQLiteConnectionOptions *)&v9 init];
  if (v5)
  {
    v5->_cacheSize = [coderCopy decodeIntegerForKey:@"c"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"p"];
    databasePath = v5->_databasePath;
    v5->_databasePath = v6;

    v5->_readOnly = [coderCopy decodeBoolForKey:@"ro"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (v5)
  {
    *(v5 + 24) = self->_cacheSize;
    v7 = [(NSString *)self->_databasePath copyWithZone:zone];
    v8 = *(v6 + 16);
    *(v6 + 16) = v7;

    *(v6 + 8) = self->_readOnly;
  }

  return v6;
}

- (int)applyToDatabase:(sqlite3 *)database
{
  sqlite3_extended_result_codes(database, 1);
  v9 = 1;
  v5 = sqlite3_file_control(database, 0, 10, &v9);
  if (v5)
  {
    return v5;
  }

  v5 = sqlite3_exec(database, "PRAGMA journal_mode=WAL", 0, 0, 0);
  if (v5)
  {
    return v5;
  }

  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"PRAGMA cache_size=%ld", -[ICSQLiteConnectionOptions cacheSize](self, "cacheSize")];
  v6 = sqlite3_exec(database, [v8 UTF8String], 0, 0, 0);

  return v6;
}

- (ICSQLiteConnectionOptions)initWithDatabasePath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = ICSQLiteConnectionOptions;
  v5 = [(ICSQLiteConnectionOptions *)&v9 init];
  if (v5)
  {
    v6 = [pathCopy copy];
    databasePath = v5->_databasePath;
    v5->_databasePath = v6;

    [(ICSQLiteConnectionOptions *)v5 setCacheSizeWithNumberOfKilobytes:128];
  }

  return v5;
}

@end
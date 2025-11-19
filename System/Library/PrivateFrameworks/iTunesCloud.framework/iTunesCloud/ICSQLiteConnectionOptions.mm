@interface ICSQLiteConnectionOptions
- (ICSQLiteConnectionOptions)initWithCoder:(id)a3;
- (ICSQLiteConnectionOptions)initWithDatabasePath:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (int)applyToDatabase:(sqlite3 *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICSQLiteConnectionOptions

- (void)encodeWithCoder:(id)a3
{
  cacheSize = self->_cacheSize;
  v5 = a3;
  [v5 encodeInteger:cacheSize forKey:@"c"];
  [v5 encodeObject:self->_databasePath forKey:@"p"];
  [v5 encodeBool:self->_readOnly forKey:@"ro"];
}

- (ICSQLiteConnectionOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICSQLiteConnectionOptions;
  v5 = [(ICSQLiteConnectionOptions *)&v9 init];
  if (v5)
  {
    v5->_cacheSize = [v4 decodeIntegerForKey:@"c"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"p"];
    databasePath = v5->_databasePath;
    v5->_databasePath = v6;

    v5->_readOnly = [v4 decodeBoolForKey:@"ro"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (v5)
  {
    *(v5 + 24) = self->_cacheSize;
    v7 = [(NSString *)self->_databasePath copyWithZone:a3];
    v8 = *(v6 + 16);
    *(v6 + 16) = v7;

    *(v6 + 8) = self->_readOnly;
  }

  return v6;
}

- (int)applyToDatabase:(sqlite3 *)a3
{
  sqlite3_extended_result_codes(a3, 1);
  v9 = 1;
  v5 = sqlite3_file_control(a3, 0, 10, &v9);
  if (v5)
  {
    return v5;
  }

  v5 = sqlite3_exec(a3, "PRAGMA journal_mode=WAL", 0, 0, 0);
  if (v5)
  {
    return v5;
  }

  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"PRAGMA cache_size=%ld", -[ICSQLiteConnectionOptions cacheSize](self, "cacheSize")];
  v6 = sqlite3_exec(a3, [v8 UTF8String], 0, 0, 0);

  return v6;
}

- (ICSQLiteConnectionOptions)initWithDatabasePath:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICSQLiteConnectionOptions;
  v5 = [(ICSQLiteConnectionOptions *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    databasePath = v5->_databasePath;
    v5->_databasePath = v6;

    [(ICSQLiteConnectionOptions *)v5 setCacheSizeWithNumberOfKilobytes:128];
  }

  return v5;
}

@end
@interface BRCMigrationCursor
- (BRCMigrationCursor)initWithCKQueryCursor:(id)a3;
- (BRCMigrationCursor)initWithCoder:(id)a3;
- (BRCMigrationCursor)initWithDbEnumerationCursor:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BRCMigrationCursor

- (BRCMigrationCursor)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = BRCMigrationCursor;
  v5 = [(BRCMigrationCursor *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ckCur"];
    ckQueryCursor = v5->_ckQueryCursor;
    v5->_ckQueryCursor = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dbCur"];
    dbEnumerationCursor = v5->_dbEnumerationCursor;
    v5->_dbEnumerationCursor = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  ckQueryCursor = self->_ckQueryCursor;
  v5 = a3;
  [v5 encodeObject:ckQueryCursor forKey:@"ckCur"];
  [v5 encodeObject:self->_dbEnumerationCursor forKey:@"dbCur"];
}

- (BRCMigrationCursor)initWithCKQueryCursor:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = BRCMigrationCursor;
    v6 = [(BRCMigrationCursor *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_ckQueryCursor, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BRCMigrationCursor)initWithDbEnumerationCursor:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = BRCMigrationCursor;
    v6 = [(BRCMigrationCursor *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_dbEnumerationCursor, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end
@interface BRCMigrationCursor
- (BRCMigrationCursor)initWithCKQueryCursor:(id)cursor;
- (BRCMigrationCursor)initWithCoder:(id)coder;
- (BRCMigrationCursor)initWithDbEnumerationCursor:(id)cursor;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BRCMigrationCursor

- (BRCMigrationCursor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = BRCMigrationCursor;
  v5 = [(BRCMigrationCursor *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ckCur"];
    ckQueryCursor = v5->_ckQueryCursor;
    v5->_ckQueryCursor = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dbCur"];
    dbEnumerationCursor = v5->_dbEnumerationCursor;
    v5->_dbEnumerationCursor = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  ckQueryCursor = self->_ckQueryCursor;
  coderCopy = coder;
  [coderCopy encodeObject:ckQueryCursor forKey:@"ckCur"];
  [coderCopy encodeObject:self->_dbEnumerationCursor forKey:@"dbCur"];
}

- (BRCMigrationCursor)initWithCKQueryCursor:(id)cursor
{
  cursorCopy = cursor;
  if (cursorCopy)
  {
    v10.receiver = self;
    v10.super_class = BRCMigrationCursor;
    v6 = [(BRCMigrationCursor *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_ckQueryCursor, cursor);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BRCMigrationCursor)initWithDbEnumerationCursor:(id)cursor
{
  cursorCopy = cursor;
  if (cursorCopy)
  {
    v10.receiver = self;
    v10.super_class = BRCMigrationCursor;
    v6 = [(BRCMigrationCursor *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_dbEnumerationCursor, cursor);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end
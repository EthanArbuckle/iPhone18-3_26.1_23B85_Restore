@interface RCMigration
+ (id)createEncryptedFieldsMigration:(int)migration context:(id)context;
- (NSString)jsonDescription;
- (id)_descriptionDictionary;
- (id)_initWithFlags:(unint64_t)flags context:(id)context;
- (id)description;
- (int)migrationReason;
- (unint64_t)migrationFlags;
- (void)jsonDescription;
- (void)setHasEncryptedFields:(BOOL)fields;
- (void)setMigrationFlags:(unint64_t)flags;
@end

@implementation RCMigration

- (unint64_t)migrationFlags
{
  flags = [(RCMigration *)self flags];
  longLongValue = [flags longLongValue];

  return longLongValue;
}

- (void)setMigrationFlags:(unint64_t)flags
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:flags];
  [(RCMigration *)self setFlags:v4];
}

+ (id)createEncryptedFieldsMigration:(int)migration context:(id)context
{
  if ((migration - 1) > 2)
  {
    v4 = 1;
  }

  else
  {
    v4 = qword_272492610[migration - 1];
  }

  contextCopy = context;
  v6 = [[RCMigration alloc] _initWithFlags:v4 context:contextCopy];

  return v6;
}

- (id)_initWithFlags:(unint64_t)flags context:(id)context
{
  v8.receiver = self;
  v8.super_class = RCMigration;
  v5 = [(RCMigration *)&v8 initWithContext:context];
  if (v5)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [(RCMigration *)v5 setDate:date];

    [(RCMigration *)v5 setMigrationFlags:flags];
  }

  return v5;
}

- (void)setHasEncryptedFields:(BOOL)fields
{
  v4 = [(RCMigration *)self migrationFlags]& 0xFFFFFFFFFFFFFFFELL | fields;

  [(RCMigration *)self setMigrationFlags:v4];
}

- (int)migrationReason
{
  migrationFlags = [(RCMigration *)self migrationFlags];
  if ((migrationFlags & 8) != 0)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if ((migrationFlags & 4) != 0)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  if ((migrationFlags & 2) != 0)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

- (id)_descriptionDictionary
{
  v19[5] = *MEMORY[0x277D85DE8];
  v18[0] = @"objectID";
  objectID = [(RCMigration *)self objectID];
  uRIRepresentation = [objectID URIRepresentation];
  path = [uRIRepresentation path];
  null = path;
  if (!path)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v19[0] = null;
  v18[1] = @"date";
  date = [(RCMigration *)self date];
  v7 = [date description];
  null2 = v7;
  if (!v7)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v19[1] = null2;
  v18[2] = @"hasEncryptedFields";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[RCMigration hasEncryptedFields](self, "hasEncryptedFields")}];
  v19[2] = v9;
  v18[3] = @"reason";
  v10 = [(RCMigration *)self migrationReason]- 1;
  if (v10 > 2)
  {
    v11 = @"Unknown";
  }

  else
  {
    v11 = off_279E44850[v10];
  }

  v19[3] = v11;
  v18[4] = @"flags";
  flags = [(RCMigration *)self flags];
  null3 = flags;
  if (!flags)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v19[4] = null3;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
  if (!flags)
  {
  }

  if (!v7)
  {
  }

  if (!path)
  {
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)description
{
  _descriptionDictionary = [(RCMigration *)self _descriptionDictionary];
  v3 = [_descriptionDictionary description];

  return v3;
}

- (NSString)jsonDescription
{
  v2 = MEMORY[0x277CCAAA0];
  _descriptionDictionary = [(RCMigration *)self _descriptionDictionary];
  v9 = 0;
  v4 = [v2 dataWithJSONObject:_descriptionDictionary options:1 error:&v9];
  v5 = v9;

  if (v4)
  {
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v4 encoding:4];
  }

  else
  {
    v7 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(RCMigration *)v5 jsonDescription];
    }

    v6 = 0;
  }

  return v6;
}

- (void)jsonDescription
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[RCMigration jsonDescription]";
  v5 = 2112;
  selfCopy = self;
  _os_log_error_impl(&dword_272442000, a2, OS_LOG_TYPE_ERROR, "%s -- dataWithJSONObject failed with %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end
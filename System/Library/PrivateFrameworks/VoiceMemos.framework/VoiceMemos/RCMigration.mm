@interface RCMigration
+ (id)createEncryptedFieldsMigration:(int)a3 context:(id)a4;
- (NSString)jsonDescription;
- (id)_descriptionDictionary;
- (id)_initWithFlags:(unint64_t)a3 context:(id)a4;
- (id)description;
- (int)migrationReason;
- (unint64_t)migrationFlags;
- (void)jsonDescription;
- (void)setHasEncryptedFields:(BOOL)a3;
- (void)setMigrationFlags:(unint64_t)a3;
@end

@implementation RCMigration

- (unint64_t)migrationFlags
{
  v2 = [(RCMigration *)self flags];
  v3 = [v2 longLongValue];

  return v3;
}

- (void)setMigrationFlags:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(RCMigration *)self setFlags:v4];
}

+ (id)createEncryptedFieldsMigration:(int)a3 context:(id)a4
{
  if ((a3 - 1) > 2)
  {
    v4 = 1;
  }

  else
  {
    v4 = qword_272492610[a3 - 1];
  }

  v5 = a4;
  v6 = [[RCMigration alloc] _initWithFlags:v4 context:v5];

  return v6;
}

- (id)_initWithFlags:(unint64_t)a3 context:(id)a4
{
  v8.receiver = self;
  v8.super_class = RCMigration;
  v5 = [(RCMigration *)&v8 initWithContext:a4];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEAA8] date];
    [(RCMigration *)v5 setDate:v6];

    [(RCMigration *)v5 setMigrationFlags:a3];
  }

  return v5;
}

- (void)setHasEncryptedFields:(BOOL)a3
{
  v4 = [(RCMigration *)self migrationFlags]& 0xFFFFFFFFFFFFFFFELL | a3;

  [(RCMigration *)self setMigrationFlags:v4];
}

- (int)migrationReason
{
  v2 = [(RCMigration *)self migrationFlags];
  if ((v2 & 8) != 0)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 4) != 0)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  if ((v2 & 2) != 0)
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
  v17 = [(RCMigration *)self objectID];
  v3 = [v17 URIRepresentation];
  v4 = [v3 path];
  v5 = v4;
  if (!v4)
  {
    v5 = [MEMORY[0x277CBEB68] null];
  }

  v19[0] = v5;
  v18[1] = @"date";
  v6 = [(RCMigration *)self date];
  v7 = [v6 description];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x277CBEB68] null];
  }

  v19[1] = v8;
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
  v12 = [(RCMigration *)self flags];
  v13 = v12;
  if (!v12)
  {
    v13 = [MEMORY[0x277CBEB68] null];
  }

  v19[4] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
  if (!v12)
  {
  }

  if (!v7)
  {
  }

  if (!v4)
  {
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)description
{
  v2 = [(RCMigration *)self _descriptionDictionary];
  v3 = [v2 description];

  return v3;
}

- (NSString)jsonDescription
{
  v2 = MEMORY[0x277CCAAA0];
  v3 = [(RCMigration *)self _descriptionDictionary];
  v9 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:1 error:&v9];
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
  v6 = a1;
  _os_log_error_impl(&dword_272442000, a2, OS_LOG_TYPE_ERROR, "%s -- dataWithJSONObject failed with %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end
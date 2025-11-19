@interface BRCDatabaseBackupRecord
- (BRCDatabaseBackupRecord)initWithPQLResultSet:(id)a3;
- (BRCDatabaseBackupRecord)initWithRelativePath:(id)a3 fileID:(id)a4 docID:(id)a5 genCount:(unsigned int)a6 isDirectory:(BOOL)a7;
- (id)description;
@end

@implementation BRCDatabaseBackupRecord

- (BRCDatabaseBackupRecord)initWithRelativePath:(id)a3 fileID:(id)a4 docID:(id)a5 genCount:(unsigned int)a6 isDirectory:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v19.receiver = self;
  v19.super_class = BRCDatabaseBackupRecord;
  v16 = [(BRCDatabaseBackupRecord *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_relativePath, a3);
    objc_storeStrong(&v17->_fileID, a4);
    objc_storeStrong(&v17->_docID, a5);
    v17->_genCount = a6;
    v17->_isDirectory = a7;
  }

  return v17;
}

- (BRCDatabaseBackupRecord)initWithPQLResultSet:(id)a3
{
  v4 = a3;
  v5 = [v4 stringAtIndex:0];
  v6 = [v4 numberAtIndex:1];
  v7 = [v4 numberAtIndex:2];
  v8 = [v4 unsignedIntAtIndex:3];
  v9 = [v4 BOOLAtIndex:4];

  v10 = [(BRCDatabaseBackupRecord *)self initWithRelativePath:v5 fileID:v6 docID:v7 genCount:v8 isDirectory:v9];
  return v10;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = BRCDatabaseBackupRecord;
  v3 = [(BRCDatabaseBackupRecord *)&v7 description];
  v4 = "-";
  if (self->_isDirectory)
  {
    v4 = "d";
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %s %@ - %@ - %@ - %d", v3, v4, self->_relativePath, self->_fileID, self->_docID, self->_genCount];

  return v5;
}

@end
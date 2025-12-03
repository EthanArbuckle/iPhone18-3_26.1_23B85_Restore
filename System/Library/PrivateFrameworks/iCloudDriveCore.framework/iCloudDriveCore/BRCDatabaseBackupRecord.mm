@interface BRCDatabaseBackupRecord
- (BRCDatabaseBackupRecord)initWithPQLResultSet:(id)set;
- (BRCDatabaseBackupRecord)initWithRelativePath:(id)path fileID:(id)d docID:(id)iD genCount:(unsigned int)count isDirectory:(BOOL)directory;
- (id)description;
@end

@implementation BRCDatabaseBackupRecord

- (BRCDatabaseBackupRecord)initWithRelativePath:(id)path fileID:(id)d docID:(id)iD genCount:(unsigned int)count isDirectory:(BOOL)directory
{
  pathCopy = path;
  dCopy = d;
  iDCopy = iD;
  v19.receiver = self;
  v19.super_class = BRCDatabaseBackupRecord;
  v16 = [(BRCDatabaseBackupRecord *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_relativePath, path);
    objc_storeStrong(&v17->_fileID, d);
    objc_storeStrong(&v17->_docID, iD);
    v17->_genCount = count;
    v17->_isDirectory = directory;
  }

  return v17;
}

- (BRCDatabaseBackupRecord)initWithPQLResultSet:(id)set
{
  setCopy = set;
  v5 = [setCopy stringAtIndex:0];
  v6 = [setCopy numberAtIndex:1];
  v7 = [setCopy numberAtIndex:2];
  v8 = [setCopy unsignedIntAtIndex:3];
  v9 = [setCopy BOOLAtIndex:4];

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
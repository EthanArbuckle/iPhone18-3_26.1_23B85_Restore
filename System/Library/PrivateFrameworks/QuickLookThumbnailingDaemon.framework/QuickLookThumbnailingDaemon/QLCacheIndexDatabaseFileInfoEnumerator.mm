@interface QLCacheIndexDatabaseFileInfoEnumerator
- (BOOL)nextFileWithCacheId:(unint64_t *)id versionedFileIdentifier:(id *)identifier thumbnailCount:(unsigned int *)count minSize:(float *)size maxSize:(float *)maxSize totalDataLength:(unint64_t *)length;
- (QLCacheIndexDatabaseFileInfoEnumerator)initWithSqliteDatabase:(id)database toEnumerateUbiquitousFiles:(BOOL)files extraInfo:(BOOL)info;
@end

@implementation QLCacheIndexDatabaseFileInfoEnumerator

- (QLCacheIndexDatabaseFileInfoEnumerator)initWithSqliteDatabase:(id)database toEnumerateUbiquitousFiles:(BOOL)files extraInfo:(BOOL)info
{
  v8.receiver = self;
  v8.super_class = QLCacheIndexDatabaseFileInfoEnumerator;
  result = [(QLCacheIndexDatabaseGenericEnumerator *)&v8 initWithSqliteDatabase:database];
  if (result)
  {
    result->_extraInfo = info;
    result->_ubiquitous = files;
  }

  return result;
}

- (BOOL)nextFileWithCacheId:(unint64_t *)id versionedFileIdentifier:(id *)identifier thumbnailCount:(unsigned int *)count minSize:(float *)size maxSize:(float *)maxSize totalDataLength:(unint64_t *)length
{
  p_stmt = &self->super._stmt;
  if (!self->super._stmt)
  {
    extraInfo = self->_extraInfo;
    v17 = "SELECT files.rowid, files.fileId, files.fsid, files.version, count(thumbnails.file_id), min(thumbnails.size), max(thumbnails.size), sum(thumbnails.bitmapdata_length + thumbnails.plistbuffer_length) FROM basic_files AS files, thumbnails WHERE (files.rowid | (1<<63)) = thumbnails.file_id GROUP BY thumbnails.file_id";
    sqliteDatabase = self->super._sqliteDatabase;
    v19 = "SELECT rowid, fileId, fsid, version FROM basic_files";
    if (self->_ubiquitous)
    {
      v17 = "SELECT files.rowid, files.fileProviderId, files.itemId, files.version, count(thumbnails.file_id), min(thumbnails.size), max(thumbnails.size), sum(thumbnails.bitmapdata_length + thumbnails.plistbuffer_length) FROM provider_files AS files, thumbnails WHERE files.rowid = thumbnails.file_id GROUP BY thumbnails.file_id";
      v19 = "SELECT rowid, fileProviderId, itemId, version FROM provider_files";
    }

    if (extraInfo)
    {
      v20 = v17;
    }

    else
    {
      v20 = v19;
    }

    self->super._stmt = [(QLSqliteDatabase *)sqliteDatabase prepareStatement:v20];
  }

  fileIdentifier = self->_fileIdentifier;
  self->_fileIdentifier = 0;

  v33 = 0;
  stmt = self->super._stmt;
  if (!stmt)
  {
    goto LABEL_19;
  }

  if (![(QLSqliteDatabase *)self->super._sqliteDatabase stepStatement:stmt didReturnData:&v33]|| v33 != 1)
  {
    if (*p_stmt)
    {
      [(QLSqliteDatabase *)self->super._sqliteDatabase finalizeStatement:p_stmt];
    }

LABEL_19:
    v31 = 0;
    goto LABEL_20;
  }

  v23 = [(QLSqliteDatabase *)self->super._sqliteDatabase unsignedLongLongFromColumn:0 inStatement:self->super._stmt];
  ubiquitous = self->_ubiquitous;
  *id = v23;
  if (ubiquitous)
  {
    v25 = 0x277CDAA98;
  }

  else
  {
    v25 = 0x277CDAA88;
  }

  v26 = [objc_alloc(*v25) initWithSteppedStatement:self->super._stmt database:self->super._sqliteDatabase];
  v27 = self->_fileIdentifier;
  self->_fileIdentifier = v26;

  if (self->_extraInfo)
  {
    *count = [(QLSqliteDatabase *)self->super._sqliteDatabase intFromColumn:4 inStatement:self->super._stmt];
    [(QLSqliteDatabase *)self->super._sqliteDatabase floatFromColumn:5 inStatement:self->super._stmt];
    *size = v28;
    [(QLSqliteDatabase *)self->super._sqliteDatabase floatFromColumn:6 inStatement:self->super._stmt];
    *maxSize = v29;
    [(QLSqliteDatabase *)self->super._sqliteDatabase floatFromColumn:7 inStatement:self->super._stmt];
    *length = v30;
  }

  v31 = 1;
LABEL_20:
  *identifier = self->_fileIdentifier;
  return v31;
}

@end
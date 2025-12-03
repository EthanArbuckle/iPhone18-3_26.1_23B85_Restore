@interface TSPDatabaseDataRepresentation
- (BOOL)hasSameLocationAs:(id)as;
- (TSPDatabaseDataRepresentation)initWithDatabase:(id)database identifier:(int64_t)identifier;
- (id)inputStream;
- (int64_t)dataLength;
- (sqlite3_blob)_openBlob;
@end

@implementation TSPDatabaseDataRepresentation

- (TSPDatabaseDataRepresentation)initWithDatabase:(id)database identifier:(int64_t)identifier
{
  databaseCopy = database;
  v12.receiver = self;
  v12.super_class = TSPDatabaseDataRepresentation;
  v8 = [(TSPDatabaseDataRepresentation *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_database, database);
    v9->_identifier = identifier;
    v10 = v9;
  }

  return v9;
}

- (int64_t)dataLength
{
  v3 = objc_msgSend__openBlob(self, a2, v2);
  v4 = sqlite3_blob_bytes(v3);
  sqlite3_blob_close(v3);
  return v4;
}

- (id)inputStream
{
  v3 = objc_msgSend__openBlob(self, a2, v2);
  v4 = [TSPDatabaseInputStream alloc];
  v6 = objc_msgSend_initWithBlob_(v4, v5, v3);

  return v6;
}

- (BOOL)hasSameLocationAs:(id)as
{
  asCopy = as;
  v5 = asCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_database == asCopy[4] && self->_identifier == asCopy[5];

  return v5;
}

- (sqlite3_blob)_openBlob
{
  database = self->_database;
  identifier = self->_identifier;
  v8 = 0;
  v4 = objc_msgSend_openDataStateBlobWithIdentifier_willWrite_error_(database, a2, identifier, 0, &v8);
  v6 = v8;
  if (!v4)
  {
    objc_msgSend_tsu_raiseWithError_(MEMORY[0x277CBEAD8], v5, v6);
  }

  return v4;
}

@end
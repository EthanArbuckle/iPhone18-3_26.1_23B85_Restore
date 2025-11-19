@interface TSPDatabaseDataRepresentation
- (BOOL)hasSameLocationAs:(id)a3;
- (TSPDatabaseDataRepresentation)initWithDatabase:(id)a3 identifier:(int64_t)a4;
- (id)inputStream;
- (int64_t)dataLength;
- (sqlite3_blob)_openBlob;
@end

@implementation TSPDatabaseDataRepresentation

- (TSPDatabaseDataRepresentation)initWithDatabase:(id)a3 identifier:(int64_t)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = TSPDatabaseDataRepresentation;
  v8 = [(TSPDatabaseDataRepresentation *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_database, a3);
    v9->_identifier = a4;
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

- (BOOL)hasSameLocationAs:(id)a3
{
  v4 = a3;
  v5 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_database == v4[4] && self->_identifier == v4[5];

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
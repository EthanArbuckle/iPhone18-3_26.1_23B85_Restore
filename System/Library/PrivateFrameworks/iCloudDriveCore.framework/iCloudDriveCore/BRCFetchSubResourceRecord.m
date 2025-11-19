@interface BRCFetchSubResourceRecord
- (BOOL)isWaitingOnShareIDFetch;
- (BRCFetchSubResourceRecord)initWithChangedRecord:(id)a3 recordIDNeedingFetch:(id)a4 xattrSignatureNeedingFetch:(id)a5 recordIDBlockingSave:(id)a6;
- (BRCFetchSubResourceRecord)initWithRecordIDNeedingFetch:(id)a3 recordType:(int64_t)a4;
- (id)description;
- (int64_t)resolveRecordType;
@end

@implementation BRCFetchSubResourceRecord

- (int64_t)resolveRecordType
{
  v3 = [(CKRecordID *)self->_recordID recordName];
  if ([v3 hasPrefix:@"documentContent/"])
  {
    v4 = 2;
  }

  else if ([v3 hasPrefix:@"documentStructure/"] & 1) != 0 || (objc_msgSend(v3, "hasPrefix:", @"directory/"))
  {
    v4 = 1;
  }

  else
  {
    v5 = [(CKRecord *)self->_record recordType];
    v6 = [v5 isEqualToString:*MEMORY[0x277CBC050]];

    if ((v6 & 1) == 0)
    {
      v7 = brc_bread_crumbs();
      v8 = brc_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [BRCFetchSubResourceRecord resolveRecordType];
      }
    }

    v4 = 3;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = "Y";
  if (!self->_record)
  {
    v5 = "N";
  }

  recordIDBlockingSave = self->_recordIDBlockingSave;
  return [v3 stringWithFormat:@"<%@ id:%@ hr:%s xattr:%@ rtf:%@ bs:%@ type:%ld>", v4, self->_recordID, v5, self->_xattrSignature, self->_recordIDNeedingFetch, recordIDBlockingSave, self->_recordType];
}

- (BOOL)isWaitingOnShareIDFetch
{
  recordIDNeedingFetch = self->_recordIDNeedingFetch;
  if (recordIDNeedingFetch)
  {
    LOBYTE(recordIDNeedingFetch) = [(CKRecordID *)recordIDNeedingFetch isEqual:self->_recordID]^ 1;
  }

  return recordIDNeedingFetch;
}

- (BRCFetchSubResourceRecord)initWithChangedRecord:(id)a3 recordIDNeedingFetch:(id)a4 xattrSignatureNeedingFetch:(id)a5 recordIDBlockingSave:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v19.receiver = self;
  v19.super_class = BRCFetchSubResourceRecord;
  v15 = [(BRCFetchSubResourceRecord *)&v19 init];
  if (v15)
  {
    v16 = [v11 recordID];
    recordID = v15->_recordID;
    v15->_recordID = v16;

    objc_storeStrong(&v15->_record, a3);
    v15->_recordType = [(BRCFetchSubResourceRecord *)v15 resolveRecordType];
    objc_storeStrong(&v15->_recordIDNeedingFetch, a4);
    objc_storeStrong(&v15->_xattrSignature, a5);
    objc_storeStrong(&v15->_recordIDBlockingSave, a6);
  }

  return v15;
}

- (BRCFetchSubResourceRecord)initWithRecordIDNeedingFetch:(id)a3 recordType:(int64_t)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = BRCFetchSubResourceRecord;
  v8 = [(BRCFetchSubResourceRecord *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_recordIDNeedingFetch, a3);
    objc_storeStrong(&v9->_recordID, a3);
    if (!a4)
    {
      a4 = [(BRCFetchSubResourceRecord *)v9 resolveRecordType];
    }

    v9->_recordType = a4;
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [BRCFetchSubResourceRecord initWithRecordIDNeedingFetch:? recordType:?];
    }
  }

  return v9;
}

@end
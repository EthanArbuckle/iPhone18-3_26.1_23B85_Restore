@interface BRCFetchSubResourceRecord
- (BOOL)isWaitingOnShareIDFetch;
- (BRCFetchSubResourceRecord)initWithChangedRecord:(id)record recordIDNeedingFetch:(id)fetch xattrSignatureNeedingFetch:(id)needingFetch recordIDBlockingSave:(id)save;
- (BRCFetchSubResourceRecord)initWithRecordIDNeedingFetch:(id)fetch recordType:(int64_t)type;
- (id)description;
- (int64_t)resolveRecordType;
@end

@implementation BRCFetchSubResourceRecord

- (int64_t)resolveRecordType
{
  recordName = [(CKRecordID *)self->_recordID recordName];
  if ([recordName hasPrefix:@"documentContent/"])
  {
    v4 = 2;
  }

  else if ([recordName hasPrefix:@"documentStructure/"] & 1) != 0 || (objc_msgSend(recordName, "hasPrefix:", @"directory/"))
  {
    v4 = 1;
  }

  else
  {
    recordType = [(CKRecord *)self->_record recordType];
    v6 = [recordType isEqualToString:*MEMORY[0x277CBC050]];

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

- (BRCFetchSubResourceRecord)initWithChangedRecord:(id)record recordIDNeedingFetch:(id)fetch xattrSignatureNeedingFetch:(id)needingFetch recordIDBlockingSave:(id)save
{
  recordCopy = record;
  fetchCopy = fetch;
  needingFetchCopy = needingFetch;
  saveCopy = save;
  v19.receiver = self;
  v19.super_class = BRCFetchSubResourceRecord;
  v15 = [(BRCFetchSubResourceRecord *)&v19 init];
  if (v15)
  {
    recordID = [recordCopy recordID];
    recordID = v15->_recordID;
    v15->_recordID = recordID;

    objc_storeStrong(&v15->_record, record);
    v15->_recordType = [(BRCFetchSubResourceRecord *)v15 resolveRecordType];
    objc_storeStrong(&v15->_recordIDNeedingFetch, fetch);
    objc_storeStrong(&v15->_xattrSignature, needingFetch);
    objc_storeStrong(&v15->_recordIDBlockingSave, save);
  }

  return v15;
}

- (BRCFetchSubResourceRecord)initWithRecordIDNeedingFetch:(id)fetch recordType:(int64_t)type
{
  fetchCopy = fetch;
  v13.receiver = self;
  v13.super_class = BRCFetchSubResourceRecord;
  v8 = [(BRCFetchSubResourceRecord *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_recordIDNeedingFetch, fetch);
    objc_storeStrong(&v9->_recordID, fetch);
    if (!type)
    {
      type = [(BRCFetchSubResourceRecord *)v9 resolveRecordType];
    }

    v9->_recordType = type;
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
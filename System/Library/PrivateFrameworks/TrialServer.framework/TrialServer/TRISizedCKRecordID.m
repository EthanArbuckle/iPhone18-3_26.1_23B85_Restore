@interface TRISizedCKRecordID
+ (id)recordIDWithRecordId:(id)a3 downloadSize:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRecordID:(id)a3;
- (TRISizedCKRecordID)initWithRecordId:(id)a3 downloadSize:(unint64_t)a4;
- (id)copyWithReplacementDownloadSize:(unint64_t)a3;
- (id)copyWithReplacementRecordId:(id)a3;
- (id)description;
@end

@implementation TRISizedCKRecordID

- (TRISizedCKRecordID)initWithRecordId:(id)a3 downloadSize:(unint64_t)a4
{
  v8 = a3;
  if (!v8)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:2492 description:{@"Invalid parameter not satisfying: %@", @"recordId != nil"}];
  }

  v13.receiver = self;
  v13.super_class = TRISizedCKRecordID;
  v9 = [(TRISizedCKRecordID *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_recordId, a3);
    v10->_downloadSize = a4;
  }

  return v10;
}

+ (id)recordIDWithRecordId:(id)a3 downloadSize:(unint64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithRecordId:v6 downloadSize:a4];

  return v7;
}

- (id)copyWithReplacementRecordId:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithRecordId:v4 downloadSize:self->_downloadSize];

  return v5;
}

- (id)copyWithReplacementDownloadSize:(unint64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  recordId = self->_recordId;

  return [v5 initWithRecordId:recordId downloadSize:a3];
}

- (BOOL)isEqualToRecordID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_6;
  }

  v6 = self->_recordId == 0;
  v7 = [v4 recordId];
  v8 = v7 != 0;

  if (v6 == v8 || (recordId = self->_recordId) != 0 && ([v5 recordId], v10 = objc_claimAutoreleasedReturnValue(), v11 = -[CKRecordID isEqual:](recordId, "isEqual:", v10), v10, !v11))
  {
LABEL_6:
    v13 = 0;
  }

  else
  {
    downloadSize = self->_downloadSize;
    v13 = downloadSize == [v5 downloadSize];
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRISizedCKRecordID *)self isEqualToRecordID:v5];
  }

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  recordId = self->_recordId;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_downloadSize];
  v6 = [v3 initWithFormat:@"<TRISizedCKRecordID | recordId:%@ downloadSize:%@>", recordId, v5];

  return v6;
}

@end
@interface TRISizedCKRecordID
+ (id)recordIDWithRecordId:(id)id downloadSize:(unint64_t)size;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRecordID:(id)d;
- (TRISizedCKRecordID)initWithRecordId:(id)id downloadSize:(unint64_t)size;
- (id)copyWithReplacementDownloadSize:(unint64_t)size;
- (id)copyWithReplacementRecordId:(id)id;
- (id)description;
@end

@implementation TRISizedCKRecordID

- (TRISizedCKRecordID)initWithRecordId:(id)id downloadSize:(unint64_t)size
{
  idCopy = id;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:2492 description:{@"Invalid parameter not satisfying: %@", @"recordId != nil"}];
  }

  v13.receiver = self;
  v13.super_class = TRISizedCKRecordID;
  v9 = [(TRISizedCKRecordID *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_recordId, id);
    v10->_downloadSize = size;
  }

  return v10;
}

+ (id)recordIDWithRecordId:(id)id downloadSize:(unint64_t)size
{
  idCopy = id;
  v7 = [[self alloc] initWithRecordId:idCopy downloadSize:size];

  return v7;
}

- (id)copyWithReplacementRecordId:(id)id
{
  idCopy = id;
  v5 = [objc_alloc(objc_opt_class()) initWithRecordId:idCopy downloadSize:self->_downloadSize];

  return v5;
}

- (id)copyWithReplacementDownloadSize:(unint64_t)size
{
  v5 = objc_alloc(objc_opt_class());
  recordId = self->_recordId;

  return [v5 initWithRecordId:recordId downloadSize:size];
}

- (BOOL)isEqualToRecordID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (!dCopy)
  {
    goto LABEL_6;
  }

  v6 = self->_recordId == 0;
  recordId = [dCopy recordId];
  v8 = recordId != 0;

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRISizedCKRecordID *)self isEqualToRecordID:v5];
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
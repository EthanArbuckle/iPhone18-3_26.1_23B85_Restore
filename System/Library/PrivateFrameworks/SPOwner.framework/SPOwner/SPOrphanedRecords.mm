@interface SPOrphanedRecords
- (SPOrphanedRecords)initWithCoder:(id)coder;
- (SPOrphanedRecords)initWithRecordType:(id)type records:(id)records;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPOrphanedRecords

- (SPOrphanedRecords)initWithRecordType:(id)type records:(id)records
{
  typeCopy = type;
  recordsCopy = records;
  v12.receiver = self;
  v12.super_class = SPOrphanedRecords;
  v9 = [(SPOrphanedRecords *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_recordType, type);
    objc_storeStrong(&v10->_records, records);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPOrphanedRecords alloc];
  recordType = [(SPOrphanedRecords *)self recordType];
  records = [(SPOrphanedRecords *)self records];
  v7 = [(SPOrphanedRecords *)v4 initWithRecordType:recordType records:records];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  recordType = self->_recordType;
  coderCopy = coder;
  [coderCopy encodeObject:recordType forKey:@"recordType"];
  [coderCopy encodeObject:self->_records forKey:@"records"];
}

- (SPOrphanedRecords)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recordType"];
  recordType = self->_recordType;
  self->_recordType = v5;

  v7 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"records"];

  records = self->_records;
  self->_records = v7;

  return self;
}

@end
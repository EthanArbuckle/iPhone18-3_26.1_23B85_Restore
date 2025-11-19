@interface SPOrphanedRecords
- (SPOrphanedRecords)initWithCoder:(id)a3;
- (SPOrphanedRecords)initWithRecordType:(id)a3 records:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPOrphanedRecords

- (SPOrphanedRecords)initWithRecordType:(id)a3 records:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SPOrphanedRecords;
  v9 = [(SPOrphanedRecords *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_recordType, a3);
    objc_storeStrong(&v10->_records, a4);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SPOrphanedRecords alloc];
  v5 = [(SPOrphanedRecords *)self recordType];
  v6 = [(SPOrphanedRecords *)self records];
  v7 = [(SPOrphanedRecords *)v4 initWithRecordType:v5 records:v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  recordType = self->_recordType;
  v5 = a3;
  [v5 encodeObject:recordType forKey:@"recordType"];
  [v5 encodeObject:self->_records forKey:@"records"];
}

- (SPOrphanedRecords)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recordType"];
  recordType = self->_recordType;
  self->_recordType = v5;

  v7 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"records"];

  records = self->_records;
  self->_records = v7;

  return self;
}

@end
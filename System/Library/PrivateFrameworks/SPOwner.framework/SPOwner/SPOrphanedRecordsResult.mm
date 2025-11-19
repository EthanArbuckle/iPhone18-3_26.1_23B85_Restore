@interface SPOrphanedRecordsResult
- (SPOrphanedRecordsResult)initWithCoder:(id)a3;
- (SPOrphanedRecordsResult)initWithRecordsInfo:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SPOrphanedRecordsResult

- (SPOrphanedRecordsResult)initWithRecordsInfo:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SPOrphanedRecordsResult;
  v6 = [(SPOrphanedRecordsResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recordsInfo, a3);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SPOrphanedRecordsResult alloc];
  v5 = [(SPOrphanedRecordsResult *)self recordsInfo];
  v6 = [(SPOrphanedRecordsResult *)v4 initWithRecordsInfo:v5];

  return v6;
}

- (SPOrphanedRecordsResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"recordsInfo"];

  recordsInfo = self->_recordsInfo;
  self->_recordsInfo = v5;

  return self;
}

@end
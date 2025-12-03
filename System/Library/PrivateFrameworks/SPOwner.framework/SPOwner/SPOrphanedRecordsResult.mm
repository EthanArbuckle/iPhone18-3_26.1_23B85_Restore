@interface SPOrphanedRecordsResult
- (SPOrphanedRecordsResult)initWithCoder:(id)coder;
- (SPOrphanedRecordsResult)initWithRecordsInfo:(id)info;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SPOrphanedRecordsResult

- (SPOrphanedRecordsResult)initWithRecordsInfo:(id)info
{
  infoCopy = info;
  v9.receiver = self;
  v9.super_class = SPOrphanedRecordsResult;
  v6 = [(SPOrphanedRecordsResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recordsInfo, info);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPOrphanedRecordsResult alloc];
  recordsInfo = [(SPOrphanedRecordsResult *)self recordsInfo];
  v6 = [(SPOrphanedRecordsResult *)v4 initWithRecordsInfo:recordsInfo];

  return v6;
}

- (SPOrphanedRecordsResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"recordsInfo"];

  recordsInfo = self->_recordsInfo;
  self->_recordsInfo = v5;

  return self;
}

@end
@interface SMSessionMonitorStateEnumerationOptions
- (SMSessionMonitorStateEnumerationOptions)initWithBatchSize:(unint64_t)a3 fetchLimit:(unint64_t)a4 sortByStateStartDate:(BOOL)a5 ascending:(BOOL)a6 dateInterval:(id)a7;
- (SMSessionMonitorStateEnumerationOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SMSessionMonitorStateEnumerationOptions

- (SMSessionMonitorStateEnumerationOptions)initWithBatchSize:(unint64_t)a3 fetchLimit:(unint64_t)a4 sortByStateStartDate:(BOOL)a5 ascending:(BOOL)a6 dateInterval:(id)a7
{
  v13 = a7;
  v17.receiver = self;
  v17.super_class = SMSessionMonitorStateEnumerationOptions;
  v14 = [(SMSessionMonitorStateEnumerationOptions *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_batchSize = a3;
    v14->_fetchLimit = a4;
    v14->_sortByStateStartDate = a5;
    v14->_ascending = a6;
    objc_storeStrong(&v14->_dateInterval, a7);
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  batchSize = self->_batchSize;
  fetchLimit = self->_fetchLimit;
  sortByStateStartDate = self->_sortByStateStartDate;
  ascending = self->_ascending;
  dateInterval = self->_dateInterval;

  return [v4 initWithBatchSize:batchSize fetchLimit:fetchLimit sortByStateStartDate:sortByStateStartDate ascending:ascending dateInterval:dateInterval];
}

- (void)encodeWithCoder:(id)a3
{
  batchSize = self->_batchSize;
  v5 = a3;
  [v5 encodeInteger:batchSize forKey:@"batchSize"];
  [v5 encodeInteger:self->_fetchLimit forKey:@"fetchLimit"];
  [v5 encodeBool:self->_sortByStateStartDate forKey:@"sortByStateStartDate"];
  [v5 encodeBool:self->_ascending forKey:@"ascending"];
  [v5 encodeObject:self->_dateInterval forKey:@"dateInterval"];
}

- (SMSessionMonitorStateEnumerationOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"batchSize"];
  v6 = [v4 decodeIntegerForKey:@"fetchLimit"];
  v7 = [v4 decodeBoolForKey:@"sortByStateStartDate"];
  v8 = [v4 decodeBoolForKey:@"ascending"];
  v9 = [v4 decodeObjectForKey:@"dateInterval"];

  v10 = [(SMSessionMonitorStateEnumerationOptions *)self initWithBatchSize:v5 fetchLimit:v6 sortByStateStartDate:v7 ascending:v8 dateInterval:v9];
  return v10;
}

@end
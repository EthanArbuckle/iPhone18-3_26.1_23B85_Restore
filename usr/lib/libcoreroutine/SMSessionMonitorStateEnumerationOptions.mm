@interface SMSessionMonitorStateEnumerationOptions
- (SMSessionMonitorStateEnumerationOptions)initWithBatchSize:(unint64_t)size fetchLimit:(unint64_t)limit sortByStateStartDate:(BOOL)date ascending:(BOOL)ascending dateInterval:(id)interval;
- (SMSessionMonitorStateEnumerationOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMSessionMonitorStateEnumerationOptions

- (SMSessionMonitorStateEnumerationOptions)initWithBatchSize:(unint64_t)size fetchLimit:(unint64_t)limit sortByStateStartDate:(BOOL)date ascending:(BOOL)ascending dateInterval:(id)interval
{
  intervalCopy = interval;
  v17.receiver = self;
  v17.super_class = SMSessionMonitorStateEnumerationOptions;
  v14 = [(SMSessionMonitorStateEnumerationOptions *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_batchSize = size;
    v14->_fetchLimit = limit;
    v14->_sortByStateStartDate = date;
    v14->_ascending = ascending;
    objc_storeStrong(&v14->_dateInterval, interval);
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  batchSize = self->_batchSize;
  fetchLimit = self->_fetchLimit;
  sortByStateStartDate = self->_sortByStateStartDate;
  ascending = self->_ascending;
  dateInterval = self->_dateInterval;

  return [v4 initWithBatchSize:batchSize fetchLimit:fetchLimit sortByStateStartDate:sortByStateStartDate ascending:ascending dateInterval:dateInterval];
}

- (void)encodeWithCoder:(id)coder
{
  batchSize = self->_batchSize;
  coderCopy = coder;
  [coderCopy encodeInteger:batchSize forKey:@"batchSize"];
  [coderCopy encodeInteger:self->_fetchLimit forKey:@"fetchLimit"];
  [coderCopy encodeBool:self->_sortByStateStartDate forKey:@"sortByStateStartDate"];
  [coderCopy encodeBool:self->_ascending forKey:@"ascending"];
  [coderCopy encodeObject:self->_dateInterval forKey:@"dateInterval"];
}

- (SMSessionMonitorStateEnumerationOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"batchSize"];
  v6 = [coderCopy decodeIntegerForKey:@"fetchLimit"];
  v7 = [coderCopy decodeBoolForKey:@"sortByStateStartDate"];
  v8 = [coderCopy decodeBoolForKey:@"ascending"];
  v9 = [coderCopy decodeObjectForKey:@"dateInterval"];

  v10 = [(SMSessionMonitorStateEnumerationOptions *)self initWithBatchSize:v5 fetchLimit:v6 sortByStateStartDate:v7 ascending:v8 dateInterval:v9];
  return v10;
}

@end
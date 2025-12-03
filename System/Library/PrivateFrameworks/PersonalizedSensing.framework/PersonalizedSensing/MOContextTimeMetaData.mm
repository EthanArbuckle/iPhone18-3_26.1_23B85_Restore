@interface MOContextTimeMetaData
- (MOContextTimeMetaData)initWithCoder:(id)coder;
- (MOContextTimeMetaData)initWithStartDate:(id)date endDate:(id)endDate timeReferenceString:(id)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOContextTimeMetaData

- (MOContextTimeMetaData)initWithStartDate:(id)date endDate:(id)endDate timeReferenceString:(id)string
{
  dateCopy = date;
  endDateCopy = endDate;
  stringCopy = string;
  v15.receiver = self;
  v15.super_class = MOContextTimeMetaData;
  v12 = [(MOContextTimeMetaData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_startDate, date);
    objc_storeStrong(&v13->_endDate, endDate);
    objc_storeStrong(&v13->_timeReferenceString, string);
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MOContextTimeMetaData alloc];
  startDate = [(MOContextTimeMetaData *)self startDate];
  endDate = [(MOContextTimeMetaData *)self endDate];
  timeReferenceString = [(MOContextTimeMetaData *)self timeReferenceString];
  v8 = [(MOContextTimeMetaData *)v4 initWithStartDate:startDate endDate:endDate timeReferenceString:timeReferenceString];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  timeReferenceString = self->_timeReferenceString;
  coderCopy = coder;
  [coderCopy encodeObject:timeReferenceString forKey:@"timeReferenceString"];
  [coderCopy encodeObject:self->_startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
}

- (MOContextTimeMetaData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeReferenceString"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];

  v8 = [(MOContextTimeMetaData *)self initWithStartDate:v6 endDate:v7 timeReferenceString:v5];
  return v8;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  timeReferenceString = [(MOContextTimeMetaData *)self timeReferenceString];
  mask = [timeReferenceString mask];
  v5 = [v2 stringWithFormat:@"time string, %@", mask];

  return v5;
}

@end
@interface MOContextTimeMetaData
- (MOContextTimeMetaData)initWithCoder:(id)a3;
- (MOContextTimeMetaData)initWithStartDate:(id)a3 endDate:(id)a4 timeReferenceString:(id)a5;
- (MOContextTimeMetaData)initWithTimeMetaDataMO:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOContextTimeMetaData

- (MOContextTimeMetaData)initWithTimeMetaDataMO:(id)a3
{
  if (a3)
  {
    v4 = [a3 timeReferenceString];
    self = [(MOContextTimeMetaData *)self initWithTimeReferenceString:v4];

    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (MOContextTimeMetaData)initWithStartDate:(id)a3 endDate:(id)a4 timeReferenceString:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MOContextTimeMetaData;
  v12 = [(MOContextTimeMetaData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_startDate, a3);
    objc_storeStrong(&v13->_endDate, a4);
    objc_storeStrong(&v13->_timeReferenceString, a5);
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MOContextTimeMetaData alloc];
  v5 = [(MOContextTimeMetaData *)self startDate];
  v6 = [(MOContextTimeMetaData *)self endDate];
  v7 = [(MOContextTimeMetaData *)self timeReferenceString];
  v8 = [(MOContextTimeMetaData *)v4 initWithStartDate:v5 endDate:v6 timeReferenceString:v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  timeReferenceString = self->_timeReferenceString;
  v5 = a3;
  [v5 encodeObject:timeReferenceString forKey:@"timeReferenceString"];
  [v5 encodeObject:self->_startDate forKey:@"startDate"];
  [v5 encodeObject:self->_endDate forKey:@"endDate"];
}

- (MOContextTimeMetaData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeReferenceString"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];

  v8 = [(MOContextTimeMetaData *)self initWithStartDate:v6 endDate:v7 timeReferenceString:v5];
  return v8;
}

- (id)description
{
  v2 = [(MOContextTimeMetaData *)self timeReferenceString];
  v3 = [v2 mask];
  v4 = [NSString stringWithFormat:@"time string, %@", v3];

  return v4;
}

@end
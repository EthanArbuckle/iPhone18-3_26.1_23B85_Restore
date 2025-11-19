@interface SPLastOnlineLocationInfo
- (SPLastOnlineLocationInfo)initWithCoder:(id)a3;
- (SPLastOnlineLocationInfo)initWithDate:(id)a3 updatedOn:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPLastOnlineLocationInfo

- (void)encodeWithCoder:(id)a3
{
  timestamp = self->_timestamp;
  v5 = a3;
  [v5 encodeObject:timestamp forKey:@"timestamp"];
  [v5 encodeObject:self->_updatedOn forKey:@"updatedOn"];
}

- (SPLastOnlineLocationInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
  timestamp = self->_timestamp;
  self->_timestamp = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"updatedOn"];

  updatedOn = self->_updatedOn;
  self->_updatedOn = v7;

  return self;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(SPLastOnlineLocationInfo *)self timestamp];
  [v4 setTimestamp:v5];

  v6 = [(SPLastOnlineLocationInfo *)self updatedOn];
  [v4 setUpdatedOn:v6];

  return v4;
}

- (SPLastOnlineLocationInfo)initWithDate:(id)a3 updatedOn:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SPLastOnlineLocationInfo;
  v9 = [(SPLastOnlineLocationInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_timestamp, a3);
    objc_storeStrong(&v10->_updatedOn, a4);
  }

  return v10;
}

@end
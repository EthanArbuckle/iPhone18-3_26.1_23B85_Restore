@interface SPLastOnlineLocationInfo
- (SPLastOnlineLocationInfo)initWithCoder:(id)coder;
- (SPLastOnlineLocationInfo)initWithDate:(id)date updatedOn:(id)on;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPLastOnlineLocationInfo

- (void)encodeWithCoder:(id)coder
{
  timestamp = self->_timestamp;
  coderCopy = coder;
  [coderCopy encodeObject:timestamp forKey:@"timestamp"];
  [coderCopy encodeObject:self->_updatedOn forKey:@"updatedOn"];
}

- (SPLastOnlineLocationInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
  timestamp = self->_timestamp;
  self->_timestamp = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"updatedOn"];

  updatedOn = self->_updatedOn;
  self->_updatedOn = v7;

  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  timestamp = [(SPLastOnlineLocationInfo *)self timestamp];
  [v4 setTimestamp:timestamp];

  updatedOn = [(SPLastOnlineLocationInfo *)self updatedOn];
  [v4 setUpdatedOn:updatedOn];

  return v4;
}

- (SPLastOnlineLocationInfo)initWithDate:(id)date updatedOn:(id)on
{
  dateCopy = date;
  onCopy = on;
  v12.receiver = self;
  v12.super_class = SPLastOnlineLocationInfo;
  v9 = [(SPLastOnlineLocationInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_timestamp, date);
    objc_storeStrong(&v10->_updatedOn, on);
  }

  return v10;
}

@end
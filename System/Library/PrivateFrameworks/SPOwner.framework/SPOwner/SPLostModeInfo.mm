@interface SPLostModeInfo
- (SPLostModeInfo)initWithCoder:(id)coder;
- (SPLostModeInfo)initWithMessage:(id)message email:(id)email phoneNumber:(id)number timestamp:(id)timestamp;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPLostModeInfo

- (SPLostModeInfo)initWithMessage:(id)message email:(id)email phoneNumber:(id)number timestamp:(id)timestamp
{
  messageCopy = message;
  emailCopy = email;
  numberCopy = number;
  timestampCopy = timestamp;
  v18.receiver = self;
  v18.super_class = SPLostModeInfo;
  v15 = [(SPLostModeInfo *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_message, message);
    objc_storeStrong(&v16->_phoneNumber, number);
    objc_storeStrong(&v16->_timestamp, timestamp);
    objc_storeStrong(&v16->_email, email);
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPLostModeInfo alloc];
  message = [(SPLostModeInfo *)self message];
  email = [(SPLostModeInfo *)self email];
  phoneNumber = [(SPLostModeInfo *)self phoneNumber];
  timestamp = [(SPLostModeInfo *)self timestamp];
  v9 = [(SPLostModeInfo *)v4 initWithMessage:message email:email phoneNumber:phoneNumber timestamp:timestamp];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  timestamp = self->_timestamp;
  coderCopy = coder;
  [coderCopy encodeObject:timestamp forKey:@"timestamp"];
  [coderCopy encodeObject:self->_message forKey:@"message"];
  [coderCopy encodeObject:self->_phoneNumber forKey:@"phoneNumber"];
  [coderCopy encodeObject:self->_email forKey:@"email"];
}

- (SPLostModeInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
  timestamp = self->_timestamp;
  self->_timestamp = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"message"];
  message = self->_message;
  self->_message = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phoneNumber"];
  phoneNumber = self->_phoneNumber;
  self->_phoneNumber = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"email"];

  email = self->_email;
  self->_email = v11;

  return self;
}

@end
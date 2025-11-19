@interface STMessageTransportReturnAddressedMessage
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMessage:(id)a3;
- (STMessageTransportReturnAddressedMessage)initWithCoder:(id)a3;
- (STMessageTransportReturnAddressedMessage)initWithMessage:(id)a3 returnAddress:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STMessageTransportReturnAddressedMessage

- (STMessageTransportReturnAddressedMessage)initWithMessage:(id)a3 returnAddress:(id)a4
{
  v13.receiver = self;
  v13.super_class = STMessageTransportReturnAddressedMessage;
  v5 = a4;
  v6 = a3;
  v7 = [(STMessageTransportReturnAddressedMessage *)&v13 init];
  v8 = [v6 copy];

  message = v7->_message;
  v7->_message = v8;

  v10 = [v5 copy];
  returnAddress = v7->_returnAddress;
  v7->_returnAddress = v10;

  return v7;
}

- (STMessageTransportReturnAddressedMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"message"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"returnAddress"];

  v7 = [(STMessageTransportReturnAddressedMessage *)self initWithMessage:v5 returnAddress:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  message = self->_message;
  v5 = a3;
  [v5 encodeObject:message forKey:@"message"];
  [v5 encodeObject:self->_returnAddress forKey:@"returnAddress"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STMessageTransportReturnAddressedMessage *)self isEqualToMessage:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToMessage:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    v6 = [(STMessageTransportReturnAddressedMessage *)v4 message];
    v7 = [(STMessageTransportReturnAddressedMessage *)self message];
    if ([v6 isEqualToMessage:v7])
    {
      v8 = [(STMessageTransportReturnAddressedMessage *)v5 returnAddress];
      v9 = [(STMessageTransportReturnAddressedMessage *)self returnAddress];
      v10 = [v8 isEqualToMessageAddress:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(STMessageTransportReturnAddressedMessage *)self message];
  v4 = [v3 hash];
  v5 = [(STMessageTransportReturnAddressedMessage *)self returnAddress];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end
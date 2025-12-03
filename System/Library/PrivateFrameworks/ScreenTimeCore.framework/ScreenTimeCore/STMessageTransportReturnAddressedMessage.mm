@interface STMessageTransportReturnAddressedMessage
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMessage:(id)message;
- (STMessageTransportReturnAddressedMessage)initWithCoder:(id)coder;
- (STMessageTransportReturnAddressedMessage)initWithMessage:(id)message returnAddress:(id)address;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STMessageTransportReturnAddressedMessage

- (STMessageTransportReturnAddressedMessage)initWithMessage:(id)message returnAddress:(id)address
{
  v13.receiver = self;
  v13.super_class = STMessageTransportReturnAddressedMessage;
  addressCopy = address;
  messageCopy = message;
  v7 = [(STMessageTransportReturnAddressedMessage *)&v13 init];
  v8 = [messageCopy copy];

  message = v7->_message;
  v7->_message = v8;

  v10 = [addressCopy copy];
  returnAddress = v7->_returnAddress;
  v7->_returnAddress = v10;

  return v7;
}

- (STMessageTransportReturnAddressedMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"message"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"returnAddress"];

  v7 = [(STMessageTransportReturnAddressedMessage *)self initWithMessage:v5 returnAddress:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  message = self->_message;
  coderCopy = coder;
  [coderCopy encodeObject:message forKey:@"message"];
  [coderCopy encodeObject:self->_returnAddress forKey:@"returnAddress"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STMessageTransportReturnAddressedMessage *)self isEqualToMessage:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToMessage:(id)message
{
  messageCopy = message;
  v5 = messageCopy;
  if (messageCopy == self)
  {
    v10 = 1;
  }

  else
  {
    message = [(STMessageTransportReturnAddressedMessage *)messageCopy message];
    message2 = [(STMessageTransportReturnAddressedMessage *)self message];
    if ([message isEqualToMessage:message2])
    {
      returnAddress = [(STMessageTransportReturnAddressedMessage *)v5 returnAddress];
      returnAddress2 = [(STMessageTransportReturnAddressedMessage *)self returnAddress];
      v10 = [returnAddress isEqualToMessageAddress:returnAddress2];
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
  message = [(STMessageTransportReturnAddressedMessage *)self message];
  v4 = [message hash];
  returnAddress = [(STMessageTransportReturnAddressedMessage *)self returnAddress];
  v6 = [returnAddress hash];

  return v6 ^ v4;
}

@end
@interface STTransportEnvoyMessageEnvelope
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTransportEnvoyMessageEnvelope:(id)envelope;
- (STTransportEnvoyMessageEnvelope)initWithMessage:(id)message addresses:(id)addresses;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation STTransportEnvoyMessageEnvelope

- (STTransportEnvoyMessageEnvelope)initWithMessage:(id)message addresses:(id)addresses
{
  v13.receiver = self;
  v13.super_class = STTransportEnvoyMessageEnvelope;
  addressesCopy = addresses;
  messageCopy = message;
  v7 = [(STTransportEnvoyMessageEnvelope *)&v13 init];
  v8 = [messageCopy copy];

  message = v7->_message;
  v7->_message = v8;

  v10 = [addressesCopy copy];
  addresses = v7->_addresses;
  v7->_addresses = v10;

  return v7;
}

- (id)description
{
  v3 = objc_opt_class();
  message = [(STTransportEnvoyMessageEnvelope *)self message];
  addresses = [(STTransportEnvoyMessageEnvelope *)self addresses];
  v6 = [NSString stringWithFormat:@"<%@: %p { Message: %@ Addresses: %@ }>", v3, self, message, addresses];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  message = self->_message;
  addresses = self->_addresses;

  return [v4 initWithMessage:message addresses:addresses];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STTransportEnvoyMessageEnvelope *)self isEqualToTransportEnvoyMessageEnvelope:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToTransportEnvoyMessageEnvelope:(id)envelope
{
  envelopeCopy = envelope;
  if (self == envelopeCopy)
  {
    v9 = 1;
  }

  else
  {
    message = [(STTransportEnvoyMessageEnvelope *)self message];
    message2 = [(STTransportEnvoyMessageEnvelope *)envelopeCopy message];
    if ([message isEqualToMessage:message2])
    {
      addresses = [(STTransportEnvoyMessageEnvelope *)self addresses];
      addresses2 = [(STTransportEnvoyMessageEnvelope *)envelopeCopy addresses];
      v9 = [addresses isEqualToSet:addresses2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  message = [(STTransportEnvoyMessageEnvelope *)self message];
  v4 = [message hash];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  addresses = [(STTransportEnvoyMessageEnvelope *)self addresses];
  v6 = [addresses countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(addresses);
        }

        v4 ^= [*(*(&v11 + 1) + 8 * v9) hash];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [addresses countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return v4;
}

@end
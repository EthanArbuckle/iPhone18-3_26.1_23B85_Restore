@interface STTransportEnvoyMessageEnvelope
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTransportEnvoyMessageEnvelope:(id)a3;
- (STTransportEnvoyMessageEnvelope)initWithMessage:(id)a3 addresses:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation STTransportEnvoyMessageEnvelope

- (STTransportEnvoyMessageEnvelope)initWithMessage:(id)a3 addresses:(id)a4
{
  v13.receiver = self;
  v13.super_class = STTransportEnvoyMessageEnvelope;
  v5 = a4;
  v6 = a3;
  v7 = [(STTransportEnvoyMessageEnvelope *)&v13 init];
  v8 = [v6 copy];

  message = v7->_message;
  v7->_message = v8;

  v10 = [v5 copy];
  addresses = v7->_addresses;
  v7->_addresses = v10;

  return v7;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(STTransportEnvoyMessageEnvelope *)self message];
  v5 = [(STTransportEnvoyMessageEnvelope *)self addresses];
  v6 = [NSString stringWithFormat:@"<%@: %p { Message: %@ Addresses: %@ }>", v3, self, v4, v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  message = self->_message;
  addresses = self->_addresses;

  return [v4 initWithMessage:message addresses:addresses];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STTransportEnvoyMessageEnvelope *)self isEqualToTransportEnvoyMessageEnvelope:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToTransportEnvoyMessageEnvelope:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    v5 = [(STTransportEnvoyMessageEnvelope *)self message];
    v6 = [(STTransportEnvoyMessageEnvelope *)v4 message];
    if ([v5 isEqualToMessage:v6])
    {
      v7 = [(STTransportEnvoyMessageEnvelope *)self addresses];
      v8 = [(STTransportEnvoyMessageEnvelope *)v4 addresses];
      v9 = [v7 isEqualToSet:v8];
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
  v3 = [(STTransportEnvoyMessageEnvelope *)self message];
  v4 = [v3 hash];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(STTransportEnvoyMessageEnvelope *)self addresses];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        v4 ^= [*(*(&v11 + 1) + 8 * v9) hash];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return v4;
}

@end
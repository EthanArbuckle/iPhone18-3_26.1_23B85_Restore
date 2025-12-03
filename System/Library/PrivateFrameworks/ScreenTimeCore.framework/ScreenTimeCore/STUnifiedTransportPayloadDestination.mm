@interface STUnifiedTransportPayloadDestination
- (BOOL)isEqual:(id)equal;
- (BOOL)updateWithDictionaryRepresentation:(id)representation;
- (NSString)description;
- (STUnifiedTransportPayloadDestination)initWithAddress:(id)address type:(id)type state:(unint64_t)state;
- (STUnifiedTransportPayloadDestination)initWithCoder:(id)coder;
- (STUnifiedTransportPayloadDestination)initWithDSID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STUnifiedTransportPayloadDestination

- (STUnifiedTransportPayloadDestination)initWithDSID:(id)d
{
  stringValue = [d stringValue];
  v5 = [(STUnifiedTransportPayloadDestination *)self initWithAddress:stringValue type:@"User"];

  return v5;
}

- (STUnifiedTransportPayloadDestination)initWithAddress:(id)address type:(id)type state:(unint64_t)state
{
  addressCopy = address;
  typeCopy = type;
  v16.receiver = self;
  v16.super_class = STUnifiedTransportPayloadDestination;
  v10 = [(STUnifiedTransportPayloadDestination *)&v16 init];
  if (v10)
  {
    v11 = [addressCopy copy];
    address = v10->_address;
    v10->_address = v11;

    v13 = [typeCopy copy];
    type = v10->_type;
    v10->_type = v13;

    v10->_state = state;
  }

  return v10;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  address = [(STUnifiedTransportPayloadDestination *)self address];
  [v3 setObject:address forKeyedSubscript:@"address"];

  type = [(STUnifiedTransportPayloadDestination *)self type];
  [v3 setObject:type forKeyedSubscript:@"type"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[STUnifiedTransportPayloadDestination state](self, "state")}];
  [v3 setObject:v6 forKeyedSubscript:@"state"];

  v7 = [v3 copy];

  return v7;
}

- (BOOL)updateWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy objectForKeyedSubscript:@"address"];
  address = self->_address;
  self->_address = v5;

  v7 = [representationCopy objectForKeyedSubscript:@"type"];
  type = self->_type;
  self->_type = v7;

  v9 = [representationCopy objectForKeyedSubscript:@"state"];

  -[STUnifiedTransportPayloadDestination setState:](self, "setState:", [v9 unsignedIntegerValue]);
  return 1;
}

- (STUnifiedTransportPayloadDestination)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = STUnifiedTransportPayloadDestination;
  v5 = [(STUnifiedTransportPayloadDestination *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"address"];
    address = v5->_address;
    v5->_address = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    type = v5->_type;
    v5->_type = v8;

    v5->_state = [coderCopy decodeIntegerForKey:@"state"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  address = self->_address;
  coderCopy = coder;
  [coderCopy encodeObject:address forKey:@"address"];
  [coderCopy encodeObject:self->_type forKey:@"type"];
  [coderCopy encodeInteger:self->_state forKey:@"state"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  address = self->_address;
  type = self->_type;
  state = self->_state;

  return [v4 initWithAddress:address type:type state:state];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  address = [(STUnifiedTransportPayloadDestination *)self address];
  type = [(STUnifiedTransportPayloadDestination *)self type];
  v6 = [v3 stringWithFormat:@"%p:{\n Address: %@\n Type:%@\n State:%lu\n}", self, address, type, -[STUnifiedTransportPayloadDestination state](self, "state")];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      address = [(STUnifiedTransportPayloadDestination *)self address];
      if (address)
      {
        address2 = [(STUnifiedTransportPayloadDestination *)v5 address];
        if (address2)
        {
          address3 = [(STUnifiedTransportPayloadDestination *)self address];
          address4 = [(STUnifiedTransportPayloadDestination *)v5 address];
          if ([address3 isEqualToString:address4])
          {
            type = [(STUnifiedTransportPayloadDestination *)self type];
            type2 = [(STUnifiedTransportPayloadDestination *)v5 type];
            v12 = [type isEqualToString:type2];
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  address = [(STUnifiedTransportPayloadDestination *)self address];
  v4 = [address hash];
  type = [(STUnifiedTransportPayloadDestination *)self type];
  v6 = [type hash];

  return v6 ^ v4;
}

@end
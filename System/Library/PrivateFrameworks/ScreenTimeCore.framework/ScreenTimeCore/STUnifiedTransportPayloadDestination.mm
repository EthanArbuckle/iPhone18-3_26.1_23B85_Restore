@interface STUnifiedTransportPayloadDestination
- (BOOL)isEqual:(id)a3;
- (BOOL)updateWithDictionaryRepresentation:(id)a3;
- (NSString)description;
- (STUnifiedTransportPayloadDestination)initWithAddress:(id)a3 type:(id)a4 state:(unint64_t)a5;
- (STUnifiedTransportPayloadDestination)initWithCoder:(id)a3;
- (STUnifiedTransportPayloadDestination)initWithDSID:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STUnifiedTransportPayloadDestination

- (STUnifiedTransportPayloadDestination)initWithDSID:(id)a3
{
  v4 = [a3 stringValue];
  v5 = [(STUnifiedTransportPayloadDestination *)self initWithAddress:v4 type:@"User"];

  return v5;
}

- (STUnifiedTransportPayloadDestination)initWithAddress:(id)a3 type:(id)a4 state:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = STUnifiedTransportPayloadDestination;
  v10 = [(STUnifiedTransportPayloadDestination *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    address = v10->_address;
    v10->_address = v11;

    v13 = [v9 copy];
    type = v10->_type;
    v10->_type = v13;

    v10->_state = a5;
  }

  return v10;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  v4 = [(STUnifiedTransportPayloadDestination *)self address];
  [v3 setObject:v4 forKeyedSubscript:@"address"];

  v5 = [(STUnifiedTransportPayloadDestination *)self type];
  [v3 setObject:v5 forKeyedSubscript:@"type"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[STUnifiedTransportPayloadDestination state](self, "state")}];
  [v3 setObject:v6 forKeyedSubscript:@"state"];

  v7 = [v3 copy];

  return v7;
}

- (BOOL)updateWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"address"];
  address = self->_address;
  self->_address = v5;

  v7 = [v4 objectForKeyedSubscript:@"type"];
  type = self->_type;
  self->_type = v7;

  v9 = [v4 objectForKeyedSubscript:@"state"];

  -[STUnifiedTransportPayloadDestination setState:](self, "setState:", [v9 unsignedIntegerValue]);
  return 1;
}

- (STUnifiedTransportPayloadDestination)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = STUnifiedTransportPayloadDestination;
  v5 = [(STUnifiedTransportPayloadDestination *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"address"];
    address = v5->_address;
    v5->_address = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    type = v5->_type;
    v5->_type = v8;

    v5->_state = [v4 decodeIntegerForKey:@"state"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  address = self->_address;
  v5 = a3;
  [v5 encodeObject:address forKey:@"address"];
  [v5 encodeObject:self->_type forKey:@"type"];
  [v5 encodeInteger:self->_state forKey:@"state"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  address = self->_address;
  type = self->_type;
  state = self->_state;

  return [v4 initWithAddress:address type:type state:state];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(STUnifiedTransportPayloadDestination *)self address];
  v5 = [(STUnifiedTransportPayloadDestination *)self type];
  v6 = [v3 stringWithFormat:@"%p:{\n Address: %@\n Type:%@\n State:%lu\n}", self, v4, v5, -[STUnifiedTransportPayloadDestination state](self, "state")];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(STUnifiedTransportPayloadDestination *)self address];
      if (v6)
      {
        v7 = [(STUnifiedTransportPayloadDestination *)v5 address];
        if (v7)
        {
          v8 = [(STUnifiedTransportPayloadDestination *)self address];
          v9 = [(STUnifiedTransportPayloadDestination *)v5 address];
          if ([v8 isEqualToString:v9])
          {
            v10 = [(STUnifiedTransportPayloadDestination *)self type];
            v11 = [(STUnifiedTransportPayloadDestination *)v5 type];
            v12 = [v10 isEqualToString:v11];
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
  v3 = [(STUnifiedTransportPayloadDestination *)self address];
  v4 = [v3 hash];
  v5 = [(STUnifiedTransportPayloadDestination *)self type];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end
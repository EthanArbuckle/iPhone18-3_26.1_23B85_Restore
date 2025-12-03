@interface RFFont
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFFont)initWithCoder:(id)coder;
- (RFFont)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setName:(int)name;
- (void)setSystem:(id)system;
@end

@implementation RFFont

- (RFFont)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v12.receiver = self;
  v12.super_class = RFFont;
  v5 = [(RFFont *)&v12 init];
  if (v5)
  {
    if ([protobufCopy name])
    {
      -[RFFont setName:](v5, "setName:", [protobufCopy name]);
    }

    system = [protobufCopy system];

    if (system)
    {
      v7 = [RFSystemFont alloc];
      system2 = [protobufCopy system];
      v9 = [(RFSystemFont *)v7 initWithProtobuf:system2];
      [(RFFont *)v5 setSystem:v9];
    }

    if ([protobufCopy applySmallCaps])
    {
      -[RFFont setApplySmallCaps:](v5, "setApplySmallCaps:", [protobufCopy applySmallCaps]);
    }

    v10 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  name = [(RFFont *)self name];
  system = [(RFFont *)self system];
  v5 = [system hash] ^ name;
  applySmallCaps = [(RFFont *)self applySmallCaps];

  return v5 ^ applySmallCaps;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    if ([(RFFont *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v7 = equalCopy;
      name = [(RFFont *)self name];
      if (name != [(RFFont *)v7 name])
      {
        LOBYTE(v12) = 0;
LABEL_16:

        goto LABEL_17;
      }

      system = [(RFFont *)self system];
      system2 = [(RFFont *)v7 system];
      if ((system != 0) == (system2 == 0))
      {
        LOBYTE(v12) = 0;
LABEL_15:

        goto LABEL_16;
      }

      system3 = [(RFFont *)self system];
      if (!system3 || (-[RFFont system](self, "system"), v3 = objc_claimAutoreleasedReturnValue(), -[RFFont system](v7, "system"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        applySmallCaps = [(RFFont *)self applySmallCaps];
        v12 = applySmallCaps ^ [(RFFont *)v7 applySmallCaps]^ 1;
        if (!system3)
        {
LABEL_14:

          goto LABEL_15;
        }
      }

      else
      {
        LOBYTE(v12) = 0;
      }

      goto LABEL_14;
    }

    LOBYTE(v12) = 0;
  }

LABEL_17:

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if ([(RFFont *)self hasName])
  {
    [v4 setName:{-[RFFont name](self, "name")}];
  }

  if ([(RFFont *)self hasSystem])
  {
    system = [(RFFont *)self system];
    v6 = [system copy];
    [v4 setSystem:v6];
  }

  [v4 setApplySmallCaps:{-[RFFont applySmallCaps](self, "applySmallCaps")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFFont alloc] initWithFacade:self];
  jsonData = [(_SFPBRFFont *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFFont alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFFont *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBRFFont alloc] initWithFacade:self];
  data = [(_SFPBRFFont *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (RFFont)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFFont alloc] initWithData:v5];
  v7 = [(RFFont *)self initWithProtobuf:v6];

  return v7;
}

- (void)setSystem:(id)system
{
  *&self->_has |= 2u;
  objc_storeStrong(&self->_system, system);
  *&self->_has &= ~1u;
  self->_name = 0;
}

- (void)setName:(int)name
{
  has = self->_has;
  self->_name = name;
  *&self->_has = has & 0xFC | 1;
  system = self->_system;
  self->_system = 0;
  MEMORY[0x1EEE66BB8]();
}

@end
@interface RFFont
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFFont)initWithCoder:(id)a3;
- (RFFont)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setName:(int)a3;
- (void)setSystem:(id)a3;
@end

@implementation RFFont

- (RFFont)initWithProtobuf:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = RFFont;
  v5 = [(RFFont *)&v12 init];
  if (v5)
  {
    if ([v4 name])
    {
      -[RFFont setName:](v5, "setName:", [v4 name]);
    }

    v6 = [v4 system];

    if (v6)
    {
      v7 = [RFSystemFont alloc];
      v8 = [v4 system];
      v9 = [(RFSystemFont *)v7 initWithProtobuf:v8];
      [(RFFont *)v5 setSystem:v9];
    }

    if ([v4 applySmallCaps])
    {
      -[RFFont setApplySmallCaps:](v5, "setApplySmallCaps:", [v4 applySmallCaps]);
    }

    v10 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(RFFont *)self name];
  v4 = [(RFFont *)self system];
  v5 = [v4 hash] ^ v3;
  v6 = [(RFFont *)self applySmallCaps];

  return v5 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    if ([(RFFont *)v6 isMemberOfClass:objc_opt_class()])
    {
      v7 = v6;
      v8 = [(RFFont *)self name];
      if (v8 != [(RFFont *)v7 name])
      {
        LOBYTE(v12) = 0;
LABEL_16:

        goto LABEL_17;
      }

      v9 = [(RFFont *)self system];
      v10 = [(RFFont *)v7 system];
      if ((v9 != 0) == (v10 == 0))
      {
        LOBYTE(v12) = 0;
LABEL_15:

        goto LABEL_16;
      }

      v11 = [(RFFont *)self system];
      if (!v11 || (-[RFFont system](self, "system"), v3 = objc_claimAutoreleasedReturnValue(), -[RFFont system](v7, "system"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        v13 = [(RFFont *)self applySmallCaps];
        v12 = v13 ^ [(RFFont *)v7 applySmallCaps]^ 1;
        if (!v11)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if ([(RFFont *)self hasName])
  {
    [v4 setName:{-[RFFont name](self, "name")}];
  }

  if ([(RFFont *)self hasSystem])
  {
    v5 = [(RFFont *)self system];
    v6 = [v5 copy];
    [v4 setSystem:v6];
  }

  [v4 setApplySmallCaps:{-[RFFont applySmallCaps](self, "applySmallCaps")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFFont alloc] initWithFacade:self];
  v3 = [(_SFPBRFFont *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFFont alloc] initWithFacade:self];
  v3 = [(_SFPBRFFont *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBRFFont alloc] initWithFacade:self];
  v5 = [(_SFPBRFFont *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (RFFont)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFFont alloc] initWithData:v5];
  v7 = [(RFFont *)self initWithProtobuf:v6];

  return v7;
}

- (void)setSystem:(id)a3
{
  *&self->_has |= 2u;
  objc_storeStrong(&self->_system, a3);
  *&self->_has &= ~1u;
  self->_name = 0;
}

- (void)setName:(int)a3
{
  has = self->_has;
  self->_name = a3;
  *&self->_has = has & 0xFC | 1;
  system = self->_system;
  self->_system = 0;
  MEMORY[0x1EEE66BB8]();
}

@end
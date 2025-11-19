@interface RFOptionalBool
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFOptionalBool)initWithCoder:(id)a3;
- (RFOptionalBool)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFOptionalBool

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else if ([(RFOptionalBool *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(RFOptionalBool *)self value];
    v7 = [(RFOptionalBool *)v5 value];

    v8 = v6 ^ v7 ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setValue:{-[RFOptionalBool value](self, "value")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFOptionalBool alloc] initWithFacade:self];
  v3 = [(_SFPBRFOptionalBool *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFOptionalBool alloc] initWithFacade:self];
  v3 = [(_SFPBRFOptionalBool *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBRFOptionalBool alloc] initWithFacade:self];
  v5 = [(_SFPBRFOptionalBool *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (RFOptionalBool)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFOptionalBool alloc] initWithData:v5];
  v7 = [(RFOptionalBool *)self initWithProtobuf:v6];

  return v7;
}

- (RFOptionalBool)initWithProtobuf:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = RFOptionalBool;
  v5 = [(RFOptionalBool *)&v8 init];
  if (v5)
  {
    if ([v4 value])
    {
      -[RFOptionalBool setValue:](v5, "setValue:", [v4 value]);
    }

    v6 = v5;
  }

  return v5;
}

@end
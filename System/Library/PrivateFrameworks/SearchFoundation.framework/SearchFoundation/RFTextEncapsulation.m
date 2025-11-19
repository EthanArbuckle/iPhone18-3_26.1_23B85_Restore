@interface RFTextEncapsulation
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFTextEncapsulation)initWithCoder:(id)a3;
- (RFTextEncapsulation)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFTextEncapsulation

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else if ([(RFTextEncapsulation *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(RFTextEncapsulation *)self style];
    v7 = [(RFTextEncapsulation *)v5 style];

    v8 = v6 == v7;
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
  [v4 setStyle:{-[RFTextEncapsulation style](self, "style")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFTextEncapsulation alloc] initWithFacade:self];
  v3 = [(_SFPBRFTextEncapsulation *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFTextEncapsulation alloc] initWithFacade:self];
  v3 = [(_SFPBRFTextEncapsulation *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBRFTextEncapsulation alloc] initWithFacade:self];
  v5 = [(_SFPBRFTextEncapsulation *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (RFTextEncapsulation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFTextEncapsulation alloc] initWithData:v5];
  v7 = [(RFTextEncapsulation *)self initWithProtobuf:v6];

  return v7;
}

- (RFTextEncapsulation)initWithProtobuf:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = RFTextEncapsulation;
  v5 = [(RFTextEncapsulation *)&v8 init];
  if (v5)
  {
    if ([v4 style])
    {
      -[RFTextEncapsulation setStyle:](v5, "setStyle:", [v4 style]);
    }

    v6 = v5;
  }

  return v5;
}

@end
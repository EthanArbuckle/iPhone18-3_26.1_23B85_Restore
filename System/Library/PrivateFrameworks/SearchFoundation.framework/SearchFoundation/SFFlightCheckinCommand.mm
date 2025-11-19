@interface SFFlightCheckinCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFFlightCheckinCommand)initWithCoder:(id)a3;
- (SFFlightCheckinCommand)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFFlightCheckinCommand

- (SFFlightCheckinCommand)initWithProtobuf:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SFFlightCheckinCommand;
  v5 = [(SFFlightCheckinCommand *)&v8 init];
  if (v5)
  {
    if ([v4 placeHolderProperty])
    {
      -[SFFlightCheckinCommand setPlaceHolderProperty:](v5, "setPlaceHolderProperty:", [v4 placeHolderProperty]);
    }

    v6 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = SFFlightCheckinCommand;
  v3 = [(SFCommand *)&v5 hash];
  return v3 ^ [(SFFlightCheckinCommand *)self placeHolderProperty];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else if ([(SFFlightCheckinCommand *)v4 isMemberOfClass:objc_opt_class()]&& (v10.receiver = self, v10.super_class = SFFlightCheckinCommand, [(SFCommand *)&v10 isEqual:v4]))
  {
    v5 = v4;
    v6 = [(SFFlightCheckinCommand *)self placeHolderProperty];
    v7 = [(SFFlightCheckinCommand *)v5 placeHolderProperty];

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
  v6.receiver = self;
  v6.super_class = SFFlightCheckinCommand;
  v4 = [(SFCommand *)&v6 copyWithZone:a3];
  [v4 setPlaceHolderProperty:{-[SFFlightCheckinCommand placeHolderProperty](self, "placeHolderProperty")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBFlightCheckinCommand alloc] initWithFacade:self];
  v3 = [(_SFPBFlightCheckinCommand *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBFlightCheckinCommand alloc] initWithFacade:self];
  v3 = [(_SFPBFlightCheckinCommand *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFFlightCheckinCommand;
  [(SFCommand *)&v3 encodeWithCoder:a3];
}

- (SFFlightCheckinCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFFlightCheckinCommand *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SFFlightCheckinCommand *)v5 setPlaceHolderProperty:[(SFCommand *)v8 placeHolderProperty]];
    v9 = [(SFCommand *)v8 commandDetail];
    [(SFCommand *)v5 setCommandDetail:v9];

    v10 = [(SFCommand *)v8 normalizedTopic];
    [(SFCommand *)v5 setNormalizedTopic:v10];

    v11 = [(SFCommand *)v8 backendData];
    [(SFCommand *)v5 setBackendData:v11];

    v12 = [(SFCommand *)v8 commandReference];
    [(SFCommand *)v5 setCommandReference:v12];
  }

  return v5;
}

@end
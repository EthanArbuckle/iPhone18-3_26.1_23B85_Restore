@interface SFViewEmailCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFViewEmailCommand)initWithCoder:(id)a3;
- (SFViewEmailCommand)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFViewEmailCommand

- (SFViewEmailCommand)initWithProtobuf:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SFViewEmailCommand;
  v5 = [(SFViewEmailCommand *)&v8 init];
  if (v5)
  {
    if ([v4 placeHolderProperty])
    {
      -[SFViewEmailCommand setPlaceHolderProperty:](v5, "setPlaceHolderProperty:", [v4 placeHolderProperty]);
    }

    v6 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = SFViewEmailCommand;
  v3 = [(SFCommand *)&v5 hash];
  return v3 ^ [(SFViewEmailCommand *)self placeHolderProperty];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else if ([(SFViewEmailCommand *)v4 isMemberOfClass:objc_opt_class()]&& (v10.receiver = self, v10.super_class = SFViewEmailCommand, [(SFCommand *)&v10 isEqual:v4]))
  {
    v5 = v4;
    v6 = [(SFViewEmailCommand *)self placeHolderProperty];
    v7 = [(SFViewEmailCommand *)v5 placeHolderProperty];

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
  v6.super_class = SFViewEmailCommand;
  v4 = [(SFCommand *)&v6 copyWithZone:a3];
  [v4 setPlaceHolderProperty:{-[SFViewEmailCommand placeHolderProperty](self, "placeHolderProperty")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBViewEmailCommand alloc] initWithFacade:self];
  v3 = [(_SFPBViewEmailCommand *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBViewEmailCommand alloc] initWithFacade:self];
  v3 = [(_SFPBViewEmailCommand *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFViewEmailCommand;
  [(SFCommand *)&v3 encodeWithCoder:a3];
}

- (SFViewEmailCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFViewEmailCommand *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SFViewEmailCommand *)v5 setPlaceHolderProperty:[(SFCommand *)v8 placeHolderProperty]];
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
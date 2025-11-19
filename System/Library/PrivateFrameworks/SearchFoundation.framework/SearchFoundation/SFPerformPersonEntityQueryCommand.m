@interface SFPerformPersonEntityQueryCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFPerformPersonEntityQueryCommand)initWithCoder:(id)a3;
- (SFPerformPersonEntityQueryCommand)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFPerformPersonEntityQueryCommand

- (SFPerformPersonEntityQueryCommand)initWithProtobuf:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SFPerformPersonEntityQueryCommand;
  v5 = [(SFPerformPersonEntityQueryCommand *)&v12 init];
  if (v5)
  {
    v6 = [v4 person];

    if (v6)
    {
      v7 = [SFPerson alloc];
      v8 = [v4 person];
      v9 = [(SFPerson *)v7 initWithProtobuf:v8];
      [(SFPerformPersonEntityQueryCommand *)v5 setPerson:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = SFPerformPersonEntityQueryCommand;
  v3 = [(SFCommand *)&v7 hash];
  v4 = [(SFPerformPersonEntityQueryCommand *)self person];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else if ([(SFPerformPersonEntityQueryCommand *)v4 isMemberOfClass:objc_opt_class()]&& (v13.receiver = self, v13.super_class = SFPerformPersonEntityQueryCommand, [(SFCommand *)&v13 isEqual:v4]))
  {
    v5 = v4;
    v6 = [(SFPerformPersonEntityQueryCommand *)self person];
    v7 = [(SFPerformPersonEntityQueryCommand *)v5 person];
    if ((v6 != 0) == (v7 == 0))
    {
      v11 = 0;
    }

    else
    {
      v8 = [(SFPerformPersonEntityQueryCommand *)self person];
      if (v8)
      {
        v9 = [(SFPerformPersonEntityQueryCommand *)self person];
        v10 = [(SFPerformPersonEntityQueryCommand *)v5 person];
        v11 = [v9 isEqual:v10];
      }

      else
      {
        v11 = 1;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = SFPerformPersonEntityQueryCommand;
  v4 = [(SFCommand *)&v8 copyWithZone:a3];
  v5 = [(SFPerformPersonEntityQueryCommand *)self person];
  v6 = [v5 copy];
  [v4 setPerson:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBPerformPersonEntityQueryCommand alloc] initWithFacade:self];
  v3 = [(_SFPBPerformPersonEntityQueryCommand *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBPerformPersonEntityQueryCommand alloc] initWithFacade:self];
  v3 = [(_SFPBPerformPersonEntityQueryCommand *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFPerformPersonEntityQueryCommand;
  [(SFCommand *)&v3 encodeWithCoder:a3];
}

- (SFPerformPersonEntityQueryCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFPerformPersonEntityQueryCommand *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCommand *)v8 person];
    [(SFPerformPersonEntityQueryCommand *)v5 setPerson:v9];

    v10 = [(SFCommand *)v8 commandDetail];
    [(SFCommand *)v5 setCommandDetail:v10];

    v11 = [(SFCommand *)v8 normalizedTopic];
    [(SFCommand *)v5 setNormalizedTopic:v11];

    v12 = [(SFCommand *)v8 backendData];
    [(SFCommand *)v5 setBackendData:v12];

    v13 = [(SFCommand *)v8 commandReference];
    [(SFCommand *)v5 setCommandReference:v13];
  }

  return v5;
}

@end
@interface SFCreateContactCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCreateContactCommand)initWithCoder:(id)a3;
- (SFCreateContactCommand)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFCreateContactCommand

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = SFCreateContactCommand;
  v3 = [(SFCommand *)&v8 hash];
  v4 = [(SFCreateContactCommand *)self person];
  v5 = [v4 hash];
  v6 = v5 ^ [(SFCreateContactCommand *)self addToExistingContact];

  return v6 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    if ([(SFCreateContactCommand *)v6 isMemberOfClass:objc_opt_class()])
    {
      v14.receiver = self;
      v14.super_class = SFCreateContactCommand;
      if ([(SFCommand *)&v14 isEqual:v6])
      {
        v7 = v6;
        v8 = [(SFCreateContactCommand *)self person];
        v9 = [(SFCreateContactCommand *)v7 person];
        if ((v8 != 0) == (v9 == 0))
        {
          LOBYTE(v11) = 0;
LABEL_14:

          goto LABEL_15;
        }

        v10 = [(SFCreateContactCommand *)self person];
        if (!v10 || (-[SFCreateContactCommand person](self, "person"), v3 = objc_claimAutoreleasedReturnValue(), -[SFCreateContactCommand person](v7, "person"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
        {
          v12 = [(SFCreateContactCommand *)self addToExistingContact];
          v11 = v12 ^ [(SFCreateContactCommand *)v7 addToExistingContact]^ 1;
          if (!v10)
          {
LABEL_13:

            goto LABEL_14;
          }
        }

        else
        {
          LOBYTE(v11) = 0;
        }

        goto LABEL_13;
      }
    }

    LOBYTE(v11) = 0;
  }

LABEL_15:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = SFCreateContactCommand;
  v4 = [(SFCommand *)&v8 copyWithZone:a3];
  v5 = [(SFCreateContactCommand *)self person];
  v6 = [v5 copy];
  [v4 setPerson:v6];

  [v4 setAddToExistingContact:{-[SFCreateContactCommand addToExistingContact](self, "addToExistingContact")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCreateContactCommand alloc] initWithFacade:self];
  v3 = [(_SFPBCreateContactCommand *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCreateContactCommand alloc] initWithFacade:self];
  v3 = [(_SFPBCreateContactCommand *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFCreateContactCommand;
  [(SFCommand *)&v3 encodeWithCoder:a3];
}

- (SFCreateContactCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFCreateContactCommand *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCommand *)v8 person];
    [(SFCreateContactCommand *)v5 setPerson:v9];

    [(SFCreateContactCommand *)v5 setAddToExistingContact:[(SFCommand *)v8 addToExistingContact]];
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

- (SFCreateContactCommand)initWithProtobuf:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SFCreateContactCommand;
  v5 = [(SFCreateContactCommand *)&v12 init];
  if (v5)
  {
    v6 = [v4 person];

    if (v6)
    {
      v7 = [SFPerson alloc];
      v8 = [v4 person];
      v9 = [(SFPerson *)v7 initWithProtobuf:v8];
      [(SFCreateContactCommand *)v5 setPerson:v9];
    }

    if ([v4 addToExistingContact])
    {
      -[SFCreateContactCommand setAddToExistingContact:](v5, "setAddToExistingContact:", [v4 addToExistingContact]);
    }

    v10 = v5;
  }

  return v5;
}

@end
@interface SFReferentialCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFReferentialCommand)initWithCoder:(id)a3;
- (SFReferentialCommand)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFReferentialCommand

- (SFReferentialCommand)initWithProtobuf:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SFReferentialCommand;
  v5 = [(SFReferentialCommand *)&v10 init];
  if (v5)
  {
    v6 = [v4 referenceIdentifier];

    if (v6)
    {
      v7 = [v4 referenceIdentifier];
      [(SFReferentialCommand *)v5 setReferenceIdentifier:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = [(SFReferentialCommand *)self referenceIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else if ([(SFReferentialCommand *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(SFReferentialCommand *)self referenceIdentifier];
    v7 = [(SFReferentialCommand *)v5 referenceIdentifier];
    if ((v6 != 0) == (v7 == 0))
    {
      v11 = 0;
    }

    else
    {
      v8 = [(SFReferentialCommand *)self referenceIdentifier];
      if (v8)
      {
        v9 = [(SFReferentialCommand *)self referenceIdentifier];
        v10 = [(SFReferentialCommand *)v5 referenceIdentifier];
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
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SFReferentialCommand *)self referenceIdentifier];
  v6 = [v5 copy];
  [v4 setReferenceIdentifier:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBReferentialCommand alloc] initWithFacade:self];
  v3 = [(_SFPBReferentialCommand *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBReferentialCommand alloc] initWithFacade:self];
  v3 = [(_SFPBReferentialCommand *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBReferentialCommand alloc] initWithFacade:self];
  v5 = [(_SFPBReferentialCommand *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFReferentialCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBReferentialCommand alloc] initWithData:v5];
  v7 = [(SFReferentialCommand *)self initWithProtobuf:v6];

  return v7;
}

@end
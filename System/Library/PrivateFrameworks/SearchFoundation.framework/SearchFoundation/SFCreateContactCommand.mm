@interface SFCreateContactCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCreateContactCommand)initWithCoder:(id)coder;
- (SFCreateContactCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFCreateContactCommand

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = SFCreateContactCommand;
  v3 = [(SFCommand *)&v8 hash];
  person = [(SFCreateContactCommand *)self person];
  v5 = [person hash];
  v6 = v5 ^ [(SFCreateContactCommand *)self addToExistingContact];

  return v6 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    if ([(SFCreateContactCommand *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v14.receiver = self;
      v14.super_class = SFCreateContactCommand;
      if ([(SFCommand *)&v14 isEqual:equalCopy])
      {
        v7 = equalCopy;
        person = [(SFCreateContactCommand *)self person];
        person2 = [(SFCreateContactCommand *)v7 person];
        if ((person != 0) == (person2 == 0))
        {
          LOBYTE(v11) = 0;
LABEL_14:

          goto LABEL_15;
        }

        person3 = [(SFCreateContactCommand *)self person];
        if (!person3 || (-[SFCreateContactCommand person](self, "person"), v3 = objc_claimAutoreleasedReturnValue(), -[SFCreateContactCommand person](v7, "person"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
        {
          addToExistingContact = [(SFCreateContactCommand *)self addToExistingContact];
          v11 = addToExistingContact ^ [(SFCreateContactCommand *)v7 addToExistingContact]^ 1;
          if (!person3)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SFCreateContactCommand;
  v4 = [(SFCommand *)&v8 copyWithZone:zone];
  person = [(SFCreateContactCommand *)self person];
  v6 = [person copy];
  [v4 setPerson:v6];

  [v4 setAddToExistingContact:{-[SFCreateContactCommand addToExistingContact](self, "addToExistingContact")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCreateContactCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBCreateContactCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCreateContactCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBCreateContactCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFCreateContactCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFCreateContactCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFCreateContactCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    person = [(SFCommand *)v8 person];
    [(SFCreateContactCommand *)v5 setPerson:person];

    [(SFCreateContactCommand *)v5 setAddToExistingContact:[(SFCommand *)v8 addToExistingContact]];
    commandDetail = [(SFCommand *)v8 commandDetail];
    [(SFCommand *)v5 setCommandDetail:commandDetail];

    normalizedTopic = [(SFCommand *)v8 normalizedTopic];
    [(SFCommand *)v5 setNormalizedTopic:normalizedTopic];

    backendData = [(SFCommand *)v8 backendData];
    [(SFCommand *)v5 setBackendData:backendData];

    commandReference = [(SFCommand *)v8 commandReference];
    [(SFCommand *)v5 setCommandReference:commandReference];
  }

  return v5;
}

- (SFCreateContactCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v12.receiver = self;
  v12.super_class = SFCreateContactCommand;
  v5 = [(SFCreateContactCommand *)&v12 init];
  if (v5)
  {
    person = [protobufCopy person];

    if (person)
    {
      v7 = [SFPerson alloc];
      person2 = [protobufCopy person];
      v9 = [(SFPerson *)v7 initWithProtobuf:person2];
      [(SFCreateContactCommand *)v5 setPerson:v9];
    }

    if ([protobufCopy addToExistingContact])
    {
      -[SFCreateContactCommand setAddToExistingContact:](v5, "setAddToExistingContact:", [protobufCopy addToExistingContact]);
    }

    v10 = v5;
  }

  return v5;
}

@end
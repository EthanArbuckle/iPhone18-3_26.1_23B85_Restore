@interface SFShowContactCardCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFShowContactCardCommand)initWithCoder:(id)coder;
- (SFShowContactCardCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFShowContactCardCommand

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = SFShowContactCardCommand;
  v3 = [(SFCommand *)&v8 hash];
  contactIdentifier = [(SFShowContactCardCommand *)self contactIdentifier];
  v5 = [contactIdentifier hash];
  v6 = v5 ^ [(SFShowContactCardCommand *)self isSuggestedContact];

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
    if ([(SFShowContactCardCommand *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v14.receiver = self;
      v14.super_class = SFShowContactCardCommand;
      if ([(SFCommand *)&v14 isEqual:equalCopy])
      {
        v7 = equalCopy;
        contactIdentifier = [(SFShowContactCardCommand *)self contactIdentifier];
        contactIdentifier2 = [(SFShowContactCardCommand *)v7 contactIdentifier];
        if ((contactIdentifier != 0) == (contactIdentifier2 == 0))
        {
          LOBYTE(v11) = 0;
LABEL_14:

          goto LABEL_15;
        }

        contactIdentifier3 = [(SFShowContactCardCommand *)self contactIdentifier];
        if (!contactIdentifier3 || (-[SFShowContactCardCommand contactIdentifier](self, "contactIdentifier"), v3 = objc_claimAutoreleasedReturnValue(), -[SFShowContactCardCommand contactIdentifier](v7, "contactIdentifier"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
        {
          isSuggestedContact = [(SFShowContactCardCommand *)self isSuggestedContact];
          v11 = isSuggestedContact ^ [(SFShowContactCardCommand *)v7 isSuggestedContact]^ 1;
          if (!contactIdentifier3)
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
  v8.super_class = SFShowContactCardCommand;
  v4 = [(SFCommand *)&v8 copyWithZone:zone];
  contactIdentifier = [(SFShowContactCardCommand *)self contactIdentifier];
  v6 = [contactIdentifier copy];
  [v4 setContactIdentifier:v6];

  [v4 setIsSuggestedContact:{-[SFShowContactCardCommand isSuggestedContact](self, "isSuggestedContact")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBShowContactCardCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBShowContactCardCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBShowContactCardCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBShowContactCardCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFShowContactCardCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFShowContactCardCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFShowContactCardCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    contactIdentifier = [(SFCommand *)v8 contactIdentifier];
    [(SFShowContactCardCommand *)v5 setContactIdentifier:contactIdentifier];

    [(SFShowContactCardCommand *)v5 setIsSuggestedContact:[(SFCommand *)v8 isSuggestedContact]];
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

- (SFShowContactCardCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v10.receiver = self;
  v10.super_class = SFShowContactCardCommand;
  v5 = [(SFShowContactCardCommand *)&v10 init];
  if (v5)
  {
    contactIdentifier = [protobufCopy contactIdentifier];

    if (contactIdentifier)
    {
      contactIdentifier2 = [protobufCopy contactIdentifier];
      [(SFShowContactCardCommand *)v5 setContactIdentifier:contactIdentifier2];
    }

    if ([protobufCopy isSuggestedContact])
    {
      -[SFShowContactCardCommand setIsSuggestedContact:](v5, "setIsSuggestedContact:", [protobufCopy isSuggestedContact]);
    }

    v8 = v5;
  }

  return v5;
}

@end
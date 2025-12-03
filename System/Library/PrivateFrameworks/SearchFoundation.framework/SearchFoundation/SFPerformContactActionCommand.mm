@interface SFPerformContactActionCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFPerformContactActionCommand)initWithCoder:(id)coder;
- (SFPerformContactActionCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFPerformContactActionCommand

- (SFPerformContactActionCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v8.receiver = self;
  v8.super_class = SFPerformContactActionCommand;
  v5 = [(SFPerformContactActionCommand *)&v8 init];
  if (v5)
  {
    if ([protobufCopy contactActionType])
    {
      -[SFPerformContactActionCommand setContactActionType:](v5, "setContactActionType:", [protobufCopy contactActionType]);
    }

    if ([protobufCopy didDisplayHandleOptions])
    {
      -[SFPerformContactActionCommand setDidDisplayHandleOptions:](v5, "setDidDisplayHandleOptions:", [protobufCopy didDisplayHandleOptions]);
    }

    if ([protobufCopy didSelectFromOptionsMenu])
    {
      -[SFPerformContactActionCommand setDidSelectFromOptionsMenu:](v5, "setDidSelectFromOptionsMenu:", [protobufCopy didSelectFromOptionsMenu]);
    }

    v6 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = SFPerformContactActionCommand;
  v3 = [(SFCommand *)&v7 hash];
  contactActionType = [(SFPerformContactActionCommand *)self contactActionType];
  v5 = contactActionType ^ [(SFPerformContactActionCommand *)self didDisplayHandleOptions];
  return v3 ^ v5 ^ [(SFPerformContactActionCommand *)self didSelectFromOptionsMenu];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v8) = 1;
  }

  else if ([(SFPerformContactActionCommand *)equalCopy isMemberOfClass:objc_opt_class()]&& (v11.receiver = self, v11.super_class = SFPerformContactActionCommand, [(SFCommand *)&v11 isEqual:equalCopy]))
  {
    v5 = equalCopy;
    contactActionType = [(SFPerformContactActionCommand *)self contactActionType];
    if (contactActionType == [(SFPerformContactActionCommand *)v5 contactActionType]&& (v7 = [(SFPerformContactActionCommand *)self didDisplayHandleOptions], v7 == [(SFPerformContactActionCommand *)v5 didDisplayHandleOptions]))
    {
      didSelectFromOptionsMenu = [(SFPerformContactActionCommand *)self didSelectFromOptionsMenu];
      v8 = didSelectFromOptionsMenu ^ [(SFPerformContactActionCommand *)v5 didSelectFromOptionsMenu]^ 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = SFPerformContactActionCommand;
  v4 = [(SFCommand *)&v6 copyWithZone:zone];
  [v4 setContactActionType:{-[SFPerformContactActionCommand contactActionType](self, "contactActionType")}];
  [v4 setDidDisplayHandleOptions:{-[SFPerformContactActionCommand didDisplayHandleOptions](self, "didDisplayHandleOptions")}];
  [v4 setDidSelectFromOptionsMenu:{-[SFPerformContactActionCommand didSelectFromOptionsMenu](self, "didSelectFromOptionsMenu")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBPerformContactActionCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBPerformContactActionCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBPerformContactActionCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBPerformContactActionCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFPerformContactActionCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFPerformContactActionCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFPerformContactActionCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SFPerformContactActionCommand *)v5 setContactActionType:[(SFCommand *)v8 contactActionType]];
    [(SFPerformContactActionCommand *)v5 setDidDisplayHandleOptions:[(SFCommand *)v8 didDisplayHandleOptions]];
    [(SFPerformContactActionCommand *)v5 setDidSelectFromOptionsMenu:[(SFCommand *)v8 didSelectFromOptionsMenu]];
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

@end
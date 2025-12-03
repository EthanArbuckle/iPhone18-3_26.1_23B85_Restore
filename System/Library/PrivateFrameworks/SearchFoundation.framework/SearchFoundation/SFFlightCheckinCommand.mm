@interface SFFlightCheckinCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFFlightCheckinCommand)initWithCoder:(id)coder;
- (SFFlightCheckinCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFFlightCheckinCommand

- (SFFlightCheckinCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v8.receiver = self;
  v8.super_class = SFFlightCheckinCommand;
  v5 = [(SFFlightCheckinCommand *)&v8 init];
  if (v5)
  {
    if ([protobufCopy placeHolderProperty])
    {
      -[SFFlightCheckinCommand setPlaceHolderProperty:](v5, "setPlaceHolderProperty:", [protobufCopy placeHolderProperty]);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else if ([(SFFlightCheckinCommand *)equalCopy isMemberOfClass:objc_opt_class()]&& (v10.receiver = self, v10.super_class = SFFlightCheckinCommand, [(SFCommand *)&v10 isEqual:equalCopy]))
  {
    v5 = equalCopy;
    placeHolderProperty = [(SFFlightCheckinCommand *)self placeHolderProperty];
    placeHolderProperty2 = [(SFFlightCheckinCommand *)v5 placeHolderProperty];

    v8 = placeHolderProperty ^ placeHolderProperty2 ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = SFFlightCheckinCommand;
  v4 = [(SFCommand *)&v6 copyWithZone:zone];
  [v4 setPlaceHolderProperty:{-[SFFlightCheckinCommand placeHolderProperty](self, "placeHolderProperty")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBFlightCheckinCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBFlightCheckinCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBFlightCheckinCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBFlightCheckinCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFFlightCheckinCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFFlightCheckinCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFFlightCheckinCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SFFlightCheckinCommand *)v5 setPlaceHolderProperty:[(SFCommand *)v8 placeHolderProperty]];
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
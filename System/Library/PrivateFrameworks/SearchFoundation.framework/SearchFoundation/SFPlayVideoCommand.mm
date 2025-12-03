@interface SFPlayVideoCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFPlayVideoCommand)initWithCoder:(id)coder;
- (SFPlayVideoCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFPlayVideoCommand

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = SFPlayVideoCommand;
  v3 = [(SFCommand *)&v7 hash];
  v4 = [(SFPlayVideoCommand *)self url];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if ([(SFPlayVideoCommand *)equalCopy isMemberOfClass:objc_opt_class()]&& (v13.receiver = self, v13.super_class = SFPlayVideoCommand, [(SFCommand *)&v13 isEqual:equalCopy]))
  {
    v5 = equalCopy;
    v6 = [(SFPlayVideoCommand *)self url];
    v7 = [(SFPlayVideoCommand *)v5 url];
    if ((v6 != 0) == (v7 == 0))
    {
      v11 = 0;
    }

    else
    {
      v8 = [(SFPlayVideoCommand *)self url];
      if (v8)
      {
        v9 = [(SFPlayVideoCommand *)self url];
        v10 = [(SFPlayVideoCommand *)v5 url];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SFPlayVideoCommand;
  v4 = [(SFCommand *)&v8 copyWithZone:zone];
  v5 = [(SFPlayVideoCommand *)self url];
  v6 = [v5 copy];
  [v4 setUrl:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBPlayVideoCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBPlayVideoCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBPlayVideoCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBPlayVideoCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFPlayVideoCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFPlayVideoCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFPlayVideoCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCommand *)v8 url];
    [(SFPlayVideoCommand *)v5 setUrl:v9];

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

- (SFPlayVideoCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v11.receiver = self;
  v11.super_class = SFPlayVideoCommand;
  v5 = [(SFPlayVideoCommand *)&v11 init];
  if (v5)
  {
    v6 = [protobufCopy url];

    if (v6)
    {
      v7 = [protobufCopy url];
      v8 = _SFPBURLHandwrittenTranslator(v7);
      [(SFPlayVideoCommand *)v5 setUrl:v8];
    }

    v9 = v5;
  }

  return v5;
}

@end
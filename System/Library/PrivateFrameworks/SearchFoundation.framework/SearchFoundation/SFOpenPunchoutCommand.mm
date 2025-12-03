@interface SFOpenPunchoutCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFOpenPunchoutCommand)initWithCoder:(id)coder;
- (SFOpenPunchoutCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFOpenPunchoutCommand

- (SFOpenPunchoutCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v12.receiver = self;
  v12.super_class = SFOpenPunchoutCommand;
  v5 = [(SFOpenPunchoutCommand *)&v12 init];
  if (v5)
  {
    punchout = [protobufCopy punchout];

    if (punchout)
    {
      v7 = [SFPunchout alloc];
      punchout2 = [protobufCopy punchout];
      v9 = [(SFPunchout *)v7 initWithProtobuf:punchout2];
      [(SFOpenPunchoutCommand *)v5 setPunchout:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = SFOpenPunchoutCommand;
  v3 = [(SFCommand *)&v7 hash];
  punchout = [(SFOpenPunchoutCommand *)self punchout];
  v5 = [punchout hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if ([(SFOpenPunchoutCommand *)equalCopy isMemberOfClass:objc_opt_class()]&& (v13.receiver = self, v13.super_class = SFOpenPunchoutCommand, [(SFCommand *)&v13 isEqual:equalCopy]))
  {
    v5 = equalCopy;
    punchout = [(SFOpenPunchoutCommand *)self punchout];
    punchout2 = [(SFOpenPunchoutCommand *)v5 punchout];
    if ((punchout != 0) == (punchout2 == 0))
    {
      v11 = 0;
    }

    else
    {
      punchout3 = [(SFOpenPunchoutCommand *)self punchout];
      if (punchout3)
      {
        punchout4 = [(SFOpenPunchoutCommand *)self punchout];
        punchout5 = [(SFOpenPunchoutCommand *)v5 punchout];
        v11 = [punchout4 isEqual:punchout5];
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
  v8.super_class = SFOpenPunchoutCommand;
  v4 = [(SFCommand *)&v8 copyWithZone:zone];
  punchout = [(SFOpenPunchoutCommand *)self punchout];
  v6 = [punchout copy];
  [v4 setPunchout:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBOpenPunchoutCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBOpenPunchoutCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBOpenPunchoutCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBOpenPunchoutCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFOpenPunchoutCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFOpenPunchoutCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFOpenPunchoutCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    punchout = [(SFCommand *)v8 punchout];
    [(SFOpenPunchoutCommand *)v5 setPunchout:punchout];

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
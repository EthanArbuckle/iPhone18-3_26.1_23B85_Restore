@interface SFNamedProtobufMessage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFNamedProtobufMessage)initWithCoder:(id)coder;
- (SFNamedProtobufMessage)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFNamedProtobufMessage

- (unint64_t)hash
{
  protobufMessageData = [(SFNamedProtobufMessage *)self protobufMessageData];
  v4 = [protobufMessageData hash];
  protobufMessageName = [(SFNamedProtobufMessage *)self protobufMessageName];
  v6 = [protobufMessageName hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFNamedProtobufMessage *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      protobufMessageData = [(SFNamedProtobufMessage *)self protobufMessageData];
      protobufMessageData2 = [(SFNamedProtobufMessage *)v6 protobufMessageData];
      if ((protobufMessageData != 0) == (protobufMessageData2 == 0))
      {
        v11 = 0;
LABEL_19:

        goto LABEL_20;
      }

      protobufMessageData3 = [(SFNamedProtobufMessage *)self protobufMessageData];
      if (protobufMessageData3)
      {
        protobufMessageData4 = [(SFNamedProtobufMessage *)self protobufMessageData];
        protobufMessageData5 = [(SFNamedProtobufMessage *)v6 protobufMessageData];
        if (![protobufMessageData4 isEqual:protobufMessageData5])
        {
          v11 = 0;
LABEL_17:

LABEL_18:
          goto LABEL_19;
        }

        v21 = protobufMessageData5;
      }

      protobufMessageName = [(SFNamedProtobufMessage *)self protobufMessageName];
      protobufMessageName2 = [(SFNamedProtobufMessage *)v6 protobufMessageName];
      v14 = protobufMessageName2;
      if ((protobufMessageName != 0) == (protobufMessageName2 == 0))
      {

        v11 = 0;
      }

      else
      {
        protobufMessageName3 = [(SFNamedProtobufMessage *)self protobufMessageName];
        if (protobufMessageName3)
        {
          v16 = protobufMessageName3;
          protobufMessageName4 = [(SFNamedProtobufMessage *)self protobufMessageName];
          [(SFNamedProtobufMessage *)v6 protobufMessageName];
          v17 = v20 = protobufMessageData4;
          v11 = [protobufMessageName4 isEqual:v17];

          protobufMessageData4 = v20;
        }

        else
        {

          v11 = 1;
        }
      }

      protobufMessageData5 = v21;
      if (!protobufMessageData3)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v11 = 0;
  }

LABEL_20:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  protobufMessageData = [(SFNamedProtobufMessage *)self protobufMessageData];
  v6 = [protobufMessageData copy];
  [v4 setProtobufMessageData:v6];

  protobufMessageName = [(SFNamedProtobufMessage *)self protobufMessageName];
  v8 = [protobufMessageName copy];
  [v4 setProtobufMessageName:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBNamedProtobufMessage alloc] initWithFacade:self];
  jsonData = [(_SFPBNamedProtobufMessage *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBNamedProtobufMessage alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBNamedProtobufMessage *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBNamedProtobufMessage alloc] initWithFacade:self];
  data = [(_SFPBNamedProtobufMessage *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFNamedProtobufMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBNamedProtobufMessage alloc] initWithData:v5];
  v7 = [(SFNamedProtobufMessage *)self initWithProtobuf:v6];

  return v7;
}

- (SFNamedProtobufMessage)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v12.receiver = self;
  v12.super_class = SFNamedProtobufMessage;
  v5 = [(SFNamedProtobufMessage *)&v12 init];
  if (v5)
  {
    protobufMessageData = [protobufCopy protobufMessageData];

    if (protobufMessageData)
    {
      protobufMessageData2 = [protobufCopy protobufMessageData];
      [(SFNamedProtobufMessage *)v5 setProtobufMessageData:protobufMessageData2];
    }

    protobufMessageName = [protobufCopy protobufMessageName];

    if (protobufMessageName)
    {
      protobufMessageName2 = [protobufCopy protobufMessageName];
      [(SFNamedProtobufMessage *)v5 setProtobufMessageName:protobufMessageName2];
    }

    v10 = v5;
  }

  return v5;
}

@end
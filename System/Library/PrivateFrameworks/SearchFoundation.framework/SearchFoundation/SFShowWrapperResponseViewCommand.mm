@interface SFShowWrapperResponseViewCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFShowWrapperResponseViewCommand)initWithCoder:(id)coder;
- (SFShowWrapperResponseViewCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFShowWrapperResponseViewCommand

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = SFShowWrapperResponseViewCommand;
  v3 = [(SFCommand *)&v7 hash];
  catModel = [(SFShowWrapperResponseViewCommand *)self catModel];
  v5 = [catModel hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if ([(SFShowWrapperResponseViewCommand *)equalCopy isMemberOfClass:objc_opt_class()]&& (v13.receiver = self, v13.super_class = SFShowWrapperResponseViewCommand, [(SFCommand *)&v13 isEqual:equalCopy]))
  {
    v5 = equalCopy;
    catModel = [(SFShowWrapperResponseViewCommand *)self catModel];
    catModel2 = [(SFShowWrapperResponseViewCommand *)v5 catModel];
    if ((catModel != 0) == (catModel2 == 0))
    {
      v11 = 0;
    }

    else
    {
      catModel3 = [(SFShowWrapperResponseViewCommand *)self catModel];
      if (catModel3)
      {
        catModel4 = [(SFShowWrapperResponseViewCommand *)self catModel];
        catModel5 = [(SFShowWrapperResponseViewCommand *)v5 catModel];
        v11 = [catModel4 isEqual:catModel5];
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
  v8.super_class = SFShowWrapperResponseViewCommand;
  v4 = [(SFCommand *)&v8 copyWithZone:zone];
  catModel = [(SFShowWrapperResponseViewCommand *)self catModel];
  v6 = [catModel copy];
  [v4 setCatModel:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBShowWrapperResponseViewCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBShowWrapperResponseViewCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBShowWrapperResponseViewCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBShowWrapperResponseViewCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFShowWrapperResponseViewCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFShowWrapperResponseViewCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFShowWrapperResponseViewCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    catModel = [(SFCommand *)v8 catModel];
    [(SFShowWrapperResponseViewCommand *)v5 setCatModel:catModel];

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

- (SFShowWrapperResponseViewCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v12.receiver = self;
  v12.super_class = SFShowWrapperResponseViewCommand;
  v5 = [(SFShowWrapperResponseViewCommand *)&v12 init];
  if (v5)
  {
    catModel = [protobufCopy catModel];

    if (catModel)
    {
      v7 = [SFCATModel alloc];
      catModel2 = [protobufCopy catModel];
      v9 = [(SFCATModel *)v7 initWithProtobuf:catModel2];
      [(SFShowWrapperResponseViewCommand *)v5 setCatModel:v9];
    }

    v10 = v5;
  }

  return v5;
}

@end
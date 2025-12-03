@interface SFScene
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFScene)initWithCoder:(id)coder;
- (SFScene)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFScene

- (SFScene)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v8.receiver = self;
  v8.super_class = SFScene;
  v5 = [(SFScene *)&v8 init];
  if (v5)
  {
    if ([protobufCopy sceneIdentifier])
    {
      -[SFScene setSceneIdentifier:](v5, "setSceneIdentifier:", [protobufCopy sceneIdentifier]);
    }

    if ([protobufCopy sceneType])
    {
      -[SFScene setSceneType:](v5, "setSceneType:", [protobufCopy sceneType]);
    }

    v6 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else if ([(SFScene *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    sceneIdentifier = [(SFScene *)self sceneIdentifier];
    if (sceneIdentifier == [(SFScene *)v5 sceneIdentifier])
    {
      sceneType = [(SFScene *)self sceneType];
      v8 = sceneType == [(SFScene *)v5 sceneType];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setSceneIdentifier:{-[SFScene sceneIdentifier](self, "sceneIdentifier")}];
  [v4 setSceneType:{-[SFScene sceneType](self, "sceneType")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBScene alloc] initWithFacade:self];
  jsonData = [(_SFPBScene *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBScene alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBScene *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBScene alloc] initWithFacade:self];
  data = [(_SFPBScene *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFScene)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBScene alloc] initWithData:v5];
  v7 = [(SFScene *)self initWithProtobuf:v6];

  return v7;
}

@end
@interface SFScene
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFScene)initWithCoder:(id)a3;
- (SFScene)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFScene

- (SFScene)initWithProtobuf:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SFScene;
  v5 = [(SFScene *)&v8 init];
  if (v5)
  {
    if ([v4 sceneIdentifier])
    {
      -[SFScene setSceneIdentifier:](v5, "setSceneIdentifier:", [v4 sceneIdentifier]);
    }

    if ([v4 sceneType])
    {
      -[SFScene setSceneType:](v5, "setSceneType:", [v4 sceneType]);
    }

    v6 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else if ([(SFScene *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(SFScene *)self sceneIdentifier];
    if (v6 == [(SFScene *)v5 sceneIdentifier])
    {
      v7 = [(SFScene *)self sceneType];
      v8 = v7 == [(SFScene *)v5 sceneType];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setSceneIdentifier:{-[SFScene sceneIdentifier](self, "sceneIdentifier")}];
  [v4 setSceneType:{-[SFScene sceneType](self, "sceneType")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBScene alloc] initWithFacade:self];
  v3 = [(_SFPBScene *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBScene alloc] initWithFacade:self];
  v3 = [(_SFPBScene *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBScene alloc] initWithFacade:self];
  v5 = [(_SFPBScene *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFScene)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBScene alloc] initWithData:v5];
  v7 = [(SFScene *)self initWithProtobuf:v6];

  return v7;
}

@end
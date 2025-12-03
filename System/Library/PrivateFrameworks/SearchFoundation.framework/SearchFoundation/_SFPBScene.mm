@interface _SFPBScene
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBScene)initWithDictionary:(id)dictionary;
- (_SFPBScene)initWithFacade:(id)facade;
- (_SFPBScene)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _SFPBScene

- (_SFPBScene)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBScene *)self init];
  if (v5)
  {
    if ([facadeCopy hasSceneIdentifier])
    {
      -[_SFPBScene setSceneIdentifier:](v5, "setSceneIdentifier:", [facadeCopy sceneIdentifier]);
    }

    if ([facadeCopy hasSceneType])
    {
      -[_SFPBScene setSceneType:](v5, "setSceneType:", [facadeCopy sceneType]);
    }

    v6 = v5;
  }

  return v5;
}

- (_SFPBScene)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = _SFPBScene;
  v5 = [(_SFPBScene *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"sceneIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBScene setSceneIdentifier:](v5, "setSceneIdentifier:", [v6 unsignedLongLongValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"sceneType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBScene setSceneType:](v5, "setSceneType:", [v7 intValue]);
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBScene)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBScene *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBScene *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_sceneIdentifier)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_SFPBScene sceneIdentifier](self, "sceneIdentifier")}];
    [dictionary setObject:v4 forKeyedSubscript:@"sceneIdentifier"];
  }

  if (self->_sceneType)
  {
    sceneType = [(_SFPBScene *)self sceneType];
    if (sceneType >= 4)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", sceneType];
    }

    else
    {
      v6 = off_1E7ACE560[sceneType];
    }

    [dictionary setObject:v6 forKeyedSubscript:@"sceneType"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (sceneIdentifier = self->_sceneIdentifier, sceneIdentifier == objc_msgSend(equalCopy, "sceneIdentifier")))
  {
    sceneType = self->_sceneType;
    v7 = sceneType == [equalCopy sceneType];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_SFPBScene *)self sceneIdentifier])
  {
    PBDataWriterWriteUint64Field();
  }

  if ([(_SFPBScene *)self sceneType])
  {
    PBDataWriterWriteInt32Field();
  }
}

@end
@interface _SFPBScene
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBScene)initWithDictionary:(id)a3;
- (_SFPBScene)initWithFacade:(id)a3;
- (_SFPBScene)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBScene

- (_SFPBScene)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBScene *)self init];
  if (v5)
  {
    if ([v4 hasSceneIdentifier])
    {
      -[_SFPBScene setSceneIdentifier:](v5, "setSceneIdentifier:", [v4 sceneIdentifier]);
    }

    if ([v4 hasSceneType])
    {
      -[_SFPBScene setSceneType:](v5, "setSceneType:", [v4 sceneType]);
    }

    v6 = v5;
  }

  return v5;
}

- (_SFPBScene)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _SFPBScene;
  v5 = [(_SFPBScene *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"sceneIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBScene setSceneIdentifier:](v5, "setSceneIdentifier:", [v6 unsignedLongLongValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"sceneType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBScene setSceneType:](v5, "setSceneType:", [v7 intValue]);
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBScene)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBScene *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBScene *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_sceneIdentifier)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_SFPBScene sceneIdentifier](self, "sceneIdentifier")}];
    [v3 setObject:v4 forKeyedSubscript:@"sceneIdentifier"];
  }

  if (self->_sceneType)
  {
    v5 = [(_SFPBScene *)self sceneType];
    if (v5 >= 4)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v5];
    }

    else
    {
      v6 = off_1E7ACE560[v5];
    }

    [v3 setObject:v6 forKeyedSubscript:@"sceneType"];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (sceneIdentifier = self->_sceneIdentifier, sceneIdentifier == objc_msgSend(v4, "sceneIdentifier")))
  {
    sceneType = self->_sceneType;
    v7 = sceneType == [v4 sceneType];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
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
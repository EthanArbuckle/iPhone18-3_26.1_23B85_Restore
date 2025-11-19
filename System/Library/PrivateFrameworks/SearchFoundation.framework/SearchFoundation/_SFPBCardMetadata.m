@interface _SFPBCardMetadata
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBCardMetadata)initWithDictionary:(id)a3;
- (_SFPBCardMetadata)initWithFacade:(id)a3;
- (_SFPBCardMetadata)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setQueryToSearchAcrossAllDomains:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBCardMetadata

- (_SFPBCardMetadata)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBCardMetadata *)self init];
  if (v5)
  {
    if ([v4 hasIsServerEntity])
    {
      -[_SFPBCardMetadata setIsServerEntity:](v5, "setIsServerEntity:", [v4 isServerEntity]);
    }

    v6 = [v4 queryToSearchAcrossAllDomains];

    if (v6)
    {
      v7 = [v4 queryToSearchAcrossAllDomains];
      [(_SFPBCardMetadata *)v5 setQueryToSearchAcrossAllDomains:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBCardMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _SFPBCardMetadata;
  v5 = [(_SFPBCardMetadata *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isServerEntity"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCardMetadata setIsServerEntity:](v5, "setIsServerEntity:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"queryToSearchAcrossAllDomains"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(_SFPBCardMetadata *)v5 setQueryToSearchAcrossAllDomains:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (_SFPBCardMetadata)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBCardMetadata *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBCardMetadata *)self dictionaryRepresentation];
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
  if (self->_isServerEntity)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCardMetadata isServerEntity](self, "isServerEntity")}];
    [v3 setObject:v4 forKeyedSubscript:@"isServerEntity"];
  }

  if (self->_queryToSearchAcrossAllDomains)
  {
    v5 = [(_SFPBCardMetadata *)self queryToSearchAcrossAllDomains];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"queryToSearchAcrossAllDomains"];
  }

  return v3;
}

- (unint64_t)hash
{
  if (self->_isServerEntity)
  {
    v2 = 2654435761;
  }

  else
  {
    v2 = 0;
  }

  return [(NSString *)self->_queryToSearchAcrossAllDomains hash]^ v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    isServerEntity = self->_isServerEntity;
    if (isServerEntity == [v4 isServerEntity])
    {
      v6 = [(_SFPBCardMetadata *)self queryToSearchAcrossAllDomains];
      v7 = [v4 queryToSearchAcrossAllDomains];
      v8 = v7;
      if ((v6 != 0) != (v7 == 0))
      {
        v9 = [(_SFPBCardMetadata *)self queryToSearchAcrossAllDomains];
        if (!v9)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = v9;
        v11 = [(_SFPBCardMetadata *)self queryToSearchAcrossAllDomains];
        v12 = [v4 queryToSearchAcrossAllDomains];
        v13 = [v11 isEqual:v12];

        if (v13)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  if ([(_SFPBCardMetadata *)self isServerEntity])
  {
    PBDataWriterWriteBOOLField();
  }

  v4 = [(_SFPBCardMetadata *)self queryToSearchAcrossAllDomains];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setQueryToSearchAcrossAllDomains:(id)a3
{
  v4 = [a3 copy];
  queryToSearchAcrossAllDomains = self->_queryToSearchAcrossAllDomains;
  self->_queryToSearchAcrossAllDomains = v4;

  MEMORY[0x1EEE66BB8]();
}

@end
@interface PNRODSchemaPNRError
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PNRODSchemaPNRError)initWithDictionary:(id)dictionary;
- (PNRODSchemaPNRError)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasSource:(BOOL)source;
- (void)writeTo:(id)to;
@end

@implementation PNRODSchemaPNRError

- (PNRODSchemaPNRError)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = PNRODSchemaPNRError;
  v5 = [(PNRODSchemaPNRError *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"domain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PNRODSchemaPNRError *)v5 setDomain:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"code"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRError setCode:](v5, "setCode:", [v8 longLongValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"source"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRError setSource:](v5, "setSource:", [v9 intValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (PNRODSchemaPNRError)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PNRODSchemaPNRError *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PNRODSchemaPNRError *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PNRODSchemaPNRError code](self, "code")}];
    [dictionary setObject:v4 forKeyedSubscript:@"code"];
  }

  if (self->_domain)
  {
    domain = [(PNRODSchemaPNRError *)self domain];
    v6 = [domain copy];
    [dictionary setObject:v6 forKeyedSubscript:@"domain"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[PNRODSchemaPNRError source](self, "source")}];
    [dictionary setObject:v7 forKeyedSubscript:@"source"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_domain hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_code;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_source;
  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  domain = [(PNRODSchemaPNRError *)self domain];
  domain2 = [equalCopy domain];
  v7 = domain2;
  if ((domain != 0) == (domain2 == 0))
  {

    goto LABEL_16;
  }

  domain3 = [(PNRODSchemaPNRError *)self domain];
  if (domain3)
  {
    v9 = domain3;
    domain4 = [(PNRODSchemaPNRError *)self domain];
    domain5 = [equalCopy domain];
    v12 = [domain4 isEqual:domain5];

    if (!v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = equalCopy[28];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  if (*&has)
  {
    code = self->_code;
    if (code == [equalCopy code])
    {
      has = self->_has;
      v14 = equalCopy[28];
      goto LABEL_12;
    }

    goto LABEL_16;
  }

LABEL_12:
  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_16;
  }

  if (v16)
  {
    source = self->_source;
    if (source != [equalCopy source])
    {
      goto LABEL_16;
    }
  }

  v18 = 1;
LABEL_17:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  domain = [(PNRODSchemaPNRError *)self domain];

  if (domain)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt64Field();
    has = self->_has;
  }

  v6 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v6 = toCopy;
  }
}

- (void)setHasSource:(BOOL)source
{
  if (source)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end
@interface SADSchemaSADUODAssetsPrepared
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SADSchemaSADUODAssetsPrepared)initWithDictionary:(id)dictionary;
- (SADSchemaSADUODAssetsPrepared)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasElapsedSeconds:(BOOL)seconds;
- (void)writeTo:(id)to;
@end

@implementation SADSchemaSADUODAssetsPrepared

- (SADSchemaSADUODAssetsPrepared)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = SADSchemaSADUODAssetsPrepared;
  v5 = [(SADSchemaSADUODAssetsPrepared *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"locale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SADSchemaSADUODAssetsPrepared setLocale:](v5, "setLocale:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"elapsedSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SADSchemaSADUODAssetsPrepared setElapsedSeconds:](v5, "setElapsedSeconds:", [v7 unsignedIntValue]);
    }

    v8 = v5;
  }

  return v5;
}

- (SADSchemaSADUODAssetsPrepared)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SADSchemaSADUODAssetsPrepared *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SADSchemaSADUODAssetsPrepared *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SADSchemaSADUODAssetsPrepared elapsedSeconds](self, "elapsedSeconds")}];
    [dictionary setObject:v5 forKeyedSubscript:@"elapsedSeconds"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [(SADSchemaSADUODAssetsPrepared *)self locale]- 1;
    if (v6 > 0x3D)
    {
      v7 = @"LOCALE_UNKNOWN_LOCALE";
    }

    else
    {
      v7 = off_1E78E28F0[v6];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"locale"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_locale;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_elapsedSeconds;
  return v3 ^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  has = self->_has;
  v6 = equalCopy[16];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_10;
  }

  if (*&has)
  {
    locale = self->_locale;
    if (locale != [equalCopy locale])
    {
LABEL_10:
      v10 = 0;
      goto LABEL_11;
    }

    has = self->_has;
    v6 = equalCopy[16];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_10;
  }

  if (v8)
  {
    elapsedSeconds = self->_elapsedSeconds;
    if (elapsedSeconds != [equalCopy elapsedSeconds])
    {
      goto LABEL_10;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v6 = toCopy;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v6;
  }
}

- (void)setHasElapsedSeconds:(BOOL)seconds
{
  if (seconds)
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
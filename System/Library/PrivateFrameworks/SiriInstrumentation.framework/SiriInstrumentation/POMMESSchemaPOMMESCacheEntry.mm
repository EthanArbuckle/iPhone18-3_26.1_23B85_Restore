@interface POMMESSchemaPOMMESCacheEntry
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (POMMESSchemaPOMMESCacheEntry)initWithDictionary:(id)dictionary;
- (POMMESSchemaPOMMESCacheEntry)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasOrigin:(BOOL)origin;
- (void)setHasTimeToLiveInSeconds:(BOOL)seconds;
- (void)writeTo:(id)to;
@end

@implementation POMMESSchemaPOMMESCacheEntry

- (POMMESSchemaPOMMESCacheEntry)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = POMMESSchemaPOMMESCacheEntry;
  v5 = [(POMMESSchemaPOMMESCacheEntry *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"pegasusDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(POMMESSchemaPOMMESCacheEntry *)v5 setPegasusDomain:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"sizeInBytes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESCacheEntry setSizeInBytes:](v5, "setSizeInBytes:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"timeToLiveInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESCacheEntry setTimeToLiveInSeconds:](v5, "setTimeToLiveInSeconds:", [v9 unsignedIntValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"origin"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESCacheEntry setOrigin:](v5, "setOrigin:", [v10 intValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (POMMESSchemaPOMMESCacheEntry)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(POMMESSchemaPOMMESCacheEntry *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(POMMESSchemaPOMMESCacheEntry *)self dictionaryRepresentation];
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
  if ((*&self->_has & 4) != 0)
  {
    origin = [(POMMESSchemaPOMMESCacheEntry *)self origin];
    v5 = @"POMMESCACHEENTRYORIGIN_UNKNOWN";
    if (origin == 1)
    {
      v5 = @"POMMESCACHEENTRYORIGIN_SIRI_REQUEST";
    }

    if (origin == 2)
    {
      v6 = @"POMMESCACHEENTRYORIGIN_PREPOPULATION";
    }

    else
    {
      v6 = v5;
    }

    [dictionary setObject:v6 forKeyedSubscript:@"origin"];
  }

  if (self->_pegasusDomain)
  {
    pegasusDomain = [(POMMESSchemaPOMMESCacheEntry *)self pegasusDomain];
    v8 = [pegasusDomain copy];
    [dictionary setObject:v8 forKeyedSubscript:@"pegasusDomain"];
  }

  has = self->_has;
  if (has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[POMMESSchemaPOMMESCacheEntry sizeInBytes](self, "sizeInBytes")}];
    [dictionary setObject:v10 forKeyedSubscript:@"sizeInBytes"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[POMMESSchemaPOMMESCacheEntry timeToLiveInSeconds](self, "timeToLiveInSeconds")}];
    [dictionary setObject:v11 forKeyedSubscript:@"timeToLiveInSeconds"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_pegasusDomain hash];
  if ((*&self->_has & 1) == 0)
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v4 = 2654435761 * self->_sizeInBytes;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = 2654435761 * self->_timeToLiveInSeconds;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v6 = 2654435761 * self->_origin;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  pegasusDomain = [(POMMESSchemaPOMMESCacheEntry *)self pegasusDomain];
  pegasusDomain2 = [equalCopy pegasusDomain];
  v7 = pegasusDomain2;
  if ((pegasusDomain != 0) == (pegasusDomain2 == 0))
  {

    goto LABEL_20;
  }

  pegasusDomain3 = [(POMMESSchemaPOMMESCacheEntry *)self pegasusDomain];
  if (pegasusDomain3)
  {
    v9 = pegasusDomain3;
    pegasusDomain4 = [(POMMESSchemaPOMMESCacheEntry *)self pegasusDomain];
    pegasusDomain5 = [equalCopy pegasusDomain];
    v12 = [pegasusDomain4 isEqual:pegasusDomain5];

    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = equalCopy[28];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_20:
    v20 = 0;
    goto LABEL_21;
  }

  if (*&has)
  {
    sizeInBytes = self->_sizeInBytes;
    if (sizeInBytes != [equalCopy sizeInBytes])
    {
      goto LABEL_20;
    }

    has = self->_has;
    v14 = equalCopy[28];
  }

  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_20;
  }

  if (v16)
  {
    timeToLiveInSeconds = self->_timeToLiveInSeconds;
    if (timeToLiveInSeconds == [equalCopy timeToLiveInSeconds])
    {
      has = self->_has;
      v14 = equalCopy[28];
      goto LABEL_16;
    }

    goto LABEL_20;
  }

LABEL_16:
  v18 = (*&has >> 2) & 1;
  if (v18 != ((v14 >> 2) & 1))
  {
    goto LABEL_20;
  }

  if (v18)
  {
    origin = self->_origin;
    if (origin != [equalCopy origin])
    {
      goto LABEL_20;
    }
  }

  v20 = 1;
LABEL_21:

  return v20;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  pegasusDomain = [(POMMESSchemaPOMMESCacheEntry *)self pegasusDomain];

  if (pegasusDomain)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  v6 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    v6 = toCopy;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    v6 = toCopy;
  }
}

- (void)setHasOrigin:(BOOL)origin
{
  if (origin)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasTimeToLiveInSeconds:(BOOL)seconds
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
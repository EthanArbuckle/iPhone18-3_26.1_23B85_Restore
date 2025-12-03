@interface POMMESSchemaPOMMESCacheStoringStarted
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (POMMESSchemaPOMMESCacheStoringStarted)initWithDictionary:(id)dictionary;
- (POMMESSchemaPOMMESCacheStoringStarted)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasTimeToLiveInSeconds:(BOOL)seconds;
- (void)writeTo:(id)to;
@end

@implementation POMMESSchemaPOMMESCacheStoringStarted

- (POMMESSchemaPOMMESCacheStoringStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = POMMESSchemaPOMMESCacheStoringStarted;
  v5 = [(POMMESSchemaPOMMESCacheStoringStarted *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"entry"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[POMMESSchemaPOMMESCacheEntry alloc] initWithDictionary:v6];
      [(POMMESSchemaPOMMESCacheStoringStarted *)v5 setEntry:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"resultDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(POMMESSchemaPOMMESCacheStoringStarted *)v5 setResultDomain:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"resultSizeInBytes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESCacheStoringStarted setResultSizeInBytes:](v5, "setResultSizeInBytes:", [v10 unsignedIntValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"timeToLiveInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESCacheStoringStarted setTimeToLiveInSeconds:](v5, "setTimeToLiveInSeconds:", [v11 unsignedIntValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (POMMESSchemaPOMMESCacheStoringStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(POMMESSchemaPOMMESCacheStoringStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(POMMESSchemaPOMMESCacheStoringStarted *)self dictionaryRepresentation];
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
  if (self->_entry)
  {
    entry = [(POMMESSchemaPOMMESCacheStoringStarted *)self entry];
    dictionaryRepresentation = [entry dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"entry"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"entry"];
    }
  }

  if (self->_resultDomain)
  {
    resultDomain = [(POMMESSchemaPOMMESCacheStoringStarted *)self resultDomain];
    v8 = [resultDomain copy];
    [dictionary setObject:v8 forKeyedSubscript:@"resultDomain"];
  }

  has = self->_has;
  if (has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[POMMESSchemaPOMMESCacheStoringStarted resultSizeInBytes](self, "resultSizeInBytes")}];
    [dictionary setObject:v10 forKeyedSubscript:@"resultSizeInBytes"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[POMMESSchemaPOMMESCacheStoringStarted timeToLiveInSeconds](self, "timeToLiveInSeconds")}];
    [dictionary setObject:v11 forKeyedSubscript:@"timeToLiveInSeconds"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(POMMESSchemaPOMMESCacheEntry *)self->_entry hash];
  v4 = [(NSString *)self->_resultDomain hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_resultSizeInBytes;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = 2654435761 * self->_timeToLiveInSeconds;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  entry = [(POMMESSchemaPOMMESCacheStoringStarted *)self entry];
  entry2 = [equalCopy entry];
  if ((entry != 0) == (entry2 == 0))
  {
    goto LABEL_11;
  }

  entry3 = [(POMMESSchemaPOMMESCacheStoringStarted *)self entry];
  if (entry3)
  {
    v8 = entry3;
    entry4 = [(POMMESSchemaPOMMESCacheStoringStarted *)self entry];
    entry5 = [equalCopy entry];
    v11 = [entry4 isEqual:entry5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  entry = [(POMMESSchemaPOMMESCacheStoringStarted *)self resultDomain];
  entry2 = [equalCopy resultDomain];
  if ((entry != 0) == (entry2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  resultDomain = [(POMMESSchemaPOMMESCacheStoringStarted *)self resultDomain];
  if (resultDomain)
  {
    v13 = resultDomain;
    resultDomain2 = [(POMMESSchemaPOMMESCacheStoringStarted *)self resultDomain];
    resultDomain3 = [equalCopy resultDomain];
    v16 = [resultDomain2 isEqual:resultDomain3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  has = self->_has;
  v20 = equalCopy[32];
  if ((*&has & 1) == (v20 & 1))
  {
    if (*&has)
    {
      resultSizeInBytes = self->_resultSizeInBytes;
      if (resultSizeInBytes != [equalCopy resultSizeInBytes])
      {
        goto LABEL_12;
      }

      has = self->_has;
      v20 = equalCopy[32];
    }

    v22 = (*&has >> 1) & 1;
    if (v22 == ((v20 >> 1) & 1))
    {
      if (!v22 || (timeToLiveInSeconds = self->_timeToLiveInSeconds, timeToLiveInSeconds == [equalCopy timeToLiveInSeconds]))
      {
        v17 = 1;
        goto LABEL_13;
      }
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  entry = [(POMMESSchemaPOMMESCacheStoringStarted *)self entry];

  if (entry)
  {
    entry2 = [(POMMESSchemaPOMMESCacheStoringStarted *)self entry];
    PBDataWriterWriteSubmessage();
  }

  resultDomain = [(POMMESSchemaPOMMESCacheStoringStarted *)self resultDomain];

  if (resultDomain)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  v8 = toCopy;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    v8 = toCopy;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    v8 = toCopy;
  }
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

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = POMMESSchemaPOMMESCacheStoringStarted;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(POMMESSchemaPOMMESCacheStoringStarted *)self entry:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(POMMESSchemaPOMMESCacheStoringStarted *)self deleteEntry];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end
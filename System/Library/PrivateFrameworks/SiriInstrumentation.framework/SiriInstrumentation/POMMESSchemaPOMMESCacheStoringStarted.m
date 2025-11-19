@interface POMMESSchemaPOMMESCacheStoringStarted
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (POMMESSchemaPOMMESCacheStoringStarted)initWithDictionary:(id)a3;
- (POMMESSchemaPOMMESCacheStoringStarted)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasTimeToLiveInSeconds:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation POMMESSchemaPOMMESCacheStoringStarted

- (POMMESSchemaPOMMESCacheStoringStarted)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = POMMESSchemaPOMMESCacheStoringStarted;
  v5 = [(POMMESSchemaPOMMESCacheStoringStarted *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"entry"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[POMMESSchemaPOMMESCacheEntry alloc] initWithDictionary:v6];
      [(POMMESSchemaPOMMESCacheStoringStarted *)v5 setEntry:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"resultDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(POMMESSchemaPOMMESCacheStoringStarted *)v5 setResultDomain:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"resultSizeInBytes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESCacheStoringStarted setResultSizeInBytes:](v5, "setResultSizeInBytes:", [v10 unsignedIntValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"timeToLiveInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESCacheStoringStarted setTimeToLiveInSeconds:](v5, "setTimeToLiveInSeconds:", [v11 unsignedIntValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (POMMESSchemaPOMMESCacheStoringStarted)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(POMMESSchemaPOMMESCacheStoringStarted *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(POMMESSchemaPOMMESCacheStoringStarted *)self dictionaryRepresentation];
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
  if (self->_entry)
  {
    v4 = [(POMMESSchemaPOMMESCacheStoringStarted *)self entry];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"entry"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"entry"];
    }
  }

  if (self->_resultDomain)
  {
    v7 = [(POMMESSchemaPOMMESCacheStoringStarted *)self resultDomain];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"resultDomain"];
  }

  has = self->_has;
  if (has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[POMMESSchemaPOMMESCacheStoringStarted resultSizeInBytes](self, "resultSizeInBytes")}];
    [v3 setObject:v10 forKeyedSubscript:@"resultSizeInBytes"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[POMMESSchemaPOMMESCacheStoringStarted timeToLiveInSeconds](self, "timeToLiveInSeconds")}];
    [v3 setObject:v11 forKeyedSubscript:@"timeToLiveInSeconds"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(POMMESSchemaPOMMESCacheStoringStarted *)self entry];
  v6 = [v4 entry];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(POMMESSchemaPOMMESCacheStoringStarted *)self entry];
  if (v7)
  {
    v8 = v7;
    v9 = [(POMMESSchemaPOMMESCacheStoringStarted *)self entry];
    v10 = [v4 entry];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(POMMESSchemaPOMMESCacheStoringStarted *)self resultDomain];
  v6 = [v4 resultDomain];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(POMMESSchemaPOMMESCacheStoringStarted *)self resultDomain];
  if (v12)
  {
    v13 = v12;
    v14 = [(POMMESSchemaPOMMESCacheStoringStarted *)self resultDomain];
    v15 = [v4 resultDomain];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  has = self->_has;
  v20 = v4[32];
  if ((*&has & 1) == (v20 & 1))
  {
    if (*&has)
    {
      resultSizeInBytes = self->_resultSizeInBytes;
      if (resultSizeInBytes != [v4 resultSizeInBytes])
      {
        goto LABEL_12;
      }

      has = self->_has;
      v20 = v4[32];
    }

    v22 = (*&has >> 1) & 1;
    if (v22 == ((v20 >> 1) & 1))
    {
      if (!v22 || (timeToLiveInSeconds = self->_timeToLiveInSeconds, timeToLiveInSeconds == [v4 timeToLiveInSeconds]))
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

- (void)writeTo:(id)a3
{
  v9 = a3;
  v4 = [(POMMESSchemaPOMMESCacheStoringStarted *)self entry];

  if (v4)
  {
    v5 = [(POMMESSchemaPOMMESCacheStoringStarted *)self entry];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(POMMESSchemaPOMMESCacheStoringStarted *)self resultDomain];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  v8 = v9;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    v8 = v9;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    v8 = v9;
  }
}

- (void)setHasTimeToLiveInSeconds:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = POMMESSchemaPOMMESCacheStoringStarted;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(POMMESSchemaPOMMESCacheStoringStarted *)self entry:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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
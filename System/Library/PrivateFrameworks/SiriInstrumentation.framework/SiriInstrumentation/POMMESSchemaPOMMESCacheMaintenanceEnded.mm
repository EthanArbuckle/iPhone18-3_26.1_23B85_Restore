@interface POMMESSchemaPOMMESCacheMaintenanceEnded
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (POMMESSchemaPOMMESCacheMaintenanceEnded)initWithDictionary:(id)dictionary;
- (POMMESSchemaPOMMESCacheMaintenanceEnded)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasReason:(BOOL)reason;
- (void)setHasTimeSinceMaintenanceStartedInSeconds:(BOOL)seconds;
- (void)setHasTotalCacheEntries:(BOOL)entries;
- (void)writeTo:(id)to;
@end

@implementation POMMESSchemaPOMMESCacheMaintenanceEnded

- (POMMESSchemaPOMMESCacheMaintenanceEnded)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = POMMESSchemaPOMMESCacheMaintenanceEnded;
  v5 = [(POMMESSchemaPOMMESCacheMaintenanceEnded *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"numberOfEntriesUpdated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESCacheMaintenanceEnded setNumberOfEntriesUpdated:](v5, "setNumberOfEntriesUpdated:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"totalCacheEntries"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESCacheMaintenanceEnded setTotalCacheEntries:](v5, "setTotalCacheEntries:", [v7 unsignedIntValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"timeSinceMaintenanceStartedInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESCacheMaintenanceEnded setTimeSinceMaintenanceStartedInSeconds:](v5, "setTimeSinceMaintenanceStartedInSeconds:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"reason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESCacheMaintenanceEnded setReason:](v5, "setReason:", [v9 intValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (POMMESSchemaPOMMESCacheMaintenanceEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(POMMESSchemaPOMMESCacheMaintenanceEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(POMMESSchemaPOMMESCacheMaintenanceEnded *)self dictionaryRepresentation];
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
  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[POMMESSchemaPOMMESCacheMaintenanceEnded numberOfEntriesUpdated](self, "numberOfEntriesUpdated")}];
    [dictionary setObject:v7 forKeyedSubscript:@"numberOfEntriesUpdated"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  reason = [(POMMESSchemaPOMMESCacheMaintenanceEnded *)self reason];
  v9 = @"POMMESCACHEMAINTENANCEENDEDREASON_UNKNOWN";
  if (reason == 1)
  {
    v9 = @"POMMESCACHEMAINTENANCEENDEDREASON_COMPLETE";
  }

  if (reason == 2)
  {
    v10 = @"POMMESCACHEMAINTENANCEENDEDREASON_DEFERRED";
  }

  else
  {
    v10 = v9;
  }

  [dictionary setObject:v10 forKeyedSubscript:@"reason"];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_16:
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[POMMESSchemaPOMMESCacheMaintenanceEnded timeSinceMaintenanceStartedInSeconds](self, "timeSinceMaintenanceStartedInSeconds")}];
  [dictionary setObject:v11 forKeyedSubscript:@"timeSinceMaintenanceStartedInSeconds"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[POMMESSchemaPOMMESCacheMaintenanceEnded totalCacheEntries](self, "totalCacheEntries")}];
    [dictionary setObject:v5 forKeyedSubscript:@"totalCacheEntries"];
  }

LABEL_6:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_numberOfEntriesUpdated;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_totalCacheEntries;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v4 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v5 = 0;
      return v3 ^ v2 ^ v4 ^ v5;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = 2654435761 * self->_timeSinceMaintenanceStartedInSeconds;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = 2654435761 * self->_reason;
  return v3 ^ v2 ^ v4 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  has = self->_has;
  v6 = equalCopy[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_18;
  }

  if (*&has)
  {
    numberOfEntriesUpdated = self->_numberOfEntriesUpdated;
    if (numberOfEntriesUpdated != [equalCopy numberOfEntriesUpdated])
    {
      goto LABEL_18;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_18;
  }

  if (v8)
  {
    totalCacheEntries = self->_totalCacheEntries;
    if (totalCacheEntries != [equalCopy totalCacheEntries])
    {
      goto LABEL_18;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_18;
  }

  if (v10)
  {
    timeSinceMaintenanceStartedInSeconds = self->_timeSinceMaintenanceStartedInSeconds;
    if (timeSinceMaintenanceStartedInSeconds == [equalCopy timeSinceMaintenanceStartedInSeconds])
    {
      has = self->_has;
      v6 = equalCopy[24];
      goto LABEL_14;
    }

LABEL_18:
    v14 = 0;
    goto LABEL_19;
  }

LABEL_14:
  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_18;
  }

  if (v12)
  {
    reason = self->_reason;
    if (reason != [equalCopy reason])
    {
      goto LABEL_18;
    }
  }

  v14 = 1;
LABEL_19:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    PBDataWriterWriteInt32Field();
  }

LABEL_6:
}

- (void)setHasReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasTimeSinceMaintenanceStartedInSeconds:(BOOL)seconds
{
  if (seconds)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasTotalCacheEntries:(BOOL)entries
{
  if (entries)
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
@interface POMMESSchemaPOMMESCacheMaintenanceStarted
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (POMMESSchemaPOMMESCacheMaintenanceStarted)initWithDictionary:(id)dictionary;
- (POMMESSchemaPOMMESCacheMaintenanceStarted)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation POMMESSchemaPOMMESCacheMaintenanceStarted

- (POMMESSchemaPOMMESCacheMaintenanceStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = POMMESSchemaPOMMESCacheMaintenanceStarted;
  v5 = [(POMMESSchemaPOMMESCacheMaintenanceStarted *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"timeSinceLastMaintenanceInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESCacheMaintenanceStarted setTimeSinceLastMaintenanceInSeconds:](v5, "setTimeSinceLastMaintenanceInSeconds:", [v6 unsignedIntValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (POMMESSchemaPOMMESCacheMaintenanceStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(POMMESSchemaPOMMESCacheMaintenanceStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(POMMESSchemaPOMMESCacheMaintenanceStarted *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[POMMESSchemaPOMMESCacheMaintenanceStarted timeSinceLastMaintenanceInSeconds](self, "timeSinceLastMaintenanceInSeconds")}];
    [dictionary setObject:v4 forKeyedSubscript:@"timeSinceLastMaintenanceInSeconds"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_timeSinceLastMaintenanceInSeconds;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = 0;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[12] & 1))
    {
      if ((*&self->_has & 1) == 0 || (timeSinceLastMaintenanceInSeconds = self->_timeSinceLastMaintenanceInSeconds, timeSinceLastMaintenanceInSeconds == [equalCopy timeSinceLastMaintenanceInSeconds]))
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end
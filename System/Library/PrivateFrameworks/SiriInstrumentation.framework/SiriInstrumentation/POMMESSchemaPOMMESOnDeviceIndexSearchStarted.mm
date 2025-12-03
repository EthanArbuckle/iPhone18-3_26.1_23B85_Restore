@interface POMMESSchemaPOMMESOnDeviceIndexSearchStarted
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (POMMESSchemaPOMMESOnDeviceIndexSearchStarted)initWithDictionary:(id)dictionary;
- (POMMESSchemaPOMMESOnDeviceIndexSearchStarted)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation POMMESSchemaPOMMESOnDeviceIndexSearchStarted

- (POMMESSchemaPOMMESOnDeviceIndexSearchStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = POMMESSchemaPOMMESOnDeviceIndexSearchStarted;
  v5 = [(POMMESSchemaPOMMESOnDeviceIndexSearchStarted *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESOnDeviceIndexSearchStarted setName:](v5, "setName:", [v6 intValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (POMMESSchemaPOMMESOnDeviceIndexSearchStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(POMMESSchemaPOMMESOnDeviceIndexSearchStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(POMMESSchemaPOMMESOnDeviceIndexSearchStarted *)self dictionaryRepresentation];
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
    if ([(POMMESSchemaPOMMESOnDeviceIndexSearchStarted *)self name]== 1)
    {
      v4 = @"POMMESONDEVICEINDEXTYPE_MUSIC";
    }

    else
    {
      v4 = @"POMMESONDEVICEINDEXTYPE_UNKNOWN";
    }

    [dictionary setObject:v4 forKeyedSubscript:@"name"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_name;
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
      if ((*&self->_has & 1) == 0 || (name = self->_name, name == [equalCopy name]))
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
    PBDataWriterWriteInt32Field();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end
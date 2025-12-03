@interface STSchemaSTHallucinationDetectionStarted
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (STSchemaSTHallucinationDetectionStarted)initWithDictionary:(id)dictionary;
- (STSchemaSTHallucinationDetectionStarted)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation STSchemaSTHallucinationDetectionStarted

- (STSchemaSTHallucinationDetectionStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = STSchemaSTHallucinationDetectionStarted;
  v5 = [(STSchemaSTHallucinationDetectionStarted *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"hallucinationDetectionSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTHallucinationDetectionStarted setHallucinationDetectionSource:](v5, "setHallucinationDetectionSource:", [v6 intValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (STSchemaSTHallucinationDetectionStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(STSchemaSTHallucinationDetectionStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(STSchemaSTHallucinationDetectionStarted *)self dictionaryRepresentation];
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
    hallucinationDetectionSource = [(STSchemaSTHallucinationDetectionStarted *)self hallucinationDetectionSource];
    v5 = @"STHALLUCINATIONDETECTIONSOURCE_UNKNOWN";
    if (hallucinationDetectionSource == 1)
    {
      v5 = @"STHALLUCINATIONDETECTIONSOURCE_RULE_BASED";
    }

    if (hallucinationDetectionSource == 2)
    {
      v6 = @"STHALLUCINATIONDETECTIONSOURCE_MODEL";
    }

    else
    {
      v6 = v5;
    }

    [dictionary setObject:v6 forKeyedSubscript:@"hallucinationDetectionSource"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_hallucinationDetectionSource;
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
      if ((*&self->_has & 1) == 0 || (hallucinationDetectionSource = self->_hallucinationDetectionSource, hallucinationDetectionSource == [equalCopy hallucinationDetectionSource]))
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
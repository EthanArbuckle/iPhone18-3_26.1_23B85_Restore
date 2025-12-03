@interface NLXSchemaCDMClientSetupStarted
- (BOOL)isEqual:(id)equal;
- (NLXSchemaCDMClientSetupStarted)initWithDictionary:(id)dictionary;
- (NLXSchemaCDMClientSetupStarted)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasMemoryPressure:(BOOL)pressure;
- (void)setHasPerformWarmupOperations:(BOOL)operations;
- (void)setHasServiceGraphName:(BOOL)name;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaCDMClientSetupStarted

- (NLXSchemaCDMClientSetupStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = NLXSchemaCDMClientSetupStarted;
  v5 = [(NLXSchemaCDMClientSetupStarted *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMClientSetupStarted setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"serviceGraphName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMClientSetupStarted setServiceGraphName:](v5, "setServiceGraphName:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"performWarmupOperations"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMClientSetupStarted setPerformWarmupOperations:](v5, "setPerformWarmupOperations:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"memoryPressure"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMClientSetupStarted setMemoryPressure:](v5, "setMemoryPressure:", [v9 intValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (NLXSchemaCDMClientSetupStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaCDMClientSetupStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaCDMClientSetupStarted *)self dictionaryRepresentation];
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
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[NLXSchemaCDMClientSetupStarted exists](self, "exists")}];
    [dictionary setObject:v5 forKeyedSubscript:@"exists"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[NLXSchemaCDMClientSetupStarted performWarmupOperations](self, "performWarmupOperations")}];
      [dictionary setObject:v8 forKeyedSubscript:@"performWarmupOperations"];

      if ((*&self->_has & 2) == 0)
      {
        goto LABEL_16;
      }

LABEL_12:
      v9 = [(NLXSchemaCDMClientSetupStarted *)self serviceGraphName]- 1;
      if (v9 > 6)
      {
        v10 = @"CDMSERVICEGRAPHNAME_UNKNOWN";
      }

      else
      {
        v10 = off_1E78DB7F0[v9];
      }

      [dictionary setObject:v10 forKeyedSubscript:@"serviceGraphName"];
      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  v6 = [(NLXSchemaCDMClientSetupStarted *)self memoryPressure]- 1;
  if (v6 > 2)
  {
    v7 = @"CDMMEMORYPRESSURE_UNKNOWN";
  }

  else
  {
    v7 = off_1E78DB7D8[v6];
  }

  [dictionary setObject:v7 forKeyedSubscript:@"memoryPressure"];
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  if ((has & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_16:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_exists;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_serviceGraphName;
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
  v4 = 2654435761 * self->_performWarmupOperations;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = 2654435761 * self->_memoryPressure;
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
    exists = self->_exists;
    if (exists != [equalCopy exists])
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
    serviceGraphName = self->_serviceGraphName;
    if (serviceGraphName != [equalCopy serviceGraphName])
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
    performWarmupOperations = self->_performWarmupOperations;
    if (performWarmupOperations == [equalCopy performWarmupOperations])
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
    memoryPressure = self->_memoryPressure;
    if (memoryPressure != [equalCopy memoryPressure])
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
    PBDataWriterWriteBOOLField();
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

  PBDataWriterWriteInt32Field();
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
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    PBDataWriterWriteInt32Field();
  }

LABEL_6:
}

- (void)setHasMemoryPressure:(BOOL)pressure
{
  if (pressure)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasPerformWarmupOperations:(BOOL)operations
{
  if (operations)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasServiceGraphName:(BOOL)name
{
  if (name)
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
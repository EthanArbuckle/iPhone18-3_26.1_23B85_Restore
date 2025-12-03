@interface ORCHSchemaORCHVisionPowerState
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ORCHSchemaORCHVisionPowerState)initWithDictionary:(id)dictionary;
- (ORCHSchemaORCHVisionPowerState)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasThermalMitigationLevel:(BOOL)level;
- (void)writeTo:(id)to;
@end

@implementation ORCHSchemaORCHVisionPowerState

- (ORCHSchemaORCHVisionPowerState)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = ORCHSchemaORCHVisionPowerState;
  v5 = [(ORCHSchemaORCHVisionPowerState *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"blackboardUseCaseProfile"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHVisionPowerState setBlackboardUseCaseProfile:](v5, "setBlackboardUseCaseProfile:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"thermalMitigationLevel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHVisionPowerState setThermalMitigationLevel:](v5, "setThermalMitigationLevel:", [v7 intValue]);
    }

    v8 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHVisionPowerState)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHVisionPowerState *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ORCHSchemaORCHVisionPowerState *)self dictionaryRepresentation];
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
    v5 = [(ORCHSchemaORCHVisionPowerState *)self blackboardUseCaseProfile]- 1;
    if (v5 > 4)
    {
      v6 = @"ORCHBLACKBOARDUSECASEPROFILE_UNKNOWN";
    }

    else
    {
      v6 = off_1E78DF640[v5];
    }

    [dictionary setObject:v6 forKeyedSubscript:@"blackboardUseCaseProfile"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[ORCHSchemaORCHVisionPowerState thermalMitigationLevel](self, "thermalMitigationLevel")}];
    [dictionary setObject:v7 forKeyedSubscript:@"thermalMitigationLevel"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_blackboardUseCaseProfile;
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
  v3 = 2654435761 * self->_thermalMitigationLevel;
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
    blackboardUseCaseProfile = self->_blackboardUseCaseProfile;
    if (blackboardUseCaseProfile != [equalCopy blackboardUseCaseProfile])
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
    thermalMitigationLevel = self->_thermalMitigationLevel;
    if (thermalMitigationLevel != [equalCopy thermalMitigationLevel])
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
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }
}

- (void)setHasThermalMitigationLevel:(BOOL)level
{
  if (level)
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
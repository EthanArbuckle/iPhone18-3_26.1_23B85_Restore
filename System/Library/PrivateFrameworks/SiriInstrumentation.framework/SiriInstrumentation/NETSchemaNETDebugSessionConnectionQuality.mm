@interface NETSchemaNETDebugSessionConnectionQuality
- (BOOL)isEqual:(id)equal;
- (NETSchemaNETDebugSessionConnectionQuality)initWithDictionary:(id)dictionary;
- (NETSchemaNETDebugSessionConnectionQuality)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasSymptomsCellularInstant:(BOOL)instant;
- (void)setHasSymptomsWiFiHistorical:(BOOL)historical;
- (void)setHasSymptomsWiFiInstant:(BOOL)instant;
- (void)writeTo:(id)to;
@end

@implementation NETSchemaNETDebugSessionConnectionQuality

- (NETSchemaNETDebugSessionConnectionQuality)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = NETSchemaNETDebugSessionConnectionQuality;
  v5 = [(NETSchemaNETDebugSessionConnectionQuality *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"symptomsCellularHistorical"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETDebugSessionConnectionQuality setSymptomsCellularHistorical:](v5, "setSymptomsCellularHistorical:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"symptomsCellularInstant"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETDebugSessionConnectionQuality setSymptomsCellularInstant:](v5, "setSymptomsCellularInstant:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"symptomsWiFiHistorical"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETDebugSessionConnectionQuality setSymptomsWiFiHistorical:](v5, "setSymptomsWiFiHistorical:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"symptomsWiFiInstant"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETDebugSessionConnectionQuality setSymptomsWiFiInstant:](v5, "setSymptomsWiFiInstant:", [v9 intValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (NETSchemaNETDebugSessionConnectionQuality)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NETSchemaNETDebugSessionConnectionQuality *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NETSchemaNETDebugSessionConnectionQuality *)self dictionaryRepresentation];
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
    v5 = [(NETSchemaNETDebugSessionConnectionQuality *)self symptomsCellularHistorical]- 1;
    if (v5 > 2)
    {
      v6 = @"NETQUALITY_UNKNOWN";
    }

    else
    {
      v6 = off_1E78DB138[v5];
    }

    [dictionary setObject:v6 forKeyedSubscript:@"symptomsCellularHistorical"];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_14:
      v9 = [(NETSchemaNETDebugSessionConnectionQuality *)self symptomsWiFiHistorical]- 1;
      if (v9 > 2)
      {
        v10 = @"NETQUALITY_UNKNOWN";
      }

      else
      {
        v10 = off_1E78DB138[v9];
      }

      [dictionary setObject:v10 forKeyedSubscript:@"symptomsWiFiHistorical"];
      if ((*&self->_has & 8) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = [(NETSchemaNETDebugSessionConnectionQuality *)self symptomsCellularInstant]- 1;
  if (v7 > 2)
  {
    v8 = @"NETQUALITY_UNKNOWN";
  }

  else
  {
    v8 = off_1E78DB138[v7];
  }

  [dictionary setObject:v8 forKeyedSubscript:@"symptomsCellularInstant"];
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_4:
  if ((has & 8) != 0)
  {
LABEL_18:
    v11 = [(NETSchemaNETDebugSessionConnectionQuality *)self symptomsWiFiInstant]- 1;
    if (v11 > 2)
    {
      v12 = @"NETQUALITY_UNKNOWN";
    }

    else
    {
      v12 = off_1E78DB138[v11];
    }

    [dictionary setObject:v12 forKeyedSubscript:@"symptomsWiFiInstant"];
  }

LABEL_22:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_symptomsCellularHistorical;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_symptomsCellularInstant;
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
  v4 = 2654435761 * self->_symptomsWiFiHistorical;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = 2654435761 * self->_symptomsWiFiInstant;
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
    symptomsCellularHistorical = self->_symptomsCellularHistorical;
    if (symptomsCellularHistorical != [equalCopy symptomsCellularHistorical])
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
    symptomsCellularInstant = self->_symptomsCellularInstant;
    if (symptomsCellularInstant != [equalCopy symptomsCellularInstant])
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
    symptomsWiFiHistorical = self->_symptomsWiFiHistorical;
    if (symptomsWiFiHistorical == [equalCopy symptomsWiFiHistorical])
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
    symptomsWiFiInstant = self->_symptomsWiFiInstant;
    if (symptomsWiFiInstant != [equalCopy symptomsWiFiInstant])
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
    PBDataWriterWriteInt32Field();
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
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    PBDataWriterWriteInt32Field();
  }

LABEL_6:
}

- (void)setHasSymptomsWiFiInstant:(BOOL)instant
{
  if (instant)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasSymptomsWiFiHistorical:(BOOL)historical
{
  if (historical)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasSymptomsCellularInstant:(BOOL)instant
{
  if (instant)
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
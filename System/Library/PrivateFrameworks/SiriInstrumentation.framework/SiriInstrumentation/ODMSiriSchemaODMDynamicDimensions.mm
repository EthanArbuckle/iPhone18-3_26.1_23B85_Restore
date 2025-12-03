@interface ODMSiriSchemaODMDynamicDimensions
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODMSiriSchemaODMDynamicDimensions)initWithDictionary:(id)dictionary;
- (ODMSiriSchemaODMDynamicDimensions)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAudioInterface:(BOOL)interface;
- (void)setHasTaskAppBundleId:(BOOL)id;
- (void)setHasTaskType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation ODMSiriSchemaODMDynamicDimensions

- (ODMSiriSchemaODMDynamicDimensions)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = ODMSiriSchemaODMDynamicDimensions;
  v5 = [(ODMSiriSchemaODMDynamicDimensions *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"siriInputLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaISOLocale alloc] initWithDictionary:v6];
      [(ODMSiriSchemaODMDynamicDimensions *)v5 setSiriInputLocale:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"viewMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODMSiriSchemaODMDynamicDimensions setViewMode:](v5, "setViewMode:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"audioInterface"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODMSiriSchemaODMDynamicDimensions setAudioInterface:](v5, "setAudioInterface:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"taskType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODMSiriSchemaODMDynamicDimensions setTaskType:](v5, "setTaskType:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"taskAppBundleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODMSiriSchemaODMDynamicDimensions setTaskAppBundleId:](v5, "setTaskAppBundleId:", [v11 intValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (ODMSiriSchemaODMDynamicDimensions)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODMSiriSchemaODMDynamicDimensions *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODMSiriSchemaODMDynamicDimensions *)self dictionaryRepresentation];
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
  if ((*&self->_has & 2) != 0)
  {
    v4 = [(ODMSiriSchemaODMDynamicDimensions *)self audioInterface]- 1;
    if (v4 > 0xE)
    {
      v5 = @"AUDIOINPUTROUTE_UNKNOWN";
    }

    else
    {
      v5 = off_1E78DDF38[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"audioInterface"];
  }

  if (self->_siriInputLocale)
  {
    siriInputLocale = [(ODMSiriSchemaODMDynamicDimensions *)self siriInputLocale];
    dictionaryRepresentation = [siriInputLocale dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"siriInputLocale"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"siriInputLocale"];
    }
  }

  has = self->_has;
  if ((has & 8) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_13;
    }

LABEL_19:
    v12 = [(ODMSiriSchemaODMDynamicDimensions *)self taskType]- 1;
    if (v12 > 3)
    {
      v13 = @"ODMSIRITASKTYPE_UNKNOWN";
    }

    else
    {
      v13 = off_1E78DDFC8[v12];
    }

    [dictionary setObject:v13 forKeyedSubscript:@"taskType"];
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  v10 = [(ODMSiriSchemaODMDynamicDimensions *)self taskAppBundleId]- 1;
  if (v10 > 2)
  {
    v11 = @"ODMSIRITASKAPPBUNDLEID_UNKNOWN";
  }

  else
  {
    v11 = off_1E78DDFB0[v10];
  }

  [dictionary setObject:v11 forKeyedSubscript:@"taskAppBundleId"];
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_19;
  }

LABEL_13:
  if (has)
  {
LABEL_23:
    v14 = [(ODMSiriSchemaODMDynamicDimensions *)self viewMode]- 1;
    if (v14 > 6)
    {
      v15 = @"ODMSIRIUIVIEWMODE_UNKNOWN";
    }

    else
    {
      v15 = off_1E78DDFE8[v14];
    }

    [dictionary setObject:v15 forKeyedSubscript:@"viewMode"];
  }

LABEL_27:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaISOLocale *)self->_siriInputLocale hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_viewMode;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_audioInterface;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v6 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v7 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = 2654435761 * self->_taskType;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v7 = 2654435761 * self->_taskAppBundleId;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  siriInputLocale = [(ODMSiriSchemaODMDynamicDimensions *)self siriInputLocale];
  siriInputLocale2 = [equalCopy siriInputLocale];
  v7 = siriInputLocale2;
  if ((siriInputLocale != 0) == (siriInputLocale2 == 0))
  {

    goto LABEL_24;
  }

  siriInputLocale3 = [(ODMSiriSchemaODMDynamicDimensions *)self siriInputLocale];
  if (siriInputLocale3)
  {
    v9 = siriInputLocale3;
    siriInputLocale4 = [(ODMSiriSchemaODMDynamicDimensions *)self siriInputLocale];
    siriInputLocale5 = [equalCopy siriInputLocale];
    v12 = [siriInputLocale4 isEqual:siriInputLocale5];

    if (!v12)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = equalCopy[32];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_24:
    v22 = 0;
    goto LABEL_25;
  }

  if (*&has)
  {
    viewMode = self->_viewMode;
    if (viewMode != [equalCopy viewMode])
    {
      goto LABEL_24;
    }

    has = self->_has;
    v14 = equalCopy[32];
  }

  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_24;
  }

  if (v16)
  {
    audioInterface = self->_audioInterface;
    if (audioInterface != [equalCopy audioInterface])
    {
      goto LABEL_24;
    }

    has = self->_has;
    v14 = equalCopy[32];
  }

  v18 = (*&has >> 2) & 1;
  if (v18 != ((v14 >> 2) & 1))
  {
    goto LABEL_24;
  }

  if (v18)
  {
    taskType = self->_taskType;
    if (taskType == [equalCopy taskType])
    {
      has = self->_has;
      v14 = equalCopy[32];
      goto LABEL_20;
    }

    goto LABEL_24;
  }

LABEL_20:
  v20 = (*&has >> 3) & 1;
  if (v20 != ((v14 >> 3) & 1))
  {
    goto LABEL_24;
  }

  if (v20)
  {
    taskAppBundleId = self->_taskAppBundleId;
    if (taskAppBundleId != [equalCopy taskAppBundleId])
    {
      goto LABEL_24;
    }
  }

  v22 = 1;
LABEL_25:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  siriInputLocale = [(ODMSiriSchemaODMDynamicDimensions *)self siriInputLocale];

  if (siriInputLocale)
  {
    siriInputLocale2 = [(ODMSiriSchemaODMDynamicDimensions *)self siriInputLocale];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  v7 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v7 = toCopy;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteInt32Field();
  v7 = toCopy;
  if ((*&self->_has & 8) != 0)
  {
LABEL_8:
    PBDataWriterWriteInt32Field();
    v7 = toCopy;
  }

LABEL_9:
}

- (void)setHasTaskAppBundleId:(BOOL)id
{
  if (id)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasTaskType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasAudioInterface:(BOOL)interface
{
  if (interface)
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
  v9.super_class = ODMSiriSchemaODMDynamicDimensions;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ODMSiriSchemaODMDynamicDimensions *)self siriInputLocale:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(ODMSiriSchemaODMDynamicDimensions *)self deleteSiriInputLocale];
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
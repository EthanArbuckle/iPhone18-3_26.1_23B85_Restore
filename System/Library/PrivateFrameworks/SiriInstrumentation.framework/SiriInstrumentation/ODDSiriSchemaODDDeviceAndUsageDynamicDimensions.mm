@interface ODDSiriSchemaODDDeviceAndUsageDynamicDimensions
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODDSiriSchemaODDDeviceAndUsageDynamicDimensions)initWithDictionary:(id)a3;
- (ODDSiriSchemaODDDeviceAndUsageDynamicDimensions)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAppTaskType:(BOOL)a3;
- (void)setHasAudioInterface:(BOOL)a3;
- (void)setHasTaskAppBundleId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODDSiriSchemaODDDeviceAndUsageDynamicDimensions

- (ODDSiriSchemaODDDeviceAndUsageDynamicDimensions)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ODDSiriSchemaODDDeviceAndUsageDynamicDimensions;
  v5 = [(ODDSiriSchemaODDDeviceAndUsageDynamicDimensions *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"siriInputLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaISOLocale alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDDeviceAndUsageDynamicDimensions *)v5 setSiriInputLocale:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"viewInterface"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDDeviceAndUsageDynamicDimensions setViewInterface:](v5, "setViewInterface:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"audioInterface"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDDeviceAndUsageDynamicDimensions setAudioInterface:](v5, "setAudioInterface:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"appTaskType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDDeviceAndUsageDynamicDimensions setAppTaskType:](v5, "setAppTaskType:", [v10 intValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"taskAppBundleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDDeviceAndUsageDynamicDimensions setTaskAppBundleId:](v5, "setTaskAppBundleId:", [v11 intValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDDeviceAndUsageDynamicDimensions)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDDeviceAndUsageDynamicDimensions *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODDSiriSchemaODDDeviceAndUsageDynamicDimensions *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 4) != 0)
  {
    v5 = [(ODDSiriSchemaODDDeviceAndUsageDynamicDimensions *)self appTaskType]- 1;
    if (v5 > 3)
    {
      v6 = @"ODDAPPTASKTYPE_UNKNOWN";
    }

    else
    {
      v6 = off_1E78DD1F8[v5];
    }

    [v3 setObject:v6 forKeyedSubscript:@"appTaskType"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v7 = [(ODDSiriSchemaODDDeviceAndUsageDynamicDimensions *)self audioInterface]- 1;
    if (v7 > 0xE)
    {
      v8 = @"AUDIOINPUTROUTE_UNKNOWN";
    }

    else
    {
      v8 = off_1E78DD218[v7];
    }

    [v3 setObject:v8 forKeyedSubscript:@"audioInterface"];
  }

  if (self->_siriInputLocale)
  {
    v9 = [(ODDSiriSchemaODDDeviceAndUsageDynamicDimensions *)self siriInputLocale];
    v10 = [v9 dictionaryRepresentation];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"siriInputLocale"];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v11 forKeyedSubscript:@"siriInputLocale"];
    }
  }

  v12 = self->_has;
  if ((v12 & 8) != 0)
  {
    v13 = [(ODDSiriSchemaODDDeviceAndUsageDynamicDimensions *)self taskAppBundleId]- 1;
    if (v13 > 2)
    {
      v14 = @"ODDTASKAPPBUNDLEID_UNKNOWN";
    }

    else
    {
      v14 = off_1E78DD290[v13];
    }

    [v3 setObject:v14 forKeyedSubscript:@"taskAppBundleId"];
    v12 = self->_has;
  }

  if (v12)
  {
    v15 = [(ODDSiriSchemaODDDeviceAndUsageDynamicDimensions *)self viewInterface]- 1;
    if (v15 > 7)
    {
      v16 = @"ASSISTANTVIEWMODE_UNKNOWN";
    }

    else
    {
      v16 = off_1E78DD2A8[v15];
    }

    [v3 setObject:v16 forKeyedSubscript:@"viewInterface"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaISOLocale *)self->_siriInputLocale hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_viewInterface;
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
  v6 = 2654435761 * self->_appTaskType;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v7 = 2654435761 * self->_taskAppBundleId;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  v5 = [(ODDSiriSchemaODDDeviceAndUsageDynamicDimensions *)self siriInputLocale];
  v6 = [v4 siriInputLocale];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

    goto LABEL_24;
  }

  v8 = [(ODDSiriSchemaODDDeviceAndUsageDynamicDimensions *)self siriInputLocale];
  if (v8)
  {
    v9 = v8;
    v10 = [(ODDSiriSchemaODDDeviceAndUsageDynamicDimensions *)self siriInputLocale];
    v11 = [v4 siriInputLocale];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = v4[32];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_24:
    v22 = 0;
    goto LABEL_25;
  }

  if (*&has)
  {
    viewInterface = self->_viewInterface;
    if (viewInterface != [v4 viewInterface])
    {
      goto LABEL_24;
    }

    has = self->_has;
    v14 = v4[32];
  }

  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_24;
  }

  if (v16)
  {
    audioInterface = self->_audioInterface;
    if (audioInterface != [v4 audioInterface])
    {
      goto LABEL_24;
    }

    has = self->_has;
    v14 = v4[32];
  }

  v18 = (*&has >> 2) & 1;
  if (v18 != ((v14 >> 2) & 1))
  {
    goto LABEL_24;
  }

  if (v18)
  {
    appTaskType = self->_appTaskType;
    if (appTaskType == [v4 appTaskType])
    {
      has = self->_has;
      v14 = v4[32];
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
    if (taskAppBundleId != [v4 taskAppBundleId])
    {
      goto LABEL_24;
    }
  }

  v22 = 1;
LABEL_25:

  return v22;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(ODDSiriSchemaODDDeviceAndUsageDynamicDimensions *)self siriInputLocale];

  if (v4)
  {
    v5 = [(ODDSiriSchemaODDDeviceAndUsageDynamicDimensions *)self siriInputLocale];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  v7 = v8;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v7 = v8;
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
  v7 = v8;
  if ((*&self->_has & 8) != 0)
  {
LABEL_8:
    PBDataWriterWriteInt32Field();
    v7 = v8;
  }

LABEL_9:
}

- (void)setHasTaskAppBundleId:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasAppTaskType:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasAudioInterface:(BOOL)a3
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
  v9.super_class = ODDSiriSchemaODDDeviceAndUsageDynamicDimensions;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(ODDSiriSchemaODDDeviceAndUsageDynamicDimensions *)self siriInputLocale:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(ODDSiriSchemaODDDeviceAndUsageDynamicDimensions *)self deleteSiriInputLocale];
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
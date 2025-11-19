@interface ODMSiriSchemaODMDynamicDimensionsAll
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODMSiriSchemaODMDynamicDimensionsAll)initWithDictionary:(id)a3;
- (ODMSiriSchemaODMDynamicDimensionsAll)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAudioInterface:(BOOL)a3;
- (void)setHasProduct:(BOOL)a3;
- (void)setHasSiriAsrLocation:(BOOL)a3;
- (void)setHasSiriDataSharingOptInStatus:(BOOL)a3;
- (void)setHasSiriNlLocation:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODMSiriSchemaODMDynamicDimensionsAll

- (ODMSiriSchemaODMDynamicDimensionsAll)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = ODMSiriSchemaODMDynamicDimensionsAll;
  v5 = [(ODMSiriSchemaODMDynamicDimensionsAll *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"siriInputLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaISOLocale alloc] initWithDictionary:v6];
      [(ODMSiriSchemaODMDynamicDimensionsAll *)v5 setSiriInputLocale:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"viewMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODMSiriSchemaODMDynamicDimensionsAll setViewMode:](v5, "setViewMode:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"audioInterface"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODMSiriSchemaODMDynamicDimensionsAll setAudioInterface:](v5, "setAudioInterface:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"product"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODMSiriSchemaODMDynamicDimensionsAll setProduct:](v5, "setProduct:", [v10 intValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"siriAsrLocation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODMSiriSchemaODMDynamicDimensionsAll setSiriAsrLocation:](v5, "setSiriAsrLocation:", [v11 intValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"siriNlLocation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODMSiriSchemaODMDynamicDimensionsAll setSiriNlLocation:](v5, "setSiriNlLocation:", [v12 intValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"siriDataSharingOptInStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODMSiriSchemaODMDynamicDimensionsAll setSiriDataSharingOptInStatus:](v5, "setSiriDataSharingOptInStatus:", [v13 intValue]);
    }

    v14 = v5;
  }

  return v5;
}

- (ODMSiriSchemaODMDynamicDimensionsAll)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODMSiriSchemaODMDynamicDimensionsAll *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODMSiriSchemaODMDynamicDimensionsAll *)self dictionaryRepresentation];
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
  if ((has & 2) != 0)
  {
    v5 = [(ODMSiriSchemaODMDynamicDimensionsAll *)self audioInterface]- 1;
    if (v5 > 0xE)
    {
      v6 = @"AUDIOINPUTROUTE_UNKNOWN";
    }

    else
    {
      v6 = off_1E78DE020[v5];
    }

    [v3 setObject:v6 forKeyedSubscript:@"audioInterface"];
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v7 = [(ODMSiriSchemaODMDynamicDimensionsAll *)self product];
  v8 = @"PRODUCT_UNKNOWN";
  if (v7 == 1)
  {
    v8 = @"PRODUCT_ASSISTANT";
  }

  if (v7 == 2)
  {
    v9 = @"PRODUCT_DICTATION";
  }

  else
  {
    v9 = v8;
  }

  [v3 setObject:v9 forKeyedSubscript:@"product"];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

LABEL_16:
  v10 = [(ODMSiriSchemaODMDynamicDimensionsAll *)self siriAsrLocation];
  v11 = @"ORCHSIRIASRMODE_UNKNOWN";
  if (v10 == 1)
  {
    v11 = @"ORCHSIRIASRMODE_SERVER";
  }

  if (v10 == 2)
  {
    v12 = @"ORCHSIRIASRMODE_DEVICE";
  }

  else
  {
    v12 = v11;
  }

  [v3 setObject:v12 forKeyedSubscript:@"siriAsrLocation"];
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_22:
    v13 = [(ODMSiriSchemaODMDynamicDimensionsAll *)self siriDataSharingOptInStatus]- 1;
    if (v13 > 2)
    {
      v14 = @"UNKNOWN";
    }

    else
    {
      v14 = off_1E78DE098[v13];
    }

    [v3 setObject:v14 forKeyedSubscript:@"siriDataSharingOptInStatus"];
  }

LABEL_26:
  if (self->_siriInputLocale)
  {
    v15 = [(ODMSiriSchemaODMDynamicDimensionsAll *)self siriInputLocale];
    v16 = [v15 dictionaryRepresentation];
    if (v16)
    {
      [v3 setObject:v16 forKeyedSubscript:@"siriInputLocale"];
    }

    else
    {
      v17 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v17 forKeyedSubscript:@"siriInputLocale"];
    }
  }

  v18 = self->_has;
  if ((v18 & 0x10) != 0)
  {
    v19 = [(ODMSiriSchemaODMDynamicDimensionsAll *)self siriNlLocation];
    v20 = @"ORCHSIRINLMODE_UNKNOWN";
    if (v19 == 1)
    {
      v20 = @"ORCHSIRINLMODE_NLV3_SERVER";
    }

    if (v19 == 2)
    {
      v21 = @"ORCHSIRINLMODE_NLX_DEVICE";
    }

    else
    {
      v21 = v20;
    }

    [v3 setObject:v21 forKeyedSubscript:@"siriNlLocation"];
    v18 = self->_has;
  }

  if (v18)
  {
    v22 = [(ODMSiriSchemaODMDynamicDimensionsAll *)self viewMode]- 1;
    if (v22 > 6)
    {
      v23 = @"ODMSIRIUIVIEWMODE_UNKNOWN";
    }

    else
    {
      v23 = off_1E78DE0B0[v22];
    }

    [v3 setObject:v23 forKeyedSubscript:@"viewMode"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

      goto LABEL_10;
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
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v6 = 2654435761 * self->_product;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v6 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v7 = 2654435761 * self->_siriAsrLocation;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v8 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v9 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

LABEL_11:
  v7 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v8 = 2654435761 * self->_siriNlLocation;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v9 = 2654435761 * self->_siriDataSharingOptInStatus;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  v5 = [(ODMSiriSchemaODMDynamicDimensionsAll *)self siriInputLocale];
  v6 = [v4 siriInputLocale];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

    goto LABEL_32;
  }

  v8 = [(ODMSiriSchemaODMDynamicDimensionsAll *)self siriInputLocale];
  if (v8)
  {
    v9 = v8;
    v10 = [(ODMSiriSchemaODMDynamicDimensionsAll *)self siriInputLocale];
    v11 = [v4 siriInputLocale];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = v4[40];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_32:
    v26 = 0;
    goto LABEL_33;
  }

  if (*&has)
  {
    viewMode = self->_viewMode;
    if (viewMode != [v4 viewMode])
    {
      goto LABEL_32;
    }

    has = self->_has;
    v14 = v4[40];
  }

  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_32;
  }

  if (v16)
  {
    audioInterface = self->_audioInterface;
    if (audioInterface != [v4 audioInterface])
    {
      goto LABEL_32;
    }

    has = self->_has;
    v14 = v4[40];
  }

  v18 = (*&has >> 2) & 1;
  if (v18 != ((v14 >> 2) & 1))
  {
    goto LABEL_32;
  }

  if (v18)
  {
    product = self->_product;
    if (product != [v4 product])
    {
      goto LABEL_32;
    }

    has = self->_has;
    v14 = v4[40];
  }

  v20 = (*&has >> 3) & 1;
  if (v20 != ((v14 >> 3) & 1))
  {
    goto LABEL_32;
  }

  if (v20)
  {
    siriAsrLocation = self->_siriAsrLocation;
    if (siriAsrLocation != [v4 siriAsrLocation])
    {
      goto LABEL_32;
    }

    has = self->_has;
    v14 = v4[40];
  }

  v22 = (*&has >> 4) & 1;
  if (v22 != ((v14 >> 4) & 1))
  {
    goto LABEL_32;
  }

  if (v22)
  {
    siriNlLocation = self->_siriNlLocation;
    if (siriNlLocation == [v4 siriNlLocation])
    {
      has = self->_has;
      v14 = v4[40];
      goto LABEL_28;
    }

    goto LABEL_32;
  }

LABEL_28:
  v24 = (*&has >> 5) & 1;
  if (v24 != ((v14 >> 5) & 1))
  {
    goto LABEL_32;
  }

  if (v24)
  {
    siriDataSharingOptInStatus = self->_siriDataSharingOptInStatus;
    if (siriDataSharingOptInStatus != [v4 siriDataSharingOptInStatus])
    {
      goto LABEL_32;
    }
  }

  v26 = 1;
LABEL_33:

  return v26;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(ODMSiriSchemaODMDynamicDimensionsAll *)self siriInputLocale];

  if (v4)
  {
    v5 = [(ODMSiriSchemaODMDynamicDimensionsAll *)self siriInputLocale];
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
        goto LABEL_8;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteInt32Field();
  v7 = v8;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  PBDataWriterWriteInt32Field();
  v7 = v8;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_17:
  PBDataWriterWriteInt32Field();
  v7 = v8;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_10:
    PBDataWriterWriteInt32Field();
    v7 = v8;
  }

LABEL_11:
}

- (void)setHasSiriDataSharingOptInStatus:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasSiriNlLocation:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasSiriAsrLocation:(BOOL)a3
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

- (void)setHasProduct:(BOOL)a3
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
  v9.super_class = ODMSiriSchemaODMDynamicDimensionsAll;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(ODMSiriSchemaODMDynamicDimensionsAll *)self siriInputLocale:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(ODMSiriSchemaODMDynamicDimensionsAll *)self deleteSiriInputLocale];
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
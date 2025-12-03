@interface ODMSiriSchemaODMDynamicDimensionsAll
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODMSiriSchemaODMDynamicDimensionsAll)initWithDictionary:(id)dictionary;
- (ODMSiriSchemaODMDynamicDimensionsAll)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAudioInterface:(BOOL)interface;
- (void)setHasProduct:(BOOL)product;
- (void)setHasSiriAsrLocation:(BOOL)location;
- (void)setHasSiriDataSharingOptInStatus:(BOOL)status;
- (void)setHasSiriNlLocation:(BOOL)location;
- (void)writeTo:(id)to;
@end

@implementation ODMSiriSchemaODMDynamicDimensionsAll

- (ODMSiriSchemaODMDynamicDimensionsAll)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = ODMSiriSchemaODMDynamicDimensionsAll;
  v5 = [(ODMSiriSchemaODMDynamicDimensionsAll *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"siriInputLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaISOLocale alloc] initWithDictionary:v6];
      [(ODMSiriSchemaODMDynamicDimensionsAll *)v5 setSiriInputLocale:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"viewMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODMSiriSchemaODMDynamicDimensionsAll setViewMode:](v5, "setViewMode:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"audioInterface"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODMSiriSchemaODMDynamicDimensionsAll setAudioInterface:](v5, "setAudioInterface:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"product"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODMSiriSchemaODMDynamicDimensionsAll setProduct:](v5, "setProduct:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"siriAsrLocation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODMSiriSchemaODMDynamicDimensionsAll setSiriAsrLocation:](v5, "setSiriAsrLocation:", [v11 intValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"siriNlLocation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODMSiriSchemaODMDynamicDimensionsAll setSiriNlLocation:](v5, "setSiriNlLocation:", [v12 intValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"siriDataSharingOptInStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODMSiriSchemaODMDynamicDimensionsAll setSiriDataSharingOptInStatus:](v5, "setSiriDataSharingOptInStatus:", [v13 intValue]);
    }

    v14 = v5;
  }

  return v5;
}

- (ODMSiriSchemaODMDynamicDimensionsAll)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODMSiriSchemaODMDynamicDimensionsAll *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODMSiriSchemaODMDynamicDimensionsAll *)self dictionaryRepresentation];
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

    [dictionary setObject:v6 forKeyedSubscript:@"audioInterface"];
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

  product = [(ODMSiriSchemaODMDynamicDimensionsAll *)self product];
  v8 = @"PRODUCT_UNKNOWN";
  if (product == 1)
  {
    v8 = @"PRODUCT_ASSISTANT";
  }

  if (product == 2)
  {
    v9 = @"PRODUCT_DICTATION";
  }

  else
  {
    v9 = v8;
  }

  [dictionary setObject:v9 forKeyedSubscript:@"product"];
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
  siriAsrLocation = [(ODMSiriSchemaODMDynamicDimensionsAll *)self siriAsrLocation];
  v11 = @"ORCHSIRIASRMODE_UNKNOWN";
  if (siriAsrLocation == 1)
  {
    v11 = @"ORCHSIRIASRMODE_SERVER";
  }

  if (siriAsrLocation == 2)
  {
    v12 = @"ORCHSIRIASRMODE_DEVICE";
  }

  else
  {
    v12 = v11;
  }

  [dictionary setObject:v12 forKeyedSubscript:@"siriAsrLocation"];
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

    [dictionary setObject:v14 forKeyedSubscript:@"siriDataSharingOptInStatus"];
  }

LABEL_26:
  if (self->_siriInputLocale)
  {
    siriInputLocale = [(ODMSiriSchemaODMDynamicDimensionsAll *)self siriInputLocale];
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

  v18 = self->_has;
  if ((v18 & 0x10) != 0)
  {
    siriNlLocation = [(ODMSiriSchemaODMDynamicDimensionsAll *)self siriNlLocation];
    v20 = @"ORCHSIRINLMODE_UNKNOWN";
    if (siriNlLocation == 1)
    {
      v20 = @"ORCHSIRINLMODE_NLV3_SERVER";
    }

    if (siriNlLocation == 2)
    {
      v21 = @"ORCHSIRINLMODE_NLX_DEVICE";
    }

    else
    {
      v21 = v20;
    }

    [dictionary setObject:v21 forKeyedSubscript:@"siriNlLocation"];
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

    [dictionary setObject:v23 forKeyedSubscript:@"viewMode"];
  }

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  siriInputLocale = [(ODMSiriSchemaODMDynamicDimensionsAll *)self siriInputLocale];
  siriInputLocale2 = [equalCopy siriInputLocale];
  v7 = siriInputLocale2;
  if ((siriInputLocale != 0) == (siriInputLocale2 == 0))
  {

    goto LABEL_32;
  }

  siriInputLocale3 = [(ODMSiriSchemaODMDynamicDimensionsAll *)self siriInputLocale];
  if (siriInputLocale3)
  {
    v9 = siriInputLocale3;
    siriInputLocale4 = [(ODMSiriSchemaODMDynamicDimensionsAll *)self siriInputLocale];
    siriInputLocale5 = [equalCopy siriInputLocale];
    v12 = [siriInputLocale4 isEqual:siriInputLocale5];

    if (!v12)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = equalCopy[40];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_32:
    v26 = 0;
    goto LABEL_33;
  }

  if (*&has)
  {
    viewMode = self->_viewMode;
    if (viewMode != [equalCopy viewMode])
    {
      goto LABEL_32;
    }

    has = self->_has;
    v14 = equalCopy[40];
  }

  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_32;
  }

  if (v16)
  {
    audioInterface = self->_audioInterface;
    if (audioInterface != [equalCopy audioInterface])
    {
      goto LABEL_32;
    }

    has = self->_has;
    v14 = equalCopy[40];
  }

  v18 = (*&has >> 2) & 1;
  if (v18 != ((v14 >> 2) & 1))
  {
    goto LABEL_32;
  }

  if (v18)
  {
    product = self->_product;
    if (product != [equalCopy product])
    {
      goto LABEL_32;
    }

    has = self->_has;
    v14 = equalCopy[40];
  }

  v20 = (*&has >> 3) & 1;
  if (v20 != ((v14 >> 3) & 1))
  {
    goto LABEL_32;
  }

  if (v20)
  {
    siriAsrLocation = self->_siriAsrLocation;
    if (siriAsrLocation != [equalCopy siriAsrLocation])
    {
      goto LABEL_32;
    }

    has = self->_has;
    v14 = equalCopy[40];
  }

  v22 = (*&has >> 4) & 1;
  if (v22 != ((v14 >> 4) & 1))
  {
    goto LABEL_32;
  }

  if (v22)
  {
    siriNlLocation = self->_siriNlLocation;
    if (siriNlLocation == [equalCopy siriNlLocation])
    {
      has = self->_has;
      v14 = equalCopy[40];
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
    if (siriDataSharingOptInStatus != [equalCopy siriDataSharingOptInStatus])
    {
      goto LABEL_32;
    }
  }

  v26 = 1;
LABEL_33:

  return v26;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  siriInputLocale = [(ODMSiriSchemaODMDynamicDimensionsAll *)self siriInputLocale];

  if (siriInputLocale)
  {
    siriInputLocale2 = [(ODMSiriSchemaODMDynamicDimensionsAll *)self siriInputLocale];
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
  v7 = toCopy;
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
  v7 = toCopy;
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
  v7 = toCopy;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_10:
    PBDataWriterWriteInt32Field();
    v7 = toCopy;
  }

LABEL_11:
}

- (void)setHasSiriDataSharingOptInStatus:(BOOL)status
{
  if (status)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasSiriNlLocation:(BOOL)location
{
  if (location)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasSiriAsrLocation:(BOOL)location
{
  if (location)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasProduct:(BOOL)product
{
  if (product)
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
  v9.super_class = ODMSiriSchemaODMDynamicDimensionsAll;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ODMSiriSchemaODMDynamicDimensionsAll *)self siriInputLocale:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
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
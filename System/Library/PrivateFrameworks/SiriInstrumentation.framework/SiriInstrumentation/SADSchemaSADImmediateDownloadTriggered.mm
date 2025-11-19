@interface SADSchemaSADImmediateDownloadTriggered
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SADSchemaSADImmediateDownloadTriggered)initWithDictionary:(id)a3;
- (SADSchemaSADImmediateDownloadTriggered)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasExistingAssets:(BOOL)a3;
- (void)setHasRetryCount:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SADSchemaSADImmediateDownloadTriggered

- (SADSchemaSADImmediateDownloadTriggered)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SADSchemaSADImmediateDownloadTriggered;
  v5 = [(SADSchemaSADImmediateDownloadTriggered *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"locale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SADSchemaSADImmediateDownloadTriggered setLocale:](v5, "setLocale:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"existingAssets"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SADSchemaSADImmediateDownloadTriggered setExistingAssets:](v5, "setExistingAssets:", [v7 BOOLValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"retryCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SADSchemaSADImmediateDownloadTriggered setRetryCount:](v5, "setRetryCount:", [v8 unsignedIntValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (SADSchemaSADImmediateDownloadTriggered)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SADSchemaSADImmediateDownloadTriggered *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SADSchemaSADImmediateDownloadTriggered *)self dictionaryRepresentation];
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
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[SADSchemaSADImmediateDownloadTriggered existingAssets](self, "existingAssets")}];
    [v3 setObject:v7 forKeyedSubscript:@"existingAssets"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v8 = [(SADSchemaSADImmediateDownloadTriggered *)self locale]- 1;
  if (v8 > 0x3D)
  {
    v9 = @"LOCALE_UNKNOWN_LOCALE";
  }

  else
  {
    v9 = off_1E78E2408[v8];
  }

  [v3 setObject:v9 forKeyedSubscript:@"locale"];
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_4:
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SADSchemaSADImmediateDownloadTriggered retryCount](self, "retryCount")}];
  [v3 setObject:v5 forKeyedSubscript:@"retryCount"];

LABEL_5:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_locale;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_existingAssets;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_retryCount;
  return v3 ^ v2 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = v4[20];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    locale = self->_locale;
    if (locale != [v4 locale])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = v4[20];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    existingAssets = self->_existingAssets;
    if (existingAssets == [v4 existingAssets])
    {
      has = self->_has;
      v6 = v4[20];
      goto LABEL_10;
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

LABEL_10:
  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_14;
  }

  if (v10)
  {
    retryCount = self->_retryCount;
    if (retryCount != [v4 retryCount])
    {
      goto LABEL_14;
    }
  }

  v12 = 1;
LABEL_15:

  return v12;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v6 = v4;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    v4 = v6;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteBOOLField();
  v4 = v6;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteUint32Field();
    v4 = v6;
  }

LABEL_5:
}

- (void)setHasRetryCount:(BOOL)a3
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

- (void)setHasExistingAssets:(BOOL)a3
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

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end
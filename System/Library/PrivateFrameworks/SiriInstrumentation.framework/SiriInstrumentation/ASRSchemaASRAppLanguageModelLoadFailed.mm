@interface ASRSchemaASRAppLanguageModelLoadFailed
- (ASRSchemaASRAppLanguageModelLoadFailed)initWithDictionary:(id)a3;
- (ASRSchemaASRAppLanguageModelLoadFailed)initWithJSON:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasForegroundCheckTimeInNs:(BOOL)a3;
- (void)setHasLoadTimeInNs:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ASRSchemaASRAppLanguageModelLoadFailed

- (ASRSchemaASRAppLanguageModelLoadFailed)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ASRSchemaASRAppLanguageModelLoadFailed;
  v5 = [(ASRSchemaASRAppLanguageModelLoadFailed *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"reason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRAppLanguageModelLoadFailed setReason:](v5, "setReason:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"loadTimeInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRAppLanguageModelLoadFailed setLoadTimeInNs:](v5, "setLoadTimeInNs:", [v7 unsignedLongLongValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"foregroundCheckTimeInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRAppLanguageModelLoadFailed setForegroundCheckTimeInNs:](v5, "setForegroundCheckTimeInNs:", [v8 unsignedLongLongValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (ASRSchemaASRAppLanguageModelLoadFailed)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ASRSchemaASRAppLanguageModelLoadFailed *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ASRSchemaASRAppLanguageModelLoadFailed *)self dictionaryRepresentation];
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
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ASRSchemaASRAppLanguageModelLoadFailed loadTimeInNs](self, "loadTimeInNs")}];
    [v3 setObject:v6 forKeyedSubscript:@"loadTimeInNs"];

    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_7:
    v7 = [(ASRSchemaASRAppLanguageModelLoadFailed *)self reason]- 1;
    if (v7 > 5)
    {
      v8 = @"ASRAPPLANGUAGEMODELLOADFAILURE_REASON_UNKNOWN";
    }

    else
    {
      v8 = off_1E78D1708[v7];
    }

    [v3 setObject:v8 forKeyedSubscript:@"reason"];
    goto LABEL_11;
  }

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ASRSchemaASRAppLanguageModelLoadFailed foregroundCheckTimeInNs](self, "foregroundCheckTimeInNs")}];
  [v3 setObject:v5 forKeyedSubscript:@"foregroundCheckTimeInNs"];

  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (has)
  {
    goto LABEL_7;
  }

LABEL_11:
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

  v2 = 2654435761 * self->_reason;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761u * self->_loadTimeInNs;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761u * self->_foregroundCheckTimeInNs;
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
  v6 = v4[32];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    reason = self->_reason;
    if (reason != [v4 reason])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    loadTimeInNs = self->_loadTimeInNs;
    if (loadTimeInNs == [v4 loadTimeInNs])
    {
      has = self->_has;
      v6 = v4[32];
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
    foregroundCheckTimeInNs = self->_foregroundCheckTimeInNs;
    if (foregroundCheckTimeInNs != [v4 foregroundCheckTimeInNs])
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

  PBDataWriterWriteUint64Field();
  v4 = v6;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteUint64Field();
    v4 = v6;
  }

LABEL_5:
}

- (void)setHasForegroundCheckTimeInNs:(BOOL)a3
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

- (void)setHasLoadTimeInNs:(BOOL)a3
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
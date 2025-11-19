@interface CNVSchemaCNVIntentFinalExecutionEnded
- (BOOL)isEqual:(id)a3;
- (CNVSchemaCNVIntentFinalExecutionEnded)initWithDictionary:(id)a3;
- (CNVSchemaCNVIntentFinalExecutionEnded)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasBypassReason:(BOOL)a3;
- (void)setHasMaxRss:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CNVSchemaCNVIntentFinalExecutionEnded

- (CNVSchemaCNVIntentFinalExecutionEnded)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CNVSchemaCNVIntentFinalExecutionEnded;
  v5 = [(CNVSchemaCNVIntentFinalExecutionEnded *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eagerStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CNVSchemaCNVIntentFinalExecutionEnded setEagerStatus:](v5, "setEagerStatus:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"bypassReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CNVSchemaCNVIntentFinalExecutionEnded setBypassReason:](v5, "setBypassReason:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"maxRss"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CNVSchemaCNVIntentFinalExecutionEnded setMaxRss:](v5, "setMaxRss:", [v8 unsignedLongLongValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (CNVSchemaCNVIntentFinalExecutionEnded)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(CNVSchemaCNVIntentFinalExecutionEnded *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(CNVSchemaCNVIntentFinalExecutionEnded *)self dictionaryRepresentation];
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
    if ([(CNVSchemaCNVIntentFinalExecutionEnded *)self bypassReason]== 1)
    {
      v7 = @"CNVBYPASSREASON_EMERGENCY_CALL";
    }

    else
    {
      v7 = @"CNVBYPASSREASON_UNKNOWN";
    }

    [v3 setObject:v7 forKeyedSubscript:@"bypassReason"];
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

  v8 = [(CNVSchemaCNVIntentFinalExecutionEnded *)self eagerStatus]- 1;
  if (v8 > 2)
  {
    v9 = @"CNVEAGERSTATUS_UNKNOWN";
  }

  else
  {
    v9 = off_1E78D3088[v8];
  }

  [v3 setObject:v9 forKeyedSubscript:@"eagerStatus"];
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_4:
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[CNVSchemaCNVIntentFinalExecutionEnded maxRss](self, "maxRss")}];
  [v3 setObject:v5 forKeyedSubscript:@"maxRss"];

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

  v2 = 2654435761 * self->_eagerStatus;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_bypassReason;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761u * self->_maxRss;
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
  v6 = v4[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    eagerStatus = self->_eagerStatus;
    if (eagerStatus != [v4 eagerStatus])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = v4[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    bypassReason = self->_bypassReason;
    if (bypassReason == [v4 bypassReason])
    {
      has = self->_has;
      v6 = v4[24];
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
    maxRss = self->_maxRss;
    if (maxRss != [v4 maxRss])
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

  PBDataWriterWriteInt32Field();
  v4 = v6;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteUint64Field();
    v4 = v6;
  }

LABEL_5:
}

- (void)setHasMaxRss:(BOOL)a3
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

- (void)setHasBypassReason:(BOOL)a3
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
@interface SUGSchemaSUGEngagementMetricReported
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SUGSchemaSUGEngagementMetricReported)initWithDictionary:(id)a3;
- (SUGSchemaSUGEngagementMetricReported)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasConversionMetricType:(BOOL)a3;
- (void)setHasDaysBucketType:(BOOL)a3;
- (void)setHasHasConversion:(BOOL)a3;
- (void)setHasNumberOfActionsAfter:(BOOL)a3;
- (void)setHasNumberOfActionsBefore:(BOOL)a3;
- (void)setHasSecondsToConversion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SUGSchemaSUGEngagementMetricReported

- (SUGSchemaSUGEngagementMetricReported)initWithDictionary:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = SUGSchemaSUGEngagementMetricReported;
  v5 = [(SUGSchemaSUGEngagementMetricReported *)&v21 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"suggestionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SUGSchemaSUGEngagementMetricReported *)v5 setSuggestionId:v7];
    }

    v20 = v6;
    v8 = [v4 objectForKeyedSubscript:@"loggingActionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(SUGSchemaSUGEngagementMetricReported *)v5 setLoggingActionId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:{@"numberSuggestionShownBefore", v8}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGEngagementMetricReported setNumberSuggestionShownBefore:](v5, "setNumberSuggestionShownBefore:", [v10 unsignedIntValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"hasConversion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGEngagementMetricReported setHasConversion:](v5, "setHasConversion:", [v11 BOOLValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"secondsToConversion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGEngagementMetricReported setSecondsToConversion:](v5, "setSecondsToConversion:", [v12 unsignedIntValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"numberOfActionsBefore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGEngagementMetricReported setNumberOfActionsBefore:](v5, "setNumberOfActionsBefore:", [v13 unsignedIntValue]);
    }

    v14 = [v4 objectForKeyedSubscript:@"numberOfActionsAfter"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGEngagementMetricReported setNumberOfActionsAfter:](v5, "setNumberOfActionsAfter:", [v14 unsignedIntValue]);
    }

    v15 = [v4 objectForKeyedSubscript:@"daysBucketType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGEngagementMetricReported setDaysBucketType:](v5, "setDaysBucketType:", [v15 intValue]);
    }

    v16 = [v4 objectForKeyedSubscript:@"conversionMetricType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGEngagementMetricReported setConversionMetricType:](v5, "setConversionMetricType:", [v16 intValue]);
    }

    v17 = v5;
  }

  return v5;
}

- (SUGSchemaSUGEngagementMetricReported)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SUGSchemaSUGEngagementMetricReported *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SUGSchemaSUGEngagementMetricReported *)self dictionaryRepresentation];
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
  if ((has & 0x40) != 0)
  {
    v5 = [(SUGSchemaSUGEngagementMetricReported *)self conversionMetricType];
    v6 = @"SUGCONVERSIONMETRICTYPE_UNKNOWN";
    if (v5 == 1)
    {
      v6 = @"SUGCONVERSIONMETRICTYPE_CONVERTED";
    }

    if (v5 == 2)
    {
      v7 = @"SUGCONVERSIONMETRICTYPE_NOT_CONVERTED";
    }

    else
    {
      v7 = v6;
    }

    [v3 setObject:v7 forKeyedSubscript:@"conversionMetricType"];
    has = self->_has;
  }

  if ((has & 0x20) != 0)
  {
    v8 = [(SUGSchemaSUGEngagementMetricReported *)self daysBucketType]- 1;
    if (v8 > 3)
    {
      v9 = @"SUGENGAGEMENTMETRICDAYSBUCKET_UNKNOWN";
    }

    else
    {
      v9 = off_1E78E7B98[v8];
    }

    [v3 setObject:v9 forKeyedSubscript:@"daysBucketType"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[SUGSchemaSUGEngagementMetricReported hasConversion](self, "hasConversion")}];
    [v3 setObject:v10 forKeyedSubscript:@"hasConversion"];
  }

  if (self->_loggingActionId)
  {
    v11 = [(SUGSchemaSUGEngagementMetricReported *)self loggingActionId];
    v12 = [v11 copy];
    [v3 setObject:v12 forKeyedSubscript:@"loggingActionId"];
  }

  v13 = self->_has;
  if ((v13 & 0x10) != 0)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SUGSchemaSUGEngagementMetricReported numberOfActionsAfter](self, "numberOfActionsAfter")}];
    [v3 setObject:v18 forKeyedSubscript:@"numberOfActionsAfter"];

    v13 = self->_has;
    if ((v13 & 8) == 0)
    {
LABEL_19:
      if ((v13 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_29;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_19;
  }

  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SUGSchemaSUGEngagementMetricReported numberOfActionsBefore](self, "numberOfActionsBefore")}];
  [v3 setObject:v19 forKeyedSubscript:@"numberOfActionsBefore"];

  v13 = self->_has;
  if ((v13 & 1) == 0)
  {
LABEL_20:
    if ((v13 & 4) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_29:
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SUGSchemaSUGEngagementMetricReported numberSuggestionShownBefore](self, "numberSuggestionShownBefore")}];
  [v3 setObject:v20 forKeyedSubscript:@"numberSuggestionShownBefore"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_21:
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SUGSchemaSUGEngagementMetricReported secondsToConversion](self, "secondsToConversion")}];
    [v3 setObject:v14 forKeyedSubscript:@"secondsToConversion"];
  }

LABEL_22:
  if (self->_suggestionId)
  {
    v15 = [(SUGSchemaSUGEngagementMetricReported *)self suggestionId];
    v16 = [v15 copy];
    [v3 setObject:v16 forKeyedSubscript:@"suggestionId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_suggestionId hash];
  v4 = [(NSString *)self->_loggingActionId hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_numberSuggestionShownBefore;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v6 = 2654435761 * self->_hasConversion;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v7 = 2654435761 * self->_secondsToConversion;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v7 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v8 = 2654435761 * self->_numberOfActionsBefore;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v8 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    v9 = 2654435761 * self->_numberOfActionsAfter;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v10 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v11 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
  }

LABEL_13:
  v9 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v10 = 2654435761 * self->_daysBucketType;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v11 = 2654435761 * self->_conversionMetricType;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(SUGSchemaSUGEngagementMetricReported *)self suggestionId];
  v6 = [v4 suggestionId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(SUGSchemaSUGEngagementMetricReported *)self suggestionId];
  if (v7)
  {
    v8 = v7;
    v9 = [(SUGSchemaSUGEngagementMetricReported *)self suggestionId];
    v10 = [v4 suggestionId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(SUGSchemaSUGEngagementMetricReported *)self loggingActionId];
  v6 = [v4 loggingActionId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(SUGSchemaSUGEngagementMetricReported *)self loggingActionId];
  if (v12)
  {
    v13 = v12;
    v14 = [(SUGSchemaSUGEngagementMetricReported *)self loggingActionId];
    v15 = [v4 loggingActionId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  has = self->_has;
  v20 = v4[52];
  if ((*&has & 1) == (v20 & 1))
  {
    if (*&has)
    {
      numberSuggestionShownBefore = self->_numberSuggestionShownBefore;
      if (numberSuggestionShownBefore != [v4 numberSuggestionShownBefore])
      {
        goto LABEL_12;
      }

      has = self->_has;
      v20 = v4[52];
    }

    v22 = (*&has >> 1) & 1;
    if (v22 == ((v20 >> 1) & 1))
    {
      if (v22)
      {
        hasConversion = self->_hasConversion;
        if (hasConversion != [v4 hasConversion])
        {
          goto LABEL_12;
        }

        has = self->_has;
        v20 = v4[52];
      }

      v24 = (*&has >> 2) & 1;
      if (v24 == ((v20 >> 2) & 1))
      {
        if (v24)
        {
          secondsToConversion = self->_secondsToConversion;
          if (secondsToConversion != [v4 secondsToConversion])
          {
            goto LABEL_12;
          }

          has = self->_has;
          v20 = v4[52];
        }

        v26 = (*&has >> 3) & 1;
        if (v26 == ((v20 >> 3) & 1))
        {
          if (v26)
          {
            numberOfActionsBefore = self->_numberOfActionsBefore;
            if (numberOfActionsBefore != [v4 numberOfActionsBefore])
            {
              goto LABEL_12;
            }

            has = self->_has;
            v20 = v4[52];
          }

          v28 = (*&has >> 4) & 1;
          if (v28 == ((v20 >> 4) & 1))
          {
            if (v28)
            {
              numberOfActionsAfter = self->_numberOfActionsAfter;
              if (numberOfActionsAfter != [v4 numberOfActionsAfter])
              {
                goto LABEL_12;
              }

              has = self->_has;
              v20 = v4[52];
            }

            v30 = (*&has >> 5) & 1;
            if (v30 == ((v20 >> 5) & 1))
            {
              if (v30)
              {
                daysBucketType = self->_daysBucketType;
                if (daysBucketType != [v4 daysBucketType])
                {
                  goto LABEL_12;
                }

                has = self->_has;
                v20 = v4[52];
              }

              v32 = (*&has >> 6) & 1;
              if (v32 == ((v20 >> 6) & 1))
              {
                if (!v32 || (conversionMetricType = self->_conversionMetricType, conversionMetricType == [v4 conversionMetricType]))
                {
                  v17 = 1;
                  goto LABEL_13;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(SUGSchemaSUGEngagementMetricReported *)self suggestionId];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(SUGSchemaSUGEngagementMetricReported *)self loggingActionId];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  v7 = v8;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    v7 = v8;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteBOOLField();
  v7 = v8;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  PBDataWriterWriteUint32Field();
  v7 = v8;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  PBDataWriterWriteUint32Field();
  v7 = v8;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  PBDataWriterWriteUint32Field();
  v7 = v8;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_11:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_21:
  PBDataWriterWriteInt32Field();
  v7 = v8;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_12:
    PBDataWriterWriteInt32Field();
    v7 = v8;
  }

LABEL_13:
}

- (void)setHasConversionMetricType:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasDaysBucketType:(BOOL)a3
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

- (void)setHasNumberOfActionsAfter:(BOOL)a3
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

- (void)setHasNumberOfActionsBefore:(BOOL)a3
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

- (void)setHasSecondsToConversion:(BOOL)a3
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

- (void)setHasHasConversion:(BOOL)a3
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
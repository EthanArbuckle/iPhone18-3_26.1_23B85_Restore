@interface SUGSchemaSUGEngagementMetricReported
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SUGSchemaSUGEngagementMetricReported)initWithDictionary:(id)dictionary;
- (SUGSchemaSUGEngagementMetricReported)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasConversionMetricType:(BOOL)type;
- (void)setHasDaysBucketType:(BOOL)type;
- (void)setHasHasConversion:(BOOL)conversion;
- (void)setHasNumberOfActionsAfter:(BOOL)after;
- (void)setHasNumberOfActionsBefore:(BOOL)before;
- (void)setHasSecondsToConversion:(BOOL)conversion;
- (void)writeTo:(id)to;
@end

@implementation SUGSchemaSUGEngagementMetricReported

- (SUGSchemaSUGEngagementMetricReported)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v21.receiver = self;
  v21.super_class = SUGSchemaSUGEngagementMetricReported;
  v5 = [(SUGSchemaSUGEngagementMetricReported *)&v21 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"suggestionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SUGSchemaSUGEngagementMetricReported *)v5 setSuggestionId:v7];
    }

    v20 = v6;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"loggingActionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(SUGSchemaSUGEngagementMetricReported *)v5 setLoggingActionId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:{@"numberSuggestionShownBefore", v8}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGEngagementMetricReported setNumberSuggestionShownBefore:](v5, "setNumberSuggestionShownBefore:", [v10 unsignedIntValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"hasConversion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGEngagementMetricReported setHasConversion:](v5, "setHasConversion:", [v11 BOOLValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"secondsToConversion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGEngagementMetricReported setSecondsToConversion:](v5, "setSecondsToConversion:", [v12 unsignedIntValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"numberOfActionsBefore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGEngagementMetricReported setNumberOfActionsBefore:](v5, "setNumberOfActionsBefore:", [v13 unsignedIntValue]);
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"numberOfActionsAfter"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGEngagementMetricReported setNumberOfActionsAfter:](v5, "setNumberOfActionsAfter:", [v14 unsignedIntValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"daysBucketType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGEngagementMetricReported setDaysBucketType:](v5, "setDaysBucketType:", [v15 intValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"conversionMetricType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGEngagementMetricReported setConversionMetricType:](v5, "setConversionMetricType:", [v16 intValue]);
    }

    v17 = v5;
  }

  return v5;
}

- (SUGSchemaSUGEngagementMetricReported)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SUGSchemaSUGEngagementMetricReported *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SUGSchemaSUGEngagementMetricReported *)self dictionaryRepresentation];
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
  if ((has & 0x40) != 0)
  {
    conversionMetricType = [(SUGSchemaSUGEngagementMetricReported *)self conversionMetricType];
    v6 = @"SUGCONVERSIONMETRICTYPE_UNKNOWN";
    if (conversionMetricType == 1)
    {
      v6 = @"SUGCONVERSIONMETRICTYPE_CONVERTED";
    }

    if (conversionMetricType == 2)
    {
      v7 = @"SUGCONVERSIONMETRICTYPE_NOT_CONVERTED";
    }

    else
    {
      v7 = v6;
    }

    [dictionary setObject:v7 forKeyedSubscript:@"conversionMetricType"];
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

    [dictionary setObject:v9 forKeyedSubscript:@"daysBucketType"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[SUGSchemaSUGEngagementMetricReported hasConversion](self, "hasConversion")}];
    [dictionary setObject:v10 forKeyedSubscript:@"hasConversion"];
  }

  if (self->_loggingActionId)
  {
    loggingActionId = [(SUGSchemaSUGEngagementMetricReported *)self loggingActionId];
    v12 = [loggingActionId copy];
    [dictionary setObject:v12 forKeyedSubscript:@"loggingActionId"];
  }

  v13 = self->_has;
  if ((v13 & 0x10) != 0)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SUGSchemaSUGEngagementMetricReported numberOfActionsAfter](self, "numberOfActionsAfter")}];
    [dictionary setObject:v18 forKeyedSubscript:@"numberOfActionsAfter"];

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
  [dictionary setObject:v19 forKeyedSubscript:@"numberOfActionsBefore"];

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
  [dictionary setObject:v20 forKeyedSubscript:@"numberSuggestionShownBefore"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_21:
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SUGSchemaSUGEngagementMetricReported secondsToConversion](self, "secondsToConversion")}];
    [dictionary setObject:v14 forKeyedSubscript:@"secondsToConversion"];
  }

LABEL_22:
  if (self->_suggestionId)
  {
    suggestionId = [(SUGSchemaSUGEngagementMetricReported *)self suggestionId];
    v16 = [suggestionId copy];
    [dictionary setObject:v16 forKeyedSubscript:@"suggestionId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  suggestionId = [(SUGSchemaSUGEngagementMetricReported *)self suggestionId];
  suggestionId2 = [equalCopy suggestionId];
  if ((suggestionId != 0) == (suggestionId2 == 0))
  {
    goto LABEL_11;
  }

  suggestionId3 = [(SUGSchemaSUGEngagementMetricReported *)self suggestionId];
  if (suggestionId3)
  {
    v8 = suggestionId3;
    suggestionId4 = [(SUGSchemaSUGEngagementMetricReported *)self suggestionId];
    suggestionId5 = [equalCopy suggestionId];
    v11 = [suggestionId4 isEqual:suggestionId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  suggestionId = [(SUGSchemaSUGEngagementMetricReported *)self loggingActionId];
  suggestionId2 = [equalCopy loggingActionId];
  if ((suggestionId != 0) == (suggestionId2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  loggingActionId = [(SUGSchemaSUGEngagementMetricReported *)self loggingActionId];
  if (loggingActionId)
  {
    v13 = loggingActionId;
    loggingActionId2 = [(SUGSchemaSUGEngagementMetricReported *)self loggingActionId];
    loggingActionId3 = [equalCopy loggingActionId];
    v16 = [loggingActionId2 isEqual:loggingActionId3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  has = self->_has;
  v20 = equalCopy[52];
  if ((*&has & 1) == (v20 & 1))
  {
    if (*&has)
    {
      numberSuggestionShownBefore = self->_numberSuggestionShownBefore;
      if (numberSuggestionShownBefore != [equalCopy numberSuggestionShownBefore])
      {
        goto LABEL_12;
      }

      has = self->_has;
      v20 = equalCopy[52];
    }

    v22 = (*&has >> 1) & 1;
    if (v22 == ((v20 >> 1) & 1))
    {
      if (v22)
      {
        hasConversion = self->_hasConversion;
        if (hasConversion != [equalCopy hasConversion])
        {
          goto LABEL_12;
        }

        has = self->_has;
        v20 = equalCopy[52];
      }

      v24 = (*&has >> 2) & 1;
      if (v24 == ((v20 >> 2) & 1))
      {
        if (v24)
        {
          secondsToConversion = self->_secondsToConversion;
          if (secondsToConversion != [equalCopy secondsToConversion])
          {
            goto LABEL_12;
          }

          has = self->_has;
          v20 = equalCopy[52];
        }

        v26 = (*&has >> 3) & 1;
        if (v26 == ((v20 >> 3) & 1))
        {
          if (v26)
          {
            numberOfActionsBefore = self->_numberOfActionsBefore;
            if (numberOfActionsBefore != [equalCopy numberOfActionsBefore])
            {
              goto LABEL_12;
            }

            has = self->_has;
            v20 = equalCopy[52];
          }

          v28 = (*&has >> 4) & 1;
          if (v28 == ((v20 >> 4) & 1))
          {
            if (v28)
            {
              numberOfActionsAfter = self->_numberOfActionsAfter;
              if (numberOfActionsAfter != [equalCopy numberOfActionsAfter])
              {
                goto LABEL_12;
              }

              has = self->_has;
              v20 = equalCopy[52];
            }

            v30 = (*&has >> 5) & 1;
            if (v30 == ((v20 >> 5) & 1))
            {
              if (v30)
              {
                daysBucketType = self->_daysBucketType;
                if (daysBucketType != [equalCopy daysBucketType])
                {
                  goto LABEL_12;
                }

                has = self->_has;
                v20 = equalCopy[52];
              }

              v32 = (*&has >> 6) & 1;
              if (v32 == ((v20 >> 6) & 1))
              {
                if (!v32 || (conversionMetricType = self->_conversionMetricType, conversionMetricType == [equalCopy conversionMetricType]))
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

- (void)writeTo:(id)to
{
  toCopy = to;
  suggestionId = [(SUGSchemaSUGEngagementMetricReported *)self suggestionId];

  if (suggestionId)
  {
    PBDataWriterWriteStringField();
  }

  loggingActionId = [(SUGSchemaSUGEngagementMetricReported *)self loggingActionId];

  if (loggingActionId)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  v7 = toCopy;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    v7 = toCopy;
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
  v7 = toCopy;
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
  v7 = toCopy;
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
  v7 = toCopy;
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
  v7 = toCopy;
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
  v7 = toCopy;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_12:
    PBDataWriterWriteInt32Field();
    v7 = toCopy;
  }

LABEL_13:
}

- (void)setHasConversionMetricType:(BOOL)type
{
  if (type)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasDaysBucketType:(BOOL)type
{
  if (type)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasNumberOfActionsAfter:(BOOL)after
{
  if (after)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasNumberOfActionsBefore:(BOOL)before
{
  if (before)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasSecondsToConversion:(BOOL)conversion
{
  if (conversion)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasHasConversion:(BOOL)conversion
{
  if (conversion)
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
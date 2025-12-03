@interface SUGSchemaSUGInteraction
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SUGSchemaSUGInteraction)initWithDictionary:(id)dictionary;
- (SUGSchemaSUGInteraction)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasHasOccurredWithinHour:(BOOL)hour;
- (void)setHasRelatedSuggestionsShownCount:(BOOL)count;
- (void)setHasTriggerType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation SUGSchemaSUGInteraction

- (SUGSchemaSUGInteraction)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = SUGSchemaSUGInteraction;
  v5 = [(SUGSchemaSUGInteraction *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"relatedSuggestionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SUGSchemaSUGInteraction *)v5 setRelatedSuggestionId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"relatedSuggestionEventSequenceNum"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGInteraction setRelatedSuggestionEventSequenceNum:](v5, "setRelatedSuggestionEventSequenceNum:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"relatedSuggestionsShownCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGInteraction setRelatedSuggestionsShownCount:](v5, "setRelatedSuggestionsShownCount:", [v9 unsignedIntValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"hasOccurredWithinHour"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGInteraction setHasOccurredWithinHour:](v5, "setHasOccurredWithinHour:", [v10 BOOLValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"triggerType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGInteraction setTriggerType:](v5, "setTriggerType:", [v11 intValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (SUGSchemaSUGInteraction)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SUGSchemaSUGInteraction *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SUGSchemaSUGInteraction *)self dictionaryRepresentation];
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
  if ((has & 4) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[SUGSchemaSUGInteraction hasOccurredWithinHour](self, "hasOccurredWithinHour")}];
    [dictionary setObject:v5 forKeyedSubscript:@"hasOccurredWithinHour"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SUGSchemaSUGInteraction relatedSuggestionEventSequenceNum](self, "relatedSuggestionEventSequenceNum")}];
    [dictionary setObject:v6 forKeyedSubscript:@"relatedSuggestionEventSequenceNum"];
  }

  if (self->_relatedSuggestionId)
  {
    relatedSuggestionId = [(SUGSchemaSUGInteraction *)self relatedSuggestionId];
    v8 = [relatedSuggestionId copy];
    [dictionary setObject:v8 forKeyedSubscript:@"relatedSuggestionId"];
  }

  v9 = self->_has;
  if ((v9 & 2) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SUGSchemaSUGInteraction relatedSuggestionsShownCount](self, "relatedSuggestionsShownCount")}];
    [dictionary setObject:v10 forKeyedSubscript:@"relatedSuggestionsShownCount"];

    v9 = self->_has;
  }

  if ((v9 & 8) != 0)
  {
    triggerType = [(SUGSchemaSUGInteraction *)self triggerType];
    v12 = @"SUGTRIGGERTYPE_UNKNOWN";
    if (triggerType == 1)
    {
      v12 = @"SUGTRIGGERTYPE_HS";
    }

    if (triggerType == 2)
    {
      v13 = @"SUGTRIGGERTYPE_BUTTON";
    }

    else
    {
      v13 = v12;
    }

    [dictionary setObject:v13 forKeyedSubscript:@"triggerType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_relatedSuggestionId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_relatedSuggestionEventSequenceNum;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_relatedSuggestionsShownCount;
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
  v6 = 2654435761 * self->_hasOccurredWithinHour;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v7 = 2654435761 * self->_triggerType;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  relatedSuggestionId = [(SUGSchemaSUGInteraction *)self relatedSuggestionId];
  relatedSuggestionId2 = [equalCopy relatedSuggestionId];
  v7 = relatedSuggestionId2;
  if ((relatedSuggestionId != 0) == (relatedSuggestionId2 == 0))
  {

    goto LABEL_24;
  }

  relatedSuggestionId3 = [(SUGSchemaSUGInteraction *)self relatedSuggestionId];
  if (relatedSuggestionId3)
  {
    v9 = relatedSuggestionId3;
    relatedSuggestionId4 = [(SUGSchemaSUGInteraction *)self relatedSuggestionId];
    relatedSuggestionId5 = [equalCopy relatedSuggestionId];
    v12 = [relatedSuggestionId4 isEqual:relatedSuggestionId5];

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
    relatedSuggestionEventSequenceNum = self->_relatedSuggestionEventSequenceNum;
    if (relatedSuggestionEventSequenceNum != [equalCopy relatedSuggestionEventSequenceNum])
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
    relatedSuggestionsShownCount = self->_relatedSuggestionsShownCount;
    if (relatedSuggestionsShownCount != [equalCopy relatedSuggestionsShownCount])
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
    hasOccurredWithinHour = self->_hasOccurredWithinHour;
    if (hasOccurredWithinHour == [equalCopy hasOccurredWithinHour])
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
    triggerType = self->_triggerType;
    if (triggerType != [equalCopy triggerType])
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
  relatedSuggestionId = [(SUGSchemaSUGInteraction *)self relatedSuggestionId];

  if (relatedSuggestionId)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  v6 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    v6 = toCopy;
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

  PBDataWriterWriteBOOLField();
  v6 = toCopy;
  if ((*&self->_has & 8) != 0)
  {
LABEL_8:
    PBDataWriterWriteInt32Field();
    v6 = toCopy;
  }

LABEL_9:
}

- (void)setHasTriggerType:(BOOL)type
{
  if (type)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasHasOccurredWithinHour:(BOOL)hour
{
  if (hour)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasRelatedSuggestionsShownCount:(BOOL)count
{
  if (count)
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
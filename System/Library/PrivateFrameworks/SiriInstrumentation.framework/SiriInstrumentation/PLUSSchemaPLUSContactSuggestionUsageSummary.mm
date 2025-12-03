@interface PLUSSchemaPLUSContactSuggestionUsageSummary
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PLUSSchemaPLUSContactSuggestionUsageSummary)initWithDictionary:(id)dictionary;
- (PLUSSchemaPLUSContactSuggestionUsageSummary)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAbandonmentCount:(BOOL)count;
- (void)setHasActivationCount:(BOOL)count;
- (void)setHasAverageTimeBetweenActivationsInMs:(BOOL)ms;
- (void)setHasConfirmationSelectedCount:(BOOL)count;
- (void)setHasDisambiguationSelectedCount:(BOOL)count;
- (void)setHasDomain:(BOOL)domain;
- (void)setHasPresentationCount:(BOOL)count;
- (void)setHasTimeUntilFirstActivationInMs:(BOOL)ms;
- (void)writeTo:(id)to;
@end

@implementation PLUSSchemaPLUSContactSuggestionUsageSummary

- (PLUSSchemaPLUSContactSuggestionUsageSummary)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = PLUSSchemaPLUSContactSuggestionUsageSummary;
  v5 = [(PLUSSchemaPLUSContactSuggestionUsageSummary *)&v20 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"suggestionGenerationTimeSince1970InMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSContactSuggestionUsageSummary setSuggestionGenerationTimeSince1970InMs:](v5, "setSuggestionGenerationTimeSince1970InMs:", [v6 unsignedLongLongValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"timeUntilFirstActivationInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSContactSuggestionUsageSummary setTimeUntilFirstActivationInMs:](v5, "setTimeUntilFirstActivationInMs:", [v7 unsignedLongLongValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"averageTimeBetweenActivationsInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSContactSuggestionUsageSummary setAverageTimeBetweenActivationsInMs:](v5, "setAverageTimeBetweenActivationsInMs:", [v8 unsignedLongLongValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:{@"activationCount", v8}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSContactSuggestionUsageSummary setActivationCount:](v5, "setActivationCount:", [v9 unsignedIntValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"presentationCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSContactSuggestionUsageSummary setPresentationCount:](v5, "setPresentationCount:", [v10 unsignedIntValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"confirmationSelectedCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSContactSuggestionUsageSummary setConfirmationSelectedCount:](v5, "setConfirmationSelectedCount:", [v11 unsignedIntValue]);
    }

    v19 = v7;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"disambiguationSelectedCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSContactSuggestionUsageSummary setDisambiguationSelectedCount:](v5, "setDisambiguationSelectedCount:", [v12 unsignedIntValue]);
    }

    v13 = v6;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"abandonmentCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSContactSuggestionUsageSummary setAbandonmentCount:](v5, "setAbandonmentCount:", [v14 unsignedIntValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"domain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSContactSuggestionUsageSummary setDomain:](v5, "setDomain:", [v15 intValue]);
    }

    v16 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSContactSuggestionUsageSummary)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSContactSuggestionUsageSummary *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PLUSSchemaPLUSContactSuggestionUsageSummary *)self dictionaryRepresentation];
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
  if ((has & 0x80) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PLUSSchemaPLUSContactSuggestionUsageSummary abandonmentCount](self, "abandonmentCount")}];
    [dictionary setObject:v7 forKeyedSubscript:@"abandonmentCount"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PLUSSchemaPLUSContactSuggestionUsageSummary activationCount](self, "activationCount")}];
  [dictionary setObject:v8 forKeyedSubscript:@"activationCount"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[PLUSSchemaPLUSContactSuggestionUsageSummary averageTimeBetweenActivationsInMs](self, "averageTimeBetweenActivationsInMs")}];
  [dictionary setObject:v9 forKeyedSubscript:@"averageTimeBetweenActivationsInMs"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PLUSSchemaPLUSContactSuggestionUsageSummary confirmationSelectedCount](self, "confirmationSelectedCount")}];
  [dictionary setObject:v10 forKeyedSubscript:@"confirmationSelectedCount"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PLUSSchemaPLUSContactSuggestionUsageSummary disambiguationSelectedCount](self, "disambiguationSelectedCount")}];
  [dictionary setObject:v11 forKeyedSubscript:@"disambiguationSelectedCount"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_19:
  v12 = [(PLUSSchemaPLUSContactSuggestionUsageSummary *)self domain]- 1;
  if (v12 > 3)
  {
    v13 = @"PLUSINFERENCECONTACTDOMAIN_UNKNOWN";
  }

  else
  {
    v13 = off_1E78E06B8[v12];
  }

  [dictionary setObject:v13 forKeyedSubscript:@"domain"];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PLUSSchemaPLUSContactSuggestionUsageSummary presentationCount](self, "presentationCount")}];
  [dictionary setObject:v14 forKeyedSubscript:@"presentationCount"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_9:
    if ((has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_24:
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[PLUSSchemaPLUSContactSuggestionUsageSummary suggestionGenerationTimeSince1970InMs](self, "suggestionGenerationTimeSince1970InMs")}];
  [dictionary setObject:v15 forKeyedSubscript:@"suggestionGenerationTimeSince1970InMs"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_10:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[PLUSSchemaPLUSContactSuggestionUsageSummary timeUntilFirstActivationInMs](self, "timeUntilFirstActivationInMs")}];
    [dictionary setObject:v5 forKeyedSubscript:@"timeUntilFirstActivationInMs"];
  }

LABEL_11:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v3 = 2654435761u * self->_suggestionGenerationTimeSince1970InMs;
    if ((has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761u * self->_timeUntilFirstActivationInMs;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v3 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 4) != 0)
  {
LABEL_4:
    v5 = 2654435761u * self->_averageTimeBetweenActivationsInMs;
    if ((has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v5 = 0;
  if ((has & 8) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_activationCount;
    if ((has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_presentationCount;
    if ((has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v7 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_confirmationSelectedCount;
    if ((has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_disambiguationSelectedCount;
    if ((has & 0x80) != 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    v10 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_10;
    }

LABEL_19:
    v11 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
  }

LABEL_17:
  v9 = 0;
  if ((has & 0x80) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v10 = 2654435761 * self->_abandonmentCount;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_19;
  }

LABEL_10:
  v11 = 2654435761 * self->_domain;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_38;
  }

  has = self->_has;
  v6 = equalCopy[28];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_38;
  }

  if (*&has)
  {
    suggestionGenerationTimeSince1970InMs = self->_suggestionGenerationTimeSince1970InMs;
    if (suggestionGenerationTimeSince1970InMs != [equalCopy suggestionGenerationTimeSince1970InMs])
    {
      goto LABEL_38;
    }

    has = self->_has;
    v6 = equalCopy[28];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_38;
  }

  if (v8)
  {
    timeUntilFirstActivationInMs = self->_timeUntilFirstActivationInMs;
    if (timeUntilFirstActivationInMs != [equalCopy timeUntilFirstActivationInMs])
    {
      goto LABEL_38;
    }

    has = self->_has;
    v6 = equalCopy[28];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_38;
  }

  if (v10)
  {
    averageTimeBetweenActivationsInMs = self->_averageTimeBetweenActivationsInMs;
    if (averageTimeBetweenActivationsInMs != [equalCopy averageTimeBetweenActivationsInMs])
    {
      goto LABEL_38;
    }

    has = self->_has;
    v6 = equalCopy[28];
  }

  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_38;
  }

  if (v12)
  {
    activationCount = self->_activationCount;
    if (activationCount != [equalCopy activationCount])
    {
      goto LABEL_38;
    }

    has = self->_has;
    v6 = equalCopy[28];
  }

  v14 = (*&has >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_38;
  }

  if (v14)
  {
    presentationCount = self->_presentationCount;
    if (presentationCount != [equalCopy presentationCount])
    {
      goto LABEL_38;
    }

    has = self->_has;
    v6 = equalCopy[28];
  }

  v16 = (*&has >> 5) & 1;
  if (v16 != ((v6 >> 5) & 1))
  {
    goto LABEL_38;
  }

  if (v16)
  {
    confirmationSelectedCount = self->_confirmationSelectedCount;
    if (confirmationSelectedCount != [equalCopy confirmationSelectedCount])
    {
      goto LABEL_38;
    }

    has = self->_has;
    v6 = equalCopy[28];
  }

  v18 = (*&has >> 6) & 1;
  if (v18 != ((v6 >> 6) & 1))
  {
    goto LABEL_38;
  }

  if (v18)
  {
    disambiguationSelectedCount = self->_disambiguationSelectedCount;
    if (disambiguationSelectedCount != [equalCopy disambiguationSelectedCount])
    {
      goto LABEL_38;
    }

    has = self->_has;
    v6 = equalCopy[28];
  }

  v20 = (*&has >> 7) & 1;
  if (v20 != ((v6 >> 7) & 1))
  {
    goto LABEL_38;
  }

  if (v20)
  {
    abandonmentCount = self->_abandonmentCount;
    if (abandonmentCount == [equalCopy abandonmentCount])
    {
      has = self->_has;
      v6 = equalCopy[28];
      goto LABEL_34;
    }

LABEL_38:
    v24 = 0;
    goto LABEL_39;
  }

LABEL_34:
  v22 = (*&has >> 8) & 1;
  if (v22 != ((v6 >> 8) & 1))
  {
    goto LABEL_38;
  }

  if (v22)
  {
    domain = self->_domain;
    if (domain != [equalCopy domain])
    {
      goto LABEL_38;
    }
  }

  v24 = 1;
LABEL_39:

  return v24;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_10:
    PBDataWriterWriteInt32Field();
  }

LABEL_11:
}

- (void)setHasDomain:(BOOL)domain
{
  if (domain)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasAbandonmentCount:(BOOL)count
{
  if (count)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasDisambiguationSelectedCount:(BOOL)count
{
  if (count)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasConfirmationSelectedCount:(BOOL)count
{
  if (count)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasPresentationCount:(BOOL)count
{
  if (count)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasActivationCount:(BOOL)count
{
  if (count)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasAverageTimeBetweenActivationsInMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasTimeUntilFirstActivationInMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end
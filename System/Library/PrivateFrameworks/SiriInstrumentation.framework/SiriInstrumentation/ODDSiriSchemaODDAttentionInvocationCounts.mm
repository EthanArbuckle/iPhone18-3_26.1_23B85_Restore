@interface ODDSiriSchemaODDAttentionInvocationCounts
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDAttentionInvocationCounts)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDAttentionInvocationCounts)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasCheckerNearMissBeforeAcceptCount:(BOOL)count;
- (void)setHasCheckerRejectBeforeActivationCount:(BOOL)count;
- (void)setHasFalseWakeWithNoTriggerPhraseCount:(BOOL)count;
- (void)setHasFalseWakeWithSpeechNoMatchCount:(BOOL)count;
- (void)setHasFalseWakeWithTTMMitigationCount:(BOOL)count;
- (void)setHasNcAcceptPostNcMitigationCount:(BOOL)count;
- (void)setHasSpkidAcceptPostSpkidMitigationCount:(BOOL)count;
- (void)setHasTtmAcceptPostTtmMitigationCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDAttentionInvocationCounts

- (ODDSiriSchemaODDAttentionInvocationCounts)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = ODDSiriSchemaODDAttentionInvocationCounts;
  v5 = [(ODDSiriSchemaODDAttentionInvocationCounts *)&v20 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"phsRejectBeforeActivationCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAttentionInvocationCounts setPhsRejectBeforeActivationCount:](v5, "setPhsRejectBeforeActivationCount:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"checkerRejectBeforeActivationCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAttentionInvocationCounts setCheckerRejectBeforeActivationCount:](v5, "setCheckerRejectBeforeActivationCount:", [v7 unsignedIntValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"checkerNearMissBeforeAcceptCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAttentionInvocationCounts setCheckerNearMissBeforeAcceptCount:](v5, "setCheckerNearMissBeforeAcceptCount:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:{@"falseWakeWithNoTriggerPhraseCount", v8}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAttentionInvocationCounts setFalseWakeWithNoTriggerPhraseCount:](v5, "setFalseWakeWithNoTriggerPhraseCount:", [v9 unsignedIntValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"falseWakeWithSpeechNoMatchCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAttentionInvocationCounts setFalseWakeWithSpeechNoMatchCount:](v5, "setFalseWakeWithSpeechNoMatchCount:", [v10 unsignedIntValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"falseWakeWithTTMMitigationCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAttentionInvocationCounts setFalseWakeWithTTMMitigationCount:](v5, "setFalseWakeWithTTMMitigationCount:", [v11 unsignedIntValue]);
    }

    v19 = v7;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"ncAcceptPostNcMitigationCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAttentionInvocationCounts setNcAcceptPostNcMitigationCount:](v5, "setNcAcceptPostNcMitigationCount:", [v12 unsignedIntValue]);
    }

    v13 = v6;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"spkidAcceptPostSpkidMitigationCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAttentionInvocationCounts setSpkidAcceptPostSpkidMitigationCount:](v5, "setSpkidAcceptPostSpkidMitigationCount:", [v14 unsignedIntValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"ttmAcceptPostTtmMitigationCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAttentionInvocationCounts setTtmAcceptPostTtmMitigationCount:](v5, "setTtmAcceptPostTtmMitigationCount:", [v15 unsignedIntValue]);
    }

    v16 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDAttentionInvocationCounts)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDAttentionInvocationCounts *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDAttentionInvocationCounts *)self dictionaryRepresentation];
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
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODDSiriSchemaODDAttentionInvocationCounts checkerNearMissBeforeAcceptCount](self, "checkerNearMissBeforeAcceptCount")}];
    [dictionary setObject:v7 forKeyedSubscript:@"checkerNearMissBeforeAcceptCount"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
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

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODDSiriSchemaODDAttentionInvocationCounts checkerRejectBeforeActivationCount](self, "checkerRejectBeforeActivationCount")}];
  [dictionary setObject:v8 forKeyedSubscript:@"checkerRejectBeforeActivationCount"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODDSiriSchemaODDAttentionInvocationCounts falseWakeWithNoTriggerPhraseCount](self, "falseWakeWithNoTriggerPhraseCount")}];
  [dictionary setObject:v9 forKeyedSubscript:@"falseWakeWithNoTriggerPhraseCount"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODDSiriSchemaODDAttentionInvocationCounts falseWakeWithSpeechNoMatchCount](self, "falseWakeWithSpeechNoMatchCount")}];
  [dictionary setObject:v10 forKeyedSubscript:@"falseWakeWithSpeechNoMatchCount"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODDSiriSchemaODDAttentionInvocationCounts falseWakeWithTTMMitigationCount](self, "falseWakeWithTTMMitigationCount")}];
  [dictionary setObject:v11 forKeyedSubscript:@"falseWakeWithTTMMitigationCount"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODDSiriSchemaODDAttentionInvocationCounts ncAcceptPostNcMitigationCount](self, "ncAcceptPostNcMitigationCount")}];
  [dictionary setObject:v12 forKeyedSubscript:@"ncAcceptPostNcMitigationCount"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODDSiriSchemaODDAttentionInvocationCounts phsRejectBeforeActivationCount](self, "phsRejectBeforeActivationCount")}];
  [dictionary setObject:v13 forKeyedSubscript:@"phsRejectBeforeActivationCount"];

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
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODDSiriSchemaODDAttentionInvocationCounts spkidAcceptPostSpkidMitigationCount](self, "spkidAcceptPostSpkidMitigationCount")}];
  [dictionary setObject:v14 forKeyedSubscript:@"spkidAcceptPostSpkidMitigationCount"];

  if ((*&self->_has & 0x100) != 0)
  {
LABEL_10:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODDSiriSchemaODDAttentionInvocationCounts ttmAcceptPostTtmMitigationCount](self, "ttmAcceptPostTtmMitigationCount")}];
    [dictionary setObject:v5 forKeyedSubscript:@"ttmAcceptPostTtmMitigationCount"];
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
    v3 = 2654435761 * self->_phsRejectBeforeActivationCount;
    if ((has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_checkerRejectBeforeActivationCount;
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
    v5 = 2654435761 * self->_checkerNearMissBeforeAcceptCount;
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
    v6 = 2654435761 * self->_falseWakeWithNoTriggerPhraseCount;
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
    v7 = 2654435761 * self->_falseWakeWithSpeechNoMatchCount;
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
    v8 = 2654435761 * self->_falseWakeWithTTMMitigationCount;
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
    v9 = 2654435761 * self->_ncAcceptPostNcMitigationCount;
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
  v10 = 2654435761 * self->_spkidAcceptPostSpkidMitigationCount;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_19;
  }

LABEL_10:
  v11 = 2654435761 * self->_ttmAcceptPostTtmMitigationCount;
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
  v6 = equalCopy[22];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_38;
  }

  if (*&has)
  {
    phsRejectBeforeActivationCount = self->_phsRejectBeforeActivationCount;
    if (phsRejectBeforeActivationCount != [equalCopy phsRejectBeforeActivationCount])
    {
      goto LABEL_38;
    }

    has = self->_has;
    v6 = equalCopy[22];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_38;
  }

  if (v8)
  {
    checkerRejectBeforeActivationCount = self->_checkerRejectBeforeActivationCount;
    if (checkerRejectBeforeActivationCount != [equalCopy checkerRejectBeforeActivationCount])
    {
      goto LABEL_38;
    }

    has = self->_has;
    v6 = equalCopy[22];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_38;
  }

  if (v10)
  {
    checkerNearMissBeforeAcceptCount = self->_checkerNearMissBeforeAcceptCount;
    if (checkerNearMissBeforeAcceptCount != [equalCopy checkerNearMissBeforeAcceptCount])
    {
      goto LABEL_38;
    }

    has = self->_has;
    v6 = equalCopy[22];
  }

  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_38;
  }

  if (v12)
  {
    falseWakeWithNoTriggerPhraseCount = self->_falseWakeWithNoTriggerPhraseCount;
    if (falseWakeWithNoTriggerPhraseCount != [equalCopy falseWakeWithNoTriggerPhraseCount])
    {
      goto LABEL_38;
    }

    has = self->_has;
    v6 = equalCopy[22];
  }

  v14 = (*&has >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_38;
  }

  if (v14)
  {
    falseWakeWithSpeechNoMatchCount = self->_falseWakeWithSpeechNoMatchCount;
    if (falseWakeWithSpeechNoMatchCount != [equalCopy falseWakeWithSpeechNoMatchCount])
    {
      goto LABEL_38;
    }

    has = self->_has;
    v6 = equalCopy[22];
  }

  v16 = (*&has >> 5) & 1;
  if (v16 != ((v6 >> 5) & 1))
  {
    goto LABEL_38;
  }

  if (v16)
  {
    falseWakeWithTTMMitigationCount = self->_falseWakeWithTTMMitigationCount;
    if (falseWakeWithTTMMitigationCount != [equalCopy falseWakeWithTTMMitigationCount])
    {
      goto LABEL_38;
    }

    has = self->_has;
    v6 = equalCopy[22];
  }

  v18 = (*&has >> 6) & 1;
  if (v18 != ((v6 >> 6) & 1))
  {
    goto LABEL_38;
  }

  if (v18)
  {
    ncAcceptPostNcMitigationCount = self->_ncAcceptPostNcMitigationCount;
    if (ncAcceptPostNcMitigationCount != [equalCopy ncAcceptPostNcMitigationCount])
    {
      goto LABEL_38;
    }

    has = self->_has;
    v6 = equalCopy[22];
  }

  v20 = (*&has >> 7) & 1;
  if (v20 != ((v6 >> 7) & 1))
  {
    goto LABEL_38;
  }

  if (v20)
  {
    spkidAcceptPostSpkidMitigationCount = self->_spkidAcceptPostSpkidMitigationCount;
    if (spkidAcceptPostSpkidMitigationCount == [equalCopy spkidAcceptPostSpkidMitigationCount])
    {
      has = self->_has;
      v6 = equalCopy[22];
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
    ttmAcceptPostTtmMitigationCount = self->_ttmAcceptPostTtmMitigationCount;
    if (ttmAcceptPostTtmMitigationCount != [equalCopy ttmAcceptPostTtmMitigationCount])
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
    PBDataWriterWriteUint32Field();
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

  PBDataWriterWriteUint32Field();
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
  PBDataWriterWriteUint32Field();
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
    PBDataWriterWriteUint32Field();
  }

LABEL_11:
}

- (void)setHasTtmAcceptPostTtmMitigationCount:(BOOL)count
{
  if (count)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasSpkidAcceptPostSpkidMitigationCount:(BOOL)count
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

- (void)setHasNcAcceptPostNcMitigationCount:(BOOL)count
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

- (void)setHasFalseWakeWithTTMMitigationCount:(BOOL)count
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

- (void)setHasFalseWakeWithSpeechNoMatchCount:(BOOL)count
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

- (void)setHasFalseWakeWithNoTriggerPhraseCount:(BOOL)count
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

- (void)setHasCheckerNearMissBeforeAcceptCount:(BOOL)count
{
  if (count)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasCheckerRejectBeforeActivationCount:(BOOL)count
{
  if (count)
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
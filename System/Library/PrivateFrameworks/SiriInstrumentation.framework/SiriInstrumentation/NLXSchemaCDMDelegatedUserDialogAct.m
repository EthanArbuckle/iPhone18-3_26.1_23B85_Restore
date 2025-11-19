@interface NLXSchemaCDMDelegatedUserDialogAct
- (BOOL)isEqual:(id)a3;
- (NLXSchemaCDMDelegatedUserDialogAct)initWithDictionary:(id)a3;
- (NLXSchemaCDMDelegatedUserDialogAct)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasContextMatcherSpanCount:(BOOL)a3;
- (void)setHasMentionResolverSpanCount:(BOOL)a3;
- (void)setHasRewriteType:(BOOL)a3;
- (void)setHasSiriVocabularySpanCount:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NLXSchemaCDMDelegatedUserDialogAct

- (NLXSchemaCDMDelegatedUserDialogAct)initWithDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = NLXSchemaCDMDelegatedUserDialogAct;
  v5 = [(NLXSchemaCDMDelegatedUserDialogAct *)&v17 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"asrHypothesisIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMDelegatedUserDialogAct setAsrHypothesisIndex:](v5, "setAsrHypothesisIndex:", [v6 unsignedIntValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[SISchemaUUID alloc] initWithDictionary:v7];
      [(NLXSchemaCDMDelegatedUserDialogAct *)v5 setLinkId:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"externalParserId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(NLXSchemaCDMDelegatedUserDialogAct *)v5 setExternalParserId:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"siriVocabularySpanCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMDelegatedUserDialogAct setSiriVocabularySpanCount:](v5, "setSiriVocabularySpanCount:", [v11 unsignedIntValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"mentionResolverSpanCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMDelegatedUserDialogAct setMentionResolverSpanCount:](v5, "setMentionResolverSpanCount:", [v12 unsignedIntValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"rewriteType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMDelegatedUserDialogAct setRewriteType:](v5, "setRewriteType:", [v13 intValue]);
    }

    v14 = [v4 objectForKeyedSubscript:@"contextMatcherSpanCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMDelegatedUserDialogAct setContextMatcherSpanCount:](v5, "setContextMatcherSpanCount:", [v14 unsignedIntValue]);
    }

    v15 = v5;
  }

  return v5;
}

- (NLXSchemaCDMDelegatedUserDialogAct)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NLXSchemaCDMDelegatedUserDialogAct *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NLXSchemaCDMDelegatedUserDialogAct *)self dictionaryRepresentation];
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
  if (has)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NLXSchemaCDMDelegatedUserDialogAct asrHypothesisIndex](self, "asrHypothesisIndex")}];
    [v3 setObject:v5 forKeyedSubscript:@"asrHypothesisIndex"];

    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NLXSchemaCDMDelegatedUserDialogAct contextMatcherSpanCount](self, "contextMatcherSpanCount")}];
    [v3 setObject:v6 forKeyedSubscript:@"contextMatcherSpanCount"];
  }

  if (self->_externalParserId)
  {
    v7 = [(NLXSchemaCDMDelegatedUserDialogAct *)self externalParserId];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"externalParserId"];
  }

  if (self->_linkId)
  {
    v9 = [(NLXSchemaCDMDelegatedUserDialogAct *)self linkId];
    v10 = [v9 dictionaryRepresentation];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"linkId"];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v11 forKeyedSubscript:@"linkId"];
    }
  }

  v12 = self->_has;
  if ((v12 & 4) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NLXSchemaCDMDelegatedUserDialogAct mentionResolverSpanCount](self, "mentionResolverSpanCount")}];
    [v3 setObject:v15 forKeyedSubscript:@"mentionResolverSpanCount"];

    v12 = self->_has;
    if ((v12 & 8) == 0)
    {
LABEL_14:
      if ((v12 & 2) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_14;
  }

  v16 = [(NLXSchemaCDMDelegatedUserDialogAct *)self rewriteType]- 1;
  if (v16 > 3)
  {
    v17 = @"CDMREWRITETYPE_UNKNOWN";
  }

  else
  {
    v17 = off_1E78DB860[v16];
  }

  [v3 setObject:v17 forKeyedSubscript:@"rewriteType"];
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_16;
  }

LABEL_15:
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NLXSchemaCDMDelegatedUserDialogAct siriVocabularySpanCount](self, "siriVocabularySpanCount")}];
  [v3 setObject:v13 forKeyedSubscript:@"siriVocabularySpanCount"];

LABEL_16:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_asrHypothesisIndex;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(SISchemaUUID *)self->_linkId hash];
  v5 = [(NSString *)self->_externalParserId hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_siriVocabularySpanCount;
    if ((*&self->_has & 4) != 0)
    {
LABEL_6:
      v7 = 2654435761 * self->_mentionResolverSpanCount;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_7;
      }

LABEL_11:
      v8 = 0;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_8;
      }

LABEL_12:
      v9 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }
  }

  v7 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v8 = 2654435761 * self->_rewriteType;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  v9 = 2654435761 * self->_contextMatcherSpanCount;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (v4[48] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    asrHypothesisIndex = self->_asrHypothesisIndex;
    if (asrHypothesisIndex != [v4 asrHypothesisIndex])
    {
      goto LABEL_15;
    }
  }

  v6 = [(NLXSchemaCDMDelegatedUserDialogAct *)self linkId];
  v7 = [v4 linkId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_14;
  }

  v8 = [(NLXSchemaCDMDelegatedUserDialogAct *)self linkId];
  if (v8)
  {
    v9 = v8;
    v10 = [(NLXSchemaCDMDelegatedUserDialogAct *)self linkId];
    v11 = [v4 linkId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaCDMDelegatedUserDialogAct *)self externalParserId];
  v7 = [v4 externalParserId];
  if ((v6 != 0) == (v7 == 0))
  {
LABEL_14:

    goto LABEL_15;
  }

  v13 = [(NLXSchemaCDMDelegatedUserDialogAct *)self externalParserId];
  if (v13)
  {
    v14 = v13;
    v15 = [(NLXSchemaCDMDelegatedUserDialogAct *)self externalParserId];
    v16 = [v4 externalParserId];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  has = self->_has;
  v21 = (*&has >> 1) & 1;
  v22 = v4[48];
  if (v21 == ((v22 >> 1) & 1))
  {
    if (v21)
    {
      siriVocabularySpanCount = self->_siriVocabularySpanCount;
      if (siriVocabularySpanCount != [v4 siriVocabularySpanCount])
      {
        goto LABEL_15;
      }

      has = self->_has;
      v22 = v4[48];
    }

    v24 = (*&has >> 2) & 1;
    if (v24 == ((v22 >> 2) & 1))
    {
      if (v24)
      {
        mentionResolverSpanCount = self->_mentionResolverSpanCount;
        if (mentionResolverSpanCount != [v4 mentionResolverSpanCount])
        {
          goto LABEL_15;
        }

        has = self->_has;
        v22 = v4[48];
      }

      v26 = (*&has >> 3) & 1;
      if (v26 == ((v22 >> 3) & 1))
      {
        if (v26)
        {
          rewriteType = self->_rewriteType;
          if (rewriteType != [v4 rewriteType])
          {
            goto LABEL_15;
          }

          has = self->_has;
          v22 = v4[48];
        }

        v28 = (*&has >> 4) & 1;
        if (v28 == ((v22 >> 4) & 1))
        {
          if (!v28 || (contextMatcherSpanCount = self->_contextMatcherSpanCount, contextMatcherSpanCount == [v4 contextMatcherSpanCount]))
          {
            v18 = 1;
            goto LABEL_16;
          }
        }
      }
    }
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  v4 = [(NLXSchemaCDMDelegatedUserDialogAct *)self linkId];

  if (v4)
  {
    v5 = [(NLXSchemaCDMDelegatedUserDialogAct *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(NLXSchemaCDMDelegatedUserDialogAct *)self externalParserId];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_9:
      if ((has & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_17:
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_11:
    PBDataWriterWriteUint32Field();
  }

LABEL_12:
}

- (void)setHasContextMatcherSpanCount:(BOOL)a3
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

- (void)setHasRewriteType:(BOOL)a3
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

- (void)setHasMentionResolverSpanCount:(BOOL)a3
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

- (void)setHasSiriVocabularySpanCount:(BOOL)a3
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
  v9.super_class = NLXSchemaCDMDelegatedUserDialogAct;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(NLXSchemaCDMDelegatedUserDialogAct *)self linkId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(NLXSchemaCDMDelegatedUserDialogAct *)self deleteLinkId];
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
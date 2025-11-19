@interface DODMLASRSchemaDODMLASRTranscriptMetadata
- (BOOL)isEqual:(id)a3;
- (DODMLASRSchemaDODMLASRTranscriptMetadata)initWithDictionary:(id)a3;
- (DODMLASRSchemaDODMLASRTranscriptMetadata)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasNumDocumentsAccepted:(BOOL)a3;
- (void)setHasNumDocumentsDictated:(BOOL)a3;
- (void)setHasNumDocumentsTyped:(BOOL)a3;
- (void)setHasNumSentencesAccepted:(BOOL)a3;
- (void)setHasNumSentencesMungeChanged:(BOOL)a3;
- (void)setHasNumSentencesMungeRejected:(BOOL)a3;
- (void)setHasNumSentencesRejected:(BOOL)a3;
- (void)setHasNumTokensAccepted:(BOOL)a3;
- (void)setHasNumTokensDictated:(BOOL)a3;
- (void)setHasNumTokensEstimatedExamined:(BOOL)a3;
- (void)setHasNumTokensEstimatedRejected:(BOOL)a3;
- (void)setHasNumTokensOutOfVocabularyAccepted:(BOOL)a3;
- (void)setHasNumTokensTyped:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation DODMLASRSchemaDODMLASRTranscriptMetadata

- (DODMLASRSchemaDODMLASRTranscriptMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = DODMLASRSchemaDODMLASRTranscriptMetadata;
  v5 = [(DODMLASRSchemaDODMLASRTranscriptMetadata *)&v30 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"numDocumentsRejected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRTranscriptMetadata setNumDocumentsRejected:](v5, "setNumDocumentsRejected:", [v6 unsignedIntValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"numSentencesRejected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRTranscriptMetadata setNumSentencesRejected:](v5, "setNumSentencesRejected:", [v7 unsignedIntValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"numDocumentsAccepted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRTranscriptMetadata setNumDocumentsAccepted:](v5, "setNumDocumentsAccepted:", [v8 unsignedIntValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"numSentencesAccepted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRTranscriptMetadata setNumSentencesAccepted:](v5, "setNumSentencesAccepted:", [v9 unsignedIntValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"numTokensAccepted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRTranscriptMetadata setNumTokensAccepted:](v5, "setNumTokensAccepted:", [v10 unsignedIntValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"numTokensOutOfVocabularyAccepted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRTranscriptMetadata setNumTokensOutOfVocabularyAccepted:](v5, "setNumTokensOutOfVocabularyAccepted:", [v11 unsignedIntValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"numDocumentsDictated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRTranscriptMetadata setNumDocumentsDictated:](v5, "setNumDocumentsDictated:", [v12 unsignedIntValue]);
    }

    v29 = v6;
    v13 = [v4 objectForKeyedSubscript:@"numDocumentsTyped"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRTranscriptMetadata setNumDocumentsTyped:](v5, "setNumDocumentsTyped:", [v13 unsignedIntValue]);
    }

    v23 = v13;
    v28 = v7;
    v14 = [v4 objectForKeyedSubscript:@"numTokensDictated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRTranscriptMetadata setNumTokensDictated:](v5, "setNumTokensDictated:", [v14 unsignedIntValue]);
    }

    v27 = v8;
    v15 = [v4 objectForKeyedSubscript:@"numTokensTyped"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRTranscriptMetadata setNumTokensTyped:](v5, "setNumTokensTyped:", [v15 unsignedIntValue]);
    }

    v26 = v9;
    v16 = [v4 objectForKeyedSubscript:@"numSentencesMungeRejected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRTranscriptMetadata setNumSentencesMungeRejected:](v5, "setNumSentencesMungeRejected:", [v16 unsignedIntValue]);
    }

    v24 = v12;
    v25 = v10;
    v17 = [v4 objectForKeyedSubscript:@"numSentencesMungeChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRTranscriptMetadata setNumSentencesMungeChanged:](v5, "setNumSentencesMungeChanged:", [v17 unsignedIntValue]);
    }

    v18 = v11;
    v19 = [v4 objectForKeyedSubscript:@"numTokensEstimatedRejected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRTranscriptMetadata setNumTokensEstimatedRejected:](v5, "setNumTokensEstimatedRejected:", [v19 unsignedIntValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"numTokensEstimatedExamined"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRTranscriptMetadata setNumTokensEstimatedExamined:](v5, "setNumTokensEstimatedExamined:", [v20 unsignedIntValue]);
    }

    v21 = v5;
  }

  return v5;
}

- (DODMLASRSchemaDODMLASRTranscriptMetadata)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(DODMLASRSchemaDODMLASRTranscriptMetadata *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(DODMLASRSchemaDODMLASRTranscriptMetadata *)self dictionaryRepresentation];
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
  if ((has & 4) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASRTranscriptMetadata numDocumentsAccepted](self, "numDocumentsAccepted")}];
    [v3 setObject:v7 forKeyedSubscript:@"numDocumentsAccepted"];

    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASRTranscriptMetadata numDocumentsDictated](self, "numDocumentsDictated")}];
  [v3 setObject:v8 forKeyedSubscript:@"numDocumentsDictated"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASRTranscriptMetadata numDocumentsRejected](self, "numDocumentsRejected")}];
  [v3 setObject:v9 forKeyedSubscript:@"numDocumentsRejected"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASRTranscriptMetadata numDocumentsTyped](self, "numDocumentsTyped")}];
  [v3 setObject:v10 forKeyedSubscript:@"numDocumentsTyped"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASRTranscriptMetadata numSentencesAccepted](self, "numSentencesAccepted")}];
  [v3 setObject:v11 forKeyedSubscript:@"numSentencesAccepted"];

  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_7:
    if ((has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASRTranscriptMetadata numSentencesMungeChanged](self, "numSentencesMungeChanged")}];
  [v3 setObject:v12 forKeyedSubscript:@"numSentencesMungeChanged"];

  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASRTranscriptMetadata numSentencesMungeRejected](self, "numSentencesMungeRejected")}];
  [v3 setObject:v13 forKeyedSubscript:@"numSentencesMungeRejected"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASRTranscriptMetadata numSentencesRejected](self, "numSentencesRejected")}];
  [v3 setObject:v14 forKeyedSubscript:@"numSentencesRejected"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASRTranscriptMetadata numTokensAccepted](self, "numTokensAccepted")}];
  [v3 setObject:v15 forKeyedSubscript:@"numTokensAccepted"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_11:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASRTranscriptMetadata numTokensDictated](self, "numTokensDictated")}];
  [v3 setObject:v16 forKeyedSubscript:@"numTokensDictated"];

  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_12:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASRTranscriptMetadata numTokensEstimatedExamined](self, "numTokensEstimatedExamined")}];
  [v3 setObject:v17 forKeyedSubscript:@"numTokensEstimatedExamined"];

  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_13:
    if ((has & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASRTranscriptMetadata numTokensEstimatedRejected](self, "numTokensEstimatedRejected")}];
  [v3 setObject:v18 forKeyedSubscript:@"numTokensEstimatedRejected"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_14:
    if ((has & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASRTranscriptMetadata numTokensOutOfVocabularyAccepted](self, "numTokensOutOfVocabularyAccepted")}];
  [v3 setObject:v19 forKeyedSubscript:@"numTokensOutOfVocabularyAccepted"];

  if ((*&self->_has & 0x200) != 0)
  {
LABEL_15:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASRTranscriptMetadata numTokensTyped](self, "numTokensTyped")}];
    [v3 setObject:v5 forKeyedSubscript:@"numTokensTyped"];
  }

LABEL_16:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v3 = 2654435761 * self->_numDocumentsRejected;
    if ((has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_numSentencesRejected;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
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
    v5 = 2654435761 * self->_numDocumentsAccepted;
    if ((has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v5 = 0;
  if ((has & 8) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_numSentencesAccepted;
    if ((has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  v6 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_numTokensAccepted;
    if ((has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v7 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_numTokensOutOfVocabularyAccepted;
    if ((has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v8 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_numDocumentsDictated;
    if ((has & 0x80) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v9 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_numDocumentsTyped;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v10 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_numTokensDictated;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v11 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_numTokensTyped;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  v12 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_numSentencesMungeRejected;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  v13 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_13:
    v14 = 2654435761 * self->_numSentencesMungeChanged;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    v15 = 0;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_15;
    }

LABEL_29:
    v16 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16;
  }

LABEL_27:
  v14 = 0;
  if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  v15 = 2654435761 * self->_numTokensEstimatedRejected;
  if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_29;
  }

LABEL_15:
  v16 = 2654435761 * self->_numTokensEstimatedExamined;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_58;
  }

  has = self->_has;
  v6 = v4[32];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_58;
  }

  if (*&has)
  {
    numDocumentsRejected = self->_numDocumentsRejected;
    if (numDocumentsRejected != [v4 numDocumentsRejected])
    {
      goto LABEL_58;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_58;
  }

  if (v8)
  {
    numSentencesRejected = self->_numSentencesRejected;
    if (numSentencesRejected != [v4 numSentencesRejected])
    {
      goto LABEL_58;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_58;
  }

  if (v10)
  {
    numDocumentsAccepted = self->_numDocumentsAccepted;
    if (numDocumentsAccepted != [v4 numDocumentsAccepted])
    {
      goto LABEL_58;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_58;
  }

  if (v12)
  {
    numSentencesAccepted = self->_numSentencesAccepted;
    if (numSentencesAccepted != [v4 numSentencesAccepted])
    {
      goto LABEL_58;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v14 = (*&has >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_58;
  }

  if (v14)
  {
    numTokensAccepted = self->_numTokensAccepted;
    if (numTokensAccepted != [v4 numTokensAccepted])
    {
      goto LABEL_58;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v16 = (*&has >> 5) & 1;
  if (v16 != ((v6 >> 5) & 1))
  {
    goto LABEL_58;
  }

  if (v16)
  {
    numTokensOutOfVocabularyAccepted = self->_numTokensOutOfVocabularyAccepted;
    if (numTokensOutOfVocabularyAccepted != [v4 numTokensOutOfVocabularyAccepted])
    {
      goto LABEL_58;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v18 = (*&has >> 6) & 1;
  if (v18 != ((v6 >> 6) & 1))
  {
    goto LABEL_58;
  }

  if (v18)
  {
    numDocumentsDictated = self->_numDocumentsDictated;
    if (numDocumentsDictated != [v4 numDocumentsDictated])
    {
      goto LABEL_58;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v20 = (*&has >> 7) & 1;
  if (v20 != ((v6 >> 7) & 1))
  {
    goto LABEL_58;
  }

  if (v20)
  {
    numDocumentsTyped = self->_numDocumentsTyped;
    if (numDocumentsTyped != [v4 numDocumentsTyped])
    {
      goto LABEL_58;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v22 = (*&has >> 8) & 1;
  if (v22 != ((v6 >> 8) & 1))
  {
    goto LABEL_58;
  }

  if (v22)
  {
    numTokensDictated = self->_numTokensDictated;
    if (numTokensDictated != [v4 numTokensDictated])
    {
      goto LABEL_58;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v24 = (*&has >> 9) & 1;
  if (v24 != ((v6 >> 9) & 1))
  {
    goto LABEL_58;
  }

  if (v24)
  {
    numTokensTyped = self->_numTokensTyped;
    if (numTokensTyped != [v4 numTokensTyped])
    {
      goto LABEL_58;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v26 = (*&has >> 10) & 1;
  if (v26 != ((v6 >> 10) & 1))
  {
    goto LABEL_58;
  }

  if (v26)
  {
    numSentencesMungeRejected = self->_numSentencesMungeRejected;
    if (numSentencesMungeRejected != [v4 numSentencesMungeRejected])
    {
      goto LABEL_58;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v28 = (*&has >> 11) & 1;
  if (v28 != ((v6 >> 11) & 1))
  {
    goto LABEL_58;
  }

  if (v28)
  {
    numSentencesMungeChanged = self->_numSentencesMungeChanged;
    if (numSentencesMungeChanged != [v4 numSentencesMungeChanged])
    {
      goto LABEL_58;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v30 = (*&has >> 12) & 1;
  if (v30 != ((v6 >> 12) & 1))
  {
    goto LABEL_58;
  }

  if (v30)
  {
    numTokensEstimatedRejected = self->_numTokensEstimatedRejected;
    if (numTokensEstimatedRejected == [v4 numTokensEstimatedRejected])
    {
      has = self->_has;
      v6 = v4[32];
      goto LABEL_54;
    }

LABEL_58:
    v34 = 0;
    goto LABEL_59;
  }

LABEL_54:
  v32 = (*&has >> 13) & 1;
  if (v32 != ((v6 >> 13) & 1))
  {
    goto LABEL_58;
  }

  if (v32)
  {
    numTokensEstimatedExamined = self->_numTokensEstimatedExamined;
    if (numTokensEstimatedExamined != [v4 numTokensEstimatedExamined])
    {
      goto LABEL_58;
    }
  }

  v34 = 1;
LABEL_59:

  return v34;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
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

      goto LABEL_21;
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

    goto LABEL_22;
  }

LABEL_21:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_12:
    if ((has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_13:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_14:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_15:
    PBDataWriterWriteUint32Field();
  }

LABEL_16:
}

- (void)setHasNumTokensEstimatedExamined:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasNumTokensEstimatedRejected:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasNumSentencesMungeChanged:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasNumSentencesMungeRejected:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasNumTokensTyped:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasNumTokensDictated:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasNumDocumentsTyped:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasNumDocumentsDictated:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasNumTokensOutOfVocabularyAccepted:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasNumTokensAccepted:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasNumSentencesAccepted:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasNumDocumentsAccepted:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasNumSentencesRejected:(BOOL)a3
{
  if (a3)
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
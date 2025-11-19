@interface RGSiriSchemaRGRequestEnded
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (RGSiriSchemaRGRequestEnded)initWithDictionary:(id)a3;
- (RGSiriSchemaRGRequestEnded)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasCharacterCount:(BOOL)a3;
- (void)setHasFallbackReason:(BOOL)a3;
- (void)setHasWordCount:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation RGSiriSchemaRGRequestEnded

- (RGSiriSchemaRGRequestEnded)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = RGSiriSchemaRGRequestEnded;
  v5 = [(RGSiriSchemaRGRequestEnded *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(RGSiriSchemaRGRequestEnded *)v5 setLinkId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"responseSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RGSiriSchemaRGRequestEnded setResponseSource:](v5, "setResponseSource:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"characterCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RGSiriSchemaRGRequestEnded setCharacterCount:](v5, "setCharacterCount:", [v9 unsignedIntValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"wordCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RGSiriSchemaRGRequestEnded setWordCount:](v5, "setWordCount:", [v10 unsignedIntValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"fallbackReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RGSiriSchemaRGRequestEnded setFallbackReason:](v5, "setFallbackReason:", [v11 intValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"transcriptEventId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaUUID alloc] initWithDictionary:v12];
      [(RGSiriSchemaRGRequestEnded *)v5 setTranscriptEventId:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (RGSiriSchemaRGRequestEnded)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(RGSiriSchemaRGRequestEnded *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(RGSiriSchemaRGRequestEnded *)self dictionaryRepresentation];
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
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[RGSiriSchemaRGRequestEnded characterCount](self, "characterCount")}];
    [v3 setObject:v5 forKeyedSubscript:@"characterCount"];

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v6 = [(RGSiriSchemaRGRequestEnded *)self fallbackReason]- 1;
    if (v6 > 9)
    {
      v7 = @"RGFALLBACKREASON_UNKNOWN";
    }

    else
    {
      v7 = off_1E78E1FA8[v6];
    }

    [v3 setObject:v7 forKeyedSubscript:@"fallbackReason"];
  }

  if (self->_linkId)
  {
    v8 = [(RGSiriSchemaRGRequestEnded *)self linkId];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"linkId"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"linkId"];
    }
  }

  if (*&self->_has)
  {
    v11 = [(RGSiriSchemaRGRequestEnded *)self responseSource]- 1;
    if (v11 > 7)
    {
      v12 = @"RGRESPONSESOURCE_UNKNOWN";
    }

    else
    {
      v12 = off_1E78E1FF8[v11];
    }

    [v3 setObject:v12 forKeyedSubscript:@"responseSource"];
  }

  if (self->_transcriptEventId)
  {
    v13 = [(RGSiriSchemaRGRequestEnded *)self transcriptEventId];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"transcriptEventId"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"transcriptEventId"];
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[RGSiriSchemaRGRequestEnded wordCount](self, "wordCount")}];
    [v3 setObject:v16 forKeyedSubscript:@"wordCount"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_linkId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_responseSource;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_characterCount;
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
      return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(SISchemaUUID *)self->_transcriptEventId hash];
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
  v6 = 2654435761 * self->_wordCount;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v7 = 2654435761 * self->_fallbackReason;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(SISchemaUUID *)self->_transcriptEventId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  v5 = [(RGSiriSchemaRGRequestEnded *)self linkId];
  v6 = [v4 linkId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v7 = [(RGSiriSchemaRGRequestEnded *)self linkId];
  if (v7)
  {
    v8 = v7;
    v9 = [(RGSiriSchemaRGRequestEnded *)self linkId];
    v10 = [v4 linkId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = v4[40];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_27;
  }

  if (*&has)
  {
    responseSource = self->_responseSource;
    if (responseSource != [v4 responseSource])
    {
      goto LABEL_27;
    }

    has = self->_has;
    v13 = v4[40];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_27;
  }

  if (v15)
  {
    characterCount = self->_characterCount;
    if (characterCount != [v4 characterCount])
    {
      goto LABEL_27;
    }

    has = self->_has;
    v13 = v4[40];
  }

  v17 = (*&has >> 2) & 1;
  if (v17 != ((v13 >> 2) & 1))
  {
    goto LABEL_27;
  }

  if (v17)
  {
    wordCount = self->_wordCount;
    if (wordCount != [v4 wordCount])
    {
      goto LABEL_27;
    }

    has = self->_has;
    v13 = v4[40];
  }

  v19 = (*&has >> 3) & 1;
  if (v19 != ((v13 >> 3) & 1))
  {
    goto LABEL_27;
  }

  if (v19)
  {
    fallbackReason = self->_fallbackReason;
    if (fallbackReason != [v4 fallbackReason])
    {
      goto LABEL_27;
    }
  }

  v5 = [(RGSiriSchemaRGRequestEnded *)self transcriptEventId];
  v6 = [v4 transcriptEventId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_26:

    goto LABEL_27;
  }

  v21 = [(RGSiriSchemaRGRequestEnded *)self transcriptEventId];
  if (!v21)
  {

LABEL_30:
    v26 = 1;
    goto LABEL_28;
  }

  v22 = v21;
  v23 = [(RGSiriSchemaRGRequestEnded *)self transcriptEventId];
  v24 = [v4 transcriptEventId];
  v25 = [v23 isEqual:v24];

  if (v25)
  {
    goto LABEL_30;
  }

LABEL_27:
  v26 = 0;
LABEL_28:

  return v26;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  v4 = [(RGSiriSchemaRGRequestEnded *)self linkId];

  if (v4)
  {
    v5 = [(RGSiriSchemaRGRequestEnded *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    PBDataWriterWriteInt32Field();
  }

LABEL_8:
  v7 = [(RGSiriSchemaRGRequestEnded *)self transcriptEventId];

  v8 = v10;
  if (v7)
  {
    v9 = [(RGSiriSchemaRGRequestEnded *)self transcriptEventId];
    PBDataWriterWriteSubmessage();

    v8 = v10;
  }
}

- (void)setHasFallbackReason:(BOOL)a3
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

- (void)setHasWordCount:(BOOL)a3
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

- (void)setHasCharacterCount:(BOOL)a3
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
  v4 = a3;
  v13.receiver = self;
  v13.super_class = RGSiriSchemaRGRequestEnded;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(RGSiriSchemaRGRequestEnded *)self linkId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(RGSiriSchemaRGRequestEnded *)self deleteLinkId];
  }

  v9 = [(RGSiriSchemaRGRequestEnded *)self transcriptEventId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(RGSiriSchemaRGRequestEnded *)self deleteTranscriptEventId];
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
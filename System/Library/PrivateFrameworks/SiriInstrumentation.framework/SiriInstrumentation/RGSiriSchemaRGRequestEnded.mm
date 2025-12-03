@interface RGSiriSchemaRGRequestEnded
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RGSiriSchemaRGRequestEnded)initWithDictionary:(id)dictionary;
- (RGSiriSchemaRGRequestEnded)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasCharacterCount:(BOOL)count;
- (void)setHasFallbackReason:(BOOL)reason;
- (void)setHasWordCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation RGSiriSchemaRGRequestEnded

- (RGSiriSchemaRGRequestEnded)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = RGSiriSchemaRGRequestEnded;
  v5 = [(RGSiriSchemaRGRequestEnded *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(RGSiriSchemaRGRequestEnded *)v5 setLinkId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"responseSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RGSiriSchemaRGRequestEnded setResponseSource:](v5, "setResponseSource:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"characterCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RGSiriSchemaRGRequestEnded setCharacterCount:](v5, "setCharacterCount:", [v9 unsignedIntValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"wordCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RGSiriSchemaRGRequestEnded setWordCount:](v5, "setWordCount:", [v10 unsignedIntValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"fallbackReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RGSiriSchemaRGRequestEnded setFallbackReason:](v5, "setFallbackReason:", [v11 intValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"transcriptEventId"];
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

- (RGSiriSchemaRGRequestEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RGSiriSchemaRGRequestEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RGSiriSchemaRGRequestEnded *)self dictionaryRepresentation];
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
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[RGSiriSchemaRGRequestEnded characterCount](self, "characterCount")}];
    [dictionary setObject:v5 forKeyedSubscript:@"characterCount"];

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

    [dictionary setObject:v7 forKeyedSubscript:@"fallbackReason"];
  }

  if (self->_linkId)
  {
    linkId = [(RGSiriSchemaRGRequestEnded *)self linkId];
    dictionaryRepresentation = [linkId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"linkId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"linkId"];
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

    [dictionary setObject:v12 forKeyedSubscript:@"responseSource"];
  }

  if (self->_transcriptEventId)
  {
    transcriptEventId = [(RGSiriSchemaRGRequestEnded *)self transcriptEventId];
    dictionaryRepresentation2 = [transcriptEventId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"transcriptEventId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"transcriptEventId"];
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[RGSiriSchemaRGRequestEnded wordCount](self, "wordCount")}];
    [dictionary setObject:v16 forKeyedSubscript:@"wordCount"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  linkId = [(RGSiriSchemaRGRequestEnded *)self linkId];
  linkId2 = [equalCopy linkId];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_26;
  }

  linkId3 = [(RGSiriSchemaRGRequestEnded *)self linkId];
  if (linkId3)
  {
    v8 = linkId3;
    linkId4 = [(RGSiriSchemaRGRequestEnded *)self linkId];
    linkId5 = [equalCopy linkId];
    v11 = [linkId4 isEqual:linkId5];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = equalCopy[40];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_27;
  }

  if (*&has)
  {
    responseSource = self->_responseSource;
    if (responseSource != [equalCopy responseSource])
    {
      goto LABEL_27;
    }

    has = self->_has;
    v13 = equalCopy[40];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_27;
  }

  if (v15)
  {
    characterCount = self->_characterCount;
    if (characterCount != [equalCopy characterCount])
    {
      goto LABEL_27;
    }

    has = self->_has;
    v13 = equalCopy[40];
  }

  v17 = (*&has >> 2) & 1;
  if (v17 != ((v13 >> 2) & 1))
  {
    goto LABEL_27;
  }

  if (v17)
  {
    wordCount = self->_wordCount;
    if (wordCount != [equalCopy wordCount])
    {
      goto LABEL_27;
    }

    has = self->_has;
    v13 = equalCopy[40];
  }

  v19 = (*&has >> 3) & 1;
  if (v19 != ((v13 >> 3) & 1))
  {
    goto LABEL_27;
  }

  if (v19)
  {
    fallbackReason = self->_fallbackReason;
    if (fallbackReason != [equalCopy fallbackReason])
    {
      goto LABEL_27;
    }
  }

  linkId = [(RGSiriSchemaRGRequestEnded *)self transcriptEventId];
  linkId2 = [equalCopy transcriptEventId];
  if ((linkId != 0) == (linkId2 == 0))
  {
LABEL_26:

    goto LABEL_27;
  }

  transcriptEventId = [(RGSiriSchemaRGRequestEnded *)self transcriptEventId];
  if (!transcriptEventId)
  {

LABEL_30:
    v26 = 1;
    goto LABEL_28;
  }

  v22 = transcriptEventId;
  transcriptEventId2 = [(RGSiriSchemaRGRequestEnded *)self transcriptEventId];
  transcriptEventId3 = [equalCopy transcriptEventId];
  v25 = [transcriptEventId2 isEqual:transcriptEventId3];

  if (v25)
  {
    goto LABEL_30;
  }

LABEL_27:
  v26 = 0;
LABEL_28:

  return v26;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  linkId = [(RGSiriSchemaRGRequestEnded *)self linkId];

  if (linkId)
  {
    linkId2 = [(RGSiriSchemaRGRequestEnded *)self linkId];
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
  transcriptEventId = [(RGSiriSchemaRGRequestEnded *)self transcriptEventId];

  v8 = toCopy;
  if (transcriptEventId)
  {
    transcriptEventId2 = [(RGSiriSchemaRGRequestEnded *)self transcriptEventId];
    PBDataWriterWriteSubmessage();

    v8 = toCopy;
  }
}

- (void)setHasFallbackReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasWordCount:(BOOL)count
{
  if (count)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasCharacterCount:(BOOL)count
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

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = RGSiriSchemaRGRequestEnded;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  linkId = [(RGSiriSchemaRGRequestEnded *)self linkId];
  v7 = [linkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(RGSiriSchemaRGRequestEnded *)self deleteLinkId];
  }

  transcriptEventId = [(RGSiriSchemaRGRequestEnded *)self transcriptEventId];
  v10 = [transcriptEventId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
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
@interface PGSchemaPGRequestEnded
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PGSchemaPGRequestEnded)initWithDictionary:(id)dictionary;
- (PGSchemaPGRequestEnded)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation PGSchemaPGRequestEnded

- (PGSchemaPGRequestEnded)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = PGSchemaPGRequestEnded;
  v5 = [(PGSchemaPGRequestEnded *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"reason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PGSchemaPGRequestEnded setReason:](v5, "setReason:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[SISchemaUUID alloc] initWithDictionary:v7];
      [(PGSchemaPGRequestEnded *)v5 setLinkId:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"transcriptEventId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[SISchemaUUID alloc] initWithDictionary:v9];
      [(PGSchemaPGRequestEnded *)v5 setTranscriptEventId:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (PGSchemaPGRequestEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PGSchemaPGRequestEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PGSchemaPGRequestEnded *)self dictionaryRepresentation];
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
  if (self->_linkId)
  {
    linkId = [(PGSchemaPGRequestEnded *)self linkId];
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
    if ([(PGSchemaPGRequestEnded *)self reason]== 1)
    {
      v7 = @"PGFAILUREREASON_RECOVERABLE_ERROR";
    }

    else
    {
      v7 = @"PGFAILUREREASON_UNKNOWN";
    }

    [dictionary setObject:v7 forKeyedSubscript:@"reason"];
  }

  if (self->_transcriptEventId)
  {
    transcriptEventId = [(PGSchemaPGRequestEnded *)self transcriptEventId];
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

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_reason;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(SISchemaUUID *)self->_linkId hash]^ v3;
  return v4 ^ [(SISchemaUUID *)self->_transcriptEventId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    reason = self->_reason;
    if (reason != [equalCopy reason])
    {
      goto LABEL_15;
    }
  }

  linkId = [(PGSchemaPGRequestEnded *)self linkId];
  linkId2 = [equalCopy linkId];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_14;
  }

  linkId3 = [(PGSchemaPGRequestEnded *)self linkId];
  if (linkId3)
  {
    v9 = linkId3;
    linkId4 = [(PGSchemaPGRequestEnded *)self linkId];
    linkId5 = [equalCopy linkId];
    v12 = [linkId4 isEqual:linkId5];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  linkId = [(PGSchemaPGRequestEnded *)self transcriptEventId];
  linkId2 = [equalCopy transcriptEventId];
  if ((linkId != 0) != (linkId2 == 0))
  {
    transcriptEventId = [(PGSchemaPGRequestEnded *)self transcriptEventId];
    if (!transcriptEventId)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = transcriptEventId;
    transcriptEventId2 = [(PGSchemaPGRequestEnded *)self transcriptEventId];
    transcriptEventId3 = [equalCopy transcriptEventId];
    v17 = [transcriptEventId2 isEqual:transcriptEventId3];

    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  linkId = [(PGSchemaPGRequestEnded *)self linkId];

  if (linkId)
  {
    linkId2 = [(PGSchemaPGRequestEnded *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  transcriptEventId = [(PGSchemaPGRequestEnded *)self transcriptEventId];

  v7 = toCopy;
  if (transcriptEventId)
  {
    transcriptEventId2 = [(PGSchemaPGRequestEnded *)self transcriptEventId];
    PBDataWriterWriteSubmessage();

    v7 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = PGSchemaPGRequestEnded;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  linkId = [(PGSchemaPGRequestEnded *)self linkId];
  v7 = [linkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PGSchemaPGRequestEnded *)self deleteLinkId];
  }

  transcriptEventId = [(PGSchemaPGRequestEnded *)self transcriptEventId];
  v10 = [transcriptEventId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PGSchemaPGRequestEnded *)self deleteTranscriptEventId];
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
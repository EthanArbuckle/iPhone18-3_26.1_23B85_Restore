@interface PGSchemaPGRequestEnded
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PGSchemaPGRequestEnded)initWithDictionary:(id)a3;
- (PGSchemaPGRequestEnded)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation PGSchemaPGRequestEnded

- (PGSchemaPGRequestEnded)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PGSchemaPGRequestEnded;
  v5 = [(PGSchemaPGRequestEnded *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"reason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PGSchemaPGRequestEnded setReason:](v5, "setReason:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[SISchemaUUID alloc] initWithDictionary:v7];
      [(PGSchemaPGRequestEnded *)v5 setLinkId:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"transcriptEventId"];
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

- (PGSchemaPGRequestEnded)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PGSchemaPGRequestEnded *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PGSchemaPGRequestEnded *)self dictionaryRepresentation];
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
  if (self->_linkId)
  {
    v4 = [(PGSchemaPGRequestEnded *)self linkId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"linkId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"linkId"];
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

    [v3 setObject:v7 forKeyedSubscript:@"reason"];
  }

  if (self->_transcriptEventId)
  {
    v8 = [(PGSchemaPGRequestEnded *)self transcriptEventId];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"transcriptEventId"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"transcriptEventId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    reason = self->_reason;
    if (reason != [v4 reason])
    {
      goto LABEL_15;
    }
  }

  v6 = [(PGSchemaPGRequestEnded *)self linkId];
  v7 = [v4 linkId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_14;
  }

  v8 = [(PGSchemaPGRequestEnded *)self linkId];
  if (v8)
  {
    v9 = v8;
    v10 = [(PGSchemaPGRequestEnded *)self linkId];
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

  v6 = [(PGSchemaPGRequestEnded *)self transcriptEventId];
  v7 = [v4 transcriptEventId];
  if ((v6 != 0) != (v7 == 0))
  {
    v13 = [(PGSchemaPGRequestEnded *)self transcriptEventId];
    if (!v13)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = v13;
    v15 = [(PGSchemaPGRequestEnded *)self transcriptEventId];
    v16 = [v4 transcriptEventId];
    v17 = [v15 isEqual:v16];

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

- (void)writeTo:(id)a3
{
  v9 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = [(PGSchemaPGRequestEnded *)self linkId];

  if (v4)
  {
    v5 = [(PGSchemaPGRequestEnded *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(PGSchemaPGRequestEnded *)self transcriptEventId];

  v7 = v9;
  if (v6)
  {
    v8 = [(PGSchemaPGRequestEnded *)self transcriptEventId];
    PBDataWriterWriteSubmessage();

    v7 = v9;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PGSchemaPGRequestEnded;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(PGSchemaPGRequestEnded *)self linkId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PGSchemaPGRequestEnded *)self deleteLinkId];
  }

  v9 = [(PGSchemaPGRequestEnded *)self transcriptEventId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
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
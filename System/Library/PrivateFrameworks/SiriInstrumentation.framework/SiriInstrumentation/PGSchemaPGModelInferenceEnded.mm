@interface PGSchemaPGModelInferenceEnded
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PGSchemaPGModelInferenceEnded)initWithDictionary:(id)a3;
- (PGSchemaPGModelInferenceEnded)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation PGSchemaPGModelInferenceEnded

- (PGSchemaPGModelInferenceEnded)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PGSchemaPGModelInferenceEnded;
  v5 = [(PGSchemaPGModelInferenceEnded *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PGSchemaPGModelInferenceEnded *)v5 setLinkId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"transcriptEventId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(PGSchemaPGModelInferenceEnded *)v5 setTranscriptEventId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"modelIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(PGSchemaPGModelInferenceEnded *)v5 setModelIdentifier:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (PGSchemaPGModelInferenceEnded)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PGSchemaPGModelInferenceEnded *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PGSchemaPGModelInferenceEnded *)self dictionaryRepresentation];
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
    v4 = [(PGSchemaPGModelInferenceEnded *)self linkId];
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

  if (self->_modelIdentifier)
  {
    v7 = [(PGSchemaPGModelInferenceEnded *)self modelIdentifier];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"modelIdentifier"];
  }

  if (self->_transcriptEventId)
  {
    v9 = [(PGSchemaPGModelInferenceEnded *)self transcriptEventId];
    v10 = [v9 dictionaryRepresentation];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"transcriptEventId"];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v11 forKeyedSubscript:@"transcriptEventId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_linkId hash];
  v4 = [(SISchemaUUID *)self->_transcriptEventId hash]^ v3;
  return v4 ^ [(NSString *)self->_modelIdentifier hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(PGSchemaPGModelInferenceEnded *)self linkId];
  v6 = [v4 linkId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(PGSchemaPGModelInferenceEnded *)self linkId];
  if (v7)
  {
    v8 = v7;
    v9 = [(PGSchemaPGModelInferenceEnded *)self linkId];
    v10 = [v4 linkId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(PGSchemaPGModelInferenceEnded *)self transcriptEventId];
  v6 = [v4 transcriptEventId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(PGSchemaPGModelInferenceEnded *)self transcriptEventId];
  if (v12)
  {
    v13 = v12;
    v14 = [(PGSchemaPGModelInferenceEnded *)self transcriptEventId];
    v15 = [v4 transcriptEventId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(PGSchemaPGModelInferenceEnded *)self modelIdentifier];
  v6 = [v4 modelIdentifier];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(PGSchemaPGModelInferenceEnded *)self modelIdentifier];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(PGSchemaPGModelInferenceEnded *)self modelIdentifier];
    v20 = [v4 modelIdentifier];
    v21 = [v19 isEqual:v20];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  v4 = [(PGSchemaPGModelInferenceEnded *)self linkId];

  if (v4)
  {
    v5 = [(PGSchemaPGModelInferenceEnded *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(PGSchemaPGModelInferenceEnded *)self transcriptEventId];

  if (v6)
  {
    v7 = [(PGSchemaPGModelInferenceEnded *)self transcriptEventId];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(PGSchemaPGModelInferenceEnded *)self modelIdentifier];

  v9 = v10;
  if (v8)
  {
    PBDataWriterWriteStringField();
    v9 = v10;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PGSchemaPGModelInferenceEnded;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(PGSchemaPGModelInferenceEnded *)self linkId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PGSchemaPGModelInferenceEnded *)self deleteLinkId];
  }

  v9 = [(PGSchemaPGModelInferenceEnded *)self transcriptEventId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(PGSchemaPGModelInferenceEnded *)self deleteTranscriptEventId];
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
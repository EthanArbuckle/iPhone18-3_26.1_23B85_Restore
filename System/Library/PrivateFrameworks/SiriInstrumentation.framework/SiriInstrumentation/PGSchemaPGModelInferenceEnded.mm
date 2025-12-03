@interface PGSchemaPGModelInferenceEnded
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PGSchemaPGModelInferenceEnded)initWithDictionary:(id)dictionary;
- (PGSchemaPGModelInferenceEnded)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation PGSchemaPGModelInferenceEnded

- (PGSchemaPGModelInferenceEnded)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = PGSchemaPGModelInferenceEnded;
  v5 = [(PGSchemaPGModelInferenceEnded *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PGSchemaPGModelInferenceEnded *)v5 setLinkId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"transcriptEventId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(PGSchemaPGModelInferenceEnded *)v5 setTranscriptEventId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"modelIdentifier"];
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

- (PGSchemaPGModelInferenceEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PGSchemaPGModelInferenceEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PGSchemaPGModelInferenceEnded *)self dictionaryRepresentation];
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
    linkId = [(PGSchemaPGModelInferenceEnded *)self linkId];
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

  if (self->_modelIdentifier)
  {
    modelIdentifier = [(PGSchemaPGModelInferenceEnded *)self modelIdentifier];
    v8 = [modelIdentifier copy];
    [dictionary setObject:v8 forKeyedSubscript:@"modelIdentifier"];
  }

  if (self->_transcriptEventId)
  {
    transcriptEventId = [(PGSchemaPGModelInferenceEnded *)self transcriptEventId];
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
  v3 = [(SISchemaUUID *)self->_linkId hash];
  v4 = [(SISchemaUUID *)self->_transcriptEventId hash]^ v3;
  return v4 ^ [(NSString *)self->_modelIdentifier hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  linkId = [(PGSchemaPGModelInferenceEnded *)self linkId];
  linkId2 = [equalCopy linkId];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_16;
  }

  linkId3 = [(PGSchemaPGModelInferenceEnded *)self linkId];
  if (linkId3)
  {
    v8 = linkId3;
    linkId4 = [(PGSchemaPGModelInferenceEnded *)self linkId];
    linkId5 = [equalCopy linkId];
    v11 = [linkId4 isEqual:linkId5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  linkId = [(PGSchemaPGModelInferenceEnded *)self transcriptEventId];
  linkId2 = [equalCopy transcriptEventId];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_16;
  }

  transcriptEventId = [(PGSchemaPGModelInferenceEnded *)self transcriptEventId];
  if (transcriptEventId)
  {
    v13 = transcriptEventId;
    transcriptEventId2 = [(PGSchemaPGModelInferenceEnded *)self transcriptEventId];
    transcriptEventId3 = [equalCopy transcriptEventId];
    v16 = [transcriptEventId2 isEqual:transcriptEventId3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  linkId = [(PGSchemaPGModelInferenceEnded *)self modelIdentifier];
  linkId2 = [equalCopy modelIdentifier];
  if ((linkId != 0) != (linkId2 == 0))
  {
    modelIdentifier = [(PGSchemaPGModelInferenceEnded *)self modelIdentifier];
    if (!modelIdentifier)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = modelIdentifier;
    modelIdentifier2 = [(PGSchemaPGModelInferenceEnded *)self modelIdentifier];
    modelIdentifier3 = [equalCopy modelIdentifier];
    v21 = [modelIdentifier2 isEqual:modelIdentifier3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  linkId = [(PGSchemaPGModelInferenceEnded *)self linkId];

  if (linkId)
  {
    linkId2 = [(PGSchemaPGModelInferenceEnded *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  transcriptEventId = [(PGSchemaPGModelInferenceEnded *)self transcriptEventId];

  if (transcriptEventId)
  {
    transcriptEventId2 = [(PGSchemaPGModelInferenceEnded *)self transcriptEventId];
    PBDataWriterWriteSubmessage();
  }

  modelIdentifier = [(PGSchemaPGModelInferenceEnded *)self modelIdentifier];

  v9 = toCopy;
  if (modelIdentifier)
  {
    PBDataWriterWriteStringField();
    v9 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = PGSchemaPGModelInferenceEnded;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  linkId = [(PGSchemaPGModelInferenceEnded *)self linkId];
  v7 = [linkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PGSchemaPGModelInferenceEnded *)self deleteLinkId];
  }

  transcriptEventId = [(PGSchemaPGModelInferenceEnded *)self transcriptEventId];
  v10 = [transcriptEventId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
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
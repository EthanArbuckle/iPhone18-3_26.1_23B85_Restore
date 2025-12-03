@interface PGSchemaPGOverridesEnded
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PGSchemaPGOverridesEnded)initWithDictionary:(id)dictionary;
- (PGSchemaPGOverridesEnded)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation PGSchemaPGOverridesEnded

- (PGSchemaPGOverridesEnded)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = PGSchemaPGOverridesEnded;
  v5 = [(PGSchemaPGOverridesEnded *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"transcriptEventId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PGSchemaPGOverridesEnded *)v5 setTranscriptEventId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"overridesMatched"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PGSchemaPGOverridesMatchMetadata alloc] initWithDictionary:v8];
      [(PGSchemaPGOverridesEnded *)v5 setOverridesMatched:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"assetVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(PGSchemaPGOverridesEnded *)v5 setAssetVersion:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (PGSchemaPGOverridesEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PGSchemaPGOverridesEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PGSchemaPGOverridesEnded *)self dictionaryRepresentation];
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
  if (self->_assetVersion)
  {
    assetVersion = [(PGSchemaPGOverridesEnded *)self assetVersion];
    v5 = [assetVersion copy];
    [dictionary setObject:v5 forKeyedSubscript:@"assetVersion"];
  }

  if (self->_overridesMatched)
  {
    overridesMatched = [(PGSchemaPGOverridesEnded *)self overridesMatched];
    dictionaryRepresentation = [overridesMatched dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"overridesMatched"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"overridesMatched"];
    }
  }

  if (self->_transcriptEventId)
  {
    transcriptEventId = [(PGSchemaPGOverridesEnded *)self transcriptEventId];
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
  v3 = [(SISchemaUUID *)self->_transcriptEventId hash];
  v4 = [(PGSchemaPGOverridesMatchMetadata *)self->_overridesMatched hash]^ v3;
  return v4 ^ [(NSString *)self->_assetVersion hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  transcriptEventId = [(PGSchemaPGOverridesEnded *)self transcriptEventId];
  transcriptEventId2 = [equalCopy transcriptEventId];
  if ((transcriptEventId != 0) == (transcriptEventId2 == 0))
  {
    goto LABEL_16;
  }

  transcriptEventId3 = [(PGSchemaPGOverridesEnded *)self transcriptEventId];
  if (transcriptEventId3)
  {
    v8 = transcriptEventId3;
    transcriptEventId4 = [(PGSchemaPGOverridesEnded *)self transcriptEventId];
    transcriptEventId5 = [equalCopy transcriptEventId];
    v11 = [transcriptEventId4 isEqual:transcriptEventId5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  transcriptEventId = [(PGSchemaPGOverridesEnded *)self overridesMatched];
  transcriptEventId2 = [equalCopy overridesMatched];
  if ((transcriptEventId != 0) == (transcriptEventId2 == 0))
  {
    goto LABEL_16;
  }

  overridesMatched = [(PGSchemaPGOverridesEnded *)self overridesMatched];
  if (overridesMatched)
  {
    v13 = overridesMatched;
    overridesMatched2 = [(PGSchemaPGOverridesEnded *)self overridesMatched];
    overridesMatched3 = [equalCopy overridesMatched];
    v16 = [overridesMatched2 isEqual:overridesMatched3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  transcriptEventId = [(PGSchemaPGOverridesEnded *)self assetVersion];
  transcriptEventId2 = [equalCopy assetVersion];
  if ((transcriptEventId != 0) != (transcriptEventId2 == 0))
  {
    assetVersion = [(PGSchemaPGOverridesEnded *)self assetVersion];
    if (!assetVersion)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = assetVersion;
    assetVersion2 = [(PGSchemaPGOverridesEnded *)self assetVersion];
    assetVersion3 = [equalCopy assetVersion];
    v21 = [assetVersion2 isEqual:assetVersion3];

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
  transcriptEventId = [(PGSchemaPGOverridesEnded *)self transcriptEventId];

  if (transcriptEventId)
  {
    transcriptEventId2 = [(PGSchemaPGOverridesEnded *)self transcriptEventId];
    PBDataWriterWriteSubmessage();
  }

  overridesMatched = [(PGSchemaPGOverridesEnded *)self overridesMatched];

  if (overridesMatched)
  {
    overridesMatched2 = [(PGSchemaPGOverridesEnded *)self overridesMatched];
    PBDataWriterWriteSubmessage();
  }

  assetVersion = [(PGSchemaPGOverridesEnded *)self assetVersion];

  v9 = toCopy;
  if (assetVersion)
  {
    PBDataWriterWriteStringField();
    v9 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = PGSchemaPGOverridesEnded;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  transcriptEventId = [(PGSchemaPGOverridesEnded *)self transcriptEventId];
  v7 = [transcriptEventId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PGSchemaPGOverridesEnded *)self deleteTranscriptEventId];
  }

  overridesMatched = [(PGSchemaPGOverridesEnded *)self overridesMatched];
  v10 = [overridesMatched applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PGSchemaPGOverridesEnded *)self deleteOverridesMatched];
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
@interface SISchemaABExperimentAssetRetrievalStatusChanged
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaABExperimentAssetRetrievalStatusChanged)initWithDictionary:(id)dictionary;
- (SISchemaABExperimentAssetRetrievalStatusChanged)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SISchemaABExperimentAssetRetrievalStatusChanged

- (SISchemaABExperimentAssetRetrievalStatusChanged)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = SISchemaABExperimentAssetRetrievalStatusChanged;
  v5 = [(SISchemaABExperimentAssetRetrievalStatusChanged *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"experimentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaABExperimentAssetRetrievalStatusChanged *)v5 setExperimentId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"assetId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(SISchemaABExperimentAssetRetrievalStatusChanged *)v5 setAssetId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"retrievalStatusCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaABExperimentAssetRetrievalStatusChanged setRetrievalStatusCode:](v5, "setRetrievalStatusCode:", [v10 intValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (SISchemaABExperimentAssetRetrievalStatusChanged)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaABExperimentAssetRetrievalStatusChanged *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaABExperimentAssetRetrievalStatusChanged *)self dictionaryRepresentation];
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
  if (self->_assetId)
  {
    assetId = [(SISchemaABExperimentAssetRetrievalStatusChanged *)self assetId];
    v5 = [assetId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"assetId"];
  }

  if (self->_experimentId)
  {
    experimentId = [(SISchemaABExperimentAssetRetrievalStatusChanged *)self experimentId];
    v7 = [experimentId copy];
    [dictionary setObject:v7 forKeyedSubscript:@"experimentId"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[SISchemaABExperimentAssetRetrievalStatusChanged retrievalStatusCode](self, "retrievalStatusCode")}];
    [dictionary setObject:v8 forKeyedSubscript:@"retrievalStatusCode"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_experimentId hash];
  v4 = [(NSString *)self->_assetId hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_retrievalStatusCode;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  experimentId = [(SISchemaABExperimentAssetRetrievalStatusChanged *)self experimentId];
  experimentId2 = [equalCopy experimentId];
  if ((experimentId != 0) == (experimentId2 == 0))
  {
    goto LABEL_11;
  }

  experimentId3 = [(SISchemaABExperimentAssetRetrievalStatusChanged *)self experimentId];
  if (experimentId3)
  {
    v8 = experimentId3;
    experimentId4 = [(SISchemaABExperimentAssetRetrievalStatusChanged *)self experimentId];
    experimentId5 = [equalCopy experimentId];
    v11 = [experimentId4 isEqual:experimentId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  experimentId = [(SISchemaABExperimentAssetRetrievalStatusChanged *)self assetId];
  experimentId2 = [equalCopy assetId];
  if ((experimentId != 0) == (experimentId2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  assetId = [(SISchemaABExperimentAssetRetrievalStatusChanged *)self assetId];
  if (assetId)
  {
    v13 = assetId;
    assetId2 = [(SISchemaABExperimentAssetRetrievalStatusChanged *)self assetId];
    assetId3 = [equalCopy assetId];
    v16 = [assetId2 isEqual:assetId3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (equalCopy[28] & 1))
  {
    if ((*&self->_has & 1) == 0 || (retrievalStatusCode = self->_retrievalStatusCode, retrievalStatusCode == [equalCopy retrievalStatusCode]))
    {
      v17 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  experimentId = [(SISchemaABExperimentAssetRetrievalStatusChanged *)self experimentId];

  if (experimentId)
  {
    PBDataWriterWriteStringField();
  }

  assetId = [(SISchemaABExperimentAssetRetrievalStatusChanged *)self assetId];

  if (assetId)
  {
    PBDataWriterWriteStringField();
  }

  v6 = toCopy;
  if (*&self->_has)
  {
    PBDataWriterWriteSint32Field();
    v6 = toCopy;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end
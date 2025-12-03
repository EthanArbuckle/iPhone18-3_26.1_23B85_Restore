@interface STSchemaSTGeneralSearchResult
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (STSchemaSTGeneralSearchResult)initWithDictionary:(id)dictionary;
- (STSchemaSTGeneralSearchResult)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation STSchemaSTGeneralSearchResult

- (STSchemaSTGeneralSearchResult)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = STSchemaSTGeneralSearchResult;
  v5 = [(STSchemaSTGeneralSearchResult *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"generalSearchResultId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(STSchemaSTGeneralSearchResult *)v5 setGeneralSearchResultId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"bundleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(STSchemaSTGeneralSearchResult *)v5 setBundleId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"resultType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTGeneralSearchResult setResultType:](v5, "setResultType:", [v10 intValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (STSchemaSTGeneralSearchResult)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(STSchemaSTGeneralSearchResult *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(STSchemaSTGeneralSearchResult *)self dictionaryRepresentation];
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
  if (self->_bundleId)
  {
    bundleId = [(STSchemaSTGeneralSearchResult *)self bundleId];
    v5 = [bundleId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"bundleId"];
  }

  if (self->_generalSearchResultId)
  {
    generalSearchResultId = [(STSchemaSTGeneralSearchResult *)self generalSearchResultId];
    dictionaryRepresentation = [generalSearchResultId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"generalSearchResultId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"generalSearchResultId"];
    }
  }

  if (*&self->_has)
  {
    v9 = [(STSchemaSTGeneralSearchResult *)self resultType]- 1;
    if (v9 > 3)
    {
      v10 = @"STGENERALSEARCHRESULTTYPE_UNKNOWN";
    }

    else
    {
      v10 = off_1E78E78A0[v9];
    }

    [dictionary setObject:v10 forKeyedSubscript:@"resultType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_generalSearchResultId hash];
  v4 = [(NSString *)self->_bundleId hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_resultType;
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

  generalSearchResultId = [(STSchemaSTGeneralSearchResult *)self generalSearchResultId];
  generalSearchResultId2 = [equalCopy generalSearchResultId];
  if ((generalSearchResultId != 0) == (generalSearchResultId2 == 0))
  {
    goto LABEL_11;
  }

  generalSearchResultId3 = [(STSchemaSTGeneralSearchResult *)self generalSearchResultId];
  if (generalSearchResultId3)
  {
    v8 = generalSearchResultId3;
    generalSearchResultId4 = [(STSchemaSTGeneralSearchResult *)self generalSearchResultId];
    generalSearchResultId5 = [equalCopy generalSearchResultId];
    v11 = [generalSearchResultId4 isEqual:generalSearchResultId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  generalSearchResultId = [(STSchemaSTGeneralSearchResult *)self bundleId];
  generalSearchResultId2 = [equalCopy bundleId];
  if ((generalSearchResultId != 0) == (generalSearchResultId2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  bundleId = [(STSchemaSTGeneralSearchResult *)self bundleId];
  if (bundleId)
  {
    v13 = bundleId;
    bundleId2 = [(STSchemaSTGeneralSearchResult *)self bundleId];
    bundleId3 = [equalCopy bundleId];
    v16 = [bundleId2 isEqual:bundleId3];

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
    if ((*&self->_has & 1) == 0 || (resultType = self->_resultType, resultType == [equalCopy resultType]))
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
  generalSearchResultId = [(STSchemaSTGeneralSearchResult *)self generalSearchResultId];

  if (generalSearchResultId)
  {
    generalSearchResultId2 = [(STSchemaSTGeneralSearchResult *)self generalSearchResultId];
    PBDataWriterWriteSubmessage();
  }

  bundleId = [(STSchemaSTGeneralSearchResult *)self bundleId];

  if (bundleId)
  {
    PBDataWriterWriteStringField();
  }

  v7 = toCopy;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    v7 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v10.receiver = self;
  v10.super_class = STSchemaSTGeneralSearchResult;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:4])
  {
    [(STSchemaSTGeneralSearchResult *)self deleteBundleId];
  }

  generalSearchResultId = [(STSchemaSTGeneralSearchResult *)self generalSearchResultId];
  v7 = [generalSearchResultId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(STSchemaSTGeneralSearchResult *)self deleteGeneralSearchResultId];
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
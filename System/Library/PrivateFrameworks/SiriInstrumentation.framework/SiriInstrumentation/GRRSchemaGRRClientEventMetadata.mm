@interface GRRSchemaGRRClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (GRRSchemaGRRClientEventMetadata)initWithDictionary:(id)dictionary;
- (GRRSchemaGRRClientEventMetadata)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation GRRSchemaGRRClientEventMetadata

- (GRRSchemaGRRClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = GRRSchemaGRRClientEventMetadata;
  v5 = [(GRRSchemaGRRClientEventMetadata *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"grrId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(GRRSchemaGRRClientEventMetadata *)v5 setGrrId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"resultCandidateId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(GRRSchemaGRRClientEventMetadata *)v5 setResultCandidateId:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (GRRSchemaGRRClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(GRRSchemaGRRClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(GRRSchemaGRRClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_grrId)
  {
    grrId = [(GRRSchemaGRRClientEventMetadata *)self grrId];
    dictionaryRepresentation = [grrId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"grrId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"grrId"];
    }
  }

  if (self->_resultCandidateId)
  {
    resultCandidateId = [(GRRSchemaGRRClientEventMetadata *)self resultCandidateId];
    v8 = [resultCandidateId copy];
    [dictionary setObject:v8 forKeyedSubscript:@"resultCandidateId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  grrId = [(GRRSchemaGRRClientEventMetadata *)self grrId];
  grrId2 = [equalCopy grrId];
  if ((grrId != 0) == (grrId2 == 0))
  {
    goto LABEL_11;
  }

  grrId3 = [(GRRSchemaGRRClientEventMetadata *)self grrId];
  if (grrId3)
  {
    v8 = grrId3;
    grrId4 = [(GRRSchemaGRRClientEventMetadata *)self grrId];
    grrId5 = [equalCopy grrId];
    v11 = [grrId4 isEqual:grrId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  grrId = [(GRRSchemaGRRClientEventMetadata *)self resultCandidateId];
  grrId2 = [equalCopy resultCandidateId];
  if ((grrId != 0) != (grrId2 == 0))
  {
    resultCandidateId = [(GRRSchemaGRRClientEventMetadata *)self resultCandidateId];
    if (!resultCandidateId)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = resultCandidateId;
    resultCandidateId2 = [(GRRSchemaGRRClientEventMetadata *)self resultCandidateId];
    resultCandidateId3 = [equalCopy resultCandidateId];
    v16 = [resultCandidateId2 isEqual:resultCandidateId3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  grrId = [(GRRSchemaGRRClientEventMetadata *)self grrId];

  if (grrId)
  {
    grrId2 = [(GRRSchemaGRRClientEventMetadata *)self grrId];
    PBDataWriterWriteSubmessage();
  }

  resultCandidateId = [(GRRSchemaGRRClientEventMetadata *)self resultCandidateId];

  if (resultCandidateId)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = GRRSchemaGRRClientEventMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(GRRSchemaGRRClientEventMetadata *)self grrId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(GRRSchemaGRRClientEventMetadata *)self deleteGrrId];
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
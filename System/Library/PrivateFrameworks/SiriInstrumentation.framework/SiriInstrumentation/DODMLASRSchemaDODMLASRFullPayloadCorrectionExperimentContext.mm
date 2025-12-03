@interface DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentContext
- (BOOL)isEqual:(id)equal;
- (DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentContext)initWithDictionary:(id)dictionary;
- (DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentContext)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentContext

- (DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentContext;
  v5 = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentContext *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"originalAsrId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentContext *)v5 setOriginalAsrId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"fullPayloadCorrectionContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ASRSchemaASRFullPayloadCorrectionContext alloc] initWithDictionary:v8];
      [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentContext *)v5 setFullPayloadCorrectionContext:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentContext *)self dictionaryRepresentation];
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
  if (self->_fullPayloadCorrectionContext)
  {
    fullPayloadCorrectionContext = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentContext *)self fullPayloadCorrectionContext];
    dictionaryRepresentation = [fullPayloadCorrectionContext dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"fullPayloadCorrectionContext"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"fullPayloadCorrectionContext"];
    }
  }

  if (self->_originalAsrId)
  {
    originalAsrId = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentContext *)self originalAsrId];
    dictionaryRepresentation2 = [originalAsrId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"originalAsrId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"originalAsrId"];
    }
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

  originalAsrId = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentContext *)self originalAsrId];
  originalAsrId2 = [equalCopy originalAsrId];
  if ((originalAsrId != 0) == (originalAsrId2 == 0))
  {
    goto LABEL_11;
  }

  originalAsrId3 = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentContext *)self originalAsrId];
  if (originalAsrId3)
  {
    v8 = originalAsrId3;
    originalAsrId4 = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentContext *)self originalAsrId];
    originalAsrId5 = [equalCopy originalAsrId];
    v11 = [originalAsrId4 isEqual:originalAsrId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  originalAsrId = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentContext *)self fullPayloadCorrectionContext];
  originalAsrId2 = [equalCopy fullPayloadCorrectionContext];
  if ((originalAsrId != 0) != (originalAsrId2 == 0))
  {
    fullPayloadCorrectionContext = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentContext *)self fullPayloadCorrectionContext];
    if (!fullPayloadCorrectionContext)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = fullPayloadCorrectionContext;
    fullPayloadCorrectionContext2 = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentContext *)self fullPayloadCorrectionContext];
    fullPayloadCorrectionContext3 = [equalCopy fullPayloadCorrectionContext];
    v16 = [fullPayloadCorrectionContext2 isEqual:fullPayloadCorrectionContext3];

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
  originalAsrId = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentContext *)self originalAsrId];

  if (originalAsrId)
  {
    originalAsrId2 = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentContext *)self originalAsrId];
    PBDataWriterWriteSubmessage();
  }

  fullPayloadCorrectionContext = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentContext *)self fullPayloadCorrectionContext];

  if (fullPayloadCorrectionContext)
  {
    fullPayloadCorrectionContext2 = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentContext *)self fullPayloadCorrectionContext];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentContext;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  originalAsrId = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentContext *)self originalAsrId];
  v7 = [originalAsrId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentContext *)self deleteOriginalAsrId];
  }

  fullPayloadCorrectionContext = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentContext *)self fullPayloadCorrectionContext];
  v10 = [fullPayloadCorrectionContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentContext *)self deleteFullPayloadCorrectionContext];
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
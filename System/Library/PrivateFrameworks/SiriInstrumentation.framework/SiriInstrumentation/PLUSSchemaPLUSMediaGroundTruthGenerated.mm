@interface PLUSSchemaPLUSMediaGroundTruthGenerated
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PLUSSchemaPLUSMediaGroundTruthGenerated)initWithDictionary:(id)dictionary;
- (PLUSSchemaPLUSMediaGroundTruthGenerated)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation PLUSSchemaPLUSMediaGroundTruthGenerated

- (PLUSSchemaPLUSMediaGroundTruthGenerated)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = PLUSSchemaPLUSMediaGroundTruthGenerated;
  v5 = [(PLUSSchemaPLUSMediaGroundTruthGenerated *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"originalRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSMediaGroundTruthGenerated *)v5 setOriginalRequestId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"groundTruth"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PLUSSchemaPLUSMediaGroundTruth alloc] initWithDictionary:v8];
      [(PLUSSchemaPLUSMediaGroundTruthGenerated *)v5 setGroundTruth:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSMediaGroundTruthGenerated)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSMediaGroundTruthGenerated *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PLUSSchemaPLUSMediaGroundTruthGenerated *)self dictionaryRepresentation];
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
  if (self->_groundTruth)
  {
    groundTruth = [(PLUSSchemaPLUSMediaGroundTruthGenerated *)self groundTruth];
    dictionaryRepresentation = [groundTruth dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"groundTruth"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"groundTruth"];
    }
  }

  if (self->_originalRequestId)
  {
    originalRequestId = [(PLUSSchemaPLUSMediaGroundTruthGenerated *)self originalRequestId];
    dictionaryRepresentation2 = [originalRequestId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"originalRequestId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"originalRequestId"];
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

  originalRequestId = [(PLUSSchemaPLUSMediaGroundTruthGenerated *)self originalRequestId];
  originalRequestId2 = [equalCopy originalRequestId];
  if ((originalRequestId != 0) == (originalRequestId2 == 0))
  {
    goto LABEL_11;
  }

  originalRequestId3 = [(PLUSSchemaPLUSMediaGroundTruthGenerated *)self originalRequestId];
  if (originalRequestId3)
  {
    v8 = originalRequestId3;
    originalRequestId4 = [(PLUSSchemaPLUSMediaGroundTruthGenerated *)self originalRequestId];
    originalRequestId5 = [equalCopy originalRequestId];
    v11 = [originalRequestId4 isEqual:originalRequestId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  originalRequestId = [(PLUSSchemaPLUSMediaGroundTruthGenerated *)self groundTruth];
  originalRequestId2 = [equalCopy groundTruth];
  if ((originalRequestId != 0) != (originalRequestId2 == 0))
  {
    groundTruth = [(PLUSSchemaPLUSMediaGroundTruthGenerated *)self groundTruth];
    if (!groundTruth)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = groundTruth;
    groundTruth2 = [(PLUSSchemaPLUSMediaGroundTruthGenerated *)self groundTruth];
    groundTruth3 = [equalCopy groundTruth];
    v16 = [groundTruth2 isEqual:groundTruth3];

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
  originalRequestId = [(PLUSSchemaPLUSMediaGroundTruthGenerated *)self originalRequestId];

  if (originalRequestId)
  {
    originalRequestId2 = [(PLUSSchemaPLUSMediaGroundTruthGenerated *)self originalRequestId];
    PBDataWriterWriteSubmessage();
  }

  groundTruth = [(PLUSSchemaPLUSMediaGroundTruthGenerated *)self groundTruth];

  if (groundTruth)
  {
    groundTruth2 = [(PLUSSchemaPLUSMediaGroundTruthGenerated *)self groundTruth];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = PLUSSchemaPLUSMediaGroundTruthGenerated;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  originalRequestId = [(PLUSSchemaPLUSMediaGroundTruthGenerated *)self originalRequestId];
  v7 = [originalRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PLUSSchemaPLUSMediaGroundTruthGenerated *)self deleteOriginalRequestId];
  }

  groundTruth = [(PLUSSchemaPLUSMediaGroundTruthGenerated *)self groundTruth];
  v10 = [groundTruth applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PLUSSchemaPLUSMediaGroundTruthGenerated *)self deleteGroundTruth];
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
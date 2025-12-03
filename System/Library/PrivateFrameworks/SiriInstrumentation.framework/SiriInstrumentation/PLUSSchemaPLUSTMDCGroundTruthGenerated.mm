@interface PLUSSchemaPLUSTMDCGroundTruthGenerated
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PLUSSchemaPLUSTMDCGroundTruthGenerated)initWithDictionary:(id)dictionary;
- (PLUSSchemaPLUSTMDCGroundTruthGenerated)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation PLUSSchemaPLUSTMDCGroundTruthGenerated

- (PLUSSchemaPLUSTMDCGroundTruthGenerated)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = PLUSSchemaPLUSTMDCGroundTruthGenerated;
  v5 = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"originalPlusId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)v5 setOriginalPlusId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"groundTruth"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PLUSSchemaPLUSTMDCGroundTruth alloc] initWithDictionary:v8];
      [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)v5 setGroundTruth:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"originalRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)v5 setOriginalRequestId:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSTMDCGroundTruthGenerated)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self dictionaryRepresentation];
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
    groundTruth = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self groundTruth];
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

  if (self->_originalPlusId)
  {
    originalPlusId = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self originalPlusId];
    dictionaryRepresentation2 = [originalPlusId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"originalPlusId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"originalPlusId"];
    }
  }

  if (self->_originalRequestId)
  {
    originalRequestId = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self originalRequestId];
    dictionaryRepresentation3 = [originalRequestId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"originalRequestId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"originalRequestId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_originalPlusId hash];
  v4 = [(PLUSSchemaPLUSTMDCGroundTruth *)self->_groundTruth hash]^ v3;
  return v4 ^ [(SISchemaUUID *)self->_originalRequestId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  originalPlusId = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self originalPlusId];
  originalPlusId2 = [equalCopy originalPlusId];
  if ((originalPlusId != 0) == (originalPlusId2 == 0))
  {
    goto LABEL_16;
  }

  originalPlusId3 = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self originalPlusId];
  if (originalPlusId3)
  {
    v8 = originalPlusId3;
    originalPlusId4 = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self originalPlusId];
    originalPlusId5 = [equalCopy originalPlusId];
    v11 = [originalPlusId4 isEqual:originalPlusId5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  originalPlusId = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self groundTruth];
  originalPlusId2 = [equalCopy groundTruth];
  if ((originalPlusId != 0) == (originalPlusId2 == 0))
  {
    goto LABEL_16;
  }

  groundTruth = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self groundTruth];
  if (groundTruth)
  {
    v13 = groundTruth;
    groundTruth2 = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self groundTruth];
    groundTruth3 = [equalCopy groundTruth];
    v16 = [groundTruth2 isEqual:groundTruth3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  originalPlusId = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self originalRequestId];
  originalPlusId2 = [equalCopy originalRequestId];
  if ((originalPlusId != 0) != (originalPlusId2 == 0))
  {
    originalRequestId = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self originalRequestId];
    if (!originalRequestId)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = originalRequestId;
    originalRequestId2 = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self originalRequestId];
    originalRequestId3 = [equalCopy originalRequestId];
    v21 = [originalRequestId2 isEqual:originalRequestId3];

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
  originalPlusId = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self originalPlusId];

  if (originalPlusId)
  {
    originalPlusId2 = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self originalPlusId];
    PBDataWriterWriteSubmessage();
  }

  groundTruth = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self groundTruth];

  if (groundTruth)
  {
    groundTruth2 = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self groundTruth];
    PBDataWriterWriteSubmessage();
  }

  originalRequestId = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self originalRequestId];

  v9 = toCopy;
  if (originalRequestId)
  {
    originalRequestId2 = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self originalRequestId];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = PLUSSchemaPLUSTMDCGroundTruthGenerated;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  originalPlusId = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self originalPlusId];
  v7 = [originalPlusId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self deleteOriginalPlusId];
  }

  groundTruth = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self groundTruth];
  v10 = [groundTruth applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self deleteGroundTruth];
  }

  originalRequestId = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self originalRequestId];
  v13 = [originalRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self deleteOriginalRequestId];
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
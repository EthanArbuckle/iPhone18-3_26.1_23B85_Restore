@interface PLUSSchemaPLUSContactGroundTruthGenerated
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PLUSSchemaPLUSContactGroundTruthGenerated)initWithDictionary:(id)dictionary;
- (PLUSSchemaPLUSContactGroundTruthGenerated)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation PLUSSchemaPLUSContactGroundTruthGenerated

- (PLUSSchemaPLUSContactGroundTruthGenerated)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = PLUSSchemaPLUSContactGroundTruthGenerated;
  v5 = [(PLUSSchemaPLUSContactGroundTruthGenerated *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"originalPlusId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSContactGroundTruthGenerated *)v5 setOriginalPlusId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"groundTruth"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PLUSSchemaPLUSContactGroundTruth alloc] initWithDictionary:v8];
      [(PLUSSchemaPLUSContactGroundTruthGenerated *)v5 setGroundTruth:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSContactGroundTruthGenerated)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSContactGroundTruthGenerated *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PLUSSchemaPLUSContactGroundTruthGenerated *)self dictionaryRepresentation];
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
    groundTruth = [(PLUSSchemaPLUSContactGroundTruthGenerated *)self groundTruth];
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
    originalPlusId = [(PLUSSchemaPLUSContactGroundTruthGenerated *)self originalPlusId];
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

  originalPlusId = [(PLUSSchemaPLUSContactGroundTruthGenerated *)self originalPlusId];
  originalPlusId2 = [equalCopy originalPlusId];
  if ((originalPlusId != 0) == (originalPlusId2 == 0))
  {
    goto LABEL_11;
  }

  originalPlusId3 = [(PLUSSchemaPLUSContactGroundTruthGenerated *)self originalPlusId];
  if (originalPlusId3)
  {
    v8 = originalPlusId3;
    originalPlusId4 = [(PLUSSchemaPLUSContactGroundTruthGenerated *)self originalPlusId];
    originalPlusId5 = [equalCopy originalPlusId];
    v11 = [originalPlusId4 isEqual:originalPlusId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  originalPlusId = [(PLUSSchemaPLUSContactGroundTruthGenerated *)self groundTruth];
  originalPlusId2 = [equalCopy groundTruth];
  if ((originalPlusId != 0) != (originalPlusId2 == 0))
  {
    groundTruth = [(PLUSSchemaPLUSContactGroundTruthGenerated *)self groundTruth];
    if (!groundTruth)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = groundTruth;
    groundTruth2 = [(PLUSSchemaPLUSContactGroundTruthGenerated *)self groundTruth];
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
  originalPlusId = [(PLUSSchemaPLUSContactGroundTruthGenerated *)self originalPlusId];

  if (originalPlusId)
  {
    originalPlusId2 = [(PLUSSchemaPLUSContactGroundTruthGenerated *)self originalPlusId];
    PBDataWriterWriteSubmessage();
  }

  groundTruth = [(PLUSSchemaPLUSContactGroundTruthGenerated *)self groundTruth];

  if (groundTruth)
  {
    groundTruth2 = [(PLUSSchemaPLUSContactGroundTruthGenerated *)self groundTruth];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = PLUSSchemaPLUSContactGroundTruthGenerated;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  originalPlusId = [(PLUSSchemaPLUSContactGroundTruthGenerated *)self originalPlusId];
  v7 = [originalPlusId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PLUSSchemaPLUSContactGroundTruthGenerated *)self deleteOriginalPlusId];
  }

  groundTruth = [(PLUSSchemaPLUSContactGroundTruthGenerated *)self groundTruth];
  v10 = [groundTruth applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PLUSSchemaPLUSContactGroundTruthGenerated *)self deleteGroundTruth];
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
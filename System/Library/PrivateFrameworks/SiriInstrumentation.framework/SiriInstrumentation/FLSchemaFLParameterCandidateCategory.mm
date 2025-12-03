@interface FLSchemaFLParameterCandidateCategory
- (BOOL)isEqual:(id)equal;
- (FLSchemaFLParameterCandidateCategory)initWithDictionary:(id)dictionary;
- (FLSchemaFLParameterCandidateCategory)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation FLSchemaFLParameterCandidateCategory

- (FLSchemaFLParameterCandidateCategory)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = FLSchemaFLParameterCandidateCategory;
  v5 = [(FLSchemaFLParameterCandidateCategory *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"parameterNameId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(FLSchemaFLParameterCandidateCategory *)v5 setParameterNameId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (FLSchemaFLParameterCandidateCategory)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLSchemaFLParameterCandidateCategory *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLSchemaFLParameterCandidateCategory *)self dictionaryRepresentation];
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
  if (self->_parameterNameId)
  {
    parameterNameId = [(FLSchemaFLParameterCandidateCategory *)self parameterNameId];
    dictionaryRepresentation = [parameterNameId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"parameterNameId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"parameterNameId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    parameterNameId = [(FLSchemaFLParameterCandidateCategory *)self parameterNameId];
    parameterNameId2 = [equalCopy parameterNameId];
    v7 = parameterNameId2;
    if ((parameterNameId != 0) != (parameterNameId2 == 0))
    {
      parameterNameId3 = [(FLSchemaFLParameterCandidateCategory *)self parameterNameId];
      if (!parameterNameId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = parameterNameId3;
      parameterNameId4 = [(FLSchemaFLParameterCandidateCategory *)self parameterNameId];
      parameterNameId5 = [equalCopy parameterNameId];
      v12 = [parameterNameId4 isEqual:parameterNameId5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  parameterNameId = [(FLSchemaFLParameterCandidateCategory *)self parameterNameId];

  if (parameterNameId)
  {
    parameterNameId2 = [(FLSchemaFLParameterCandidateCategory *)self parameterNameId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = FLSchemaFLParameterCandidateCategory;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(FLSchemaFLParameterCandidateCategory *)self parameterNameId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(FLSchemaFLParameterCandidateCategory *)self deleteParameterNameId];
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
@interface IFPlatformRequestSchemaIFPlanCycleGenerated
- (BOOL)isEqual:(id)equal;
- (IFPlatformRequestSchemaIFPlanCycleGenerated)initWithDictionary:(id)dictionary;
- (IFPlatformRequestSchemaIFPlanCycleGenerated)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation IFPlatformRequestSchemaIFPlanCycleGenerated

- (IFPlatformRequestSchemaIFPlanCycleGenerated)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = IFPlatformRequestSchemaIFPlanCycleGenerated;
  v5 = [(IFPlatformRequestSchemaIFPlanCycleGenerated *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"planCycleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(IFPlatformRequestSchemaIFPlanCycleGenerated *)v5 setPlanCycleId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (IFPlatformRequestSchemaIFPlanCycleGenerated)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFPlatformRequestSchemaIFPlanCycleGenerated *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFPlatformRequestSchemaIFPlanCycleGenerated *)self dictionaryRepresentation];
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
  if (self->_planCycleId)
  {
    planCycleId = [(IFPlatformRequestSchemaIFPlanCycleGenerated *)self planCycleId];
    dictionaryRepresentation = [planCycleId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"planCycleId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"planCycleId"];
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
    planCycleId = [(IFPlatformRequestSchemaIFPlanCycleGenerated *)self planCycleId];
    planCycleId2 = [equalCopy planCycleId];
    v7 = planCycleId2;
    if ((planCycleId != 0) != (planCycleId2 == 0))
    {
      planCycleId3 = [(IFPlatformRequestSchemaIFPlanCycleGenerated *)self planCycleId];
      if (!planCycleId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = planCycleId3;
      planCycleId4 = [(IFPlatformRequestSchemaIFPlanCycleGenerated *)self planCycleId];
      planCycleId5 = [equalCopy planCycleId];
      v12 = [planCycleId4 isEqual:planCycleId5];

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
  planCycleId = [(IFPlatformRequestSchemaIFPlanCycleGenerated *)self planCycleId];

  if (planCycleId)
  {
    planCycleId2 = [(IFPlatformRequestSchemaIFPlanCycleGenerated *)self planCycleId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = IFPlatformRequestSchemaIFPlanCycleGenerated;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(IFPlatformRequestSchemaIFPlanCycleGenerated *)self planCycleId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(IFPlatformRequestSchemaIFPlanCycleGenerated *)self deletePlanCycleId];
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
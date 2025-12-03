@interface IFTSchemaIFTRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool

- (IFTSchemaIFTRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = IFTSchemaIFTRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool;
  v5 = [(IFTSchemaIFTRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"elementAtIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool setElementAtIndex:](v5, "setElementAtIndex:", [v6 longLongValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (IFTSchemaIFTRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[IFTSchemaIFTRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool elementAtIndex](self, "elementAtIndex")}];
    [dictionary setObject:v4 forKeyedSubscript:@"elementAtIndex"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_elementAtIndex;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = 0;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[16] & 1))
    {
      if ((*&self->_has & 1) == 0 || (elementAtIndex = self->_elementAtIndex, elementAtIndex == [equalCopy elementAtIndex]))
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end
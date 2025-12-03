@interface IFTSchemaIFTSystemPromptResolutionRequirementResolution
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTSystemPromptResolutionRequirementResolution)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTSystemPromptResolutionRequirementResolution)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTSystemPromptResolutionRequirementResolution

- (IFTSchemaIFTSystemPromptResolutionRequirementResolution)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = IFTSchemaIFTSystemPromptResolutionRequirementResolution;
  v5 = [(IFTSchemaIFTSystemPromptResolutionRequirementResolution *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"isRequirementSatisfied"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTSystemPromptResolutionRequirementResolution setIsRequirementSatisfied:](v5, "setIsRequirementSatisfied:", [v6 BOOLValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (IFTSchemaIFTSystemPromptResolutionRequirementResolution)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTSystemPromptResolutionRequirementResolution *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTSystemPromptResolutionRequirementResolution *)self dictionaryRepresentation];
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
  if (*(&self->_isRequirementSatisfied + 1))
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTSystemPromptResolutionRequirementResolution isRequirementSatisfied](self, "isRequirementSatisfied")}];
    [dictionary setObject:v4 forKeyedSubscript:@"isRequirementSatisfied"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*(&self->_isRequirementSatisfied + 1))
  {
    return 2654435761 * self->_isRequirementSatisfied;
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
    if (*(&self->_isRequirementSatisfied + 1) == (equalCopy[9] & 1))
    {
      if (!*(&self->_isRequirementSatisfied + 1) || (isRequirementSatisfied = self->_isRequirementSatisfied, isRequirementSatisfied == [equalCopy isRequirementSatisfied]))
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

- (void)writeTo:(id)to
{
  if (*(&self->_isRequirementSatisfied + 1))
  {
    PBDataWriterWriteBOOLField();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end
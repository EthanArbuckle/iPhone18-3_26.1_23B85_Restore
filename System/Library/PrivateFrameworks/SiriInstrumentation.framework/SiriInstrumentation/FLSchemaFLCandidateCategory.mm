@interface FLSchemaFLCandidateCategory
- (BOOL)isEqual:(id)equal;
- (FLSchemaFLCandidateCategory)initWithDictionary:(id)dictionary;
- (FLSchemaFLCandidateCategory)initWithJSON:(id)n;
- (FLSchemaFLParameterCandidateCategory)parameter;
- (FLSchemaFLToolCandidateCategory)tool;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteParameter;
- (void)deleteTool;
- (void)setParameter:(id)parameter;
- (void)setTool:(id)tool;
- (void)writeTo:(id)to;
@end

@implementation FLSchemaFLCandidateCategory

- (FLSchemaFLCandidateCategory)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = FLSchemaFLCandidateCategory;
  v5 = [(FLSchemaFLCandidateCategory *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"tool"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[FLSchemaFLToolCandidateCategory alloc] initWithDictionary:v6];
      [(FLSchemaFLCandidateCategory *)v5 setTool:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"parameter"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[FLSchemaFLParameterCandidateCategory alloc] initWithDictionary:v8];
      [(FLSchemaFLCandidateCategory *)v5 setParameter:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (FLSchemaFLCandidateCategory)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLSchemaFLCandidateCategory *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLSchemaFLCandidateCategory *)self dictionaryRepresentation];
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
  if (self->_parameter)
  {
    parameter = [(FLSchemaFLCandidateCategory *)self parameter];
    dictionaryRepresentation = [parameter dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"parameter"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"parameter"];
    }
  }

  if (self->_tool)
  {
    tool = [(FLSchemaFLCandidateCategory *)self tool];
    dictionaryRepresentation2 = [tool dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"tool"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"tool"];
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
    goto LABEL_13;
  }

  whichCategory = self->_whichCategory;
  if (whichCategory != [equalCopy whichCategory])
  {
    goto LABEL_13;
  }

  tool = [(FLSchemaFLCandidateCategory *)self tool];
  tool2 = [equalCopy tool];
  if ((tool != 0) == (tool2 == 0))
  {
    goto LABEL_12;
  }

  tool3 = [(FLSchemaFLCandidateCategory *)self tool];
  if (tool3)
  {
    v9 = tool3;
    tool4 = [(FLSchemaFLCandidateCategory *)self tool];
    tool5 = [equalCopy tool];
    v12 = [tool4 isEqual:tool5];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  tool = [(FLSchemaFLCandidateCategory *)self parameter];
  tool2 = [equalCopy parameter];
  if ((tool != 0) != (tool2 == 0))
  {
    parameter = [(FLSchemaFLCandidateCategory *)self parameter];
    if (!parameter)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = parameter;
    parameter2 = [(FLSchemaFLCandidateCategory *)self parameter];
    parameter3 = [equalCopy parameter];
    v17 = [parameter2 isEqual:parameter3];

    if (v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_12:
  }

LABEL_13:
  v18 = 0;
LABEL_14:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  tool = [(FLSchemaFLCandidateCategory *)self tool];

  if (tool)
  {
    tool2 = [(FLSchemaFLCandidateCategory *)self tool];
    PBDataWriterWriteSubmessage();
  }

  parameter = [(FLSchemaFLCandidateCategory *)self parameter];

  if (parameter)
  {
    parameter2 = [(FLSchemaFLCandidateCategory *)self parameter];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteParameter
{
  if (self->_whichCategory == 2)
  {
    self->_whichCategory = 0;
    self->_parameter = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (FLSchemaFLParameterCandidateCategory)parameter
{
  if (self->_whichCategory == 2)
  {
    v3 = self->_parameter;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setParameter:(id)parameter
{
  parameterCopy = parameter;
  tool = self->_tool;
  self->_tool = 0;

  self->_whichCategory = 2 * (parameterCopy != 0);
  parameter = self->_parameter;
  self->_parameter = parameterCopy;
}

- (void)deleteTool
{
  if (self->_whichCategory == 1)
  {
    self->_whichCategory = 0;
    self->_tool = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (FLSchemaFLToolCandidateCategory)tool
{
  if (self->_whichCategory == 1)
  {
    v3 = self->_tool;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTool:(id)tool
{
  toolCopy = tool;
  parameter = self->_parameter;
  self->_parameter = 0;

  self->_whichCategory = toolCopy != 0;
  tool = self->_tool;
  self->_tool = toolCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = FLSchemaFLCandidateCategory;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  tool = [(FLSchemaFLCandidateCategory *)self tool];
  v7 = [tool applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(FLSchemaFLCandidateCategory *)self deleteTool];
  }

  parameter = [(FLSchemaFLCandidateCategory *)self parameter];
  v10 = [parameter applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(FLSchemaFLCandidateCategory *)self deleteParameter];
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
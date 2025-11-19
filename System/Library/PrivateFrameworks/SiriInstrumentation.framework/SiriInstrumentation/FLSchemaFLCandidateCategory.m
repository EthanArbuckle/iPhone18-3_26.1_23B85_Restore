@interface FLSchemaFLCandidateCategory
- (BOOL)isEqual:(id)a3;
- (FLSchemaFLCandidateCategory)initWithDictionary:(id)a3;
- (FLSchemaFLCandidateCategory)initWithJSON:(id)a3;
- (FLSchemaFLParameterCandidateCategory)parameter;
- (FLSchemaFLToolCandidateCategory)tool;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteParameter;
- (void)deleteTool;
- (void)setParameter:(id)a3;
- (void)setTool:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation FLSchemaFLCandidateCategory

- (FLSchemaFLCandidateCategory)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = FLSchemaFLCandidateCategory;
  v5 = [(FLSchemaFLCandidateCategory *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"tool"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[FLSchemaFLToolCandidateCategory alloc] initWithDictionary:v6];
      [(FLSchemaFLCandidateCategory *)v5 setTool:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"parameter"];
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

- (FLSchemaFLCandidateCategory)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(FLSchemaFLCandidateCategory *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(FLSchemaFLCandidateCategory *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_parameter)
  {
    v4 = [(FLSchemaFLCandidateCategory *)self parameter];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"parameter"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"parameter"];
    }
  }

  if (self->_tool)
  {
    v7 = [(FLSchemaFLCandidateCategory *)self tool];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"tool"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"tool"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  whichCategory = self->_whichCategory;
  if (whichCategory != [v4 whichCategory])
  {
    goto LABEL_13;
  }

  v6 = [(FLSchemaFLCandidateCategory *)self tool];
  v7 = [v4 tool];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_12;
  }

  v8 = [(FLSchemaFLCandidateCategory *)self tool];
  if (v8)
  {
    v9 = v8;
    v10 = [(FLSchemaFLCandidateCategory *)self tool];
    v11 = [v4 tool];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v6 = [(FLSchemaFLCandidateCategory *)self parameter];
  v7 = [v4 parameter];
  if ((v6 != 0) != (v7 == 0))
  {
    v13 = [(FLSchemaFLCandidateCategory *)self parameter];
    if (!v13)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = v13;
    v15 = [(FLSchemaFLCandidateCategory *)self parameter];
    v16 = [v4 parameter];
    v17 = [v15 isEqual:v16];

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

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(FLSchemaFLCandidateCategory *)self tool];

  if (v4)
  {
    v5 = [(FLSchemaFLCandidateCategory *)self tool];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(FLSchemaFLCandidateCategory *)self parameter];

  if (v6)
  {
    v7 = [(FLSchemaFLCandidateCategory *)self parameter];
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

- (void)setParameter:(id)a3
{
  v4 = a3;
  tool = self->_tool;
  self->_tool = 0;

  self->_whichCategory = 2 * (v4 != 0);
  parameter = self->_parameter;
  self->_parameter = v4;
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

- (void)setTool:(id)a3
{
  v4 = a3;
  parameter = self->_parameter;
  self->_parameter = 0;

  self->_whichCategory = v4 != 0;
  tool = self->_tool;
  self->_tool = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = FLSchemaFLCandidateCategory;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(FLSchemaFLCandidateCategory *)self tool];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(FLSchemaFLCandidateCategory *)self deleteTool];
  }

  v9 = [(FLSchemaFLCandidateCategory *)self parameter];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
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
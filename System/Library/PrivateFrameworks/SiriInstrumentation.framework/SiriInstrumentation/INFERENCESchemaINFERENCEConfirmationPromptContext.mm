@interface INFERENCESchemaINFERENCEConfirmationPromptContext
- (BOOL)isEqual:(id)a3;
- (INFERENCESchemaINFERENCEConfirmationPromptContext)initWithDictionary:(id)a3;
- (INFERENCESchemaINFERENCEConfirmationPromptContext)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation INFERENCESchemaINFERENCEConfirmationPromptContext

- (INFERENCESchemaINFERENCEConfirmationPromptContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = INFERENCESchemaINFERENCEConfirmationPromptContext;
  v5 = [(INFERENCESchemaINFERENCEConfirmationPromptContext *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"anonymizedEntityPresented"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(INFERENCESchemaINFERENCEConfirmationPromptContext *)v5 setAnonymizedEntityPresented:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"resolution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEConfirmationPromptContext setResolution:](v5, "setResolution:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEConfirmationPromptContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEConfirmationPromptContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(INFERENCESchemaINFERENCEConfirmationPromptContext *)self dictionaryRepresentation];
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
  if (self->_anonymizedEntityPresented)
  {
    v4 = [(INFERENCESchemaINFERENCEConfirmationPromptContext *)self anonymizedEntityPresented];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"anonymizedEntityPresented"];
  }

  if (*&self->_has)
  {
    v6 = [(INFERENCESchemaINFERENCEConfirmationPromptContext *)self resolution]- 1;
    if (v6 > 3)
    {
      v7 = @"INFERENCECONFIRMATIONRESOLUTIONTYPE_UNKNOWN";
    }

    else
    {
      v7 = off_1E78D8938[v6];
    }

    [v3 setObject:v7 forKeyedSubscript:@"resolution"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_anonymizedEntityPresented hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_resolution;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(INFERENCESchemaINFERENCEConfirmationPromptContext *)self anonymizedEntityPresented];
  v6 = [v4 anonymizedEntityPresented];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  v8 = [(INFERENCESchemaINFERENCEConfirmationPromptContext *)self anonymizedEntityPresented];
  if (v8)
  {
    v9 = v8;
    v10 = [(INFERENCESchemaINFERENCEConfirmationPromptContext *)self anonymizedEntityPresented];
    v11 = [v4 anonymizedEntityPresented];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[20] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    resolution = self->_resolution;
    if (resolution != [v4 resolution])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  v4 = [(INFERENCESchemaINFERENCEConfirmationPromptContext *)self anonymizedEntityPresented];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end
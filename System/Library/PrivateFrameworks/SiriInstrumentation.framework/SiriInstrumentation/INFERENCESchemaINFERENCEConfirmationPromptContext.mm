@interface INFERENCESchemaINFERENCEConfirmationPromptContext
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCEConfirmationPromptContext)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCEConfirmationPromptContext)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCEConfirmationPromptContext

- (INFERENCESchemaINFERENCEConfirmationPromptContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = INFERENCESchemaINFERENCEConfirmationPromptContext;
  v5 = [(INFERENCESchemaINFERENCEConfirmationPromptContext *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"anonymizedEntityPresented"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(INFERENCESchemaINFERENCEConfirmationPromptContext *)v5 setAnonymizedEntityPresented:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"resolution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEConfirmationPromptContext setResolution:](v5, "setResolution:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEConfirmationPromptContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEConfirmationPromptContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCEConfirmationPromptContext *)self dictionaryRepresentation];
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
  if (self->_anonymizedEntityPresented)
  {
    anonymizedEntityPresented = [(INFERENCESchemaINFERENCEConfirmationPromptContext *)self anonymizedEntityPresented];
    v5 = [anonymizedEntityPresented copy];
    [dictionary setObject:v5 forKeyedSubscript:@"anonymizedEntityPresented"];
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

    [dictionary setObject:v7 forKeyedSubscript:@"resolution"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  anonymizedEntityPresented = [(INFERENCESchemaINFERENCEConfirmationPromptContext *)self anonymizedEntityPresented];
  anonymizedEntityPresented2 = [equalCopy anonymizedEntityPresented];
  v7 = anonymizedEntityPresented2;
  if ((anonymizedEntityPresented != 0) == (anonymizedEntityPresented2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  anonymizedEntityPresented3 = [(INFERENCESchemaINFERENCEConfirmationPromptContext *)self anonymizedEntityPresented];
  if (anonymizedEntityPresented3)
  {
    v9 = anonymizedEntityPresented3;
    anonymizedEntityPresented4 = [(INFERENCESchemaINFERENCEConfirmationPromptContext *)self anonymizedEntityPresented];
    anonymizedEntityPresented5 = [equalCopy anonymizedEntityPresented];
    v12 = [anonymizedEntityPresented4 isEqual:anonymizedEntityPresented5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[20] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    resolution = self->_resolution;
    if (resolution != [equalCopy resolution])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  anonymizedEntityPresented = [(INFERENCESchemaINFERENCEConfirmationPromptContext *)self anonymizedEntityPresented];

  if (anonymizedEntityPresented)
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
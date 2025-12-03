@interface INFERENCESchemaINFERENCEClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCEClientEventMetadata)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCEClientEventMetadata)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCEClientEventMetadata

- (INFERENCESchemaINFERENCEClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = INFERENCESchemaINFERENCEClientEventMetadata;
  v5 = [(INFERENCESchemaINFERENCEClientEventMetadata *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"inferenceId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(INFERENCESchemaINFERENCEClientEventMetadata *)v5 setInferenceId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCEClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_inferenceId)
  {
    inferenceId = [(INFERENCESchemaINFERENCEClientEventMetadata *)self inferenceId];
    dictionaryRepresentation = [inferenceId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"inferenceId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"inferenceId"];
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
    inferenceId = [(INFERENCESchemaINFERENCEClientEventMetadata *)self inferenceId];
    inferenceId2 = [equalCopy inferenceId];
    v7 = inferenceId2;
    if ((inferenceId != 0) != (inferenceId2 == 0))
    {
      inferenceId3 = [(INFERENCESchemaINFERENCEClientEventMetadata *)self inferenceId];
      if (!inferenceId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = inferenceId3;
      inferenceId4 = [(INFERENCESchemaINFERENCEClientEventMetadata *)self inferenceId];
      inferenceId5 = [equalCopy inferenceId];
      v12 = [inferenceId4 isEqual:inferenceId5];

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
  inferenceId = [(INFERENCESchemaINFERENCEClientEventMetadata *)self inferenceId];

  if (inferenceId)
  {
    inferenceId2 = [(INFERENCESchemaINFERENCEClientEventMetadata *)self inferenceId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = INFERENCESchemaINFERENCEClientEventMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(INFERENCESchemaINFERENCEClientEventMetadata *)self inferenceId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(INFERENCESchemaINFERENCEClientEventMetadata *)self deleteInferenceId];
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
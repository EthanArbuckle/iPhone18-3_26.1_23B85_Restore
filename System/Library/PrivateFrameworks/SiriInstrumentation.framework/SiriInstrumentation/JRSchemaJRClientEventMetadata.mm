@interface JRSchemaJRClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (JRSchemaJRClientEventMetadata)initWithDictionary:(id)dictionary;
- (JRSchemaJRClientEventMetadata)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation JRSchemaJRClientEventMetadata

- (JRSchemaJRClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = JRSchemaJRClientEventMetadata;
  v5 = [(JRSchemaJRClientEventMetadata *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"jrId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(JRSchemaJRClientEventMetadata *)v5 setJrId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (JRSchemaJRClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(JRSchemaJRClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(JRSchemaJRClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_jrId)
  {
    jrId = [(JRSchemaJRClientEventMetadata *)self jrId];
    dictionaryRepresentation = [jrId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"jrId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"jrId"];
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
    jrId = [(JRSchemaJRClientEventMetadata *)self jrId];
    jrId2 = [equalCopy jrId];
    v7 = jrId2;
    if ((jrId != 0) != (jrId2 == 0))
    {
      jrId3 = [(JRSchemaJRClientEventMetadata *)self jrId];
      if (!jrId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = jrId3;
      jrId4 = [(JRSchemaJRClientEventMetadata *)self jrId];
      jrId5 = [equalCopy jrId];
      v12 = [jrId4 isEqual:jrId5];

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
  jrId = [(JRSchemaJRClientEventMetadata *)self jrId];

  if (jrId)
  {
    jrId2 = [(JRSchemaJRClientEventMetadata *)self jrId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = JRSchemaJRClientEventMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(JRSchemaJRClientEventMetadata *)self jrId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(JRSchemaJRClientEventMetadata *)self deleteJrId];
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
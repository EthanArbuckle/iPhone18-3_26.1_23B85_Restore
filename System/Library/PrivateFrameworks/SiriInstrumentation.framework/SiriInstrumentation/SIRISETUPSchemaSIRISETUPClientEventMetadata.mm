@interface SIRISETUPSchemaSIRISETUPClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SIRISETUPSchemaSIRISETUPClientEventMetadata)initWithDictionary:(id)dictionary;
- (SIRISETUPSchemaSIRISETUPClientEventMetadata)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation SIRISETUPSchemaSIRISETUPClientEventMetadata

- (SIRISETUPSchemaSIRISETUPClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = SIRISETUPSchemaSIRISETUPClientEventMetadata;
  v5 = [(SIRISETUPSchemaSIRISETUPClientEventMetadata *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"siriSetupId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(SIRISETUPSchemaSIRISETUPClientEventMetadata *)v5 setSiriSetupId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (SIRISETUPSchemaSIRISETUPClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SIRISETUPSchemaSIRISETUPClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SIRISETUPSchemaSIRISETUPClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_siriSetupId)
  {
    siriSetupId = [(SIRISETUPSchemaSIRISETUPClientEventMetadata *)self siriSetupId];
    dictionaryRepresentation = [siriSetupId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"siriSetupId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"siriSetupId"];
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
    siriSetupId = [(SIRISETUPSchemaSIRISETUPClientEventMetadata *)self siriSetupId];
    siriSetupId2 = [equalCopy siriSetupId];
    v7 = siriSetupId2;
    if ((siriSetupId != 0) != (siriSetupId2 == 0))
    {
      siriSetupId3 = [(SIRISETUPSchemaSIRISETUPClientEventMetadata *)self siriSetupId];
      if (!siriSetupId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = siriSetupId3;
      siriSetupId4 = [(SIRISETUPSchemaSIRISETUPClientEventMetadata *)self siriSetupId];
      siriSetupId5 = [equalCopy siriSetupId];
      v12 = [siriSetupId4 isEqual:siriSetupId5];

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
  siriSetupId = [(SIRISETUPSchemaSIRISETUPClientEventMetadata *)self siriSetupId];

  if (siriSetupId)
  {
    siriSetupId2 = [(SIRISETUPSchemaSIRISETUPClientEventMetadata *)self siriSetupId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = SIRISETUPSchemaSIRISETUPClientEventMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SIRISETUPSchemaSIRISETUPClientEventMetadata *)self siriSetupId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(SIRISETUPSchemaSIRISETUPClientEventMetadata *)self deleteSiriSetupId];
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
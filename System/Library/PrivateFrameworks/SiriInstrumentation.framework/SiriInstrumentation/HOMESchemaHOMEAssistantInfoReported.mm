@interface HOMESchemaHOMEAssistantInfoReported
- (BOOL)isEqual:(id)equal;
- (HOMESchemaHOMEAssistantInfoReported)initWithDictionary:(id)dictionary;
- (HOMESchemaHOMEAssistantInfoReported)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation HOMESchemaHOMEAssistantInfoReported

- (HOMESchemaHOMEAssistantInfoReported)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = HOMESchemaHOMEAssistantInfoReported;
  v5 = [(HOMESchemaHOMEAssistantInfoReported *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"hashedHomeId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(HOMESchemaHOMEAssistantInfoReported *)v5 setHashedHomeId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (HOMESchemaHOMEAssistantInfoReported)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(HOMESchemaHOMEAssistantInfoReported *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(HOMESchemaHOMEAssistantInfoReported *)self dictionaryRepresentation];
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
  if (self->_hashedHomeId)
  {
    hashedHomeId = [(HOMESchemaHOMEAssistantInfoReported *)self hashedHomeId];
    dictionaryRepresentation = [hashedHomeId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"hashedHomeId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"hashedHomeId"];
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
    hashedHomeId = [(HOMESchemaHOMEAssistantInfoReported *)self hashedHomeId];
    hashedHomeId2 = [equalCopy hashedHomeId];
    v7 = hashedHomeId2;
    if ((hashedHomeId != 0) != (hashedHomeId2 == 0))
    {
      hashedHomeId3 = [(HOMESchemaHOMEAssistantInfoReported *)self hashedHomeId];
      if (!hashedHomeId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = hashedHomeId3;
      hashedHomeId4 = [(HOMESchemaHOMEAssistantInfoReported *)self hashedHomeId];
      hashedHomeId5 = [equalCopy hashedHomeId];
      v12 = [hashedHomeId4 isEqual:hashedHomeId5];

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
  hashedHomeId = [(HOMESchemaHOMEAssistantInfoReported *)self hashedHomeId];

  if (hashedHomeId)
  {
    hashedHomeId2 = [(HOMESchemaHOMEAssistantInfoReported *)self hashedHomeId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = HOMESchemaHOMEAssistantInfoReported;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(HOMESchemaHOMEAssistantInfoReported *)self hashedHomeId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(HOMESchemaHOMEAssistantInfoReported *)self deleteHashedHomeId];
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
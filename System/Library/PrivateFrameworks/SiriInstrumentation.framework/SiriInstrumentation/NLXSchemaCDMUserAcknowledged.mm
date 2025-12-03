@interface NLXSchemaCDMUserAcknowledged
- (BOOL)isEqual:(id)equal;
- (NLXSchemaCDMUserAcknowledged)initWithDictionary:(id)dictionary;
- (NLXSchemaCDMUserAcknowledged)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaCDMUserAcknowledged

- (NLXSchemaCDMUserAcknowledged)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = NLXSchemaCDMUserAcknowledged;
  v5 = [(NLXSchemaCDMUserAcknowledged *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"systemDialogActId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(NLXSchemaCDMUserAcknowledged *)v5 setSystemDialogActId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (NLXSchemaCDMUserAcknowledged)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaCDMUserAcknowledged *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaCDMUserAcknowledged *)self dictionaryRepresentation];
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
  if (self->_systemDialogActId)
  {
    systemDialogActId = [(NLXSchemaCDMUserAcknowledged *)self systemDialogActId];
    dictionaryRepresentation = [systemDialogActId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"systemDialogActId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"systemDialogActId"];
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
    systemDialogActId = [(NLXSchemaCDMUserAcknowledged *)self systemDialogActId];
    systemDialogActId2 = [equalCopy systemDialogActId];
    v7 = systemDialogActId2;
    if ((systemDialogActId != 0) != (systemDialogActId2 == 0))
    {
      systemDialogActId3 = [(NLXSchemaCDMUserAcknowledged *)self systemDialogActId];
      if (!systemDialogActId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = systemDialogActId3;
      systemDialogActId4 = [(NLXSchemaCDMUserAcknowledged *)self systemDialogActId];
      systemDialogActId5 = [equalCopy systemDialogActId];
      v12 = [systemDialogActId4 isEqual:systemDialogActId5];

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
  systemDialogActId = [(NLXSchemaCDMUserAcknowledged *)self systemDialogActId];

  if (systemDialogActId)
  {
    systemDialogActId2 = [(NLXSchemaCDMUserAcknowledged *)self systemDialogActId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = NLXSchemaCDMUserAcknowledged;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(NLXSchemaCDMUserAcknowledged *)self systemDialogActId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(NLXSchemaCDMUserAcknowledged *)self deleteSystemDialogActId];
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
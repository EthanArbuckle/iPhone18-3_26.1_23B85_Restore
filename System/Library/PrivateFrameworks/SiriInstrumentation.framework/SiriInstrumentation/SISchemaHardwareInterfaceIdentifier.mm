@interface SISchemaHardwareInterfaceIdentifier
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaHardwareInterfaceIdentifier)initWithDictionary:(id)dictionary;
- (SISchemaHardwareInterfaceIdentifier)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation SISchemaHardwareInterfaceIdentifier

- (SISchemaHardwareInterfaceIdentifier)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = SISchemaHardwareInterfaceIdentifier;
  v5 = [(SISchemaHardwareInterfaceIdentifier *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"interfaceVendorID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaHardwareInterfaceIdentifier *)v5 setInterfaceVendorID:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"interfaceProductID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(SISchemaHardwareInterfaceIdentifier *)v5 setInterfaceProductID:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (SISchemaHardwareInterfaceIdentifier)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaHardwareInterfaceIdentifier *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaHardwareInterfaceIdentifier *)self dictionaryRepresentation];
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
  if (self->_interfaceProductID)
  {
    interfaceProductID = [(SISchemaHardwareInterfaceIdentifier *)self interfaceProductID];
    v5 = [interfaceProductID copy];
    [dictionary setObject:v5 forKeyedSubscript:@"interfaceProductID"];
  }

  if (self->_interfaceVendorID)
  {
    interfaceVendorID = [(SISchemaHardwareInterfaceIdentifier *)self interfaceVendorID];
    v7 = [interfaceVendorID copy];
    [dictionary setObject:v7 forKeyedSubscript:@"interfaceVendorID"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  interfaceVendorID = [(SISchemaHardwareInterfaceIdentifier *)self interfaceVendorID];
  interfaceVendorID2 = [equalCopy interfaceVendorID];
  if ((interfaceVendorID != 0) == (interfaceVendorID2 == 0))
  {
    goto LABEL_11;
  }

  interfaceVendorID3 = [(SISchemaHardwareInterfaceIdentifier *)self interfaceVendorID];
  if (interfaceVendorID3)
  {
    v8 = interfaceVendorID3;
    interfaceVendorID4 = [(SISchemaHardwareInterfaceIdentifier *)self interfaceVendorID];
    interfaceVendorID5 = [equalCopy interfaceVendorID];
    v11 = [interfaceVendorID4 isEqual:interfaceVendorID5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  interfaceVendorID = [(SISchemaHardwareInterfaceIdentifier *)self interfaceProductID];
  interfaceVendorID2 = [equalCopy interfaceProductID];
  if ((interfaceVendorID != 0) != (interfaceVendorID2 == 0))
  {
    interfaceProductID = [(SISchemaHardwareInterfaceIdentifier *)self interfaceProductID];
    if (!interfaceProductID)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = interfaceProductID;
    interfaceProductID2 = [(SISchemaHardwareInterfaceIdentifier *)self interfaceProductID];
    interfaceProductID3 = [equalCopy interfaceProductID];
    v16 = [interfaceProductID2 isEqual:interfaceProductID3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  interfaceVendorID = [(SISchemaHardwareInterfaceIdentifier *)self interfaceVendorID];

  if (interfaceVendorID)
  {
    PBDataWriterWriteStringField();
  }

  interfaceProductID = [(SISchemaHardwareInterfaceIdentifier *)self interfaceProductID];

  if (interfaceProductID)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end
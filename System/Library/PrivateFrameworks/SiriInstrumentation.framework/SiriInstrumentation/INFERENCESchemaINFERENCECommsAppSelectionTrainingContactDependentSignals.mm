@interface INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentSignals
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentSignals)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentSignals)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentSignals

- (INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentSignals)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentSignals;
  v5 = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentSignals *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"contactDependentMessageSignals"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignals alloc] initWithDictionary:v6];
      [(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentSignals *)v5 setContactDependentMessageSignals:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"contactDependentPhoneCallSignals"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignals alloc] initWithDictionary:v8];
      [(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentSignals *)v5 setContactDependentPhoneCallSignals:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentSignals)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentSignals *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentSignals *)self dictionaryRepresentation];
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
  if (self->_contactDependentMessageSignals)
  {
    contactDependentMessageSignals = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentSignals *)self contactDependentMessageSignals];
    dictionaryRepresentation = [contactDependentMessageSignals dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"contactDependentMessageSignals"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"contactDependentMessageSignals"];
    }
  }

  if (self->_contactDependentPhoneCallSignals)
  {
    contactDependentPhoneCallSignals = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentSignals *)self contactDependentPhoneCallSignals];
    dictionaryRepresentation2 = [contactDependentPhoneCallSignals dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"contactDependentPhoneCallSignals"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"contactDependentPhoneCallSignals"];
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
    goto LABEL_12;
  }

  contactDependentMessageSignals = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentSignals *)self contactDependentMessageSignals];
  contactDependentMessageSignals2 = [equalCopy contactDependentMessageSignals];
  if ((contactDependentMessageSignals != 0) == (contactDependentMessageSignals2 == 0))
  {
    goto LABEL_11;
  }

  contactDependentMessageSignals3 = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentSignals *)self contactDependentMessageSignals];
  if (contactDependentMessageSignals3)
  {
    v8 = contactDependentMessageSignals3;
    contactDependentMessageSignals4 = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentSignals *)self contactDependentMessageSignals];
    contactDependentMessageSignals5 = [equalCopy contactDependentMessageSignals];
    v11 = [contactDependentMessageSignals4 isEqual:contactDependentMessageSignals5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  contactDependentMessageSignals = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentSignals *)self contactDependentPhoneCallSignals];
  contactDependentMessageSignals2 = [equalCopy contactDependentPhoneCallSignals];
  if ((contactDependentMessageSignals != 0) != (contactDependentMessageSignals2 == 0))
  {
    contactDependentPhoneCallSignals = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentSignals *)self contactDependentPhoneCallSignals];
    if (!contactDependentPhoneCallSignals)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = contactDependentPhoneCallSignals;
    contactDependentPhoneCallSignals2 = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentSignals *)self contactDependentPhoneCallSignals];
    contactDependentPhoneCallSignals3 = [equalCopy contactDependentPhoneCallSignals];
    v16 = [contactDependentPhoneCallSignals2 isEqual:contactDependentPhoneCallSignals3];

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
  contactDependentMessageSignals = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentSignals *)self contactDependentMessageSignals];

  if (contactDependentMessageSignals)
  {
    contactDependentMessageSignals2 = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentSignals *)self contactDependentMessageSignals];
    PBDataWriterWriteSubmessage();
  }

  contactDependentPhoneCallSignals = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentSignals *)self contactDependentPhoneCallSignals];

  if (contactDependentPhoneCallSignals)
  {
    contactDependentPhoneCallSignals2 = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentSignals *)self contactDependentPhoneCallSignals];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentSignals;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  contactDependentMessageSignals = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentSignals *)self contactDependentMessageSignals];
  v7 = [contactDependentMessageSignals applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentSignals *)self deleteContactDependentMessageSignals];
  }

  contactDependentPhoneCallSignals = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentSignals *)self contactDependentPhoneCallSignals];
  v10 = [contactDependentPhoneCallSignals applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentSignals *)self deleteContactDependentPhoneCallSignals];
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
@interface IFTSchemaIFTEnumerationValue
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTEnumerationValue)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTEnumerationValue)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTEnumerationValue

- (IFTSchemaIFTEnumerationValue)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = IFTSchemaIFTEnumerationValue;
  v5 = [(IFTSchemaIFTEnumerationValue *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"typeIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTTypeIdentifier alloc] initWithDictionary:v6];
      [(IFTSchemaIFTEnumerationValue *)v5 setTypeIdentifier:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"displayRepresentation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[IFTSchemaIFTDisplayRepresentation alloc] initWithDictionary:v8];
      [(IFTSchemaIFTEnumerationValue *)v5 setDisplayRepresentation:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (IFTSchemaIFTEnumerationValue)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTEnumerationValue *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTEnumerationValue *)self dictionaryRepresentation];
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
  if (self->_displayRepresentation)
  {
    displayRepresentation = [(IFTSchemaIFTEnumerationValue *)self displayRepresentation];
    dictionaryRepresentation = [displayRepresentation dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"displayRepresentation"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"displayRepresentation"];
    }
  }

  if (self->_typeIdentifier)
  {
    typeIdentifier = [(IFTSchemaIFTEnumerationValue *)self typeIdentifier];
    dictionaryRepresentation2 = [typeIdentifier dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"typeIdentifier"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"typeIdentifier"];
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

  typeIdentifier = [(IFTSchemaIFTEnumerationValue *)self typeIdentifier];
  typeIdentifier2 = [equalCopy typeIdentifier];
  if ((typeIdentifier != 0) == (typeIdentifier2 == 0))
  {
    goto LABEL_11;
  }

  typeIdentifier3 = [(IFTSchemaIFTEnumerationValue *)self typeIdentifier];
  if (typeIdentifier3)
  {
    v8 = typeIdentifier3;
    typeIdentifier4 = [(IFTSchemaIFTEnumerationValue *)self typeIdentifier];
    typeIdentifier5 = [equalCopy typeIdentifier];
    v11 = [typeIdentifier4 isEqual:typeIdentifier5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  typeIdentifier = [(IFTSchemaIFTEnumerationValue *)self displayRepresentation];
  typeIdentifier2 = [equalCopy displayRepresentation];
  if ((typeIdentifier != 0) != (typeIdentifier2 == 0))
  {
    displayRepresentation = [(IFTSchemaIFTEnumerationValue *)self displayRepresentation];
    if (!displayRepresentation)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = displayRepresentation;
    displayRepresentation2 = [(IFTSchemaIFTEnumerationValue *)self displayRepresentation];
    displayRepresentation3 = [equalCopy displayRepresentation];
    v16 = [displayRepresentation2 isEqual:displayRepresentation3];

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
  typeIdentifier = [(IFTSchemaIFTEnumerationValue *)self typeIdentifier];

  if (typeIdentifier)
  {
    typeIdentifier2 = [(IFTSchemaIFTEnumerationValue *)self typeIdentifier];
    PBDataWriterWriteSubmessage();
  }

  displayRepresentation = [(IFTSchemaIFTEnumerationValue *)self displayRepresentation];

  if (displayRepresentation)
  {
    displayRepresentation2 = [(IFTSchemaIFTEnumerationValue *)self displayRepresentation];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = IFTSchemaIFTEnumerationValue;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  typeIdentifier = [(IFTSchemaIFTEnumerationValue *)self typeIdentifier];
  v7 = [typeIdentifier applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFTSchemaIFTEnumerationValue *)self deleteTypeIdentifier];
  }

  displayRepresentation = [(IFTSchemaIFTEnumerationValue *)self displayRepresentation];
  v10 = [displayRepresentation applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(IFTSchemaIFTEnumerationValue *)self deleteDisplayRepresentation];
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
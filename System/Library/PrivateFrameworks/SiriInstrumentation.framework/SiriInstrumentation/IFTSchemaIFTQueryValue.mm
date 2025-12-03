@interface IFTSchemaIFTQueryValue
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTQueryValue)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTQueryValue)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTQueryValue

- (IFTSchemaIFTQueryValue)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = IFTSchemaIFTQueryValue;
  v5 = [(IFTSchemaIFTQueryValue *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"typeIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTTypeIdentifier alloc] initWithDictionary:v6];
      [(IFTSchemaIFTQueryValue *)v5 setTypeIdentifier:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"query"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[IFTSchemaIFTQuery alloc] initWithDictionary:v8];
      [(IFTSchemaIFTQueryValue *)v5 setQuery:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (IFTSchemaIFTQueryValue)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTQueryValue *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTQueryValue *)self dictionaryRepresentation];
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
  if (self->_query)
  {
    query = [(IFTSchemaIFTQueryValue *)self query];
    dictionaryRepresentation = [query dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"query"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"query"];
    }
  }

  if (self->_typeIdentifier)
  {
    typeIdentifier = [(IFTSchemaIFTQueryValue *)self typeIdentifier];
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

  typeIdentifier = [(IFTSchemaIFTQueryValue *)self typeIdentifier];
  typeIdentifier2 = [equalCopy typeIdentifier];
  if ((typeIdentifier != 0) == (typeIdentifier2 == 0))
  {
    goto LABEL_11;
  }

  typeIdentifier3 = [(IFTSchemaIFTQueryValue *)self typeIdentifier];
  if (typeIdentifier3)
  {
    v8 = typeIdentifier3;
    typeIdentifier4 = [(IFTSchemaIFTQueryValue *)self typeIdentifier];
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

  typeIdentifier = [(IFTSchemaIFTQueryValue *)self query];
  typeIdentifier2 = [equalCopy query];
  if ((typeIdentifier != 0) != (typeIdentifier2 == 0))
  {
    query = [(IFTSchemaIFTQueryValue *)self query];
    if (!query)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = query;
    query2 = [(IFTSchemaIFTQueryValue *)self query];
    query3 = [equalCopy query];
    v16 = [query2 isEqual:query3];

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
  typeIdentifier = [(IFTSchemaIFTQueryValue *)self typeIdentifier];

  if (typeIdentifier)
  {
    typeIdentifier2 = [(IFTSchemaIFTQueryValue *)self typeIdentifier];
    PBDataWriterWriteSubmessage();
  }

  query = [(IFTSchemaIFTQueryValue *)self query];

  if (query)
  {
    query2 = [(IFTSchemaIFTQueryValue *)self query];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = IFTSchemaIFTQueryValue;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  typeIdentifier = [(IFTSchemaIFTQueryValue *)self typeIdentifier];
  v7 = [typeIdentifier applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFTSchemaIFTQueryValue *)self deleteTypeIdentifier];
  }

  query = [(IFTSchemaIFTQueryValue *)self query];
  v10 = [query applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(IFTSchemaIFTQueryValue *)self deleteQuery];
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
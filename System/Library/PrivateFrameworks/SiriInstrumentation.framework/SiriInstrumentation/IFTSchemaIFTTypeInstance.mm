@interface IFTSchemaIFTTypeInstance
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTCollectionValue)collection;
- (IFTSchemaIFTTypeIdentifier)typeIdentifier;
- (IFTSchemaIFTTypeInstance)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTTypeInstance)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteCollection;
- (void)deleteTypeIdentifier;
- (void)setCollection:(id)collection;
- (void)setTypeIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTTypeInstance

- (IFTSchemaIFTTypeInstance)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = IFTSchemaIFTTypeInstance;
  v5 = [(IFTSchemaIFTTypeInstance *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"typeIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTTypeIdentifier alloc] initWithDictionary:v6];
      [(IFTSchemaIFTTypeInstance *)v5 setTypeIdentifier:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"collection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[IFTSchemaIFTCollectionValue alloc] initWithDictionary:v8];
      [(IFTSchemaIFTTypeInstance *)v5 setCollection:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (IFTSchemaIFTTypeInstance)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTTypeInstance *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTTypeInstance *)self dictionaryRepresentation];
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
  if (self->_collection)
  {
    collection = [(IFTSchemaIFTTypeInstance *)self collection];
    dictionaryRepresentation = [collection dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"collection"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"collection"];
    }
  }

  if (self->_typeIdentifier)
  {
    typeIdentifier = [(IFTSchemaIFTTypeInstance *)self typeIdentifier];
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
    goto LABEL_13;
  }

  whichItemtype = self->_whichItemtype;
  if (whichItemtype != [equalCopy whichItemtype])
  {
    goto LABEL_13;
  }

  typeIdentifier = [(IFTSchemaIFTTypeInstance *)self typeIdentifier];
  typeIdentifier2 = [equalCopy typeIdentifier];
  if ((typeIdentifier != 0) == (typeIdentifier2 == 0))
  {
    goto LABEL_12;
  }

  typeIdentifier3 = [(IFTSchemaIFTTypeInstance *)self typeIdentifier];
  if (typeIdentifier3)
  {
    v9 = typeIdentifier3;
    typeIdentifier4 = [(IFTSchemaIFTTypeInstance *)self typeIdentifier];
    typeIdentifier5 = [equalCopy typeIdentifier];
    v12 = [typeIdentifier4 isEqual:typeIdentifier5];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  typeIdentifier = [(IFTSchemaIFTTypeInstance *)self collection];
  typeIdentifier2 = [equalCopy collection];
  if ((typeIdentifier != 0) != (typeIdentifier2 == 0))
  {
    collection = [(IFTSchemaIFTTypeInstance *)self collection];
    if (!collection)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = collection;
    collection2 = [(IFTSchemaIFTTypeInstance *)self collection];
    collection3 = [equalCopy collection];
    v17 = [collection2 isEqual:collection3];

    if (v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_12:
  }

LABEL_13:
  v18 = 0;
LABEL_14:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  typeIdentifier = [(IFTSchemaIFTTypeInstance *)self typeIdentifier];

  if (typeIdentifier)
  {
    typeIdentifier2 = [(IFTSchemaIFTTypeInstance *)self typeIdentifier];
    PBDataWriterWriteSubmessage();
  }

  collection = [(IFTSchemaIFTTypeInstance *)self collection];

  if (collection)
  {
    collection2 = [(IFTSchemaIFTTypeInstance *)self collection];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteCollection
{
  if (self->_whichItemtype == 2)
  {
    self->_whichItemtype = 0;
    self->_collection = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTCollectionValue)collection
{
  if (self->_whichItemtype == 2)
  {
    v3 = self->_collection;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCollection:(id)collection
{
  collectionCopy = collection;
  typeIdentifier = self->_typeIdentifier;
  self->_typeIdentifier = 0;

  self->_whichItemtype = 2 * (collectionCopy != 0);
  collection = self->_collection;
  self->_collection = collectionCopy;
}

- (void)deleteTypeIdentifier
{
  if (self->_whichItemtype == 1)
  {
    self->_whichItemtype = 0;
    self->_typeIdentifier = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTTypeIdentifier)typeIdentifier
{
  if (self->_whichItemtype == 1)
  {
    v3 = self->_typeIdentifier;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTypeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  collection = self->_collection;
  self->_collection = 0;

  self->_whichItemtype = identifierCopy != 0;
  typeIdentifier = self->_typeIdentifier;
  self->_typeIdentifier = identifierCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = IFTSchemaIFTTypeInstance;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  typeIdentifier = [(IFTSchemaIFTTypeInstance *)self typeIdentifier];
  v7 = [typeIdentifier applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFTSchemaIFTTypeInstance *)self deleteTypeIdentifier];
  }

  collection = [(IFTSchemaIFTTypeInstance *)self collection];
  v10 = [collection applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(IFTSchemaIFTTypeInstance *)self deleteCollection];
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
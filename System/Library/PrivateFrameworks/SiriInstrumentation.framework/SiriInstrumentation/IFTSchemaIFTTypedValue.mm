@interface IFTSchemaIFTTypedValue
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTCollectionValue)collection;
- (IFTSchemaIFTTypedValue)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTTypedValue)initWithJSON:(id)n;
- (IFTSchemaIFTValue)value;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteCollection;
- (void)deleteValue;
- (void)setCollection:(id)collection;
- (void)setValue:(id)value;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTTypedValue

- (IFTSchemaIFTTypedValue)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = IFTSchemaIFTTypedValue;
  v5 = [(IFTSchemaIFTTypedValue *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTValue alloc] initWithDictionary:v6];
      [(IFTSchemaIFTTypedValue *)v5 setValue:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"collection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[IFTSchemaIFTCollectionValue alloc] initWithDictionary:v8];
      [(IFTSchemaIFTTypedValue *)v5 setCollection:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (IFTSchemaIFTTypedValue)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTTypedValue *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTTypedValue *)self dictionaryRepresentation];
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
    collection = [(IFTSchemaIFTTypedValue *)self collection];
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

  if (self->_value)
  {
    value = [(IFTSchemaIFTTypedValue *)self value];
    dictionaryRepresentation2 = [value dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"value"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"value"];
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

  whichOneof_Typedvalue = self->_whichOneof_Typedvalue;
  if (whichOneof_Typedvalue != [equalCopy whichOneof_Typedvalue])
  {
    goto LABEL_13;
  }

  value = [(IFTSchemaIFTTypedValue *)self value];
  value2 = [equalCopy value];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_12;
  }

  value3 = [(IFTSchemaIFTTypedValue *)self value];
  if (value3)
  {
    v9 = value3;
    value4 = [(IFTSchemaIFTTypedValue *)self value];
    value5 = [equalCopy value];
    v12 = [value4 isEqual:value5];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  value = [(IFTSchemaIFTTypedValue *)self collection];
  value2 = [equalCopy collection];
  if ((value != 0) != (value2 == 0))
  {
    collection = [(IFTSchemaIFTTypedValue *)self collection];
    if (!collection)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = collection;
    collection2 = [(IFTSchemaIFTTypedValue *)self collection];
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
  value = [(IFTSchemaIFTTypedValue *)self value];

  if (value)
  {
    value2 = [(IFTSchemaIFTTypedValue *)self value];
    PBDataWriterWriteSubmessage();
  }

  collection = [(IFTSchemaIFTTypedValue *)self collection];

  if (collection)
  {
    collection2 = [(IFTSchemaIFTTypedValue *)self collection];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteCollection
{
  if (self->_whichOneof_Typedvalue == 2)
  {
    self->_whichOneof_Typedvalue = 0;
    self->_collection = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTCollectionValue)collection
{
  if (self->_whichOneof_Typedvalue == 2)
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
  value = self->_value;
  self->_value = 0;

  self->_whichOneof_Typedvalue = 2 * (collectionCopy != 0);
  collection = self->_collection;
  self->_collection = collectionCopy;
}

- (void)deleteValue
{
  if (self->_whichOneof_Typedvalue == 1)
  {
    self->_whichOneof_Typedvalue = 0;
    self->_value = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTValue)value
{
  if (self->_whichOneof_Typedvalue == 1)
  {
    v3 = self->_value;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  collection = self->_collection;
  self->_collection = 0;

  self->_whichOneof_Typedvalue = valueCopy != 0;
  value = self->_value;
  self->_value = valueCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = IFTSchemaIFTTypedValue;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  value = [(IFTSchemaIFTTypedValue *)self value];
  v7 = [value applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFTSchemaIFTTypedValue *)self deleteValue];
  }

  collection = [(IFTSchemaIFTTypedValue *)self collection];
  v10 = [collection applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(IFTSchemaIFTTypedValue *)self deleteCollection];
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
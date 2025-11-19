@interface IFTSchemaIFTTypedValue
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTCollectionValue)collection;
- (IFTSchemaIFTTypedValue)initWithDictionary:(id)a3;
- (IFTSchemaIFTTypedValue)initWithJSON:(id)a3;
- (IFTSchemaIFTValue)value;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteCollection;
- (void)deleteValue;
- (void)setCollection:(id)a3;
- (void)setValue:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTTypedValue

- (IFTSchemaIFTTypedValue)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = IFTSchemaIFTTypedValue;
  v5 = [(IFTSchemaIFTTypedValue *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTValue alloc] initWithDictionary:v6];
      [(IFTSchemaIFTTypedValue *)v5 setValue:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"collection"];
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

- (IFTSchemaIFTTypedValue)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTTypedValue *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTTypedValue *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_collection)
  {
    v4 = [(IFTSchemaIFTTypedValue *)self collection];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"collection"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"collection"];
    }
  }

  if (self->_value)
  {
    v7 = [(IFTSchemaIFTTypedValue *)self value];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"value"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"value"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  whichOneof_Typedvalue = self->_whichOneof_Typedvalue;
  if (whichOneof_Typedvalue != [v4 whichOneof_Typedvalue])
  {
    goto LABEL_13;
  }

  v6 = [(IFTSchemaIFTTypedValue *)self value];
  v7 = [v4 value];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_12;
  }

  v8 = [(IFTSchemaIFTTypedValue *)self value];
  if (v8)
  {
    v9 = v8;
    v10 = [(IFTSchemaIFTTypedValue *)self value];
    v11 = [v4 value];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTTypedValue *)self collection];
  v7 = [v4 collection];
  if ((v6 != 0) != (v7 == 0))
  {
    v13 = [(IFTSchemaIFTTypedValue *)self collection];
    if (!v13)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = v13;
    v15 = [(IFTSchemaIFTTypedValue *)self collection];
    v16 = [v4 collection];
    v17 = [v15 isEqual:v16];

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

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(IFTSchemaIFTTypedValue *)self value];

  if (v4)
  {
    v5 = [(IFTSchemaIFTTypedValue *)self value];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(IFTSchemaIFTTypedValue *)self collection];

  if (v6)
  {
    v7 = [(IFTSchemaIFTTypedValue *)self collection];
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

- (void)setCollection:(id)a3
{
  v4 = a3;
  value = self->_value;
  self->_value = 0;

  self->_whichOneof_Typedvalue = 2 * (v4 != 0);
  collection = self->_collection;
  self->_collection = v4;
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

- (void)setValue:(id)a3
{
  v4 = a3;
  collection = self->_collection;
  self->_collection = 0;

  self->_whichOneof_Typedvalue = v4 != 0;
  value = self->_value;
  self->_value = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = IFTSchemaIFTTypedValue;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(IFTSchemaIFTTypedValue *)self value];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(IFTSchemaIFTTypedValue *)self deleteValue];
  }

  v9 = [(IFTSchemaIFTTypedValue *)self collection];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
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
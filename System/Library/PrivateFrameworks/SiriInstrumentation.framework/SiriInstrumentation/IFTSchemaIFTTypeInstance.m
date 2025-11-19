@interface IFTSchemaIFTTypeInstance
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTCollectionValue)collection;
- (IFTSchemaIFTTypeIdentifier)typeIdentifier;
- (IFTSchemaIFTTypeInstance)initWithDictionary:(id)a3;
- (IFTSchemaIFTTypeInstance)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteCollection;
- (void)deleteTypeIdentifier;
- (void)setCollection:(id)a3;
- (void)setTypeIdentifier:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTTypeInstance

- (IFTSchemaIFTTypeInstance)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = IFTSchemaIFTTypeInstance;
  v5 = [(IFTSchemaIFTTypeInstance *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"typeIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTTypeIdentifier alloc] initWithDictionary:v6];
      [(IFTSchemaIFTTypeInstance *)v5 setTypeIdentifier:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"collection"];
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

- (IFTSchemaIFTTypeInstance)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTTypeInstance *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTTypeInstance *)self dictionaryRepresentation];
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
    v4 = [(IFTSchemaIFTTypeInstance *)self collection];
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

  if (self->_typeIdentifier)
  {
    v7 = [(IFTSchemaIFTTypeInstance *)self typeIdentifier];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"typeIdentifier"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"typeIdentifier"];
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

  whichItemtype = self->_whichItemtype;
  if (whichItemtype != [v4 whichItemtype])
  {
    goto LABEL_13;
  }

  v6 = [(IFTSchemaIFTTypeInstance *)self typeIdentifier];
  v7 = [v4 typeIdentifier];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_12;
  }

  v8 = [(IFTSchemaIFTTypeInstance *)self typeIdentifier];
  if (v8)
  {
    v9 = v8;
    v10 = [(IFTSchemaIFTTypeInstance *)self typeIdentifier];
    v11 = [v4 typeIdentifier];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTTypeInstance *)self collection];
  v7 = [v4 collection];
  if ((v6 != 0) != (v7 == 0))
  {
    v13 = [(IFTSchemaIFTTypeInstance *)self collection];
    if (!v13)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = v13;
    v15 = [(IFTSchemaIFTTypeInstance *)self collection];
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
  v4 = [(IFTSchemaIFTTypeInstance *)self typeIdentifier];

  if (v4)
  {
    v5 = [(IFTSchemaIFTTypeInstance *)self typeIdentifier];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(IFTSchemaIFTTypeInstance *)self collection];

  if (v6)
  {
    v7 = [(IFTSchemaIFTTypeInstance *)self collection];
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

- (void)setCollection:(id)a3
{
  v4 = a3;
  typeIdentifier = self->_typeIdentifier;
  self->_typeIdentifier = 0;

  self->_whichItemtype = 2 * (v4 != 0);
  collection = self->_collection;
  self->_collection = v4;
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

- (void)setTypeIdentifier:(id)a3
{
  v4 = a3;
  collection = self->_collection;
  self->_collection = 0;

  self->_whichItemtype = v4 != 0;
  typeIdentifier = self->_typeIdentifier;
  self->_typeIdentifier = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = IFTSchemaIFTTypeInstance;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(IFTSchemaIFTTypeInstance *)self typeIdentifier];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(IFTSchemaIFTTypeInstance *)self deleteTypeIdentifier];
  }

  v9 = [(IFTSchemaIFTTypeInstance *)self collection];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
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
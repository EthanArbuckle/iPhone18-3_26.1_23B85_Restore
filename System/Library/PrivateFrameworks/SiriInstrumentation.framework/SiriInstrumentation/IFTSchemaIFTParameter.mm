@interface IFTSchemaIFTParameter
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTParameter)initWithDictionary:(id)a3;
- (IFTSchemaIFTParameter)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTParameter

- (IFTSchemaIFTParameter)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = IFTSchemaIFTParameter;
  v5 = [(IFTSchemaIFTParameter *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"key"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(IFTSchemaIFTParameter *)v5 setKey:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"collectionIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTParameter setCollectionIndex:](v5, "setCollectionIndex:", [v8 longLongValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"candidate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[IFTSchemaIFTCandidate alloc] initWithDictionary:v9];
      [(IFTSchemaIFTParameter *)v5 setCandidate:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (IFTSchemaIFTParameter)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTParameter *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTParameter *)self dictionaryRepresentation];
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
  if (self->_candidate)
  {
    v4 = [(IFTSchemaIFTParameter *)self candidate];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"candidate"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"candidate"];
    }
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[IFTSchemaIFTParameter collectionIndex](self, "collectionIndex")}];
    [v3 setObject:v7 forKeyedSubscript:@"collectionIndex"];
  }

  if (self->_key)
  {
    v8 = [(IFTSchemaIFTParameter *)self key];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"key"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_collectionIndex;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(IFTSchemaIFTCandidate *)self->_candidate hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = [(IFTSchemaIFTParameter *)self key];
  v6 = [v4 key];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_14;
  }

  v7 = [(IFTSchemaIFTParameter *)self key];
  if (v7)
  {
    v8 = v7;
    v9 = [(IFTSchemaIFTParameter *)self key];
    v10 = [v4 key];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    collectionIndex = self->_collectionIndex;
    if (collectionIndex != [v4 collectionIndex])
    {
      goto LABEL_15;
    }
  }

  v5 = [(IFTSchemaIFTParameter *)self candidate];
  v6 = [v4 candidate];
  if ((v5 != 0) != (v6 == 0))
  {
    v13 = [(IFTSchemaIFTParameter *)self candidate];
    if (!v13)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = v13;
    v15 = [(IFTSchemaIFTParameter *)self candidate];
    v16 = [v4 candidate];
    v17 = [v15 isEqual:v16];

    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(IFTSchemaIFTParameter *)self key];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
  }

  v5 = [(IFTSchemaIFTParameter *)self candidate];

  v6 = v8;
  if (v5)
  {
    v7 = [(IFTSchemaIFTParameter *)self candidate];
    PBDataWriterWriteSubmessage();

    v6 = v8;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = IFTSchemaIFTParameter;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(IFTSchemaIFTParameter *)self candidate:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(IFTSchemaIFTParameter *)self deleteCandidate];
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
@interface IFTSchemaIFTParameter
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTParameter)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTParameter)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTParameter

- (IFTSchemaIFTParameter)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = IFTSchemaIFTParameter;
  v5 = [(IFTSchemaIFTParameter *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"key"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(IFTSchemaIFTParameter *)v5 setKey:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"collectionIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTParameter setCollectionIndex:](v5, "setCollectionIndex:", [v8 longLongValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"candidate"];
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

- (IFTSchemaIFTParameter)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTParameter *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTParameter *)self dictionaryRepresentation];
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
  if (self->_candidate)
  {
    candidate = [(IFTSchemaIFTParameter *)self candidate];
    dictionaryRepresentation = [candidate dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"candidate"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"candidate"];
    }
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[IFTSchemaIFTParameter collectionIndex](self, "collectionIndex")}];
    [dictionary setObject:v7 forKeyedSubscript:@"collectionIndex"];
  }

  if (self->_key)
  {
    v8 = [(IFTSchemaIFTParameter *)self key];
    v9 = [v8 copy];
    [dictionary setObject:v9 forKeyedSubscript:@"key"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  candidate = [(IFTSchemaIFTParameter *)self key];
  candidate2 = [equalCopy key];
  if ((candidate != 0) == (candidate2 == 0))
  {
    goto LABEL_14;
  }

  v7 = [(IFTSchemaIFTParameter *)self key];
  if (v7)
  {
    v8 = v7;
    v9 = [(IFTSchemaIFTParameter *)self key];
    v10 = [equalCopy key];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    collectionIndex = self->_collectionIndex;
    if (collectionIndex != [equalCopy collectionIndex])
    {
      goto LABEL_15;
    }
  }

  candidate = [(IFTSchemaIFTParameter *)self candidate];
  candidate2 = [equalCopy candidate];
  if ((candidate != 0) != (candidate2 == 0))
  {
    candidate3 = [(IFTSchemaIFTParameter *)self candidate];
    if (!candidate3)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = candidate3;
    candidate4 = [(IFTSchemaIFTParameter *)self candidate];
    candidate5 = [equalCopy candidate];
    v17 = [candidate4 isEqual:candidate5];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  v4 = [(IFTSchemaIFTParameter *)self key];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
  }

  candidate = [(IFTSchemaIFTParameter *)self candidate];

  v6 = toCopy;
  if (candidate)
  {
    candidate2 = [(IFTSchemaIFTParameter *)self candidate];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = IFTSchemaIFTParameter;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(IFTSchemaIFTParameter *)self candidate:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
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
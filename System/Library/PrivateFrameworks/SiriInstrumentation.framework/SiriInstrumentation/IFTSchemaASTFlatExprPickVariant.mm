@interface IFTSchemaASTFlatExprPickVariant
- (BOOL)isEqual:(id)equal;
- (IFTSchemaASTFlatExprPickVariant)initWithDictionary:(id)dictionary;
- (IFTSchemaASTFlatExprPickVariant)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaASTFlatExprPickVariant

- (IFTSchemaASTFlatExprPickVariant)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = IFTSchemaASTFlatExprPickVariant;
  v5 = [(IFTSchemaASTFlatExprPickVariant *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaASTFlatExprPickVariant setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"rawEventId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[SISchemaUUID alloc] initWithDictionary:v7];
      [(IFTSchemaASTFlatExprPickVariant *)v5 setRawEventId:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"pickType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[IFTSchemaASTPickType alloc] initWithDictionary:v9];
      [(IFTSchemaASTFlatExprPickVariant *)v5 setPickType:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (IFTSchemaASTFlatExprPickVariant)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaASTFlatExprPickVariant *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaASTFlatExprPickVariant *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaASTFlatExprPickVariant exists](self, "exists")}];
    [dictionary setObject:v4 forKeyedSubscript:@"exists"];
  }

  if (self->_pickType)
  {
    pickType = [(IFTSchemaASTFlatExprPickVariant *)self pickType];
    dictionaryRepresentation = [pickType dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"pickType"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"pickType"];
    }
  }

  if (self->_rawEventId)
  {
    rawEventId = [(IFTSchemaASTFlatExprPickVariant *)self rawEventId];
    dictionaryRepresentation2 = [rawEventId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"rawEventId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"rawEventId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_exists;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(SISchemaUUID *)self->_rawEventId hash]^ v3;
  return v4 ^ [(IFTSchemaASTPickType *)self->_pickType hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    exists = self->_exists;
    if (exists != [equalCopy exists])
    {
      goto LABEL_15;
    }
  }

  rawEventId = [(IFTSchemaASTFlatExprPickVariant *)self rawEventId];
  rawEventId2 = [equalCopy rawEventId];
  if ((rawEventId != 0) == (rawEventId2 == 0))
  {
    goto LABEL_14;
  }

  rawEventId3 = [(IFTSchemaASTFlatExprPickVariant *)self rawEventId];
  if (rawEventId3)
  {
    v9 = rawEventId3;
    rawEventId4 = [(IFTSchemaASTFlatExprPickVariant *)self rawEventId];
    rawEventId5 = [equalCopy rawEventId];
    v12 = [rawEventId4 isEqual:rawEventId5];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  rawEventId = [(IFTSchemaASTFlatExprPickVariant *)self pickType];
  rawEventId2 = [equalCopy pickType];
  if ((rawEventId != 0) != (rawEventId2 == 0))
  {
    pickType = [(IFTSchemaASTFlatExprPickVariant *)self pickType];
    if (!pickType)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = pickType;
    pickType2 = [(IFTSchemaASTFlatExprPickVariant *)self pickType];
    pickType3 = [equalCopy pickType];
    v17 = [pickType2 isEqual:pickType3];

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
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  rawEventId = [(IFTSchemaASTFlatExprPickVariant *)self rawEventId];

  if (rawEventId)
  {
    rawEventId2 = [(IFTSchemaASTFlatExprPickVariant *)self rawEventId];
    PBDataWriterWriteSubmessage();
  }

  pickType = [(IFTSchemaASTFlatExprPickVariant *)self pickType];

  v7 = toCopy;
  if (pickType)
  {
    pickType2 = [(IFTSchemaASTFlatExprPickVariant *)self pickType];
    PBDataWriterWriteSubmessage();

    v7 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = IFTSchemaASTFlatExprPickVariant;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  rawEventId = [(IFTSchemaASTFlatExprPickVariant *)self rawEventId];
  v7 = [rawEventId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFTSchemaASTFlatExprPickVariant *)self deleteRawEventId];
  }

  pickType = [(IFTSchemaASTFlatExprPickVariant *)self pickType];
  v10 = [pickType applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(IFTSchemaASTFlatExprPickVariant *)self deletePickType];
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
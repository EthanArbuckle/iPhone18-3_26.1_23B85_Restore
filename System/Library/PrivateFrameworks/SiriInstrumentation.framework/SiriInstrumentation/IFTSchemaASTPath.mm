@interface IFTSchemaASTPath
- (BOOL)isEqual:(id)equal;
- (IFTSchemaASTPath)initWithDictionary:(id)dictionary;
- (IFTSchemaASTPath)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaASTPath

- (IFTSchemaASTPath)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = IFTSchemaASTPath;
  v5 = [(IFTSchemaASTPath *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"parameterName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(IFTSchemaASTPath *)v5 setParameterName:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"collectionIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaASTPath setCollectionIndex:](v5, "setCollectionIndex:", [v8 longLongValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (IFTSchemaASTPath)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaASTPath *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaASTPath *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[IFTSchemaASTPath collectionIndex](self, "collectionIndex")}];
    [dictionary setObject:v4 forKeyedSubscript:@"collectionIndex"];
  }

  if (self->_parameterName)
  {
    parameterName = [(IFTSchemaASTPath *)self parameterName];
    v6 = [parameterName copy];
    [dictionary setObject:v6 forKeyedSubscript:@"parameterName"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_parameterName hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_collectionIndex;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  parameterName = [(IFTSchemaASTPath *)self parameterName];
  parameterName2 = [equalCopy parameterName];
  v7 = parameterName2;
  if ((parameterName != 0) == (parameterName2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  parameterName3 = [(IFTSchemaASTPath *)self parameterName];
  if (parameterName3)
  {
    v9 = parameterName3;
    parameterName4 = [(IFTSchemaASTPath *)self parameterName];
    parameterName5 = [equalCopy parameterName];
    v12 = [parameterName4 isEqual:parameterName5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[24] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    collectionIndex = self->_collectionIndex;
    if (collectionIndex != [equalCopy collectionIndex])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  parameterName = [(IFTSchemaASTPath *)self parameterName];

  if (parameterName)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end
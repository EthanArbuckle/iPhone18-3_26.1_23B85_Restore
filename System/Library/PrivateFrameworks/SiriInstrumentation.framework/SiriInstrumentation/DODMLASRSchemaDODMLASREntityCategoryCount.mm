@interface DODMLASRSchemaDODMLASREntityCategoryCount
- (BOOL)isEqual:(id)equal;
- (DODMLASRSchemaDODMLASREntityCategoryCount)initWithDictionary:(id)dictionary;
- (DODMLASRSchemaDODMLASREntityCategoryCount)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation DODMLASRSchemaDODMLASREntityCategoryCount

- (DODMLASRSchemaDODMLASREntityCategoryCount)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = DODMLASRSchemaDODMLASREntityCategoryCount;
  v5 = [(DODMLASRSchemaDODMLASREntityCategoryCount *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"entityCategory"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(DODMLASRSchemaDODMLASREntityCategoryCount *)v5 setEntityCategory:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"count"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASREntityCategoryCount setCount:](v5, "setCount:", [v8 unsignedIntValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (DODMLASRSchemaDODMLASREntityCategoryCount)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DODMLASRSchemaDODMLASREntityCategoryCount *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DODMLASRSchemaDODMLASREntityCategoryCount *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASREntityCategoryCount count](self, "count")}];
    [dictionary setObject:v4 forKeyedSubscript:@"count"];
  }

  if (self->_entityCategory)
  {
    entityCategory = [(DODMLASRSchemaDODMLASREntityCategoryCount *)self entityCategory];
    v6 = [entityCategory copy];
    [dictionary setObject:v6 forKeyedSubscript:@"entityCategory"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_entityCategory hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_count;
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

  entityCategory = [(DODMLASRSchemaDODMLASREntityCategoryCount *)self entityCategory];
  entityCategory2 = [equalCopy entityCategory];
  v7 = entityCategory2;
  if ((entityCategory != 0) == (entityCategory2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  entityCategory3 = [(DODMLASRSchemaDODMLASREntityCategoryCount *)self entityCategory];
  if (entityCategory3)
  {
    v9 = entityCategory3;
    entityCategory4 = [(DODMLASRSchemaDODMLASREntityCategoryCount *)self entityCategory];
    entityCategory5 = [equalCopy entityCategory];
    v12 = [entityCategory4 isEqual:entityCategory5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[20] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    count = self->_count;
    if (count != [equalCopy count])
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
  entityCategory = [(DODMLASRSchemaDODMLASREntityCategoryCount *)self entityCategory];

  if (entityCategory)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end
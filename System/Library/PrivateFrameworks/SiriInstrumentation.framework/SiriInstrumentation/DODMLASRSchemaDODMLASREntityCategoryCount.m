@interface DODMLASRSchemaDODMLASREntityCategoryCount
- (BOOL)isEqual:(id)a3;
- (DODMLASRSchemaDODMLASREntityCategoryCount)initWithDictionary:(id)a3;
- (DODMLASRSchemaDODMLASREntityCategoryCount)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation DODMLASRSchemaDODMLASREntityCategoryCount

- (DODMLASRSchemaDODMLASREntityCategoryCount)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DODMLASRSchemaDODMLASREntityCategoryCount;
  v5 = [(DODMLASRSchemaDODMLASREntityCategoryCount *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"entityCategory"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(DODMLASRSchemaDODMLASREntityCategoryCount *)v5 setEntityCategory:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"count"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASREntityCategoryCount setCount:](v5, "setCount:", [v8 unsignedIntValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (DODMLASRSchemaDODMLASREntityCategoryCount)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(DODMLASRSchemaDODMLASREntityCategoryCount *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(DODMLASRSchemaDODMLASREntityCategoryCount *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASREntityCategoryCount count](self, "count")}];
    [v3 setObject:v4 forKeyedSubscript:@"count"];
  }

  if (self->_entityCategory)
  {
    v5 = [(DODMLASRSchemaDODMLASREntityCategoryCount *)self entityCategory];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"entityCategory"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(DODMLASRSchemaDODMLASREntityCategoryCount *)self entityCategory];
  v6 = [v4 entityCategory];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  v8 = [(DODMLASRSchemaDODMLASREntityCategoryCount *)self entityCategory];
  if (v8)
  {
    v9 = v8;
    v10 = [(DODMLASRSchemaDODMLASREntityCategoryCount *)self entityCategory];
    v11 = [v4 entityCategory];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[20] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    count = self->_count;
    if (count != [v4 count])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  v4 = [(DODMLASRSchemaDODMLASREntityCategoryCount *)self entityCategory];

  if (v4)
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
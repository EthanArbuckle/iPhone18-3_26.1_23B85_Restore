@interface NLXSchemaSSUBackgroundUpdateAppCategoryInfo
- (BOOL)isEqual:(id)equal;
- (NLXSchemaSSUBackgroundUpdateAppCategoryInfo)initWithDictionary:(id)dictionary;
- (NLXSchemaSSUBackgroundUpdateAppCategoryInfo)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasCacheAction:(BOOL)action;
- (void)setHasNumAppExamplesNegative:(BOOL)negative;
- (void)setHasNumAppExamplesPositive:(BOOL)positive;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaSSUBackgroundUpdateAppCategoryInfo

- (NLXSchemaSSUBackgroundUpdateAppCategoryInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = NLXSchemaSSUBackgroundUpdateAppCategoryInfo;
  v5 = [(NLXSchemaSSUBackgroundUpdateAppCategoryInfo *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"categoryType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaSSUBackgroundUpdateAppCategoryInfo setCategoryType:](v5, "setCategoryType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"numAppExamplesPositive"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaSSUBackgroundUpdateAppCategoryInfo setNumAppExamplesPositive:](v5, "setNumAppExamplesPositive:", [v7 unsignedIntValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"numAppExamplesNegative"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaSSUBackgroundUpdateAppCategoryInfo setNumAppExamplesNegative:](v5, "setNumAppExamplesNegative:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"cacheAction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaSSUBackgroundUpdateAppCategoryInfo setCacheAction:](v5, "setCacheAction:", [v9 intValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (NLXSchemaSSUBackgroundUpdateAppCategoryInfo)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaSSUBackgroundUpdateAppCategoryInfo *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaSSUBackgroundUpdateAppCategoryInfo *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 8) != 0)
  {
    v5 = [(NLXSchemaSSUBackgroundUpdateAppCategoryInfo *)self cacheAction]- 1;
    if (v5 > 2)
    {
      v6 = @"SSUCACHEACTION_UNKNOWN";
    }

    else
    {
      v6 = off_1E78DC868[v5];
    }

    [dictionary setObject:v6 forKeyedSubscript:@"cacheAction"];
    has = self->_has;
  }

  if (has)
  {
    v7 = [(NLXSchemaSSUBackgroundUpdateAppCategoryInfo *)self categoryType]- 1;
    if (v7 > 3)
    {
      v8 = @"SSUCATEGORYTYPE_UNKNOWN";
    }

    else
    {
      v8 = off_1E78DC880[v7];
    }

    [dictionary setObject:v8 forKeyedSubscript:@"categoryType"];
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NLXSchemaSSUBackgroundUpdateAppCategoryInfo numAppExamplesNegative](self, "numAppExamplesNegative")}];
    [dictionary setObject:v9 forKeyedSubscript:@"numAppExamplesNegative"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NLXSchemaSSUBackgroundUpdateAppCategoryInfo numAppExamplesPositive](self, "numAppExamplesPositive")}];
    [dictionary setObject:v10 forKeyedSubscript:@"numAppExamplesPositive"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_categoryType;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_numAppExamplesPositive;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v4 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v5 = 0;
      return v3 ^ v2 ^ v4 ^ v5;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = 2654435761 * self->_numAppExamplesNegative;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = 2654435761 * self->_cacheAction;
  return v3 ^ v2 ^ v4 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  has = self->_has;
  v6 = equalCopy[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_18;
  }

  if (*&has)
  {
    categoryType = self->_categoryType;
    if (categoryType != [equalCopy categoryType])
    {
      goto LABEL_18;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_18;
  }

  if (v8)
  {
    numAppExamplesPositive = self->_numAppExamplesPositive;
    if (numAppExamplesPositive != [equalCopy numAppExamplesPositive])
    {
      goto LABEL_18;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_18;
  }

  if (v10)
  {
    numAppExamplesNegative = self->_numAppExamplesNegative;
    if (numAppExamplesNegative == [equalCopy numAppExamplesNegative])
    {
      has = self->_has;
      v6 = equalCopy[24];
      goto LABEL_14;
    }

LABEL_18:
    v14 = 0;
    goto LABEL_19;
  }

LABEL_14:
  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_18;
  }

  if (v12)
  {
    cacheAction = self->_cacheAction;
    if (cacheAction != [equalCopy cacheAction])
    {
      goto LABEL_18;
    }
  }

  v14 = 1;
LABEL_19:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    PBDataWriterWriteInt32Field();
  }

LABEL_6:
}

- (void)setHasCacheAction:(BOOL)action
{
  if (action)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasNumAppExamplesNegative:(BOOL)negative
{
  if (negative)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasNumAppExamplesPositive:(BOOL)positive
{
  if (positive)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end
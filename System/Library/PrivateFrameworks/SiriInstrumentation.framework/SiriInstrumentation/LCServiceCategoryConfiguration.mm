@interface LCServiceCategoryConfiguration
- (BOOL)isEqual:(id)equal;
- (LCServiceCategoryConfiguration)initWithDictionary:(id)dictionary;
- (LCServiceCategoryConfiguration)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation LCServiceCategoryConfiguration

- (LCServiceCategoryConfiguration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = LCServiceCategoryConfiguration;
  v5 = [(LCServiceCategoryConfiguration *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LCServiceCategoryConfiguration setEventType:](v5, "setEventType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"categoryParameters"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[LCServiceLoggingParameters alloc] initWithDictionary:v7];
      [(LCServiceCategoryConfiguration *)v5 setCategoryParameters:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"blacklist"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[LCServiceBlacklistedFields alloc] initWithDictionary:v9];
      [(LCServiceCategoryConfiguration *)v5 setBlacklist:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (LCServiceCategoryConfiguration)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(LCServiceCategoryConfiguration *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(LCServiceCategoryConfiguration *)self dictionaryRepresentation];
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
  if (self->_blacklist)
  {
    blacklist = [(LCServiceCategoryConfiguration *)self blacklist];
    dictionaryRepresentation = [blacklist dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"blacklist"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"blacklist"];
    }
  }

  if (self->_categoryParameters)
  {
    categoryParameters = [(LCServiceCategoryConfiguration *)self categoryParameters];
    dictionaryRepresentation2 = [categoryParameters dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"categoryParameters"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"categoryParameters"];
    }
  }

  if (*&self->_has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[LCServiceCategoryConfiguration eventType](self, "eventType")}];
    [dictionary setObject:v10 forKeyedSubscript:@"eventType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_eventType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(LCServiceLoggingParameters *)self->_categoryParameters hash]^ v3;
  return v4 ^ [(LCServiceBlacklistedFields *)self->_blacklist hash];
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
    eventType = self->_eventType;
    if (eventType != [equalCopy eventType])
    {
      goto LABEL_15;
    }
  }

  categoryParameters = [(LCServiceCategoryConfiguration *)self categoryParameters];
  categoryParameters2 = [equalCopy categoryParameters];
  if ((categoryParameters != 0) == (categoryParameters2 == 0))
  {
    goto LABEL_14;
  }

  categoryParameters3 = [(LCServiceCategoryConfiguration *)self categoryParameters];
  if (categoryParameters3)
  {
    v9 = categoryParameters3;
    categoryParameters4 = [(LCServiceCategoryConfiguration *)self categoryParameters];
    categoryParameters5 = [equalCopy categoryParameters];
    v12 = [categoryParameters4 isEqual:categoryParameters5];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  categoryParameters = [(LCServiceCategoryConfiguration *)self blacklist];
  categoryParameters2 = [equalCopy blacklist];
  if ((categoryParameters != 0) != (categoryParameters2 == 0))
  {
    blacklist = [(LCServiceCategoryConfiguration *)self blacklist];
    if (!blacklist)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = blacklist;
    blacklist2 = [(LCServiceCategoryConfiguration *)self blacklist];
    blacklist3 = [equalCopy blacklist];
    v17 = [blacklist2 isEqual:blacklist3];

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
    PBDataWriterWriteInt32Field();
  }

  categoryParameters = [(LCServiceCategoryConfiguration *)self categoryParameters];

  if (categoryParameters)
  {
    categoryParameters2 = [(LCServiceCategoryConfiguration *)self categoryParameters];
    PBDataWriterWriteSubmessage();
  }

  blacklist = [(LCServiceCategoryConfiguration *)self blacklist];

  v7 = toCopy;
  if (blacklist)
  {
    blacklist2 = [(LCServiceCategoryConfiguration *)self blacklist];
    PBDataWriterWriteSubmessage();

    v7 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = LCServiceCategoryConfiguration;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  categoryParameters = [(LCServiceCategoryConfiguration *)self categoryParameters];
  v7 = [categoryParameters applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(LCServiceCategoryConfiguration *)self deleteCategoryParameters];
  }

  blacklist = [(LCServiceCategoryConfiguration *)self blacklist];
  v10 = [blacklist applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(LCServiceCategoryConfiguration *)self deleteBlacklist];
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
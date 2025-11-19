@interface LCServiceCategoryConfiguration
- (BOOL)isEqual:(id)a3;
- (LCServiceCategoryConfiguration)initWithDictionary:(id)a3;
- (LCServiceCategoryConfiguration)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation LCServiceCategoryConfiguration

- (LCServiceCategoryConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = LCServiceCategoryConfiguration;
  v5 = [(LCServiceCategoryConfiguration *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LCServiceCategoryConfiguration setEventType:](v5, "setEventType:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"categoryParameters"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[LCServiceLoggingParameters alloc] initWithDictionary:v7];
      [(LCServiceCategoryConfiguration *)v5 setCategoryParameters:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"blacklist"];
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

- (LCServiceCategoryConfiguration)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(LCServiceCategoryConfiguration *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(LCServiceCategoryConfiguration *)self dictionaryRepresentation];
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
  if (self->_blacklist)
  {
    v4 = [(LCServiceCategoryConfiguration *)self blacklist];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"blacklist"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"blacklist"];
    }
  }

  if (self->_categoryParameters)
  {
    v7 = [(LCServiceCategoryConfiguration *)self categoryParameters];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"categoryParameters"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"categoryParameters"];
    }
  }

  if (*&self->_has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[LCServiceCategoryConfiguration eventType](self, "eventType")}];
    [v3 setObject:v10 forKeyedSubscript:@"eventType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    eventType = self->_eventType;
    if (eventType != [v4 eventType])
    {
      goto LABEL_15;
    }
  }

  v6 = [(LCServiceCategoryConfiguration *)self categoryParameters];
  v7 = [v4 categoryParameters];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_14;
  }

  v8 = [(LCServiceCategoryConfiguration *)self categoryParameters];
  if (v8)
  {
    v9 = v8;
    v10 = [(LCServiceCategoryConfiguration *)self categoryParameters];
    v11 = [v4 categoryParameters];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v6 = [(LCServiceCategoryConfiguration *)self blacklist];
  v7 = [v4 blacklist];
  if ((v6 != 0) != (v7 == 0))
  {
    v13 = [(LCServiceCategoryConfiguration *)self blacklist];
    if (!v13)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = v13;
    v15 = [(LCServiceCategoryConfiguration *)self blacklist];
    v16 = [v4 blacklist];
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
  v9 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = [(LCServiceCategoryConfiguration *)self categoryParameters];

  if (v4)
  {
    v5 = [(LCServiceCategoryConfiguration *)self categoryParameters];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(LCServiceCategoryConfiguration *)self blacklist];

  v7 = v9;
  if (v6)
  {
    v8 = [(LCServiceCategoryConfiguration *)self blacklist];
    PBDataWriterWriteSubmessage();

    v7 = v9;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = LCServiceCategoryConfiguration;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(LCServiceCategoryConfiguration *)self categoryParameters];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(LCServiceCategoryConfiguration *)self deleteCategoryParameters];
  }

  v9 = [(LCServiceCategoryConfiguration *)self blacklist];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
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